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
.field private mAsset:J

.field private mLength:J

.field private mMarkPos:J

.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;J)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/AssetManager;
    .param p2, "asset"    # J

    #@0
    .prologue
    .line 549
    iput-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    .line 551
    iput-wide p2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@7
    .line 552
    invoke-static {p1, p2, p3}, Landroid/content/res/AssetManager;->-wrap2(Landroid/content/res/AssetManager;J)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    #@d
    .line 549
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/res/AssetManager;
    .param p2, "asset"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;J)V

    #@3
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 561
    iget-object v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@2
    iget-wide v4, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@4
    invoke-static {v2, v4, v5}, Landroid/content/res/AssetManager;->-wrap3(Landroid/content/res/AssetManager;J)J

    #@7
    move-result-wide v0

    #@8
    .line 562
    .local v0, "len":J
    const-wide/32 v2, 0x7fffffff

    #@b
    cmp-long v2, v0, v2

    #@d
    if-lez v2, :cond_0

    #@f
    const v2, 0x7fffffff

    #@12
    :goto_0
    return v2

    #@13
    :cond_0
    long-to-int v2, v0

    #@14
    goto :goto_0
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 565
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@4
    monitor-enter v1

    #@5
    .line 566
    :try_start_0
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@7
    cmp-long v0, v2, v4

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 567
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@d
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@f
    invoke-static {v0, v2, v3}, Landroid/content/res/AssetManager;->-wrap6(Landroid/content/res/AssetManager;J)V

    #@12
    .line 568
    const-wide/16 v2, 0x0

    #@14
    iput-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@16
    .line 569
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@18
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->hashCode()I

    #@1b
    move-result v2

    #@1c
    int-to-long v2, v2

    #@1d
    invoke-static {v0, v2, v3}, Landroid/content/res/AssetManager;->-wrap5(Landroid/content/res/AssetManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v1

    #@21
    .line 564
    return-void

    #@22
    .line 565
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    #@3
    .line 596
    return-void
.end method

.method public final getAssetInt()I
    .locals 1

    #@0
    .prologue
    .line 541
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final getNativeAsset()J
    .locals 2

    #@0
    .prologue
    .line 547
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@2
    return-wide v0
.end method

.method public final mark(I)V
    .locals 7
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 574
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@2
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->-wrap4(Landroid/content/res/AssetManager;JJI)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    #@d
    .line 573
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 558
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@2
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@4
    invoke-static {v0, v2, v3}, Landroid/content/res/AssetManager;->-wrap0(Landroid/content/res/AssetManager;J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final read([B)I
    .locals 7
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 580
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@2
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@4
    array-length v6, p1

    #@5
    const/4 v5, 0x0

    #@6
    move-object v4, p1

    #@7
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->-wrap1(Landroid/content/res/AssetManager;J[BII)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 583
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@2
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@4
    move-object v4, p1

    #@5
    move v5, p2

    #@6
    move v6, p3

    #@7
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->-wrap1(Landroid/content/res/AssetManager;J[BII)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final reset()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 577
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@2
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@4
    iget-wide v4, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    #@6
    const/4 v6, -0x1

    #@7
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->-wrap4(Landroid/content/res/AssetManager;JJI)J

    #@a
    .line 576
    return-void
.end method

.method public final skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 586
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@5
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@7
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->-wrap4(Landroid/content/res/AssetManager;JJI)J

    #@a
    move-result-wide v8

    #@b
    .line 587
    .local v8, "pos":J
    add-long v0, v8, p1

    #@d
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    #@f
    cmp-long v0, v0, v2

    #@11
    if-lez v0, :cond_0

    #@13
    .line 588
    iget-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    #@15
    sub-long p1, v0, v8

    #@17
    .line 590
    :cond_0
    cmp-long v0, p1, v4

    #@19
    if-lez v0, :cond_1

    #@1b
    .line 591
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    #@1d
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:J

    #@1f
    move-wide v4, p1

    #@20
    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->-wrap4(Landroid/content/res/AssetManager;JJI)J

    #@23
    .line 593
    :cond_1
    return-wide p1
.end method
