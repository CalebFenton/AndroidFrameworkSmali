.class public final Landroid/content/res/AssetManager$AssetInputStream;
.super Ljava/io/InputStream;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AssetInputStream"
.end annotation


# instance fields
.field private greylist-max-o mAssetNativePtr:J

.field private greylist-max-o mLength:J

.field private greylist-max-o mMarkPos:J

.field final synthetic blacklist this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/AssetManager;J)V
    .registers 6
    .param p1, "this$0"    # Landroid/content/res/AssetManager;
    .param p2, "assetNativePtr"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1408
    iput-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1409
    iput-wide p2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    .line 1410
    invoke-static {p2, p3}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetGetLength(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    .line 1411
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;J)V

    return-void
.end method

.method private greylist-max-o ensureOpen()V
    .registers 5

    .line 1486
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 1489
    return-void

    .line 1487
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AssetInputStream is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1448
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1449
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetGetRemainingLength(J)J

    move-result-wide v0

    .line 1450
    .local v0, "len":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    const v2, 0x7fffffff

    goto :goto_15

    :cond_14
    long-to-int v2, v0

    :goto_15
    return v2
.end method

.method public final whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1472
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1473
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetDestroy(J)V

    .line 1474
    iput-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    .line 1476
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->-$$Nest$mdecRefs(Landroid/content/res/AssetManager;J)V

    .line 1478
    :cond_19
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1482
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 1483
    return-void
.end method

.method public final greylist getAssetInt()I
    .registers 2

    .line 1397
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final greylist getNativeAsset()J
    .registers 3

    .line 1405
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    return-wide v0
.end method

.method public final whitelist test-api mark(I)V
    .registers 7
    .param p1, "readlimit"    # I

    .line 1460
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1461
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetSeek(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    .line 1462
    return-void
.end method

.method public final whitelist test-api markSupported()Z
    .registers 2

    .line 1455
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1415
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1416
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetReadChar(J)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api read([B)I
    .registers 6
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1421
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1422
    const-string v0, "b"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1423
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetRead(J[BII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1428
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1429
    const-string v0, "b"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1430
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetRead(J[BII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api reset()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1466
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1467
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetSeek(JJI)J

    .line 1468
    return-void
.end method

.method public final whitelist test-api skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1435
    invoke-direct {p0}, Landroid/content/res/AssetManager$AssetInputStream;->ensureOpen()V

    .line 1436
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetSeek(JJI)J

    move-result-wide v0

    .line 1437
    .local v0, "pos":J
    add-long v5, v0, p1

    iget-wide v7, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_18

    .line 1438
    iget-wide v5, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    sub-long p1, v5, v0

    .line 1440
    :cond_18
    cmp-long v2, p1, v2

    if-lez v2, :cond_21

    .line 1441
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAssetNativePtr:J

    invoke-static {v2, v3, p1, p2, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeAssetSeek(JJI)J

    .line 1443
    :cond_21
    return-wide p1
.end method
