.class public Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
.super Ljava/lang/Object;
.source "DeviceCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist REGISTER_IMS_CHANGED_DELAY:J = 0x3a98L


# instance fields
.field private final blacklist mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

.field private final blacklist mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

.field private final blacklist mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private blacklist mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

.field private blacklist mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

.field private blacklist mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

.field private volatile blacklist mInitialized:Z

.field private volatile blacklist mIsDestroyed:Z

.field private volatile blacklist mIsImsCallbackRegistered:Z

.field private volatile blacklist mIsRcsConnected:Z

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private final blacklist mLock:Ljava/lang/Object;

.field public final blacklist mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field public final blacklist mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mMobileDataObserver:Landroid/database/ContentObserver;

.field public final blacklist mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

.field private blacklist mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

.field private blacklist mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

.field public final blacklist mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field public final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSimInfoContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mSubId:I

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method public static synthetic blacklist $r8$lambda$-QM9FQcRx9mdczqj0BGCp4nWonY(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)Landroid/telephony/ims/ImsMmTelManager;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->lambda$new$0(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Ao2w5ZgvnYQqRxpe2VftJX9Fpjk(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)Landroid/telephony/ims/ImsRcsManager;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->lambda$new$1(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsMmTelManager(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Landroid/telephony/ims/ImsMmTelManager;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDestroyed(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsImsCallbackRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)I
    .registers 1

    iget p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUceStatsWriter(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/UceStatsWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsMmtelRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsMmtelRegistered(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsMmtelUnregistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsMmtelUnregistered()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsRcsRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsRcsUnregistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsRcsUnregistered()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMmTelSubscriberAssociatedUriChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;[Landroid/net/Uri;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMmTelSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMmtelCapabilitiesStatusChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMmtelCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMobileDataChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMobileDataChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleProvisioningChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleProvisioningChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePublishThrottleChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handlePublishThrottleChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRcsSubscriberAssociatedUriChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;[Landroid/net/Uri;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleRcsSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTtyPreferredModeChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleTtyPreferredModeChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVtSettingChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleVtSettingChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogw(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterImsProvisionCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->registerImsProvisionCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterImsProvisionCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterImsProvisionCallback()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceCapListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "info"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p4, "callback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .param p5, "uceStatsWriter"    # Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    .line 190
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    .line 193
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    .line 196
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 200
    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    .line 380
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 457
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 494
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$5;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$5;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 525
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 540
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$7;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$7;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 206
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    .line 207
    const-string v0, "create"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    .line 210
    iput-object p4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 211
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    .line 213
    iput-object p5, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 215
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceCapListenerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 216
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    .line 218
    new-instance v0, Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    .line 219
    return-void
.end method

.method private blacklist getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;
    .registers 6
    .param p1, "subId"    # I

    .line 437
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsManager;

    .line 439
    .local v1, "imsManager":Landroid/telephony/ims/ImsManager;
    if-nez v1, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    .line 440
    .end local v1    # "imsManager":Landroid/telephony/ims/ImsManager;
    :catch_13
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsMmTelManager error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 442
    return-object v0
.end method

.method private blacklist getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;
    .registers 6
    .param p1, "subId"    # I

    .line 448
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsManager;

    .line 450
    .local v1, "imsManager":Landroid/telephony/ims/ImsManager;
    if-nez v1, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    .line 451
    .end local v1    # "imsManager":Landroid/telephony/ims/ImsManager;
    :catch_13
    move-exception v1

    .line 452
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsRcsManager error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 453
    return-object v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 735
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    return-object v0
.end method

.method private blacklist getMobileDataObserver()Landroid/database/ContentObserver;
    .registers 5

    .line 396
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_19

    .line 398
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$2;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$2;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 407
    :cond_19
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    monitor-exit v0

    return-object v1

    .line 408
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private blacklist getSimInfoContentObserver()Landroid/database/ContentObserver;
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_19

    .line 414
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    .line 431
    :cond_19
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    monitor-exit v0

    return-object v1

    .line 432
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private blacklist handleImsMmtelRegistered(I)V
    .registers 3
    .param p1, "imsTransportType"    # I

    .line 592
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsMmtelRegistered(I)V

    .line 593
    return-void
.end method

.method private blacklist handleImsMmtelUnregistered()V
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsMmtelUnregistered()Z

    move-result v0

    .line 601
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMmTelSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    .line 604
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_17

    .line 605
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendImsUnregisteredMessage()V

    .line 607
    :cond_17
    return-void
.end method

.method private blacklist handleImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 4
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 641
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 642
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 644
    :cond_f
    return-void
.end method

.method private blacklist handleImsRcsUnregistered()V
    .registers 3

    .line 650
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsRcsUnregistered()Z

    move-result v0

    .line 652
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleRcsSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    .line 654
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_17

    .line 655
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendImsUnregisteredMessage()V

    .line 657
    :cond_17
    return-void
.end method

.method private blacklist handleMmTelSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V
    .registers 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "regiChanged"    # Z

    .line 613
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getMmtelAssociatedUri()Landroid/net/Uri;

    move-result-object v0

    .line 614
    .local v0, "originalUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateMmTelAssociatedUri([Landroid/net/Uri;)V

    .line 615
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getMmtelAssociatedUri()Landroid/net/Uri;

    move-result-object v1

    .line 617
    .local v1, "currentUri":Landroid/net/Uri;
    if-nez p2, :cond_1c

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v2, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v2, 0x1

    .line 619
    .local v2, "hasChanged":Z
    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMmTelSubscriberAssociatedUriChanged: hasChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 622
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz v2, :cond_44

    .line 623
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 626
    :cond_44
    return-void
.end method

.method private blacklist handleMmtelCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 5
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 629
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateMmtelCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v0

    .line 630
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMTel capabilities status changed: isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 631
    if-eqz v0, :cond_25

    .line 632
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 635
    :cond_25
    return-void
.end method

.method private blacklist handleMobileDataChanged(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .line 569
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateMobileData(Z)Z

    move-result v0

    .line 570
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile data changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 571
    if-eqz v0, :cond_2e

    .line 572
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 575
    :cond_2e
    return-void
.end method

.method private blacklist handleProvisioningChanged()V
    .registers 3

    .line 681
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 683
    return-void
.end method

.method private blacklist handlePublishThrottleChanged(I)V
    .registers 3
    .param p1, "value"    # I

    .line 689
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->updatePublishThrottle(I)V

    .line 690
    return-void
.end method

.method private blacklist handleRcsSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V
    .registers 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "regiChanged"    # Z

    .line 663
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getRcsAssociatedUri()Landroid/net/Uri;

    move-result-object v0

    .line 664
    .local v0, "originalUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRcsAssociatedUri([Landroid/net/Uri;)V

    .line 665
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getRcsAssociatedUri()Landroid/net/Uri;

    move-result-object v1

    .line 667
    .local v1, "currentUri":Landroid/net/Uri;
    if-nez p2, :cond_1c

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v2, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v2, 0x1

    .line 669
    .local v2, "hasChanged":Z
    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRcsSubscriberAssociatedUriChanged: hasChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 672
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz v2, :cond_44

    .line 673
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 675
    :cond_44
    return-void
.end method

.method private blacklist handleTtyPreferredModeChanged(I)V
    .registers 5
    .param p1, "preferredMode"    # I

    .line 560
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateTtyPreferredMode(I)Z

    move-result v0

    .line 561
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTY preferred mode changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 562
    if-eqz v0, :cond_2e

    .line 563
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 566
    :cond_2e
    return-void
.end method

.method private blacklist handleVtSettingChanged(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .line 578
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateVtSetting(Z)Z

    move-result v0

    .line 579
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VT setting changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 580
    if-eqz v0, :cond_2e

    .line 581
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 584
    :cond_2e
    return-void
.end method

.method private synthetic blacklist lambda$new$0(I)Landroid/telephony/ims/ImsMmTelManager;
    .registers 3
    .param p1, "subId"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$1(I)Landroid/telephony/ims/ImsRcsManager;
    .registers 3
    .param p1, "subId"    # I

    .line 193
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$2(I)Landroid/telephony/ims/ProvisioningManager;
    .registers 2
    .param p0, "subId"    # I

    .line 197
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 718
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[D] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 723
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[I] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 728
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method private blacklist registerImsProvisionCallback()V
    .registers 5

    .line 304
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    if-eqz v0, :cond_a

    .line 305
    const-string v0, "registerImsProvisionCallback: already registered."

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 306
    return-void

    .line 309
    :cond_a
    const-string v0, "registerImsProvisionCallback"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 312
    :try_start_f
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_25

    .line 313
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 315
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerMmTelCapabilityCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 320
    :cond_25
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    if-eqz v0, :cond_32

    .line 321
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsRcsManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 326
    :cond_32
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ProvisioningManager;->registerProvisioningChangedCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$Callback;)V

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z
    :try_end_3e
    .catch Landroid/telephony/ims/ImsException; {:try_start_f .. :try_end_3e} :catch_3f

    .line 340
    goto :goto_64

    .line 331
    :catch_3f
    move-exception v0

    .line 332
    .local v0, "e":Landroid/telephony/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerImsProvisionCallback error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterImsProvisionCallback()V

    .line 337
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsRcsConnected:Z

    if-eqz v1, :cond_64

    .line 338
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendRegisterImsContentChangedMessage(J)V

    .line 341
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :cond_64
    :goto_64
    return-void
.end method

.method private blacklist registerReceivers()V
    .registers 8

    .line 275
    const-string v0, "registerReceivers"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v0

    .line 277
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3b

    .line 284
    nop

    .line 285
    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 286
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getMobileDataObserver()Landroid/database/ContentObserver;

    move-result-object v2

    .line 284
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    sget-object v1, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 289
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getSimInfoContentObserver()Landroid/database/ContentObserver;

    move-result-object v2

    .line 288
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 291
    :cond_3b
    return-void
.end method

.method private blacklist unregisterImsProvisionCallback()V
    .registers 4

    .line 344
    const-string v0, "unregisterImsProvisionCallback"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_4f

    .line 349
    :try_start_9
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_10} :catch_11

    .line 352
    goto :goto_2c

    .line 350
    :catch_11
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister MMTel registration error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 354
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->unregisterMmTelCapabilityCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_33} :catch_34

    .line 357
    goto :goto_4f

    .line 355
    :catch_34
    move-exception v0

    .line 356
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister MMTel capability error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 361
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    if-eqz v0, :cond_76

    .line 363
    :try_start_53
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsRcsManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_5a} :catch_5b

    .line 366
    goto :goto_76

    .line 364
    :catch_5b
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister rcs capability error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 371
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_76
    :goto_76
    :try_start_76
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ProvisioningManager;->unregisterProvisioningChangedCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_7d} :catch_7e

    .line 374
    goto :goto_99

    .line 372
    :catch_7e
    move-exception v0

    .line 373
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister provisioning callback error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 377
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    .line 378
    return-void
.end method

.method private blacklist unregisterReceivers()V
    .registers 3

    .line 294
    const-string v0, "unregisterReceivers"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 296
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_22

    .line 298
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getMobileDataObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 299
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getSimInfoContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 301
    :cond_22
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 740
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 741
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceCapListener[subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 744
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->dump(Ljava/io/PrintWriter;)V

    .line 746
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 748
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 749
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 750
    const-string v1, "---"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 753
    return-void
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 694
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    return-object v0
.end method

.method public blacklist initialize()V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsDestroyed:Z

    if-eqz v1, :cond_e

    .line 227
    const-string v1, "initialize: This instance is already destroyed"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 228
    monitor-exit v0

    return-void

    .line 230
    :cond_e
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    if-eqz v1, :cond_14

    monitor-exit v0

    return-void

    .line 232
    :cond_14
    const-string v1, "initialize"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 234
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    .line 235
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;->getProvisioningManager(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    .line 236
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->registerReceivers()V

    .line 237
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->registerImsProvisionCallback()V

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 259
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsDestroyed:Z

    .line 261
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_b
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 263
    :cond_11
    const-string v1, "turnOffListener"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    .line 265
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterReceivers()V

    .line 266
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterImsProvisionCallback()V

    .line 267
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public blacklist onRcsConnected()V
    .registers 4

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsRcsConnected:Z

    .line 246
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendRegisterImsContentChangedMessage(J)V

    .line 247
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 2

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsRcsConnected:Z

    .line 252
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendUnregisterImsCallbackMessage()V

    .line 253
    return-void
.end method

.method public blacklist setImsCallbackRegistered(Z)V
    .registers 2
    .param p1, "registered"    # Z

    .line 714
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    .line 715
    return-void
.end method

.method public blacklist setImsMmTelManagerFactory(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    .line 699
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    .line 700
    return-void
.end method

.method public blacklist setImsRcsManagerFactory(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    .line 704
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    .line 705
    return-void
.end method

.method public blacklist setProvisioningMgrFactory(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    .line 709
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    .line 710
    return-void
.end method
