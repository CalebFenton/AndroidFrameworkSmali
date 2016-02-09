.class Landroid/media/MediaRouter$Static$1$1;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$Static$1;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/media/MediaRouter$Static$1;

.field final synthetic val$newRoutes:Landroid/media/AudioRoutesInfo;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$Static$1;Landroid/media/AudioRoutesInfo;)V
    .locals 0
    .param p1, "this$2"    # Landroid/media/MediaRouter$Static$1;
    .param p2, "val$newRoutes"    # Landroid/media/AudioRoutesInfo;

    #@0
    .prologue
    .line 101
    iput-object p1, p0, Landroid/media/MediaRouter$Static$1$1;->this$2:Landroid/media/MediaRouter$Static$1;

    #@2
    iput-object p2, p0, Landroid/media/MediaRouter$Static$1$1;->val$newRoutes:Landroid/media/AudioRoutesInfo;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/media/MediaRouter$Static$1$1;->this$2:Landroid/media/MediaRouter$Static$1;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static$1;->this$1:Landroid/media/MediaRouter$Static;

    #@4
    iget-object v1, p0, Landroid/media/MediaRouter$Static$1$1;->val$newRoutes:Landroid/media/AudioRoutesInfo;

    #@6
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$Static;->updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V

    #@9
    .line 102
    return-void
.end method
