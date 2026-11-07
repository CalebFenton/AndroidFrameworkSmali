.class Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "ImsRcsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapabilityBinder"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$zGZsJpd61UCSQBSn8YfndPCy_C8(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->lambda$onCapabilitiesStatusChanged$0(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 163
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    .line 164
    iput-object p2, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 165
    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    .line 166
    return-void
.end method

.method private synthetic blacklist lambda$onCapabilitiesStatusChanged$0(I)V
    .registers 3
    .param p1, "config"    # I

    .line 175
    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;->onAvailabilityChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesStatusChanged(I)V
    .registers 6
    .param p1, "config"    # I

    .line 170
    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    if-nez v0, :cond_5

    return-void

    .line 172
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 174
    .local v0, "callingIdentity":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 177
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->restoreCallingIdentity(J)V

    .line 178
    nop

    .line 179
    return-void

    .line 177
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->restoreCallingIdentity(J)V

    .line 178
    throw v2
.end method

.method public blacklist onChangeCapabilityConfigurationError(III)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 191
    return-void
.end method

.method public blacklist onQueryCapabilityConfiguration(IIZ)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "isEnabled"    # Z

    .line 185
    return-void
.end method
