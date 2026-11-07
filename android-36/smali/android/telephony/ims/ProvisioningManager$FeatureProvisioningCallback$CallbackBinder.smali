.class Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;
.super Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$CCX0Yl58aoAztyy1ktODMaLOxqo(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->lambda$onRcsFeatureProvisioningChanged$1(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EjNzBK1psbyG2RBD1uc_DEqZATk(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->lambda$onFeatureProvisioningChanged$0(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;)V
    .registers 2
    .param p1, "featureProvisioningCallback"    # Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    .line 982
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;-><init>()V

    .line 983
    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    .line 984
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;Landroid/telephony/ims/ProvisioningManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFeatureProvisioningChanged$0(IIZ)V
    .registers 5
    .param p1, "capability"    # I
    .param p2, "tech"    # I
    .param p3, "isProvisioned"    # Z

    .line 992
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->onFeatureProvisioningChanged(IIZ)V

    return-void
.end method

.method private synthetic blacklist lambda$onRcsFeatureProvisioningChanged$1(IIZ)V
    .registers 5
    .param p1, "capability"    # I
    .param p2, "tech"    # I
    .param p3, "isProvisioned"    # Z

    .line 1005
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->onRcsFeatureProvisioningChanged(IIZ)V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1013
    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1014
    return-void
.end method


# virtual methods
.method public final blacklist onFeatureProvisioningChanged(IIZ)V
    .registers 8
    .param p1, "capability"    # I
    .param p2, "tech"    # I
    .param p3, "isProvisioned"    # Z

    .line 989
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 991
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 995
    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 996
    nop

    .line 997
    return-void

    .line 995
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 996
    throw v2
.end method

.method public final blacklist onRcsFeatureProvisioningChanged(IIZ)V
    .registers 8
    .param p1, "capability"    # I
    .param p2, "tech"    # I
    .param p3, "isProvisioned"    # Z

    .line 1002
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1004
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 1008
    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 1009
    nop

    .line 1010
    return-void

    .line 1008
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 1009
    throw v2
.end method
