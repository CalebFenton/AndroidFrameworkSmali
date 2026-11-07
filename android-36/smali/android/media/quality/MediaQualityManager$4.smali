.class Landroid/media/quality/MediaQualityManager$4;
.super Landroid/media/quality/IActiveProcessingPictureListener$Stub;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager;-><init>(Landroid/content/Context;Landroid/media/quality/IMediaQualityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/quality/MediaQualityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 217
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$4;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-direct {p0}, Landroid/media/quality/IActiveProcessingPictureListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onActiveProcessingPicturesChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "aps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "nonGlobal":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/ActiveProcessingPicture;

    .line 222
    .local v2, "ap":Landroid/media/quality/ActiveProcessingPicture;
    invoke-virtual {v2}, Landroid/media/quality/ActiveProcessingPicture;->isForGlobal()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v2    # "ap":Landroid/media/quality/ActiveProcessingPicture;
    :cond_1e
    goto :goto_9

    .line 226
    :cond_1f
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$4;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmApListenerRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    .line 227
    .local v2, "record":Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;
    invoke-static {v2}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->-$$Nest$fgetmIsGlobal(Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 228
    invoke-virtual {v2, p1}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->postActiveProcessingPicturesChanged(Ljava/util/List;)V

    goto :goto_42

    .line 230
    :cond_3f
    invoke-virtual {v2, v0}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->postActiveProcessingPicturesChanged(Ljava/util/List;)V

    .line 232
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;
    :goto_42
    goto :goto_29

    .line 233
    :cond_43
    return-void
.end method
