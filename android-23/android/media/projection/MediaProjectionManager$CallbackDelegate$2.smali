.class Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->onStop(Landroid/media/projection/MediaProjectionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

.field final synthetic val$info:Landroid/media/projection/MediaProjectionInfo;


# direct methods
.method constructor <init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    .param p2, "val$info"    # Landroid/media/projection/MediaProjectionInfo;

    #@0
    .prologue
    .line 197
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;->this$1:Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    #@2
    iput-object p2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;->val$info:Landroid/media/projection/MediaProjectionInfo;

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
    .line 200
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;->this$1:Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    #@2
    invoke-static {v0}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->-get0(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;)Landroid/media/projection/MediaProjectionManager$Callback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;->val$info:Landroid/media/projection/MediaProjectionInfo;

    #@8
    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjectionManager$Callback;->onStop(Landroid/media/projection/MediaProjectionInfo;)V

    #@b
    .line 199
    return-void
.end method
