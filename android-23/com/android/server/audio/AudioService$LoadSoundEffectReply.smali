.class Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadSoundEffectReply"
.end annotation


# instance fields
.field public mStatus:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 2270
    iput-object p1, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2271
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    #@8
    .line 2270
    return-void
.end method
