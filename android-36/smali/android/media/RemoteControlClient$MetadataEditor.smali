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
.field public static final whitelist BITMAP_KEY_ARTWORK:I = 0x64

.field public static final greylist-max-o METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field final synthetic blacklist this$0:Landroid/media/RemoteControlClient;


# direct methods
.method private constructor blacklist <init>(Landroid/media/RemoteControlClient;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/RemoteControlClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist apply()V
    .registers 6

    monitor-enter p0

    .line 556
    :try_start_1
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 557
    const-string v0, "RemoteControlClient"

    const-string v1, "Can\'t apply a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_8d

    .line 558
    monitor-exit p0

    return-void

    .line 560
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmCacheLock(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_8d

    .line 564
    :try_start_15
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, v2}, Landroid/media/RemoteControlClient;->-$$Nest$fputmMetadata(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)V

    .line 566
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmMetadata(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;

    move-result-object v1

    const v2, 0x1fffffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 567
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmOriginalArtwork(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_88

    if-eqz v1, :cond_52

    :try_start_3b
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmOriginalArtwork(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 568
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmOriginalArtwork(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_8b

    .line 570
    :cond_52
    :try_start_52
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/media/RemoteControlClient;->-$$Nest$fputmOriginalArtwork(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)V

    .line 571
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 574
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmSession(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;

    move-result-object v1
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_88

    if-eqz v1, :cond_82

    :try_start_64
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v1, :cond_82

    .line 575
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RemoteControlClient;->-$$Nest$fputmMediaMetadata(Landroid/media/RemoteControlClient;Landroid/media/MediaMetadata;)V

    .line 576
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmSession(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v2}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmMediaMetadata(Landroid/media/RemoteControlClient;)Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_8b

    .line 578
    :cond_82
    const/4 v1, 0x1

    :try_start_83
    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    .line 579
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_88

    .line 580
    monitor-exit p0

    return-void

    .line 579
    .restart local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :catchall_88
    move-exception v1

    :goto_89
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8b

    :try_start_8a
    throw v1

    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :catchall_8b
    move-exception v1

    goto :goto_89

    .line 555
    :catchall_8d
    move-exception v0

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method public declared-synchronized whitelist clear()V
    .registers 2

    monitor-enter p0

    .line 546
    :try_start_1
    invoke-super {p0}, Landroid/media/MediaMetadataEditor;->clear()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 547
    monitor-exit p0

    return-void

    .line 545
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 5
    .param p1, "key"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 511
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    .line 512
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v0, :cond_13

    .line 514
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 517
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 520
    .end local v0    # "metadataKey":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_13
    monitor-exit p0

    return-object p0

    .line 510
    .end local p1    # "key":I
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public bridge synthetic whitelist putLong(IJ)Landroid/media/MediaMetadataEditor;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 486
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaMetadataEditor;->putLong(IJ)Landroid/media/MediaMetadataEditor;

    .line 487
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v0, :cond_13

    .line 489
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 492
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v1, v0, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 495
    .end local v0    # "metadataKey":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_13
    monitor-exit p0

    return-object p0

    .line 485
    .end local p1    # "key":I
    .end local p2    # "value":J
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public bridge synthetic whitelist putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist putObject(ILjava/lang/Object;)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 6
    .param p1, "key"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 526
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 527
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v0, :cond_1f

    const v0, 0x10000001

    if-eq p1, v0, :cond_11

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1f

    .line 530
    :cond_11
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 532
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    move-object v2, p2

    check-cast v2, Landroid/media/Rating;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 535
    .end local v0    # "metadataKey":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_1f
    monitor-exit p0

    return-object p0

    .line 525
    .end local p1    # "key":I
    .end local p2    # "object":Ljava/lang/Object;
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public bridge synthetic whitelist putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1, p2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 5
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 456
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;

    .line 457
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    if-eqz v0, :cond_13

    .line 459
    invoke-static {p1}, Landroid/media/MediaMetadata;->getKeyFromMetadataEditorKey(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "metadataKey":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 462
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 466
    .end local v0    # "metadataKey":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_13
    monitor-exit p0

    return-object p0

    .line 455
    .end local p1    # "key":I
    .end local p2    # "value":Ljava/lang/String;
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method
