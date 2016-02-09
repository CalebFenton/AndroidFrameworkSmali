.class Lcom/android/server/audio/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$DynamicPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 6079
    iput-object p1, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 7
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 6081
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 6082
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    #@9
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@c
    move-result-object v0

    #@d
    const/16 v1, 0x19

    #@f
    const/4 v2, 0x2

    #@10
    move v3, p2

    #@11
    move-object v5, p1

    #@12
    move v6, v4

    #@13
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@16
    .line 6080
    :cond_0
    return-void
.end method
