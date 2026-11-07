.class public final Landroid/media/tv/TvInputServiceExtensionManager;
.super Ljava/lang/Object;
.source "TvInputServiceExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputServiceExtensionManager$StandardizedExtensionName;
    }
.end annotation


# static fields
.field private static final blacklist ANALOG_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.analog."

.field private static final blacklist CAM_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.cam."

.field private static final blacklist CLIENT_TOKEN_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.clienttoken."

.field private static final blacklist EVENT_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.event."

.field public static final blacklist IANALOG_ATTRIBUTE_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.analog.IAnalogAttributeInterface"

.field public static final blacklist IANALOG_AUDIO_INFO:Ljava/lang/String; = "android.media.tv.extension.signal.IAnalogAudioInfo"

.field public static final blacklist IAUDIO_SIGNAL_INFO:Ljava/lang/String; = "android.media.tv.extension.signal.IAudioSignalInfo"

.field public static final blacklist IAUDIO_SIGNAL_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.signal.IAudioSignalInfoListener"

.field public static final blacklist IBROADCAST_TIME:Ljava/lang/String; = "android.media.tv.extension.time.IBroadcastTime"

.field public static final blacklist ICAM_APP_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.cam.ICamAppInfoListener"

.field public static final blacklist ICAM_APP_INFO_SERVICE:Ljava/lang/String; = "android.media.tv.extension.cam.ICamAppInfoService"

.field public static final blacklist ICAM_DRM_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.cam.ICamDrmInfoListener"

.field public static final blacklist ICAM_HOST_CONTROL_ASK_RELEASE_REPLY_CALLBACK:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlAskReleaseReplyCallback"

.field public static final blacklist ICAM_HOST_CONTROL_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlInfoListener"

.field public static final blacklist ICAM_HOST_CONTROL_SERVICE:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlService"

.field public static final blacklist ICAM_HOST_CONTROL_TUNE_QUIETLY_FLAG:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlTuneQuietlyFlag"

.field public static final blacklist ICAM_HOST_CONTROL_TUNE_QUIETLY_FLAG_LISTENER:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlTuneQuietlyFlagListener"

.field public static final blacklist ICAM_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.cam.ICamInfoListener"

.field public static final blacklist ICAM_MONITORING_SERVICE:Ljava/lang/String; = "android.media.tv.extension.cam.ICamMonitoringService"

.field public static final blacklist ICAM_PIN_CAPABILITY_LISTENER:Ljava/lang/String; = "android.media.tv.extension.cam.ICamPinCapabilityListener"

.field public static final blacklist ICAM_PIN_SERVICE:Ljava/lang/String; = "android.media.tv.extension.cam.ICamPinService"

.field public static final blacklist ICAM_PIN_STATUS_LISTENER:Ljava/lang/String; = "android.media.tv.extension.cam.ICamPinStatusListener"

.field public static final blacklist ICAM_PROFILE_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.cam.ICamProfileInterface"

.field public static final blacklist ICHANNEL_LIST_TRANSFER:Ljava/lang/String; = "android.media.tv.extension.servicedb.IChannelListTransfer"

.field public static final blacklist ICHANNEL_TUNED_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.tune.IChannelTunedInterface"

.field public static final blacklist ICHANNEL_TUNED_LISTENER:Ljava/lang/String; = "android.media.tv.extension.tune.IChannelTunedListener"

.field public static final blacklist ICI_OPERATOR_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.cam.ICiOperatorInterface"

.field public static final blacklist ICI_OPERATOR_LISTENER:Ljava/lang/String; = "android.media.tv.extension.cam.ICiOperatorListener"

.field public static final blacklist ICLIENT_TOKEN:Ljava/lang/String; = "android.media.tv.extension.clienttoken.IClientToken"

.field public static final blacklist ICONTENT_CONTROL_SERVICE:Ljava/lang/String; = "android.media.tv.extension.cam.IContentControlService"

.field public static final blacklist IDATA_SERVICE_SIGNAL_INFO:Ljava/lang/String; = "android.media.tv.extension.teletext.IDataServiceSignalInfo"

.field public static final blacklist IDATA_SERVICE_SIGNAL_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.teletext.IDataServiceSignalInfoListener"

.field public static final blacklist IDELETE_RECORDED_CONTENTS_CALLBACK:Ljava/lang/String; = "android.media.tv.extension.pvr.IDeleteRecordedContentsCallback"

