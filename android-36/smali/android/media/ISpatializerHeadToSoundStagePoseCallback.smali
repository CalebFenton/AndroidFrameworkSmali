.class public interface abstract Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
.super Ljava/lang/Object;
.source "ISpatializerHeadToSoundStagePoseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;,
        Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.ISpatializerHeadToSoundStagePoseCallback"


# virtual methods
.method public abstract blacklist dispatchPoseChanged([F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
