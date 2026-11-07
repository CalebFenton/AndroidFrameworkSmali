.class public interface abstract Landroid/os/IProcessInfoService;
.super Ljava/lang/Object;
.source "IProcessInfoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProcessInfoService$Stub;,
        Landroid/os/IProcessInfoService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o getProcessStatesAndOomScoresFromPids([I[I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getProcessStatesFromPids([I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
