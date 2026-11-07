.class public Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;
.super Ljava/lang/Object;
.source "OptionsControllerImpl.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/options/OptionsController;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mIsDestroyedFlag:Z

.field private volatile blacklist mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

.field private final blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OptionsController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->mSubId:I

    .line 47
    iput-object p1, p0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged()V
    .registers 1

    .line 69
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 2

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->mIsDestroyedFlag:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 64
    return-void
.end method

.method public blacklist onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 52
    iput-object p1, p0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 53
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 2

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 58
    return-void
.end method

.method public blacklist sendCapabilitiesRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .registers 7
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "c"    # Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    .local p2, "deviceFeatureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->mIsDestroyedFlag:Z

    if-nez v0, :cond_1e

    .line 78
    iget-object v0, p0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 79
    .local v0, "featureManager":Lcom/android/ims/RcsFeatureManager;
    if-nez v0, :cond_15

    .line 80
    sget-object v1, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "sendCapabilitiesRequest: Service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v1, 0x9

    invoke-interface {p3, v1}, Landroid/telephony/ims/aidl/IOptionsResponseCallback;->onCommandError(I)V

    .line 82
    return-void

    .line 85
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/ims/RcsFeatureManager;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    .line 87
    return-void

    .line 75
    .end local v0    # "featureManager":Lcom/android/ims/RcsFeatureManager;
    :cond_1e
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "OPTIONS controller is destroyed"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
