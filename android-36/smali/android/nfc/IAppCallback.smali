.class public interface abstract Landroid/nfc/IAppCallback;
.super Ljava/lang/Object;
.source "IAppCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/IAppCallback$Stub;,
        Landroid/nfc/IAppCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onTagDiscovered(Landroid/nfc/Tag;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
