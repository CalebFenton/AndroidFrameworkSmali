.class Lcom/android/server/audio/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$ErrorCallback;


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
    .line 355
    iput-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 7
    .param p1, "error"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 357
    packed-switch p1, :pswitch_data_0

    #@4
    .line 356
    :goto_0
    return-void

    #@5
    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    #@7
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x4

    #@c
    .line 360
    const/4 v2, 0x1

    #@d
    const/4 v5, 0x0

    #@e
    move v4, v3

    #@f
    move v6, v3

    #@10
    .line 359
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@13
    goto :goto_0

    #@14
    .line 357
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
