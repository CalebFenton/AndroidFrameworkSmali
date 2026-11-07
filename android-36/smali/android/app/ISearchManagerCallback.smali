.class public interface abstract Landroid/app/ISearchManagerCallback;
.super Ljava/lang/Object;
.source "ISearchManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISearchManagerCallback$Stub;,
        Landroid/app/ISearchManagerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onCancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onDismiss()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
