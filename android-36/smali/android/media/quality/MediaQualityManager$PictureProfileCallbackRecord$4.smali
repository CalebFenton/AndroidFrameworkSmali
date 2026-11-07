.class Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$4;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->postParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

.field final synthetic blacklist val$caps:Ljava/util/List;

.field final synthetic blacklist val$id:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 953
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$4;->this$0:Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$4;->val$id:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$4;->val$caps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 956
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$4;->this$0:Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;)Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$4;->val$id:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$4;->val$caps:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallback;->onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 957
    return-void
.end method
