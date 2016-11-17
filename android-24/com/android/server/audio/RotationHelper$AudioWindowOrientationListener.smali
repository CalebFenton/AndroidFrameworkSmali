.class final Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioWindowOrientationListener"
.end annotation


# static fields
.field private static sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@3
    .line 150
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 155
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    #@3
    .line 156
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 157
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    #@9
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->endCheck()V

    #@c
    .line 159
    :cond_0
    new-instance v0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    #@e
    invoke-direct {v0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;-><init>()V

    #@11
    sput-object v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    #@13
    .line 160
    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    #@15
    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->beginCheck()V

    #@18
    .line 154
    return-void
.end method
