.class public Landroid/security/apc/IConfirmationCallback$Default;
.super Ljava/lang/Object;
.source "IConfirmationCallback.java"

# interfaces
.implements Landroid/security/apc/IConfirmationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/apc/IConfirmationCallback;
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

.method public blacklist onCompleted(I[B)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "dataConfirmed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
