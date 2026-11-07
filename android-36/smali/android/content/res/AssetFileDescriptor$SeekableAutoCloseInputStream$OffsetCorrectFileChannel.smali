.class Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;
.super Ljava/nio/channels/FileChannel;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetCorrectFileChannel"
.end annotation


# static fields
.field private static final blacklist METHOD_NOT_SUPPORTED_MESSAGE:Ljava/lang/String; = "This Method is not supported in AutoCloseInputStream FileChannel."


# instance fields
.field private final blacklist mDelegate:Ljava/nio/channels/FileChannel;

.field final synthetic blacklist this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;Ljava/nio/channels/FileChannel;)V
    .registers 3
    .param p2, "fc"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 536
    iput-object p1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 537
    iput-object p2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    .line 538
    return-void
.end method


# virtual methods
.method public whitelist test-api force(Z)V
    .registers 4
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api implCloseChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 609
    return-void
.end method

.method public whitelist test-api lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 8
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 12
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_41

    .line 600
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p2, v0

    add-long/2addr v0, p4

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_37

    .line 601
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    sub-long v2, p2, v2

    sub-long p4, v0, v2

    move-wide v4, p4

    goto :goto_38

    .line 600
    :cond_37
    move-wide v4, p4

    .line 603
    .end local p4    # "size":J
    .local v4, "size":J
    :goto_38
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local p2    # "position":J
    .local v1, "mode":Ljava/nio/channels/FileChannel$MapMode;
    .local v2, "position":J
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1

    .line 597
    .end local v1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local v2    # "position":J
    .end local v4    # "size":J
    .restart local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .restart local p2    # "position":J
    .restart local p4    # "size":J
    :cond_41
    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .end local p2    # "position":J
    .restart local v1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    .restart local v2    # "position":J
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot map to buffer because position exceed current file size."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api position()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api position(J)Ljava/nio/channels/FileChannel;
    .registers 6
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v1

    sub-long v1, p1, v1

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fputmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;J)V

    .line 574
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api position(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v0

    const/4 v1, -0x1

    if-gtz v0, :cond_a

    return v1

    .line 543
    :cond_a
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 544
    .local v0, "bytesRead":I
    if-eq v0, v1, :cond_1d

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fputmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;J)V

    .line 545
    :cond_1d
    return v0
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;J)I
    .registers 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, -0x1

    return v0

    .line 563
    :cond_14
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([Ljava/nio/ByteBuffer;II)J
    .registers 11
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->available()I

    move-result v0

    const-wide/16 v1, -0x1

    if-gtz v0, :cond_b

    return-wide v1

    .line 551
    :cond_b
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_2b

    .line 552
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v3

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int p3, v3

    .line 554
    :cond_2b
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v3

    .line 555
    .local v3, "bytesRead":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fputmOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;J)V

    .line 556
    :cond_3f
    return-wide v3
.end method

.method public whitelist test-api size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 8
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 12
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 586
    const-wide/16 v0, 0x0

    return-wide v0

    .line 588
    :cond_15
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    sub-long v0, p1, v0

    add-long/2addr v0, p3

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3a

    .line 589
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v0}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmTotalSize(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->this$0:Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-static {v2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;->-$$Nest$fgetmFileOffset(Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;)J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long p3, v0, v2

    move-wide v3, p3

    goto :goto_3b

    .line 588
    :cond_3a
    move-wide v3, p3

    .line 591
    .end local p3    # "count":J
    .local v3, "count":J
    :goto_3b
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->mDelegate:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-object v5, p5

    .end local p1    # "position":J
    .end local p5    # "target":Ljava/nio/channels/WritableByteChannel;
    .local v1, "position":J
    .local v5, "target":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist test-api truncate(J)Ljava/nio/channels/FileChannel;
    .registers 5
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream$OffsetCorrectFileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 8
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;J)I
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api write([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This Method is not supported in AutoCloseInputStream FileChannel."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
