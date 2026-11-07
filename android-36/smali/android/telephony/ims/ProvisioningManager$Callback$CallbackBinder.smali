.class Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;
.super Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;


# direct methods
.method public static synthetic blacklist $r8$lambda$Uqj45kRinWCd8VcShz4FVjh9G-M(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->lambda$onStringConfigChanged$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Vh-mxz2fHpOAh_Vyzgu6aTH6s60(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->lambda$onIntConfigChanged$0(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .registers 2
    .param p1, "localConfigurationCallback"    # Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 910
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;-><init>()V

    .line 911
    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 912
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ProvisioningManager$Callback;Landroid/telephony/ims/ProvisioningManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onIntConfigChanged$0(II)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 919
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->onProvisioningIntChanged(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onStringConfigChanged$1(ILjava/lang/String;)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 930
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mLocalConfigurationCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->onProvisioningStringChanged(ILjava/lang/String;)V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 937
    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 938
    return-void
.end method


# virtual methods
.method public final blacklist onIntConfigChanged(II)V
    .registers 7
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 916
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 918
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 921
    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 922
    nop

    .line 923
    return-void

    .line 921
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 922
    throw v2
.end method

.method public final blacklist onStringConfigChanged(ILjava/lang/String;)V
    .registers 7
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 929
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 932
    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 933
    nop

    .line 934
    return-void

    .line 932
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$Callback$CallbackBinder;->restoreCallingIdentity(J)V

    .line 933
    throw v2
.end method
