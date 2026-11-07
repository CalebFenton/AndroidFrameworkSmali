.class Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "ImsMmTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapabilityBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$x3QTxzBzw8E24A1ui6PmIXUJa_M(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->lambda$onCapabilitiesStatusChanged$0(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .registers 2
    .param p1, "c"    # Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 171
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    .line 172
    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 173
    return-void
.end method

.method private synthetic blacklist lambda$onCapabilitiesStatusChanged$0(I)V
    .registers 4
    .param p1, "config"    # I

    .line 181
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 201
    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 202
    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesStatusChanged(I)V
    .registers 6
    .param p1, "config"    # I

    .line 177
    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mLocalCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    if-nez v0, :cond_5

    return-void

    .line 179
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 181
    .local v0, "callingIdentity":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 184
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->restoreCallingIdentity(J)V

    .line 185
    nop

    .line 186
    return-void

    .line 184
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback$CapabilityBinder;->restoreCallingIdentity(J)V

    .line 185
    throw v2
.end method

.method public blacklist onChangeCapabilityConfigurationError(III)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 198
    return-void
.end method

.method public blacklist onQueryCapabilityConfiguration(IIZ)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "isEnabled"    # Z

    .line 192
    return-void
.end method
