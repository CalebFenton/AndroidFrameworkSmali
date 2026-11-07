.class public interface abstract Landroid/media/IAudioManagerNative;
.super Ljava/lang/Object;
.source "IAudioManagerNative.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioManagerNative$HardeningType;,
        Landroid/media/IAudioManagerNative$Stub;,
        Landroid/media/IAudioManagerNative$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioManagerNative"


# virtual methods
.method public abstract blacklist permissionUpdateBarrier()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist playbackHardeningEvent(IBZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist portMuteEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
