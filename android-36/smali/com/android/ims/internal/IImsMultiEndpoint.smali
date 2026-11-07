.class public interface abstract Lcom/android/ims/internal/IImsMultiEndpoint;
.super Ljava/lang/Object;
.source "IImsMultiEndpoint.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsMultiEndpoint$Stub;,
        Lcom/android/ims/internal/IImsMultiEndpoint$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o requestImsExternalCallStateInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