.field public static final blacklist IDOWNLOADABLE_RATING_TABLE_MONITOR:Ljava/lang/String; = "android.media.tv.extension.rating.IDownloadableRatingTableMonitor"

.field public static final blacklist IENTER_MENU_ERROR_CALLBACK:Ljava/lang/String; = "android.media.tv.extension.cam.IEnterMenuErrorCallback"

.field public static final blacklist IEVENT_DOWNLOAD:Ljava/lang/String; = "android.media.tv.extension.event.IEventDownload"

.field public static final blacklist IEVENT_DOWNLOAD_LISTENER:Ljava/lang/String; = "android.media.tv.extension.event.IEventDownloadListener"

.field public static final blacklist IEVENT_DOWNLOAD_SESSION:Ljava/lang/String; = "android.media.tv.extension.event.IEventDownloadSession"

.field public static final blacklist IEVENT_MONITOR:Ljava/lang/String; = "android.media.tv.extension.event.IEventMonitor"

.field public static final blacklist IEVENT_MONITOR_LISTENER:Ljava/lang/String; = "android.media.tv.extension.event.IEventMonitorListener"

.field public static final blacklist IFAVORITE_NETWORK:Ljava/lang/String; = "android.media.tv.extension.scan.IFavoriteNetwork"

.field public static final blacklist IFAVORITE_NETWORK_LISTENER:Ljava/lang/String; = "android.media.tv.extension.scan.IFavoriteNetworkListener"

.field public static final blacklist IGET_INFO_RECORDED_CONTENTS_CALLBACK:Ljava/lang/String; = "android.media.tv.extension.pvr.IGetInfoRecordedContentsCallback"

.field public static final blacklist IHDMI_SIGNAL_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.signal.IHdmiSignalInfoListener"

.field public static final blacklist IHDMI_SIGNAL_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.signal.IHdmiSignalInterface"

.field public static final blacklist IHDPLUS_INFO:Ljava/lang/String; = "android.media.tv.extension.scan.IHDPlusInfo"

.field public static final blacklist ILCNV2_CHANNEL_LIST:Ljava/lang/String; = "android.media.tv.extension.scan.ILcnV2ChannelList"

.field public static final blacklist ILCNV2_CHANNEL_LIST_LISTENER:Ljava/lang/String; = "android.media.tv.extension.scan.ILcnV2ChannelListListener"

.field public static final blacklist ILCN_CONFLICT:Ljava/lang/String; = "android.media.tv.extension.scan.ILcnConflict"

.field public static final blacklist ILCN_CONFLICT_LISTENER:Ljava/lang/String; = "android.media.tv.extension.scan.ILcnConflictListener"

.field public static final blacklist IMMI_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.cam.IMmiInterface"

.field public static final blacklist IMMI_SESSION:Ljava/lang/String; = "android.media.tv.extension.cam.IMmiSession"

.field public static final blacklist IMMI_STATUS_CALLBACK:Ljava/lang/String; = "android.media.tv.extension.cam.IMmiStatusCallback"

.field public static final blacklist IMUX_TUNE:Ljava/lang/String; = "android.media.tv.extension.tune.IMuxTune"

.field public static final blacklist IMUX_TUNE_SESSION:Ljava/lang/String; = "android.media.tv.extension.tune.IMuxTuneSession"

.field public static final blacklist IOAD_UPDATE_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.oad.IOadUpdateInterface"

.field public static final blacklist IOPERATOR_DETECTION:Ljava/lang/String; = "android.media.tv.extension.scan.IOperatorDetection"

.field public static final blacklist IOPERATOR_DETECTION_LISTENER:Ljava/lang/String; = "android.media.tv.extension.scan.IOperatorDetectionListener"

.field public static final blacklist IPMT_RATING_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.rating.IPmtRatingInterface"

.field public static final blacklist IPMT_RATING_LISTENER:Ljava/lang/String; = "android.media.tv.extension.rating.IPmtRatingListener"

.field public static final blacklist IPROGRAM_INFO:Ljava/lang/String; = "android.media.tv.extension.rating.IProgramInfo"

.field public static final blacklist IPROGRAM_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.rating.IProgramInfoListener"

.field public static final blacklist IRATING_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.rating.IRatingInterface"

.field public static final blacklist IRECORDED_CONTENTS:Ljava/lang/String; = "android.media.tv.extension.pvr.IRecordedContents"

