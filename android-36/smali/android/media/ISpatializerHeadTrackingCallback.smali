.class public interface abstract Landroid/media/ISpatializerHeadTrackingCallback;
.super Ljava/lang/Object;
.source "ISpatializerHeadTrackingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerHeadTrackingCallback$Stub;,
        Landroid/media/ISpatializerHeadTrackingCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.ISpatializerHeadTrackingCallback"


# virtual methods
.method public abstract blacklist onHeadToSoundStagePoseUpdated([F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHeadTrackingModeChanged(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
