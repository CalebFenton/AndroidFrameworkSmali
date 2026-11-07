.class public interface abstract Lcom/android/ims/internal/IImsEcbm;
.super Ljava/lang/Object;
.source "IImsEcbm.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsEcbm$Stub;,
        Lcom/android/ims/internal/IImsEcbm$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o exitEmergencyCallbackMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
