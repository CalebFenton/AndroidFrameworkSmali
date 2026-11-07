.class public Landroid/media/RemoteController$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/RemoteController;


# direct methods
.method protected constructor blacklist <init>(Landroid/media/RemoteController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/RemoteController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 388
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V
    .registers 8
    .param p1, "this$0"    # Landroid/media/RemoteController;
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "editableKeys"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 393
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    .line 394
    iput-object p2, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 395
    iput-wide p3, p0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    .line 397
    nop

    .line 398
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    .line 397
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 399
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_21

    .line 400
    invoke-direct {p0, v0}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    .line 403
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    .line 404
    iput-boolean v0, p0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z

    .line 406
    return-void
.end method

.method private greylist-max-o cleanupBitmapFromBundle(I)V
    .registers 4
    .param p1, "key"    # I

    .line 409
    sget-object v0, Landroid/media/RemoteController$MetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 410
    iget-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 412
    :cond_13
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist apply()V
    .registers 5

    monitor-enter p0

    .line 423
    :try_start_1
    iget-boolean v0, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_45

    if-nez v0, :cond_7

    .line 424
    monitor-exit p0

    return-void

    .line 426
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/media/RemoteController;->-$$Nest$sfgetmInfoLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_45

    .line 427
    :try_start_c
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-static {v1}, Landroid/media/RemoteController;->-$$Nest$fgetmCurrentSession(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_42

    if-eqz v1, :cond_3c

    .line 428
    :try_start_14
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 429
    const v2, 0x10000001

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 430
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/media/RemoteController$MetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Rating;

    .line 432
    .local v1, "rating":Landroid/media/Rating;
    if-eqz v1, :cond_3c

    .line 433
    iget-object v2, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-static {v2}, Landroid/media/RemoteController;->-$$Nest$fgetmCurrentSession(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_3a

    goto :goto_3c

    .line 437
    .end local v1    # "rating":Landroid/media/Rating;
    :catchall_3a
    move-exception v1

    goto :goto_43

    :cond_3c
    :goto_3c
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_42

    .line 441
    const/4 v0, 0x0

    :try_start_3e
    iput-boolean v0, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_45

    .line 442
    monitor-exit p0

    return-void

    .line 437
    .end local p0    # "this":Landroid/media/RemoteController$MetadataEditor;
    :catchall_42
    move-exception v1

    :goto_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v1

    .line 422
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_45

    throw v0
.end method
