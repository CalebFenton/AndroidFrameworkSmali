.class public Landroid/security/rkp/IRemoteProvisioning$Default;
.super Ljava/lang/Object;
.source "IRemoteProvisioning.java"

# interfaces
.implements Landroid/security/rkp/IRemoteProvisioning;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/rkp/IRemoteProvisioning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRegistration(Ljava/lang/String;Landroid/security/rkp/IGetRegistrationCallback;)V
    .registers 3
    .param p1, "irpcName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/security/rkp/IGetRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method
