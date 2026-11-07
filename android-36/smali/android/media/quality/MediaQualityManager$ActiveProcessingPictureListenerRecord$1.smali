.class Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord$1;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->postActiveProcessingPicturesChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

.field final synthetic blacklist val$aps:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1250
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord$1;->this$0:Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord$1;->val$aps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1253
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord$1;->this$0:Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->-$$Nest$fgetmListener(Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord$1;->val$aps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1254
    return-void
.end method