.field public static final blacklist IREGION_CHANNEL_LIST:Ljava/lang/String; = "android.media.tv.extension.scan.IRegionChannelList"

.field public static final blacklist IREGION_CHANNEL_LIST_LISTENER:Ljava/lang/String; = "android.media.tv.extension.scan.IRegionChannelListListener"

.field public static final blacklist ISCAN_BACKGROUND_SERVICE_UPDATE:Ljava/lang/String; = "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdate"

.field public static final blacklist ISCAN_BACKGROUND_SERVICE_UPDATE_LISTENER:Ljava/lang/String; = "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdateListener"

.field public static final blacklist ISCAN_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.scan.IScanInterface"

.field public static final blacklist ISCAN_LISTENER:Ljava/lang/String; = "android.media.tv.extension.scan.IScanListener"

.field public static final blacklist ISCAN_SAT_SEARCH:Ljava/lang/String; = "android.media.tv.extension.scan.IScanSatSearch"

.field public static final blacklist ISCAN_SESSION:Ljava/lang/String; = "android.media.tv.extension.scan.IScanSession"

.field public static final blacklist ISCREEN_MODE_SETTINGS:Ljava/lang/String; = "android.media.tv.extension.screenmode.IScreenModeSettings"

.field public static final blacklist ISERVICE_LIST:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceList"

.field public static final blacklist ISERVICE_LIST_EDIT:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListEdit"

.field public static final blacklist ISERVICE_LIST_EDIT_LISTENER:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListEditListener"

.field public static final blacklist ISERVICE_LIST_EXPORT_LISTENER:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListExportListener"

.field public static final blacklist ISERVICE_LIST_EXPORT_SESSION:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListExportSession"

.field public static final blacklist ISERVICE_LIST_IMPORT_LISTENER:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListImportListener"

.field public static final blacklist ISERVICE_LIST_IMPORT_SESSION:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListImportSession"

.field public static final blacklist ISERVICE_LIST_SET_CHANNEL_LIST_LISTENER:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListSetChannelListListener"

.field public static final blacklist ISERVICE_LIST_SET_CHANNEL_LIST_SESSION:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListSetChannelListSession"

.field public static final blacklist ISERVICE_LIST_TRANSFER_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListTransferInterface"

.field public static final blacklist ITARGET_REGION:Ljava/lang/String; = "android.media.tv.extension.scan.ITargetRegion"

.field public static final blacklist ITARGET_REGION_LISTENER:Ljava/lang/String; = "android.media.tv.extension.scan.ITargetRegionListener"

.field public static final blacklist ITELETEXT_PAGE_SUB_CODE:Ljava/lang/String; = "android.media.tv.extension.teletext.ITeletextPageSubCode"

.field public static final blacklist ITKGS_INFO:Ljava/lang/String; = "android.media.tv.extension.scan.ITkgsInfo"

.field public static final blacklist ITKGS_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.scan.ITkgsInfoListener"

.field public static final blacklist ITUNER_FRONTEND_SIGNAL_INFO_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.signal.ITunerFrontendSignalInfoInterface"

.field public static final blacklist ITUNER_FRONTEND_SIGNAL_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.signal.ITunerFrontendSignalInfoListener"

.field public static final blacklist IVBI_RATING_INTERFACE:Ljava/lang/String; = "android.media.tv.extension.rating.IVbiRatingInterface"

.field public static final blacklist IVBI_RATING_LISTENER:Ljava/lang/String; = "android.media.tv.extension.rating.IVbiRatingListener"

.field public static final blacklist IVIDEO_SIGNAL_INFO:Ljava/lang/String; = "android.media.tv.extension.signal.IVideoSignalInfo"

.field public static final blacklist IVIDEO_SIGNAL_INFO_LISTENER:Ljava/lang/String; = "android.media.tv.extension.signal.IVideoSignalInfoListener"

.field private static final blacklist OAD_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.oad."

.field private static final blacklist PVR_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.pvr."

.field private static final blacklist RATING_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.rating."

.field private static final blacklist SCAN_BSU_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.scanbsu."

.field private static final blacklist SCAN_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.scan."

.field private static final blacklist SCREEN_MODE_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.screenmode."

.field private static final blacklist SERVICE_DATABASE_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.servicedb."

.field private static final blacklist SIGNAL_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.signal."

