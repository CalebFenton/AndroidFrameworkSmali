.class Landroid/media/AudioManager$OnAmPortUpdateListener;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioPortUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAmPortUpdateListener"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "OnAmPortUpdateListener"


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    #@0
    .prologue
    .line 3959
    iput-object p1, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAmPortUpdateListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioManager$OnAmPortUpdateListener;-><init>(Landroid/media/AudioManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
    .locals 0
    .param p1, "patchList"    # [Landroid/media/AudioPatch;

    #@0
    .prologue
    .line 3970
    return-void
.end method

.method public onAudioPortListUpdate([Landroid/media/AudioPort;)V
    .locals 2
    .param p1, "portList"    # [Landroid/media/AudioPort;

    #@0
    .prologue
    .line 3962
    iget-object v0, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/media/AudioManager;->-wrap1(Landroid/media/AudioManager;Landroid/os/Handler;)V

    #@6
    .line 3961
    return-void
.end method

.method public onServiceDied()V
    .locals 2

    #@0
    .prologue
    .line 3976
    iget-object v0, p0, Landroid/media/AudioManager$OnAmPortUpdateListener;->this$0:Landroid/media/AudioManager;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/media/AudioManager;->-wrap1(Landroid/media/AudioManager;Landroid/os/Handler;)V

    #@6
    .line 3975
    return-void
.end method
