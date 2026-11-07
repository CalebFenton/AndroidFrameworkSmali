.class Landroid/util/apk/MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "MemoryMappedFileDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# static fields
.field private static final blacklist MEMORY_PAGE_SIZE_BYTES:J


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mFilePosition:J

.field private final blacklist mSize:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "position"    # J
    .param p4, "size"    # J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 49
    iput-wide p2, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    .line 50
    iput-wide p4, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .registers 31
    .param p1, "md"    # Landroid/util/apk/DataDigester;
    .param p2, "offset"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 74
    move-object/from16 v1, p0

    iget-wide v2, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    add-long v2, v2, p2

    .line 75
    .local v2, "filePosition":J
    sget-wide v4, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    div-long v4, v2, v4

    sget-wide v6, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    mul-long v15, v4, v6

    .line 77
    .local v15, "mmapFilePosition":J
    sub-long v4, v2, v15

    long-to-int v4, v4

    .line 78
    .local v4, "dataStartOffsetInMmapRegion":I
    add-int v0, p4, v4

    int-to-long v10, v0

    .line 79
    .local v10, "mmapRegionSize":J
    const-wide/16 v5, 0x0

    .line 81
    .local v5, "mmapPtr":J
    const-wide/16 v17, 0x0

    :try_start_18
    sget v12, Landroid/system/OsConstants;->PROT_READ:I

    sget v0, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v7, Landroid/system/OsConstants;->MAP_POPULATE:I

    or-int v13, v0, v7

    iget-object v14, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    const-wide/16 v8, 0x0

    invoke-static/range {v8 .. v16}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v7

    move-wide v5, v7

    .line 88
    new-instance v19, Ljava/nio/DirectByteBuffer;

    int-to-long v7, v4

    add-long v21, v5, v7

    iget-object v0, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move/from16 v20, p4

    move-object/from16 v23, v0

    invoke-direct/range {v19 .. v25}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_3b
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_3b} :catch_55
    .catchall {:try_start_18 .. :try_end_3b} :catchall_4f

    move-object/from16 v0, v19

    .line 95
    .local v0, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v7, p1

    :try_start_3f
    invoke-interface {v7, v0}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V
    :try_end_42
    .catch Landroid/system/ErrnoException; {:try_start_3f .. :try_end_42} :catch_4d
    .catchall {:try_start_3f .. :try_end_42} :catchall_77

    .line 99
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    cmp-long v0, v5, v17

    if-eqz v0, :cond_4c

    .line 101
    :try_start_46
    invoke-static {v5, v6, v10, v11}, Landroid/system/Os;->munmap(JJ)V
    :try_end_49
    .catch Landroid/system/ErrnoException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 102
    :goto_49
    goto :goto_4c

    :catch_4a
    move-exception v0

    goto :goto_49

    .line 105
    :cond_4c
    :goto_4c
    return-void

    .line 96
    :catch_4d
    move-exception v0

    goto :goto_58

    .line 99
    :catchall_4f
    move-exception v0

    move-object/from16 v7, p1

    :goto_52
    move-wide v8, v5

    move-object v5, v0

    goto :goto_79

    .line 96
    :catch_55
    move-exception v0

    move-object/from16 v7, p1

    .line 97
    .local v0, "e":Landroid/system/ErrnoException;
    :goto_58
    :try_start_58
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to mmap "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " bytes"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "filePosition":J
    .end local v4    # "dataStartOffsetInMmapRegion":I
    .end local v5    # "mmapPtr":J
    .end local v10    # "mmapRegionSize":J
    .end local v15    # "mmapFilePosition":J
    .end local p0    # "this":Landroid/util/apk/MemoryMappedFileDataSource;
    .end local p1    # "md":Landroid/util/apk/DataDigester;
    .end local p2    # "offset":J
    .end local p4    # "size":I
    throw v8
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_77

    .line 99
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v2    # "filePosition":J
    .restart local v4    # "dataStartOffsetInMmapRegion":I
    .restart local v5    # "mmapPtr":J
    .restart local v10    # "mmapRegionSize":J
    .restart local v15    # "mmapFilePosition":J
    .restart local p0    # "this":Landroid/util/apk/MemoryMappedFileDataSource;
    .restart local p1    # "md":Landroid/util/apk/DataDigester;
    .restart local p2    # "offset":J
    .restart local p4    # "size":I
    :catchall_77
    move-exception v0

    goto :goto_52

    .end local v5    # "mmapPtr":J
    .local v8, "mmapPtr":J
    :goto_79
    cmp-long v0, v8, v17

    if-eqz v0, :cond_83

    .line 101
    :try_start_7d
    invoke-static {v8, v9, v10, v11}, Landroid/system/Os;->munmap(JJ)V
    :try_end_80
    .catch Landroid/system/ErrnoException; {:try_start_7d .. :try_end_80} :catch_81

    .line 102
    :goto_80
    goto :goto_83

    :catch_81
    move-exception v0

    goto :goto_80

    .line 104
    :cond_83
    :goto_83
    throw v5
.end method

.method public blacklist size()J
    .registers 3

    .line 55
    iget-wide v0, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    return-wide v0
.end method
