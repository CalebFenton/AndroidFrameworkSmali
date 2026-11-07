.class public interface abstract Landroid/media/ISpatializerHeadTrackingModeCallback;
.super Ljava/lang/Object;
.source "ISpatializerHeadTrackingModeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;,
        Landroid/media/ISpatializerHeadTrackingModeCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.ISpatializerHeadTrackingModeCallback"


# virtual methods
.method public abstract blacklist dispatchSpatializerActualHeadTrackingModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist dispatchSpatializerDesiredHeadTrackingModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
