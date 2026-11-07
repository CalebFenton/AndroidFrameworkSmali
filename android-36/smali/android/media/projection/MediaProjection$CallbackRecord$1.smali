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
.field final synthetic blacklist this$0:Landroid/media/projection/MediaProjection$CallbackRecord;


# direct methods
.method constructor blacklist <init>(Landroid/media/projection/MediaProjection$CallbackRecord;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/projection/MediaProjection$CallbackRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 469
    iput-object p1, p0, Landroid/media/projection/MediaProjection$CallbackRecord$1;->this$0:Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord$1;->this$0:Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-static {v0}, Landroid/media/projection/MediaProjection$CallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/projection/MediaProjection$CallbackRecord;)Landroid/media/projection/MediaProjection$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    .line 473
    return-void
.end method
