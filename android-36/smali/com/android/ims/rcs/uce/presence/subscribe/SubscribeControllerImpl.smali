.class public Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;
.super Ljava/lang/Object;
.source "SubscribeControllerImpl.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;


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

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubscribeController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;->mSubId:I

    .line 45
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged()V
    .registers 1

    .line 66
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 2

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;->mIsDestroyedFlag:Z

    .line 61
    return-void
.end method

.method public blacklist onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 50
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 51
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 2

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 56
    return-void
.end method

.method public blacklist requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .registers 6
    .param p2, "c"    # Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    .local p1, "contactUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;->mIsDestroyedFlag:Z

    if-nez v0, :cond_19

    .line 76
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 77
    .local v0, "featureManager":Lcom/android/ims/RcsFeatureManager;
    if-nez v0, :cond_15

    .line 78
    sget-object v1, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "requestCapabilities: Service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/16 v1, 0x9

    invoke-interface {p2, v1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;->onCommandError(I)V

    .line 80
    return-void

    .line 83
    :cond_15
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/RcsFeatureManager;->requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    .line 84
    return-void

    .line 73
    .end local v0    # "featureManager":Lcom/android/ims/RcsFeatureManager;
    :cond_19
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Subscribe controller is destroyed"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
