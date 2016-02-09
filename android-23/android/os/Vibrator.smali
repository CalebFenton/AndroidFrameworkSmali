.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# instance fields
.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    #@9
    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    #@9
    .line 46
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract hasVibrator()Z
.end method

.method public abstract vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
.end method

.method public abstract vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
.end method

.method public vibrate(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    #@4
    .line 64
    return-void
.end method

.method public vibrate(JLandroid/media/AudioAttributes;)V
    .locals 7
    .param p1, "milliseconds"    # J
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 80
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v2

    #@4
    iget-object v3, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    #@6
    move-object v1, p0

    #@7
    move-wide v4, p1

    #@8
    move-object v6, p3

    #@9
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    #@c
    .line 79
    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    #@4
    .line 103
    return-void
.end method

.method public vibrate([JILandroid/media/AudioAttributes;)V
    .locals 6
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 132
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v1

    #@4
    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    #@6
    move-object v0, p0

    #@7
    move-object v3, p1

    #@8
    move v4, p2

    #@9
    move-object v5, p3

    #@a
    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    #@d
    .line 131
    return-void
.end method
