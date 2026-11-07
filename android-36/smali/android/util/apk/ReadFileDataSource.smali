.class Landroid/util/apk/ReadFileDataSource;
.super Ljava/lang/Object;
.source "ReadFileDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# static fields
.field private static final blacklist CHUNK_SIZE:I = 0x100000


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mFilePosition:J

.field private final blacklist mSize:J


# direct methods
.method constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "position"    # J
    .param p4, "size"    # J

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/util/apk/ReadFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 47
    iput-wide p2, p0, Landroid/util/apk/ReadFileDataSource;->mFilePosition:J

    .line 48
    iput-wide p4, p0, Landroid/util/apk/ReadFileDataSource;->mSize:J

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .registers 21
    .param p1, "md"    # Landroid/util/apk/DataDigester;
    .param p2, "offset"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 60
    move-object/from16 v1, p0

    move/from16 v2, p4

    const/high16 v0, 0x100000

    :try_start_6
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    move-object v5, v3

    .line 61
    .local v5, "buffer":[B
    iget-wide v3, v1, Landroid/util/apk/ReadFileDataSource;->mFilePosition:J

    add-long v10, v3, p2

    .line 62
    .local v10, "start":J
    int-to-long v3, v2

    add-long v12, v10, v3

    .line 63
    .local v12, "end":J
    move-wide v3, v10

    .local v3, "pos":J
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v6, v0

    move-wide v8, v3

    move-wide v14, v6

    .line 64
    .end local v3    # "pos":J
    .local v8, "pos":J
    .local v14, "curSize":J
    :goto_1c
    cmp-long v0, v8, v12

    if-gez v0, :cond_43

    .line 65
    iget-object v4, v1, Landroid/util/apk/ReadFileDataSource;->mFd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    long-to-int v7, v14

    invoke-static/range {v4 .. v9}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v0

    .line 66
    .local v0, "readSize":I
    const/4 v3, 0x0

    invoke-static {v5, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_2d
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_2d} :catch_47

    move-object/from16 v4, p1

    :try_start_2f
    invoke-interface {v4, v3}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 67
    int-to-long v6, v0

    add-long/2addr v8, v6

    .line 64
    .end local v0    # "readSize":I
    sub-long v6, v12, v8

    const-wide/32 v0, 0x100000

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_3d
    .catch Landroid/system/ErrnoException; {:try_start_2f .. :try_end_3d} :catch_41

    move-wide v14, v0

    move-object/from16 v1, p0

    goto :goto_1c

    .line 69
    .end local v5    # "buffer":[B
    .end local v8    # "pos":J
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v14    # "curSize":J
    :catch_41
    move-exception v0

    goto :goto_4a

    .line 64
    .restart local v5    # "buffer":[B
    .restart local v8    # "pos":J
    .restart local v10    # "start":J
    .restart local v12    # "end":J
    .restart local v14    # "curSize":J
    :cond_43
    move-object/from16 v4, p1

    .line 71
    .end local v5    # "buffer":[B
    .end local v8    # "pos":J
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v14    # "curSize":J
    nop

    .line 72
    return-void

    .line 69
    :catch_47
    move-exception v0

    move-object/from16 v4, p1

    .line 70
    .local v0, "e":Landroid/system/ErrnoException;
    :goto_4a
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist size()J
    .registers 3

    .line 53
    iget-wide v0, p0, Landroid/util/apk/ReadFileDataSource;->mSize:J

    return-wide v0
.end method
