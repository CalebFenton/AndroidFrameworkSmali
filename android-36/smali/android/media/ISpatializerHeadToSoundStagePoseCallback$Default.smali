.class public Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Default;
.super Ljava/lang/Object;
.source "ISpatializerHeadToSoundStagePoseCallback.java"

# interfaces
.implements Landroid/media/ISpatializerHeadToSoundStagePoseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dispatchPoseChanged([F)V
    .registers 2
    .param p1, "pose"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
