.class final Landroid/media/projection/MediaProjection$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/projection/MediaProjection;


# direct methods
.method private constructor <init>(Landroid/media/projection/MediaProjection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/projection/MediaProjection;

    #@0
    .prologue
    .line 184
    iput-object p1, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    #@2
    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$MediaProjectionCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/projection/MediaProjection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;)V

    #@3
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    #@0
    .prologue
    .line 187
    iget-object v2, p0, Landroid/media/projection/MediaProjection$MediaProjectionCallback;->this$0:Landroid/media/projection/MediaProjection;

    #@2
    invoke-static {v2}, Landroid/media/projection/MediaProjection;->-get0(Landroid/media/projection/MediaProjection;)Ljava/util/Map;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "cbr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/media/projection/MediaProjection$CallbackRecord;

    #@1a
    .line 188
    .local v0, "cbr":Landroid/media/projection/MediaProjection$CallbackRecord;
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection$CallbackRecord;->onStop()V

    #@1d
    goto :goto_0

    #@1e
    .line 186
    .end local v0    # "cbr":Landroid/media/projection/MediaProjection$CallbackRecord;
    :cond_0
    return-void
.end method
