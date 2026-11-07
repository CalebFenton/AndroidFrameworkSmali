.class public Landroid/telephony/IBootstrapAuthenticationCallback$Default;
.super Ljava/lang/Object;
.source "IBootstrapAuthenticationCallback.java"

# interfaces
.implements Landroid/telephony/IBootstrapAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/IBootstrapAuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAuthenticationFailure(II)V
    .registers 3
    .param p1, "token"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onKeysAvailable(I[BLjava/lang/String;)V
    .registers 4
    .param p1, "token"    # I
    .param p2, "gbaKey"    # [B
    .param p3, "btId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
