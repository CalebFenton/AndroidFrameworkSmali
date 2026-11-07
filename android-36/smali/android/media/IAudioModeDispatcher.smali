.class public interface abstract Landroid/media/IAudioModeDispatcher;
.super Ljava/lang/Object;
.source "IAudioModeDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioModeDispatcher$Stub;,
        Landroid/media/IAudioModeDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioModeDispatcher"


# virtual methods
.method public abstract blacklist dispatchAudioModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
