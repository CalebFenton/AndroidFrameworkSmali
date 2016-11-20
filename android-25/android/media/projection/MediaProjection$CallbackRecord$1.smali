.class Landroid/media/projection/MediaProjection$CallbackRecord$1;
.super Ljava/lang/Object;
.source "MediaProjection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/projection/MediaProjection$CallbackRecord;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/projection/MediaProjection$CallbackRecord;


# direct methods
.method constructor <init>(Landroid/media/projection/MediaProjection$CallbackRecord;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/projection/MediaProjection$CallbackRecord;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Landroid/media/projection/MediaProjection$CallbackRecord$1;->this$1:Landroid/media/projection/MediaProjection$CallbackRecord;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord$1;->this$1:Landroid/media/projection/MediaProjection$CallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/projection/MediaProjection$CallbackRecord;->-get0(Landroid/media/projection/MediaProjection$CallbackRecord;)Landroid/media/projection/MediaProjection$Callback;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    #@9
    .line 205
    return-void
.end method
