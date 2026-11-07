.class public interface abstract Lcom/android/ims/internal/IImsExternalCallStateListener;
.super Ljava/lang/Object;
.source "IImsExternalCallStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsExternalCallStateListener$Stub;,
        Lcom/android/ims/internal/IImsExternalCallStateListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onImsExternalCallStateUpdate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
