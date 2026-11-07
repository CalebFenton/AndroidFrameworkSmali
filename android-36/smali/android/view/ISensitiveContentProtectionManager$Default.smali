.class public Landroid/view/ISensitiveContentProtectionManager$Default;
.super Ljava/lang/Object;
.source "ISensitiveContentProtectionManager.java"

# interfaces
.implements Landroid/view/ISensitiveContentProtectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISensitiveContentProtectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setSensitiveContentProtection(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isShowingSensitiveContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
