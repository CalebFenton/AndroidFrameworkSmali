.class public interface abstract Lcom/android/ims/internal/uce/uceservice/IUceListener;
.super Ljava/lang/Object;
.source "IUceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/IUceListener$Stub;,
        Lcom/android/ims/internal/uce/uceservice/IUceListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-r setStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
