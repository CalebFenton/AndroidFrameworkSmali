.class Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$2;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->postPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

.field final synthetic blacklist val$id:Ljava/lang/String;

.field final synthetic blacklist val$profile:Landroid/media/quality/PictureProfile;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
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

    .line 934
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$2;->this$0:Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$2;->val$profile:Landroid/media/quality/PictureProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 937
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$2;->this$0:Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;)Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$2;->val$id:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord$2;->val$profile:Landroid/media/quality/PictureProfile;

    invoke-virtual {v0, v1, v2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallback;->onPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    .line 938
    return-void
.end method
