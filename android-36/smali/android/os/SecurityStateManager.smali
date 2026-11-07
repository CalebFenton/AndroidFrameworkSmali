.class public Landroid/os/SecurityStateManager;
.super Ljava/lang/Object;
.source "SecurityStateManager.java"


# static fields
.field public static final whitelist KEY_KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field public static final whitelist KEY_SYSTEM_SPL:Ljava/lang/String; = "system_spl"

.field public static final whitelist KEY_VENDOR_SPL:Ljava/lang/String; = "vendor_spl"


# instance fields
.field private final blacklist mService:Landroid/os/ISecurityStateManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/ISecurityStateManager;)V
    .registers 3
    .param p1, "service"    # Landroid/os/ISecurityStateManager;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, "missing ISecurityStateManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ISecurityStateManager;

    iput-object v0, p0, Landroid/os/SecurityStateManager;->mService:Landroid/os/ISecurityStateManager;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist getGlobalSecurityState()Landroid/os/Bundle;
    .registers 3

    .line 76
    :try_start_0
    iget-object v0, p0, Landroid/os/SecurityStateManager;->mService:Landroid/os/ISecurityStateManager;

    invoke-interface {v0}, Landroid/os/ISecurityStateManager;->getGlobalSecurityState()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 77
    :catch_7
    move-exception v0

    .line 78
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
