.class Ljava/util/zip/ZipFile$ZipFileInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZipFileInputStream"
.end annotation


# instance fields
.field private volatile closeRequested:Z

.field protected jzentry:J

.field private pos:J

.field protected rem:J

.field protected size:J

.field final synthetic this$0:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;J)V
    .locals 2
    .param p1, "this$0"    # Ljava/util/zip/ZipFile;
    .param p2, "jzentry"    # J

    #@0
    .prologue
    .line 679
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    .line 673
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->closeRequested:Z

    #@8
    .line 680
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    #@c
    .line 681
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->-wrap3(J)J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@12
    .line 682
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->-wrap4(J)J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    #@18
    .line 683
    iput-wide p2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    #@1a
    .line 679
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    #@0
    .prologue
    .line 735
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@2
    const-wide/32 v2, 0x7fffffff

    #@5
    cmp-long v0, v0, v2

    #@7
    if-lez v0, :cond_0

    #@9
    const v0, 0x7fffffff

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@f
    long-to-int v0, v0

    #@10
    goto :goto_0
.end method

.method public close()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 743
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->closeRequested:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 744
    return-void

    #@7
    .line 745
    :cond_0
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->closeRequested:Z

    #@a
    .line 747
    iput-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@c
    .line 748
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@e
    monitor-enter v1

    #@f
    .line 749
    :try_start_0
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    #@11
    cmp-long v0, v2, v4

    #@13
    if-eqz v0, :cond_1

    #@15
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@17
    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    #@1a
    move-result-wide v2

    #@1b
    cmp-long v0, v2, v4

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 750
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@21
    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    #@24
    move-result-wide v2

    #@25
    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    #@27
    invoke-static {v2, v3, v4, v5}, Ljava/util/zip/ZipFile;->-wrap8(JJ)V

    #@2a
    .line 751
    const-wide/16 v2, 0x0

    #@2c
    iput-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_1
    monitor-exit v1

    #@2f
    .line 754
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@31
    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    #@34
    move-result-object v1

    #@35
    monitor-enter v1

    #@36
    .line 755
    :try_start_1
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@38
    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    #@3b
    move-result-object v0

    #@3c
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3f
    monitor-exit v1

    #@40
    .line 742
    return-void

    #@41
    .line 748
    :catchall_0
    move-exception v0

    #@42
    monitor-exit v1

    #@43
    throw v0

    #@44
    .line 754
    :catchall_1
    move-exception v0

    #@45
    monitor-exit v1

    #@46
    throw v0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 760
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    #@3
    .line 759
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 715
    new-array v0, v2, [B

    #@4
    .line 716
    .local v0, "b":[B
    invoke-virtual {p0, v0, v3, v2}, Ljava/util/zip/ZipFile$ZipFileInputStream;->read([BII)I

    #@7
    move-result v1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 717
    aget-byte v1, v0, v3

    #@c
    and-int/lit16 v1, v1, 0xff

    #@e
    return v1

    #@f
    .line 719
    :cond_0
    const/4 v1, -0x1

    #@10
    return v1
.end method

.method public read([BII)I
    .locals 12
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
    const-wide/16 v10, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 689
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@5
    invoke-static {v0}, Ljava/util/zip/ZipFile;->-wrap6(Ljava/util/zip/ZipFile;)V

    #@8
    .line 691
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@a
    cmp-long v0, v0, v10

    #@c
    if-nez v0, :cond_0

    #@e
    .line 692
    const/4 v0, -0x1

    #@f
    return v0

    #@10
    .line 694
    :cond_0
    if-gtz p3, :cond_1

    #@12
    .line 695
    return v2

    #@13
    .line 697
    :cond_1
    int-to-long v0, p3

    #@14
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@16
    cmp-long v0, v0, v2

    #@18
    if-lez v0, :cond_2

    #@1a
    .line 698
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@1c
    long-to-int p3, v0

    #@1d
    .line 700
    :cond_2
    iget-object v9, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@1f
    monitor-enter v9

    #@20
    .line 701
    :try_start_0
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    #@22
    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    #@25
    move-result-wide v0

    #@26
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    #@28
    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    #@2a
    move-object v6, p1

    #@2b
    move v7, p2

    #@2c
    move v8, p3

    #@2d
    invoke-static/range {v0 .. v8}, Ljava/util/zip/ZipFile;->-wrap0(JJJ[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result p3

    #@31
    monitor-exit v9

    #@32
    .line 704
    if-lez p3, :cond_3

    #@34
    .line 705
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    #@36
    int-to-long v2, p3

    #@37
    add-long/2addr v0, v2

    #@38
    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    #@3a
    .line 706
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@3c
    int-to-long v2, p3

    #@3d
    sub-long/2addr v0, v2

    #@3e
    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@40
    .line 708
    :cond_3
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@42
    cmp-long v0, v0, v10

    #@44
    if-nez v0, :cond_4

    #@46
    .line 709
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    #@49
    .line 711
    :cond_4
    return p3

    #@4a
    .line 700
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit v9

    #@4c
    throw v0
.end method

.method public size()J
    .locals 2

    #@0
    .prologue
    .line 739
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    #@2
    return-wide v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J

    #@0
    .prologue
    .line 724
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@2
    cmp-long v0, p1, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 725
    iget-wide p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@8
    .line 726
    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    #@a
    add-long/2addr v0, p1

    #@b
    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    #@d
    .line 727
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@f
    sub-long/2addr v0, p1

    #@10
    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@12
    .line 728
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    #@14
    const-wide/16 v2, 0x0

    #@16
    cmp-long v0, v0, v2

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 729
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    #@1d
    .line 731
    :cond_1
    return-wide p1
.end method
