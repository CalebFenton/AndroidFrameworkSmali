.class public Landroid/uwb/IUwbVendorUciCallback$Default;
.super Ljava/lang/Object;
.source "IUwbVendorUciCallback.java"

# interfaces
.implements Landroid/uwb/IUwbVendorUciCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/IUwbVendorUciCallback;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onVendorNotificationReceived(II[B)V
    .registers 4
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onVendorResponseReceived(II[B)V
    .registers 4
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
