.class public interface abstract Landroid/service/gatekeeper/IGateKeeperService;
.super Ljava/lang/Object;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub;,
        Landroid/service/gatekeeper/IGateKeeperService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"


# virtual methods
.method public abstract blacklist clearSecureUserId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSecureUserId(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reportDeviceSetupComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
