.class public interface abstract Landroid/os/ISchedulingPolicyService;
.super Ljava/lang/Object;
.source "ISchedulingPolicyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISchedulingPolicyService$Stub;,
        Landroid/os/ISchedulingPolicyService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o requestCpusetBoost(ZLandroid/os/IBinder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o requestPriority(IIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
