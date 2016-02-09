.class public Landroid/media/RemoteControlClient$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BITMAP_KEY_ARTWORK:I = 0x64

.field public static final METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method private constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteControlClient;

    #@0
    .prologue
    .line 428
    iput-object p1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@2
    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteControlClient;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;)V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 570
    :try_start_0
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 571
    const-string/jumbo v0, "RemoteControlClient"

    #@8
    const-string/jumbo v1, "Can\'t apply a previously applied MetadataEditor"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    monitor-exit p0

    #@f
    .line 572
    return-void

    #@10
    .line 574
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@12
    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get0(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@17
    .line 578
    :try_start_2
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@19
    new-instance v2, Landroid/os/Bundle;

    #@1b
    iget-object v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@1d
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@20
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->-set1(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@23
    .line 580
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@25
    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get3(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;

    #@28
    move-result-object v0

    #@29
    const v2, 0x1fffffff

    #@2c
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    iget-wide v4, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    #@32
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@35
    .line 581
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@37
    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get4(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@3f
    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get4(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    #@42
    move-result-object v0

    #@43
    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@45
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_3

    #@4b
    .line 584
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@4d
    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@4f
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->-set2(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@52
    .line 585
    const/4 v0, 0x0

    #@53
    iput-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@55
    .line 588
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@57
    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get5(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;

    #@5a
    move-result-object v0

    #@5b
    if-eqz v0, :cond_2

    #@5d
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@5f
    if-eqz v0, :cond_2

    #@61
    .line 589
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@63
    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@65
    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    #@68
    move-result-object v2

    #@69
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->-set0(Landroid/media/RemoteControlClient;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    #@6c
    .line 590
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@6e
    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get5(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;

    #@71
    move-result-object v0

    #@72
    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@74
    invoke-static {v2}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/MediaMetadata;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    #@7b
    .line 592
    :cond_2
    const/4 v0, 0x1

    #@7c
    iput-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7e
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7f
    monitor-exit p0

    #@80
    .line 569
    return-void

    #@81
    .line 582
    :cond_3
    :try_start_4
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    #@83
    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get4(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8a
    goto :goto_0

    #@8b
    .line 574
    :catchall_0
    move-exception v0

    #@8c
    :try_start_5
    monitor-exit v1

    #@8d
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@8e
    :catchall_1
    move-exception v0

    #@8f
    monitor-exit p0

    #@90
    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 560
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaMetadataEditor;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 559
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@2
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@5
    throw v0
.end method

.method public bridge synthetic putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    .locals 1
    .param p1, "key"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 523
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 2
    .param p1, "key"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 525
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    #@4
    .line 526
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 528
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 530
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 531
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@10
    invoke-virtual {v1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .end local v0    # "metadataKey":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    #@14
    .line 534
    return-object p0

    #@15
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1
.end method

.method public bridge synthetic putLong(IJ)Landroid/media/MediaMetadataEditor;
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 498
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 500
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaMetadataEditor;->putLong(IJ)Landroid/media/MediaMetadataEditor;

    #@4
    .line 501
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 503
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 505
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 506
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@10
    invoke-virtual {v1, v0, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .end local v0    # "metadataKey":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    #@14
    .line 509
    return-object p0

    #@15
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1
.end method

.method public bridge synthetic putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;
    .locals 1
    .param p1, "key"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 538
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized putObject(ILjava/lang/Object;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 2
    .param p1, "key"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 540
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    #@4
    .line 541
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 542
    const v1, 0x10000001

    #@b
    if-eq p1, v1, :cond_0

    #@d
    .line 543
    const/16 v1, 0x65

    #@f
    if-ne p1, v1, :cond_1

    #@11
    .line 544
    :cond_0
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 545
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@17
    .line 546
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@19
    check-cast p2, Landroid/media/Rating;

    #@1b
    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {v1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .end local v0    # "metadataKey":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    #@1f
    .line 549
    return-object p0

    #@20
    :catchall_0
    move-exception v1

    #@21
    monitor-exit p0

    #@22
    throw v1
.end method

.method public bridge synthetic putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 470
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;

    #@4
    .line 471
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 473
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 475
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 476
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    #@10
    invoke-virtual {v1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .end local v0    # "metadataKey":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    #@14
    .line 480
    return-object p0

    #@15
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1
.end method
