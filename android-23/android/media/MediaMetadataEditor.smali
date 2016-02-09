.class public abstract Landroid/media/MediaMetadataEditor;
.super Ljava/lang/Object;
.source "MediaMetadataEditor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BITMAP_KEY_ARTWORK:I = 0x64

.field public static final KEY_EDITABLE_MASK:I = 0x1fffffff

.field protected static final METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

.field protected static final METADATA_TYPE_BITMAP:I = 0x2

.field protected static final METADATA_TYPE_INVALID:I = -0x1

.field protected static final METADATA_TYPE_LONG:I = 0x0

.field protected static final METADATA_TYPE_RATING:I = 0x3

.field protected static final METADATA_TYPE_STRING:I = 0x1

.field public static final RATING_KEY_BY_OTHERS:I = 0x65

.field public static final RATING_KEY_BY_USER:I = 0x10000001

.field private static final TAG:Ljava/lang/String; = "MediaMetadataEditor"


# instance fields
.field protected mApplied:Z

.field protected mArtworkChanged:Z

.field protected mEditableKeys:J

.field protected mEditorArtwork:Landroid/graphics/Bitmap;

.field protected mEditorMetadata:Landroid/os/Bundle;

.field protected mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

.field protected mMetadataChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x3

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    .line 442
    new-instance v0, Landroid/util/SparseIntArray;

    #@6
    const/16 v1, 0x11

    #@8
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@b
    sput-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@d
    .line 445
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@f
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@12
    .line 447
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@14
    const/16 v1, 0xe

    #@16
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@19
    .line 448
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@1b
    const/16 v1, 0x9

    #@1d
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@20
    .line 449
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@22
    const/16 v1, 0x8

    #@24
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@27
    .line 451
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@29
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@2c
    .line 452
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@2e
    .line 453
    const/16 v1, 0xd

    #@30
    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@33
    .line 454
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@35
    const/4 v1, 0x7

    #@36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@39
    .line 455
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@3b
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@3e
    .line 456
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@40
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@43
    .line 457
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@45
    .line 458
    const/16 v1, 0xf

    #@47
    .line 457
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@4a
    .line 459
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@4c
    const/4 v1, 0x4

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@50
    .line 460
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@52
    const/4 v1, 0x5

    #@53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@56
    .line 461
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@58
    const/4 v1, 0x6

    #@59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@5c
    .line 462
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@5e
    const/16 v1, 0xb

    #@60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@63
    .line 464
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@65
    const/16 v1, 0x64

    #@67
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@6a
    .line 466
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@6c
    const/16 v1, 0x65

    #@6e
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@71
    .line 467
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@73
    const v1, 0x10000001

    #@76
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@79
    .line 33
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 90
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    #@6
    .line 95
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    #@8
    .line 100
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    #@a
    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized addEditableKey(I)V
    .locals 4
    .param p1, "key"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 142
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 143
    const-string/jumbo v0, "MediaMetadataEditor"

    #@8
    const-string/jumbo v1, "Can\'t change editable keys of a previously applied MetadataEditor"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 144
    return-void

    #@10
    .line 148
    :cond_0
    const v0, 0x10000001

    #@13
    if-ne p1, v0, :cond_1

    #@15
    .line 149
    :try_start_1
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    #@17
    const v2, 0x1fffffff

    #@1a
    and-int/2addr v2, p1

    #@1b
    int-to-long v2, v2

    #@1c
    or-long/2addr v0, v2

    #@1d
    iput-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    #@1f
    .line 150
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    :goto_0
    monitor-exit p0

    #@23
    .line 141
    return-void

    #@24
    .line 152
    :cond_1
    :try_start_2
    const-string/jumbo v0, "MediaMetadataEditor"

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Metadata key "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, " cannot be edited"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    goto :goto_0

    #@46
    :catchall_0
    move-exception v0

    #@47
    monitor-exit p0

    #@48
    throw v0
.end method

.method public abstract apply()V
.end method

.method public declared-synchronized clear()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 124
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 125
    const-string/jumbo v0, "MediaMetadataEditor"

    #@8
    const-string/jumbo v1, "Can\'t clear a previously applied MediaMetadataEditor"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 126
    return-void

    #@10
    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@12
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    #@15
    .line 129
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@18
    .line 130
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    #@1a
    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 123
    return-void

    #@21
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method

