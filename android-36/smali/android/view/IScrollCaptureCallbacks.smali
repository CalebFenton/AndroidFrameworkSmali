.class public interface abstract Landroid/view/IScrollCaptureCallbacks;
.super Ljava/lang/Object;
.source "IScrollCaptureCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IScrollCaptureCallbacks$Stub;,
        Landroid/view/IScrollCaptureCallbacks$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IScrollCaptureCallbacks"


# virtual methods
.method public abstract blacklist onCaptureEnded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCaptureStarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onImageRequestCompleted(ILandroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
