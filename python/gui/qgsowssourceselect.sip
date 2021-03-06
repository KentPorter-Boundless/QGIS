/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsowssourceselect.h                                         *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






class QgsOWSSourceSelect : QgsAbstractDataSourceWidget, protected Ui::QgsOWSSourceSelectBase
{
%Docstring
  Dialog to create connections and add layers WCS etc.

 This dialog allows the user to define and save connection information
 for WMS servers, etc.

 The user can then connect and add
 layers from the WCS server to the map canvas.
%End

%TypeHeaderCode
#include "qgsowssourceselect.h"
%End
  public:
    struct SupportedFormat
    {
      QString format;
      QString label;
    };

    QgsOWSSourceSelect( const QString &service, QWidget *parent /TransferThis/ = 0, Qt::WindowFlags fl = QgsGuiUtils::ModalDialogFlags, QgsProviderRegistry::WidgetMode widgetMode = QgsProviderRegistry::WidgetMode::None );
%Docstring
Constructor
%End

    ~QgsOWSSourceSelect();

  public slots:

    virtual void refresh();

%Docstring
Triggered when the provider's connections need to be refreshed
%End

    void on_mNewButton_clicked();
%Docstring
Opens the create connection dialog to build a new connection
%End
    void on_mEditButton_clicked();
%Docstring
Opens a dialog to edit an existing connection
%End
    void on_mDeleteButton_clicked();
%Docstring
Deletes the selected connection
%End
    void on_mSaveButton_clicked();
%Docstring
Saves connections to the file
%End
    void on_mLoadButton_clicked();
%Docstring
Loads connections from the file
%End

    void on_mConnectButton_clicked();
%Docstring
 Connects to the database using the stored connection parameters.
 Once connected, available layers are displayed.
%End

    virtual void addClicked();
%Docstring
Determines the layers the user selected
%End

    void searchFinished();

    void on_mChangeCRSButton_clicked();
%Docstring
Opens the Spatial Reference System dialog.
%End

    virtual void on_mLayersTreeWidget_itemSelectionChanged();
%Docstring
Signaled when a layer selection is changed.
%End

    void showStatusMessage( const QString &message );
%Docstring
Set status message to theMessage
%End

    void showError( const QString &title, const QString &format, const QString &error );
%Docstring
show whatever error is exposed.
%End

    void on_mConnectionsComboBox_activated( int );
%Docstring
Stores the selected datasource whenerver it is changed
%End

    void on_mAddDefaultButton_clicked();
%Docstring
Add some default wms servers to the list
%End

  protected:

    virtual QList<QgsOWSSourceSelect::SupportedFormat> providerFormats();
%Docstring
 List of image formats (encodings) supported by provider
 :return: list of format/label pairs
 :rtype: list of QgsOWSSourceSelect.SupportedFormat
%End

    virtual QStringList selectedLayersFormats();
%Docstring
List of formats supported for currently selected layer item(s)
 :rtype: list of str
%End

    virtual QStringList selectedLayersCrses();
%Docstring
Server CRS supported for currently selected layer item(s)
 :rtype: list of str
%End

    virtual QStringList selectedLayersTimes();
%Docstring
List of times (temporalDomain timePosition/timePeriod for currently selected layer item(s)
 :rtype: list of str
%End


    void populateConnectionList();
%Docstring
Populate the connection list combo box
%End

    void populateFormats();
%Docstring
Populate supported formats
%End

    void clearFormats();
%Docstring
Clear previously set formats
%End

    void populateCrs();
%Docstring
Set supported CRSs
%End

    void clearCrs();
%Docstring
Clear CRSs
%End

    void populateTimes();
%Docstring
Populate times
%End

    void clearTimes();
%Docstring
Clear times
%End

    QString connName();
%Docstring
Connection name
 :rtype: str
%End

    QString connectionInfo();
%Docstring
Connection info (uri)
 :rtype: str
%End

    void setConnectionListPosition();
%Docstring
Set the server connection combo box to that stored in the config file.
%End

    void addDefaultServers();
%Docstring
Add a few example servers to the list.
%End


    virtual void populateLayerList();
%Docstring
 Populate the layer list.

 \retval false if the layers could not be retrieved or parsed
%End


    QString descriptionForAuthId( const QString &authId );
%Docstring
Returns a textual description for the authority id
 :rtype: str
%End




    void addWmsListRow( const QDomElement &item, int row );
%Docstring
layer name derived from latest layer selection (updated as long it's not edited manually)
%End
    void addWmsListItem( const QDomElement &el, int row, int column );

    virtual void enableLayersForCrs( QTreeWidgetItem *item );

    QString selectedFormat();
%Docstring
Returns currently selected format
 :rtype: str
%End

    QString selectedCrs();
%Docstring
Returns currently selected Crs
 :rtype: str
%End

    QString selectedTime();
%Docstring
Returns currently selected time
 :rtype: str
%End

    QNetworkRequest::CacheLoadControl selectedCacheLoadControl();
%Docstring
Returns currently selected cache load control
 :rtype: QNetworkRequest.CacheLoadControl
%End






};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsowssourceselect.h                                         *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