.method public declared-synchronized getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 365
    const/16 v0, 0x64

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 366
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Invalid type \'Bitmap\' for key "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0

    #@22
    .line 368
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@24
    if-eqz v0, :cond_1

    #@26
    iget-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .end local p2    # "defaultValue":Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit p0

    #@29
    return-object p2
.end method

.method public declared-synchronized getEditableKeys()[I
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 176
    :try_start_0
    iget-wide v2, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    #@3
    const-wide/32 v4, 0x10000001

    #@6
    cmp-long v1, v2, v4

    #@8
    if-nez v1, :cond_0

    #@a
    .line 177
    const/4 v1, 0x1

    #@b
    new-array v0, v1, [I

    #@d
    const v1, 0x10000001

    #@10
    const/4 v2, 0x0

    #@11
    aput v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .local v0, "keys":[I
    monitor-exit p0

    #@14
    .line 178
    return-object v0

    #@15
    .line 180
    .end local v0    # "keys":[I
    :cond_0
    const/4 v1, 0x0

    #@16
    monitor-exit p0

    #@17
    return-object v1

    #@18
    :catchall_0
    move-exception v1

    #@19
    monitor-exit p0

    #@1a
    throw v1
.end method

.method public declared-synchronized getLong(IJ)J
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 333
    :try_start_0
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Invalid type \'long\' for key "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :catchall_0
    move-exception v0

    #@25
    monitor-exit p0

    #@26
    throw v0

    #@27
    .line 336
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@29
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result-wide v0

    #@31
    monitor-exit p0

    #@32
    return-wide v0
.end method

.method public declared-synchronized getObject(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 382
    :try_start_0
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Invalid key "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0

    #@28
    .line 384
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@2a
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 385
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@3d
    move-result-wide v0

    #@3e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    move-result-object v0

    #@42
    monitor-exit p0

    #@43
    return-object v0

    #@44
    :cond_1
    monitor-exit p0

    #@45
    .line 387
    return-object p2

    #@46
    .line 390
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@48
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_2

    #@52
    .line 391
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@54
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    move-result-object v0

    #@5c
    monitor-exit p0

    #@5d
    return-object v0

    #@5e
    :cond_2
    monitor-exit p0

    #@5f
    .line 393
    return-object p2

    #@60
    .line 396
    :pswitch_2
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@62
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_3

    #@6c
    .line 397
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@6e
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@75
    move-result-object v0

    #@76
    monitor-exit p0

    #@77
    return-object v0

    #@78
    :cond_3
    monitor-exit p0

    #@79
    .line 399
    return-object p2

    #@7a
    .line 403
    :pswitch_3
    const/16 v0, 0x64

    #@7c
    if-ne p1, v0, :cond_0

    #@7e
    .line 404
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@80
    if-eqz v0, :cond_4

    #@82
    iget-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@84
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :cond_4
    monitor-exit p0

    #@85
    return-object p2

    #@86
    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 349
    :try_start_0
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Invalid type \'String\' for key "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0

    #@28
    .line 352
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@2a
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result-object v0

    #@32
    monitor-exit p0

    #@33
    return-object v0
.end method

.method public declared-synchronized putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    .locals 3
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
    .line 259
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 260
    const-string/jumbo v0, "MediaMetadataEditor"

    #@8
    const-string/jumbo v1, "Can\'t edit a previously applied MediaMetadataEditor"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 261
    return-object p0

    #@10
    .line 263
    :cond_0
    const/16 v0, 0x64

    #@12
    if-eq p1, v0, :cond_1

    #@14
    .line 264
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Invalid type \'Bitmap\' for key "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit p0

    #@30
    throw v0

    #@31
    .line 266
    :cond_1
    :try_start_2
    iput-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@33
    .line 267
    const/4 v0, 0x1

    #@34
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 268
    return-object p0
.end method

.method public declared-synchronized putLong(IJ)Landroid/media/MediaMetadataEditor;
    .locals 4
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
    .line 235
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 236
    const-string/jumbo v0, "MediaMetadataEditor"

    #@8
    const-string/jumbo v1, "Can\'t edit a previously applied MediaMetadataEditor"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 237
    return-object p0

    #@10
    .line 239
    :cond_0
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@12
    const/4 v1, -0x1

    #@13
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "Invalid type \'long\' for key "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    :catchall_0
    move-exception v0

    #@34
    monitor-exit p0

    #@35
    throw v0

    #@36
    .line 242
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@38
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@3f
    .line 243
    const/4 v0, 0x1

    #@40
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    monitor-exit p0

    #@43
    .line 244
    return-object p0
.end method

.method public declared-synchronized putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 290
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 291
    const-string/jumbo v0, "MediaMetadataEditor"

    #@8
    const-string/jumbo v1, "Can\'t edit a previously applied MediaMetadataEditor"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 292
    return-object p0

    #@10
    .line 294
    :cond_0
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@12
    const/4 v1, -0x1

    #@13
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@16
    move-result v0

    #@17
    packed-switch v0, :pswitch_data_0

    #@1a
    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Invalid key "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    #@35
    monitor-exit p0

    #@36
    throw v0

    #@37
    .line 296
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    :try_start_2
    instance-of v0, p2, Ljava/lang/Long;

    #@39
    if-eqz v0, :cond_1

    #@3b
    .line 297
    check-cast p2, Ljava/lang/Long;

    #@3d
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@40
    move-result-wide v0

    #@41
    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaMetadataEditor;->putLong(IJ)Landroid/media/MediaMetadataEditor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    move-result-object v0

    #@45
    monitor-exit p0

    #@46
    return-object v0

    #@47
    .line 299
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@49
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "Not a non-null Long for key "

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    .line 302
    :pswitch_1
    if-eqz p2, :cond_2

    #@63
    instance-of v0, p2, Ljava/lang/String;

    #@65
    if-eqz v0, :cond_3

    #@67
    .line 303
    :cond_2
    check-cast p2, Ljava/lang/String;

    #@69
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    move-result-object v0

    #@6d
    monitor-exit p0

    #@6e
    return-object v0

    #@6f
    .line 305
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@71
    new-instance v1, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v2, "Not a String for key "

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@88
    throw v0

    #@89
    .line 308
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@8b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    check-cast p2, Landroid/os/Parcelable;

    #@91
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@94
    .line 309
    const/4 v0, 0x1

    #@95
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@97
    monitor-exit p0

    #@98
    .line 320
    return-object p0

    #@99
    .line 312
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    if-eqz p2, :cond_4

    #@9b
    :try_start_5
    instance-of v0, p2, Landroid/graphics/Bitmap;

    #@9d
    if-eqz v0, :cond_5

    #@9f
    .line 313
    :cond_4
    check-cast p2, Landroid/graphics/Bitmap;

    #@a1
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a4
    move-result-object v0

    #@a5
    monitor-exit p0

    #@a6
    return-object v0

    #@a7
    .line 315
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a9
    new-instance v1, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v2, "Not a Bitmap for key "

    #@b1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v1

    #@bd
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c1
    .line 294
    nop

    #@c2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 206
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 207
    const-string/jumbo v0, "MediaMetadataEditor"

    #@9
    const-string/jumbo v1, "Can\'t edit a previously applied MediaMetadataEditor"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 208
    return-object p0

    #@11
    .line 210
    :cond_0
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@13
    const/4 v1, -0x1

    #@14
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@17
    move-result v0

    #@18
    if-eq v0, v2, :cond_1

    #@1a
    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Invalid type \'String\' for key "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    :catchall_0
    move-exception v0

    #@35
    monitor-exit p0

    #@36
    throw v0

    #@37
    .line 213
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 214
    const/4 v0, 0x1

    #@41
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 215
    return-object p0
.end method

.method public declared-synchronized removeEditableKeys()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 160
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 161
    const-string/jumbo v0, "MediaMetadataEditor"

    #@a
    const-string/jumbo v1, "Can\'t remove all editable keys of a previously applied MetadataEditor"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 162
    return-void

    #@12
    .line 164
    :cond_0
    :try_start_1
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    #@14
    cmp-long v0, v0, v2

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 165
    const-wide/16 v0, 0x0

    #@1a
    iput-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    #@1c
    .line 166
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    :cond_1
    monitor-exit p0

    #@20
    .line 159
    return-void

    #@21
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method
