.class public interface abstract Landroid/os/IRecoverySystemProgressListener;
.super Ljava/lang/Object;
.source "IRecoverySystemProgressListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRecoverySystemProgressListener$Stub;,
        Landroid/os/IRecoverySystemProgressListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onProgress(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
