.class public Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;
.super Ljava/lang/Object;
.source "ProvisioningManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RcsProvisioningCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;
    }
.end annotation


# instance fields
.field private final blacklist mBinder:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    new-instance v0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;Landroid/telephony/ims/ProvisioningManager-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->mBinder:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    return-void
.end method


# virtual methods
.method public final blacklist getBinder()Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .registers 2

    .line 1189
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->mBinder:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    return-object v0
.end method

.method public whitelist onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 1155
    return-void
.end method

.method public whitelist onConfigurationChanged([B)V
    .registers 2
    .param p1, "configXml"    # [B

    .line 1144
    return-void
.end method

.method public whitelist onConfigurationReset()V
    .registers 1

    .line 1162
    return-void
.end method

.method public whitelist onPreProvisioningReceived([B)V
    .registers 2
    .param p1, "configXml"    # [B

    .line 1185
    return-void
.end method

.method public whitelist onRemoved()V
    .registers 1

    .line 1171
    return-void
.end method

.method public blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1194
    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->mBinder:Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;

    invoke-static {v0, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;->-$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback$CallbackBinder;Ljava/util/concurrent/Executor;)V

    .line 1195
    return-void
.end method