.field private static final blacklist TAG:Ljava/lang/String; = "TvInputServiceExtensionManager"

.field private static final blacklist TELETEXT_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.teletext."

.field private static final blacklist TIME_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.time."

.field private static final blacklist TUNE_PACKAGE:Ljava/lang/String; = "android.media.tv.extension.tune."

.field private static final blacklist sTisExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 91

    .line 548
    new-instance v0, Ljava/util/HashSet;

    const-string v89, "android.media.tv.extension.tune.IMuxTuneSession"

    const-string v90, "android.media.tv.extension.tune.IMuxTune"

    const-string v1, "android.media.tv.extension.scan.IScanInterface"

    const-string v2, "android.media.tv.extension.scan.IScanSession"

    const-string v3, "android.media.tv.extension.scan.IScanListener"

    const-string v4, "android.media.tv.extension.scan.IHDPlusInfo"

    const-string v5, "android.media.tv.extension.scan.IOperatorDetection"

    const-string v6, "android.media.tv.extension.scan.IOperatorDetectionListener"

    const-string v7, "android.media.tv.extension.scan.IRegionChannelList"

    const-string v8, "android.media.tv.extension.scan.IRegionChannelListListener"

    const-string v9, "android.media.tv.extension.scan.ITargetRegion"

    const-string v10, "android.media.tv.extension.scan.ITargetRegionListener"

    const-string v11, "android.media.tv.extension.scan.ILcnConflict"

    const-string v12, "android.media.tv.extension.scan.ILcnConflictListener"

    const-string v13, "android.media.tv.extension.scan.ILcnV2ChannelList"

    const-string v14, "android.media.tv.extension.scan.ILcnV2ChannelListListener"

    const-string v15, "android.media.tv.extension.scan.IFavoriteNetwork"

    const-string v16, "android.media.tv.extension.scan.IFavoriteNetworkListener"

    const-string v17, "android.media.tv.extension.scan.ITkgsInfo"

    const-string v18, "android.media.tv.extension.scan.ITkgsInfoListener"

    const-string v19, "android.media.tv.extension.scan.IScanSatSearch"

    const-string v20, "android.media.tv.extension.oad.IOadUpdateInterface"

    const-string v21, "android.media.tv.extension.cam.ICamAppInfoService"

    const-string v22, "android.media.tv.extension.cam.ICamAppInfoListener"

    const-string v23, "android.media.tv.extension.cam.ICamMonitoringService"

    const-string v24, "android.media.tv.extension.cam.ICamInfoListener"

    const-string v25, "android.media.tv.extension.cam.ICiOperatorInterface"

    const-string v26, "android.media.tv.extension.cam.ICiOperatorListener"

    const-string v27, "android.media.tv.extension.cam.ICamProfileInterface"

    const-string v28, "android.media.tv.extension.cam.IContentControlService"

    const-string v29, "android.media.tv.extension.cam.ICamDrmInfoListener"

    const-string v30, "android.media.tv.extension.cam.ICamPinService"

    const-string v31, "android.media.tv.extension.cam.ICamPinCapabilityListener"

    const-string v32, "android.media.tv.extension.cam.ICamPinStatusListener"

    const-string v33, "android.media.tv.extension.cam.ICamHostControlService"

    const-string v34, "android.media.tv.extension.cam.ICamHostControlAskReleaseReplyCallback"

    const-string v35, "android.media.tv.extension.cam.ICamHostControlInfoListener"

    const-string v36, "android.media.tv.extension.cam.ICamHostControlTuneQuietlyFlag"

    const-string v37, "android.media.tv.extension.cam.ICamHostControlTuneQuietlyFlagListener"

    const-string v38, "android.media.tv.extension.cam.IMmiInterface"

    const-string v39, "android.media.tv.extension.cam.IMmiSession"

    const-string v40, "android.media.tv.extension.cam.IMmiStatusCallback"

    const-string v41, "android.media.tv.extension.cam.IEnterMenuErrorCallback"

    const-string v42, "android.media.tv.extension.rating.IDownloadableRatingTableMonitor"

    const-string v43, "android.media.tv.extension.rating.IRatingInterface"

    const-string v44, "android.media.tv.extension.rating.IPmtRatingInterface"

    const-string v45, "android.media.tv.extension.rating.IPmtRatingListener"

    const-string v46, "android.media.tv.extension.rating.IVbiRatingInterface"

    const-string v47, "android.media.tv.extension.rating.IVbiRatingListener"

    const-string v48, "android.media.tv.extension.rating.IProgramInfo"

    const-string v49, "android.media.tv.extension.rating.IProgramInfoListener"

    const-string v50, "android.media.tv.extension.time.IBroadcastTime"

    const-string v51, "android.media.tv.extension.teletext.IDataServiceSignalInfo"

    const-string v52, "android.media.tv.extension.teletext.IDataServiceSignalInfoListener"

    const-string v53, "android.media.tv.extension.teletext.ITeletextPageSubCode"

    const-string v54, "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdate"

    const-string v55, "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdateListener"

    const-string v56, "android.media.tv.extension.clienttoken.IClientToken"

    const-string v57, "android.media.tv.extension.screenmode.IScreenModeSettings"

    const-string v58, "android.media.tv.extension.signal.IHdmiSignalInterface"

    const-string v59, "android.media.tv.extension.signal.IHdmiSignalInfoListener"

    const-string v60, "android.media.tv.extension.signal.IAudioSignalInfo"

    const-string v61, "android.media.tv.extension.signal.IAnalogAudioInfo"

    const-string v62, "android.media.tv.extension.signal.IAudioSignalInfoListener"

    const-string v63, "android.media.tv.extension.signal.IVideoSignalInfo"

    const-string v64, "android.media.tv.extension.signal.IVideoSignalInfoListener"

    const-string v65, "android.media.tv.extension.servicedb.IServiceListEdit"

    const-string v66, "android.media.tv.extension.servicedb.IServiceListEditListener"

    const-string v67, "android.media.tv.extension.servicedb.IServiceList"

    const-string v68, "android.media.tv.extension.servicedb.IServiceListTransferInterface"

    const-string v69, "android.media.tv.extension.servicedb.IServiceListExportSession"

    const-string v70, "android.media.tv.extension.servicedb.IServiceListExportListener"

    const-string v71, "android.media.tv.extension.servicedb.IServiceListImportSession"

    const-string v72, "android.media.tv.extension.servicedb.IServiceListImportListener"

    const-string v73, "android.media.tv.extension.servicedb.IServiceListSetChannelListSession"

    const-string v74, "android.media.tv.extension.servicedb.IServiceListSetChannelListListener"

    const-string v75, "android.media.tv.extension.servicedb.IChannelListTransfer"

    const-string v76, "android.media.tv.extension.pvr.IRecordedContents"

    const-string v77, "android.media.tv.extension.pvr.IDeleteRecordedContentsCallback"

    const-string v78, "android.media.tv.extension.pvr.IGetInfoRecordedContentsCallback"

    const-string v79, "android.media.tv.extension.event.IEventMonitor"

    const-string v80, "android.media.tv.extension.event.IEventMonitorListener"

    const-string v81, "android.media.tv.extension.event.IEventDownload"

    const-string v82, "android.media.tv.extension.event.IEventDownloadListener"

    const-string v83, "android.media.tv.extension.event.IEventDownloadSession"

    const-string v84, "android.media.tv.extension.analog.IAnalogAttributeInterface"

    const-string v85, "android.media.tv.extension.tune.IChannelTunedInterface"

    const-string v86, "android.media.tv.extension.tune.IChannelTunedListener"

    const-string v87, "android.media.tv.extension.signal.ITunerFrontendSignalInfoInterface"

    const-string v88, "android.media.tv.extension.signal.ITunerFrontendSignalInfoListener"

    filled-new-array/range {v1 .. v90}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/tv/TvInputServiceExtensionManager;->sTisExtensions:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkIsStandardizedIBinder(Ljava/lang/String;Landroid/os/IBinder;)Z
    .registers 5
    .param p0, "extensionName"    # Ljava/lang/String;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 660
    if-eqz p1, :cond_24

    .line 662
    :try_start_2
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    return v0

    .line 663
    :catch_b
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching IBinder object failure due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TvInputServiceExtensionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist checkIsStandardizedInterfaces(Ljava/lang/String;)Z
    .registers 2
    .param p0, "extensionName"    # Ljava/lang/String;

    .line 652
    sget-object v0, Landroid/media/tv/TvInputServiceExtensionManager;->sTisExtensions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getStandardExtensionInterfaceNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/media/tv/TvInputServiceExtensionManager;->sTisExtensions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
