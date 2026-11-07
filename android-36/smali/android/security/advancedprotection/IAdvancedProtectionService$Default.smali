.class public Landroid/security/advancedprotection/IAdvancedProtectionService$Default;
.super Ljava/lang/Object;
.source "IAdvancedProtectionService.java"

# interfaces
.implements Landroid/security/advancedprotection/IAdvancedProtectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/advancedprotection/IAdvancedProtectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAdvancedProtectionFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/advancedprotection/AdvancedProtectionFeature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAdvancedProtectionEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logDialogShown(IIZ)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "type"    # I
    .param p3, "learnMoreClicked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist registerAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist setAdvancedProtectionEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
