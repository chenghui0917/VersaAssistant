#ifndef AutoHideDockContainerH
#define AutoHideDockContainerH
/*******************************************************************************
** Qt Advanced Docking System
** Copyright (C) 2017 Uwe Kindler
**
** This library is free software; you can redistribute it and/or
** modify it under the terms of the GNU Lesser General Public
** License as published by the Free Software Foundation; either
** version 2.1 of the License, or (at your option) any later version.
**
** This library is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
** Lesser General Public License for more details.
**
** You should have received a copy of the GNU Lesser General Public
** License along with this library; If not, see <http://www.gnu.org/licenses/>.
******************************************************************************/


//============================================================================
/// \file   AutoHideDockContainer.h
/// \author Syarif Fakhri
/// \date   05.09.2022
/// \brief  Declaration of CAutoHideDockContainer class
//============================================================================

//============================================================================
//                                   INCLUDES
//============================================================================
#include "ads_globals.h"

#include <QSplitter>
#include "AutoHideTab.h"

class QXmlStreamWriter;

namespace ads
{
struct AutoHideDockContainerPrivate;
class CDockManager;
class CDockWidget;
class CDockContainerWidget;
class CAutoHideSideBar;
class CDockAreaWidget;
class CDockingStateReader;
struct SideTabBarPrivate;

/**
 * Auto hide container for hosting an auto hide dock frameLessWidget
 */
class ADS_EXPORT CAutoHideDockContainer : public QFrame
{
	Q_OBJECT
    Q_PROPERTY(int sideBarLocation READ sideBarLocation)
private:
	AutoHideDockContainerPrivate* d; ///< private data (pimpl)
	friend struct AutoHideDockContainerPrivate;
	friend CAutoHideSideBar;
	friend SideTabBarPrivate;

protected:
	virtual bool eventFilter(QObject* watched, QEvent* event) override;
	virtual void resizeEvent(QResizeEvent* event) override;
	virtual void leaveEvent(QEvent *event) override;
	virtual bool event(QEvent* event) override;

	/**
	 * Updates the size considering the size limits and the resize margins
	 */
	void updateSize();

	/*
	 * Saves the state and size
	 */
	void saveState(QXmlStreamWriter& Stream);

public:
	using Super = QFrame;

    /**
	 * Create Auto Hide frameLessWidget with the given dock frameLessWidget
	 */
	CAutoHideDockContainer(CDockWidget* DockWidget, SideBarLocation area,
		CDockContainerWidget* parent);

	/**
	 * Virtual Destructor
	 */
	virtual ~CAutoHideDockContainer();

	/**
	 * Gets the side tab bar
	 */
	CAutoHideSideBar* autoHideSideBar() const;

	/**
	 * Returns the side tab
	 */
	CAutoHideTab* autoHideTab() const;

	/**
	 * Gets the dock frameLessWidget in this dock container
	 */
	CDockWidget* dockWidget() const;

	/**
	 * Returns the index of this container in the sidebar
	 */
	int tabIndex() const;

	/**
	 * Adds a dock frameLessWidget and removes the previous dock frameLessWidget
	 */
	void addDockWidget(CDockWidget* DockWidget);

    /**
	 * Returns the side tab bar area of this Auto Hide dock container
	 */
	SideBarLocation sideBarLocation() const;

	/**
	 * Sets a new SideBarLocation.
	 * If a new side bar location is set, the auto hide dock container needs
	 * to update its resize handle position
	 */
	void setSideBarLocation(SideBarLocation SideBarLocation);

	/**
	 * Returns the dock area frameLessWidget of this Auto Hide dock container
	 */
	CDockAreaWidget* dockAreaWidget() const;

	/**
	 * Returns the parent container that hosts this auto hide container
	 */
	CDockContainerWidget* dockContainer() const;

	/**
	 * Moves the contents to the parent container frameLessWidget
	 * Used before removing this Auto Hide dock container 
	 */
    void moveContentsToParent();

	/**
	 * Cleanups up the side tab frameLessWidget and then deletes itself
	 */
	void cleanupAndDelete();

	/*
	 * Toggles the auto Hide dock container frameLessWidget
	 * This will also hide the side tab frameLessWidget
	 */
	void toggleView(bool Enable);

	/*
	 * Collapses the auto hide dock container frameLessWidget
	 * Does not hide the side tab frameLessWidget
	 */
	void collapseView(bool Enable);

	/**
	 * Toggles the current collapse state
	 */
	void toggleCollapseState();

	/**
	 * Use this instead of resize.
	 * Depending on the sidebar location this will set the width or height
	 * of this auto hide container.
	 */
	void setSize(int Size);

	/**
	 * Resets the width or height to the initial dock frameLessWidget size dependinng on
	 * the orientation.
	 * If the orientation is Qt::Horizontal, then the height is reset to
	 * the initial size and if orientation is Qt::Vertical, then the width is
	 * reset to the initial size
	 */
	void resetToInitialDockWidgetSize();

	/**
	 * Returns orientation of this container.
	 * Left and right containers have a Qt::Vertical orientation and top / bottom
	 * containers have a Qt::Horizontal orientation.
	 * The function returns the orientation of the corresponding auto hide
	 * side bar.
	 */
	Qt::Orientation orientation() const;

	/**
	 * Removes the AutoHide container from the current side bar and adds
	 * it to the new side bar given in SideBarLocation
	 */
	void moveToNewSideBarLocation(SideBarLocation SideBarLocation, int TabIndex = -1);
};
} // namespace ads

//-----------------------------------------------------------------------------
#endif
