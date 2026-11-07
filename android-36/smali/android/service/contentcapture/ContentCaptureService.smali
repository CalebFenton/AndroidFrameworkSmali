.class public abstract Landroid/service/contentcapture/ContentCaptureService;
.super Landroid/app/Service;
.source "ContentCaptureService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;,
        Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;
    }
.end annotation


# static fields
.field public static final blacklist ASSIST_CONTENT_ACTIVITY_START_KEY:Ljava/lang/String; = "activity_start_assist_content"

.field public static final blacklist PROTECTION_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.contentcapture.ContentProtectionService"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.contentcapture.ContentCaptureService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.content_capture"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCallerMismatchTimeout:J

.field private final blacklist mContentCaptureClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

.field private final blacklist mContentCaptureServerInterface:Landroid/service/contentcapture/IContentCaptureService;

.field private blacklist mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

.field private blacklist mContentProtectionAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

.field private final blacklist mContentProtectionServerInterface:Landroid/service/contentcapture/IContentProtectionService;

.field private final blacklist mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastCallerMismatchLog:J

.field private final blacklist mSessionUids:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$Azqdm1PMLvRVcHJ8G6Q4nwJm1cw(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->lambda$handleOnLoginDetected$0(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataShareAdapterResourceManager(Landroid/service/contentcapture/ContentCaptureService;)Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;
    .registers 1

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService;->mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleFinishSession(Landroid/service/contentcapture/ContentCaptureService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleFinishSession(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnActivityEvent(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/ActivityEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnActivitySnapshot(Landroid/service/contentcapture/ContentCaptureService;ILandroid/service/contentcapture/SnapshotData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnConnected(Landroid/service/contentcapture/ContentCaptureService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnCreateSession(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/service/contentcapture/ContentCaptureService;->handleOnCreateSession(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDataRemovalRequest(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDataShared(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDisconnected(Landroid/service/contentcapture/ContentCaptureService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDisconnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnLoginDetected(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnLoginDetected(ILandroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnUpdateAllowlistRequest(Landroid/service/contentcapture/ContentCaptureService;ILandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnUpdateAllowlistRequest(ILandroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSendEvents(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureService;->handleSendEvents(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    const-class v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 79
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 147
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;-><init>(Landroid/service/contentcapture/ContentCaptureService-IA;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    .line 154
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallerMismatchTimeout:J

    .line 158
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$1;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$1;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServerInterface:Landroid/service/contentcapture/IContentCaptureService;

    .line 216
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$2;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$2;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionServerInterface:Landroid/service/contentcapture/IContentProtectionService;

    .line 242
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$3;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$3;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    .line 259
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    return-void
.end method

.method private blacklist handleFinishSession(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 640
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 641
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/service/contentcapture/ContentCaptureService;->onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 642
    return-void
.end method

.method private blacklist handleIsRightCallerFor(Landroid/view/contentcapture/ContentCaptureEvent;I)Z
    .registers 12
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;
    .param p2, "uid"    # I

    .line 689
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_ac

    .line 695
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v0

    .local v0, "sessionId":I
    goto :goto_11

    .line 692
    .end local v0    # "sessionId":I
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getParentSessionId()I

    move-result v0

    .line 693
    .restart local v0    # "sessionId":I
    nop

    .line 697
    :goto_11
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_4e

    .line 698
    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_4d

    .line 699
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIsRightCallerFor("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): no session for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_4d
    return v2

    .line 705
    :cond_4e
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 706
    .local v1, "rightUid":I
    if-eq v1, p2, :cond_aa

    .line 707
    sget-object v3, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid call from UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " belongs to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 710
    .local v3, "now":J
    iget-wide v5, p0, Landroid/service/contentcapture/ContentCaptureService;->mLastCallerMismatchLog:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallerMismatchTimeout:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_a9

    .line 711
    nop

    .line 712
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 713
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 711
    const/16 v7, 0xce

    invoke-static {v7, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 714
    iput-wide v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mLastCallerMismatchLog:J

    .line 716
    :cond_a9
    return v2

    .line 718
    .end local v3    # "now":J
    :cond_aa
    const/4 v2, 0x1

    return v2

    :pswitch_data_ac
    .packed-switch -0x2
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private blacklist handleOnActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/service/contentcapture/ActivityEvent;

    .line 681
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 682
    return-void
.end method

.method private blacklist handleOnActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "snapshotData"    # Landroid/service/contentcapture/SnapshotData;

    .line 636
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Landroid/service/contentcapture/ContentCaptureService;->onActivitySnapshot(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/service/contentcapture/SnapshotData;)V

    .line 637
    return-void
.end method

.method private blacklist handleOnConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/IBinder;

    .line 505
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureServiceCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 506
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onConnected()V

    .line 507
    return-void
.end method

.method private blacklist handleOnCreateSession(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 9
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "sessionId"    # I
    .param p3, "uid"    # I
    .param p4, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p5, "initialState"    # I

    .line 520
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 521
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p2}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/service/contentcapture/ContentCaptureService;->onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 523
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureContext;->getFlags()I

    move-result v0

    .line 524
    .local v0, "clientFlags":I
    const/4 v1, 0x0

    .line 525
    .local v1, "stateFlags":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_18

    .line 526
    or-int/lit8 v1, v1, 0x20

    .line 528
    :cond_18
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1e

    .line 529
    or-int/lit8 v1, v1, 0x40

    .line 531
    :cond_1e
    if-nez v1, :cond_22

    .line 532
    move v1, p5

    goto :goto_24

    .line 534
    :cond_22
    or-int/lit8 v1, v1, 0x4

    .line 536
    :goto_24
    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-interface {v2}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p4, v1, v2}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 537
    return-void
.end method

.method private blacklist handleOnDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 645
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 646
    return-void
.end method

.method private blacklist handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "callback"    # Landroid/service/contentcapture/IDataShareCallback;

    .line 650
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$4;

    invoke-direct {v0, p0, p2}, Landroid/service/contentcapture/ContentCaptureService$4;-><init>(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/IDataShareCallback;)V

    invoke-virtual {p0, p1, v0}, Landroid/service/contentcapture/ContentCaptureService;->onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/DataShareCallback;)V

    .line 678
    return-void
.end method

.method private blacklist handleOnDisconnected()V
    .registers 2

    .line 510
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onDisconnected()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 512
    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 513
    return-void
.end method

.method private blacklist handleOnLoginDetected(ILandroid/content/pm/ParceledListSlice;)V
    .registers 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;)V"
        }
    .end annotation

    .line 606
    .local p2, "parceledEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1e

    .line 607
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleOnLoginDetected() not allowed for uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void

    .line 610
    :cond_1e
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 611
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    move v1, v2

    goto :goto_35

    :cond_2b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v1

    .line 612
    .local v1, "sessionIdInt":I
    :goto_35
    new-instance v3, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v3, v1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    .line 614
    .local v3, "sessionId":Landroid/view/contentcapture/ContentCaptureSessionId;
    new-instance v4, Landroid/view/contentcapture/ContentCaptureEvent;

    const/4 v5, 0x7

    invoke-direct {v4, v1, v5}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 616
    .local v4, "startEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 617
    invoke-virtual {p0, v3, v4}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 619
    new-instance v2, Landroid/service/contentcapture/ContentCaptureService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v3}, Landroid/service/contentcapture/ContentCaptureService$$ExternalSyntheticLambda0;-><init>(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 621
    new-instance v2, Landroid/view/contentcapture/ContentCaptureEvent;

    const/16 v5, 0x8

    invoke-direct {v2, v1, v5}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(II)V

    .line 622
    .local v2, "endEvent":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-virtual {p0, v3, v2}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 623
    return-void
.end method

.method private blacklist handleOnUpdateAllowlistRequest(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "callback"    # Landroid/os/IBinder;

    .line 626
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1e

    .line 627
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleOnUpdateAllowlistRequest() not allowed for uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void

    .line 630
    :cond_1e
    nop

    .line 631
    invoke-static {p2}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 632
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onConnected()V

    .line 633
    return-void
.end method

.method private blacklist handleSendEvents(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 16
    .param p1, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "options"    # Landroid/content/ContentCaptureOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;I",
            "Landroid/content/ContentCaptureOptions;",
            ")V"
        }
    .end annotation

    .line 542
    .local p2, "parceledEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 543
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 544
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleSendEvents() received empty list of events"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void

    .line 549
    :cond_13
    new-instance v1, Landroid/service/contentcapture/FlushMetrics;

    invoke-direct {v1}, Landroid/service/contentcapture/FlushMetrics;-><init>()V

    move-object v5, v1

    .line 550
    .local v5, "metrics":Landroid/service/contentcapture/FlushMetrics;
    const/4 v1, 0x0

    .line 554
    .local v1, "activityComponent":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 555
    .local v2, "lastSessionId":I
    const/4 v3, 0x0

    .line 557
    .local v3, "sessionId":Landroid/view/contentcapture/ContentCaptureSessionId;
    const/4 v4, 0x0

    move v8, v4

    move-object v4, v1

    move-object v1, v3

    move v3, v2

    .end local v2    # "lastSessionId":I
    .local v1, "sessionId":Landroid/view/contentcapture/ContentCaptureSessionId;
    .local v3, "lastSessionId":I
    .local v4, "activityComponent":Landroid/content/ComponentName;
    .local v8, "i":I
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_b9

    .line 558
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/view/contentcapture/ContentCaptureEvent;

    .line 559
    .local v9, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    invoke-direct {p0, v9, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleIsRightCallerFor(Landroid/view/contentcapture/ContentCaptureEvent;I)Z

    move-result v2

    if-nez v2, :cond_39

    move-object v2, p0

    move v7, p3

    move-object v6, p4

    goto/16 :goto_b3

    .line 560
    :cond_39
    invoke-virtual {v9}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v10

    .line 561
    .local v10, "sessionIdInt":I
    if-eq v10, v3, :cond_56

    .line 562
    new-instance v2, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v2, v10}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    move-object v1, v2

    .line 563
    move v3, v10

    .line 564
    if-eqz v8, :cond_52

    .line 565
    move-object v2, p0

    move v7, p3

    move-object v6, p4

    .end local p3    # "reason":I
    .end local p4    # "options":Landroid/content/ContentCaptureOptions;
    .local v6, "options":Landroid/content/ContentCaptureOptions;
    .local v7, "reason":I
    invoke-direct/range {v2 .. v7}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 566
    invoke-virtual {v5}, Landroid/service/contentcapture/FlushMetrics;->reset()V

    goto :goto_59

    .line 564
    .end local v6    # "options":Landroid/content/ContentCaptureOptions;
    .end local v7    # "reason":I
    .restart local p3    # "reason":I
    .restart local p4    # "options":Landroid/content/ContentCaptureOptions;
    :cond_52
    move-object v2, p0

    move v7, p3

    move-object v6, p4

    .end local p3    # "reason":I
    .end local p4    # "options":Landroid/content/ContentCaptureOptions;
    .restart local v6    # "options":Landroid/content/ContentCaptureOptions;
    .restart local v7    # "reason":I
    goto :goto_59

    .line 561
    .end local v6    # "options":Landroid/content/ContentCaptureOptions;
    .end local v7    # "reason":I
    .restart local p3    # "reason":I
    .restart local p4    # "options":Landroid/content/ContentCaptureOptions;
    :cond_56
    move-object v2, p0

    move v7, p3

    move-object v6, p4

    .line 569
    .end local p3    # "reason":I
    .end local p4    # "options":Landroid/content/ContentCaptureOptions;
    .restart local v6    # "options":Landroid/content/ContentCaptureOptions;
    .restart local v7    # "reason":I
    :goto_59
    invoke-virtual {v9}, Landroid/view/contentcapture/ContentCaptureEvent;->getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object p3

    .line 570
    .local p3, "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    if-nez v4, :cond_65

    if-eqz p3, :cond_65

    .line 571
    invoke-virtual {p3}, Landroid/view/contentcapture/ContentCaptureContext;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 573
    :cond_65
    invoke-virtual {v9}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result p4

    packed-switch p4, :pswitch_data_c0

    .line 598
    :pswitch_6c
    invoke-virtual {p0, v1, v9}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    goto :goto_b3

    .line 594
    :pswitch_70
    invoke-virtual {p0, v1, v9}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 595
    iget p4, v5, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, v5, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    .line 596
    goto :goto_b3

    .line 590
    :pswitch_7a
    invoke-virtual {p0, v1, v9}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 591
    iget p4, v5, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, v5, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    .line 592
    goto :goto_b3

    .line 586
    :pswitch_84
    invoke-virtual {p0, v1, v9}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 587
    iget p4, v5, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, v5, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    .line 588
    goto :goto_b3

    .line 575
    :pswitch_8e
    invoke-virtual {v9}, Landroid/view/contentcapture/ContentCaptureEvent;->getParentSessionId()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/contentcapture/ContentCaptureContext;->setParentSessionId(I)V

    .line 576
    iget-object p4, v2, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {p4, v10, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 577
    invoke-virtual {p0, p3, v1}, Landroid/service/contentcapture/ContentCaptureService;->onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 578
    iget p4, v5, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    add-int/lit8 p4, p4, 0x1

    iput p4, v5, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    .line 579
    goto :goto_b3

    .line 581
    :pswitch_a4
    iget-object p4, v2, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {p4, v10}, Landroid/util/SparseIntArray;->delete(I)V

    .line 582
    invoke-virtual {p0, v1}, Landroid/service/contentcapture/ContentCaptureService;->onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V

    .line 583
    iget p4, v5, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    add-int/lit8 p4, p4, 0x1

    iput p4, v5, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    .line 584
    nop

    .line 557
    .end local v9    # "event":Landroid/view/contentcapture/ContentCaptureEvent;
    .end local v10    # "sessionIdInt":I
    .end local p3    # "clientContext":Landroid/view/contentcapture/ContentCaptureContext;
    :goto_b3
    add-int/lit8 v8, v8, 0x1

    move-object p4, v6

    move p3, v7

    goto/16 :goto_21

    .end local v6    # "options":Landroid/content/ContentCaptureOptions;
    .end local v7    # "reason":I
    .local p3, "reason":I
    .restart local p4    # "options":Landroid/content/ContentCaptureOptions;
    :cond_b9
    move-object v2, p0

    move v7, p3

    move-object v6, p4

    .line 601
    .end local v8    # "i":I
    .end local p3    # "reason":I
    .end local p4    # "options":Landroid/content/ContentCaptureOptions;
    .restart local v6    # "options":Landroid/content/ContentCaptureOptions;
    .restart local v7    # "reason":I
    invoke-direct/range {v2 .. v7}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 602
    return-void

    :pswitch_data_c0
    .packed-switch -0x2
        :pswitch_a4
        :pswitch_8e
        :pswitch_6c
        :pswitch_84
        :pswitch_7a
        :pswitch_70
    .end packed-switch
.end method

.method private synthetic blacklist lambda$handleOnLoginDetected$0(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 3
    .param p1, "sessionId"    # Landroid/view/contentcapture/ContentCaptureSessionId;
    .param p2, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 619
    invoke-virtual {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    return-void
.end method

.method public static blacklist setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V
    .registers 7
    .param p0, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p1, "sessionState"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 735
    if-eqz p2, :cond_f

    .line 736
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 737
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "binder"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_10

    .line 742
    .end local v0    # "extras":Landroid/os/Bundle;
    :catch_d
    move-exception v0

    goto :goto_14

    .line 739
    :cond_f
    const/4 v0, 0x0

    .line 741
    .restart local v0    # "extras":Landroid/os/Bundle;
    :goto_10
    invoke-interface {p0, p1, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_d

    .line 744
    .end local v0    # "extras":Landroid/os/Bundle;
    goto :goto_2c

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    :goto_14
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error async reporting result to client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method private blacklist writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .registers 14
    .param p1, "sessionId"    # I
    .param p2, "app"    # Landroid/content/ComponentName;
    .param p3, "flushMetrics"    # Landroid/service/contentcapture/FlushMetrics;
    .param p4, "options"    # Landroid/content/ContentCaptureOptions;
    .param p5, "flushReason"    # I

    .line 753
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    if-nez v0, :cond_d

    .line 754
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeSessionFlush(): no server callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void

    .line 759
    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_f} :catch_1b

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .end local p1    # "sessionId":I
    .end local p2    # "app":Landroid/content/ComponentName;
    .end local p3    # "flushMetrics":Landroid/service/contentcapture/FlushMetrics;
    .end local p4    # "options":Landroid/content/ContentCaptureOptions;
    .end local p5    # "flushReason":I
    .local v3, "sessionId":I
    .local v4, "app":Landroid/content/ComponentName;
    .local v5, "flushMetrics":Landroid/service/contentcapture/FlushMetrics;
    .local v6, "options":Landroid/content/ContentCaptureOptions;
    .local v7, "flushReason":I
    :try_start_14
    invoke-interface/range {v2 .. v7}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 763
    goto :goto_3a

    .line 761
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .end local v3    # "sessionId":I
    .end local v4    # "app":Landroid/content/ComponentName;
    .end local v5    # "flushMetrics":Landroid/service/contentcapture/FlushMetrics;
    .end local v6    # "options":Landroid/content/ContentCaptureOptions;
    .end local v7    # "flushReason":I
    .restart local p1    # "sessionId":I
    .restart local p2    # "app":Landroid/content/ComponentName;
    .restart local p3    # "flushMetrics":Landroid/service/contentcapture/FlushMetrics;
    .restart local p4    # "options":Landroid/content/ContentCaptureOptions;
    .restart local p5    # "flushReason":I
    :catch_1b
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object p1, v0

    .line 762
    .end local p2    # "app":Landroid/content/ComponentName;
    .end local p3    # "flushMetrics":Landroid/service/contentcapture/FlushMetrics;
    .end local p4    # "options":Landroid/content/ContentCaptureOptions;
    .end local p5    # "flushReason":I
    .restart local v3    # "sessionId":I
    .restart local v4    # "app":Landroid/content/ComponentName;
    .restart local v5    # "flushMetrics":Landroid/service/contentcapture/FlushMetrics;
    .restart local v6    # "options":Landroid/content/ContentCaptureOptions;
    .restart local v7    # "flushReason":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_22
    sget-object p2, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed to write flush metrics: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method


# virtual methods
.method public final whitelist disableSelf()V
    .registers 4

    .line 464
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "disableSelf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_b
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 467
    .local v0, "callback":Landroid/service/contentcapture/IContentCaptureServiceCallback;
    if-nez v0, :cond_17

    .line 468
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v2, "disableSelf(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void

    .line 472
    :cond_17
    :try_start_17
    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->disableSelf()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 475
    goto :goto_1f

    .line 473
    :catch_1b
    move-exception v1

    .line 474
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 476
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 492
    const-string v0, "Debug: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " Verbose: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 493
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 494
    .local v0, "size":I
    const-string v1, "Number sessions: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 495
    if-lez v0, :cond_48

    .line 496
    const-string v1, "  "

    .line 497
    .local v1, "prefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-ge v2, v0, :cond_48

    .line 498
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 499
    const-string v3, ": uid="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 502
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_48
    return-void
.end method

.method public whitelist onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/service/contentcapture/ActivityEvent;

    .line 448
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityEvent(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1d
    return-void
.end method

.method public whitelist onActivitySnapshot(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/service/contentcapture/SnapshotData;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/view/contentcapture/ContentCaptureSessionId;
    .param p2, "snapshotData"    # Landroid/service/contentcapture/SnapshotData;

    .line 436
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_23

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivitySnapshot(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_23
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 271
    const-string v0, "android.service.contentcapture.ContentCaptureService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 272
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServerInterface:Landroid/service/contentcapture/IContentCaptureService;

    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 274
    :cond_13
    const-string v0, "android.service.contentcapture.ContentProtectionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 275
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionServerInterface:Landroid/service/contentcapture/IContentProtectionService;

    invoke-interface {v0}, Landroid/service/contentcapture/IContentProtectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 277
    :cond_26
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to bind to wrong intent (should be android.service.contentcapture.ContentCaptureService or android.service.contentcapture.ContentProtectionService): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onConnected()V
    .registers 4

    .line 374
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public whitelist onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/view/contentcapture/ContentCaptureSessionId;
    .param p2, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 399
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_23

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onContentCaptureEventsRequest(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_23
    return-void
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 264
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mHandler:Landroid/os/Handler;

    .line 266
    return-void
.end method

.method public whitelist onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V
    .registers 6
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "sessionId"    # Landroid/view/contentcapture/ContentCaptureSessionId;

    .line 385
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_2d

    .line 386
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateContentCaptureSession(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2d
    return-void
.end method

.method public whitelist onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 408
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataRemovalRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_c
    return-void
.end method

.method public whitelist onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/DataShareCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "callback"    # Landroid/service/contentcapture/DataShareCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 423
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataShareRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_c
    return-void
.end method

.method public whitelist onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V
    .registers 5
    .param p1, "sessionId"    # Landroid/view/contentcapture/ContentCaptureSessionId;

    .line 457
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_23

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyContentCaptureSession(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_23
    return-void
.end method

.method public whitelist onDisconnected()V
    .registers 4

    .line 486
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method public final whitelist setContentCaptureConditions(Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p2, "conditions":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 356
    .local v0, "callback":Landroid/service/contentcapture/IContentCaptureServiceCallback;
    if-nez v0, :cond_d

    .line 357
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setContentCaptureConditions(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 362
    :cond_d
    :try_start_d
    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    .line 365
    goto :goto_19

    .line 363
    :catch_15
    move-exception v1

    .line 364
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 366
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final whitelist setContentCaptureWhitelist(Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 303
    .local p1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentCaptureServiceCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    .line 304
    .local v0, "contentCaptureCallback":Landroid/service/contentcapture/IContentCaptureServiceCallback;
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mContentProtectionAllowlistCallback:Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    .line 307
    .local v1, "contentProtectionAllowlistCallback":Landroid/service/contentcapture/IContentProtectionAllowlistCallback;
    if-nez v0, :cond_11

    if-nez v1, :cond_11

    .line 308
    sget-object v2, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setContentCaptureWhitelist(): missing both server callbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 312
    :cond_11
    if-eqz v0, :cond_2f

    .line 313
    if-nez v1, :cond_27

    .line 317
    nop

    .line 318
    :try_start_16
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    .line 317
    invoke-interface {v0, v2, v3}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    .line 321
    goto :goto_26

    .line 319
    :catch_22
    move-exception v2

    .line 320
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 322
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void

    .line 314
    :cond_27
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Have both server callbacks"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_2f
    :try_start_2f
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback;->setAllowlist(Ljava/util/List;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37

    .line 329
    goto :goto_3b

    .line 327
    :catch_37
    move-exception v2

    .line 328
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 330
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3b
    return-void
.end method
