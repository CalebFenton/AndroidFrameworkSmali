.class Landroid/media/MediaRouter$Static$1;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter$Static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaRouter$Static;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$Static;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaRouter$Static;

    #@0
    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/MediaRouter$Static$1;->this$1:Landroid/media/MediaRouter$Static;

    #@2
    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 2
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/MediaRouter$Static$1;->this$1:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    #@4
    new-instance v1, Landroid/media/MediaRouter$Static$1$1;

    #@6
    invoke-direct {v1, p0, p1}, Landroid/media/MediaRouter$Static$1$1;-><init>(Landroid/media/MediaRouter$Static$1;Landroid/media/AudioRoutesInfo;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 100
    return-void
.end method
