.class final Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"

# interfaces
.implements Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryMappedFileDataSource"
.end annotation


# static fields
.field private static final MEMORY_PAGE_SIZE_BYTES:J

.field private static final OS:Llibcore/io/Os;


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;

.field private final mFilePosition:J

.field private final mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 997
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    sput-object v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    #@4
    .line 998
    sget-object v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    #@6
    sget v1, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    #@8
    invoke-interface {v0, v1}, Llibcore/io/Os;->sysconf(I)J

    #@b
    move-result-wide v0

    #@c
    sput-wide v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    #@e
    .line 996
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "position"    # J
    .param p4, "size"    # J

    #@0
    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1011
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    #@5
    .line 1012
    iput-wide p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFilePosition:J

    #@7
    .line 1013
    iput-wide p4, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mSize:J

    #@9
    .line 1010
    return-void
.end method


# virtual methods
.method public feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    .locals 28
    .param p1, "mds"    # [Ljava/security/MessageDigest;
    .param p2, "offset"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1037
    move-object/from16 v0, p0

    #@2
    iget-wide v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFilePosition:J

    #@4
    add-long v22, v4, p2

    #@6
    .line 1039
    .local v22, "filePosition":J
    sget-wide v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    #@8
    div-long v4, v22, v4

    #@a
    sget-wide v8, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    #@c
    mul-long v11, v4, v8

    #@e
    .line 1040
    .local v11, "mmapFilePosition":J
    sub-long v4, v22, v11

    #@10
    long-to-int v2, v4

    #@11
    .line 1041
    .local v2, "dataStartOffsetInMmapRegion":I
    add-int v3, p4, v2

    #@13
    int-to-long v6, v3

    #@14
    .line 1042
    .local v6, "mmapRegionSize":J
    const-wide/16 v26, 0x0

    #@16
    .line 1044
    .local v26, "mmapPtr":J
    :try_start_0
    sget-object v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    #@18
    .line 1045
    const-wide/16 v4, 0x0

    #@1a
    .line 1047
    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    #@1c
    .line 1048
    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    #@1e
    sget v10, Landroid/system/OsConstants;->MAP_POPULATE:I

    #@20
    or-int/2addr v9, v10

    #@21
    .line 1049
    move-object/from16 v0, p0

    #@23
    iget-object v10, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    #@25
    .line 1044
    invoke-interface/range {v3 .. v12}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    #@28
    move-result-wide v26

    #@29
    .line 1053
    new-instance v14, Ljava/nio/DirectByteBuffer;

    #@2b
    .line 1055
    int-to-long v4, v2

    #@2c
    add-long v16, v26, v4

    #@2e
    .line 1056
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    #@32
    move-object/from16 v18, v0

    #@34
    .line 1057
    const/16 v19, 0x0

    #@36
    .line 1058
    const/16 v20, 0x1

    #@38
    move/from16 v15, p4

    #@3a
    .line 1053
    invoke-direct/range {v14 .. v20}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    #@3d
    .line 1060
    .local v14, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    #@3e
    move-object/from16 v0, p1

    #@40
    array-length v4, v0

    #@41
    :goto_0
    if-ge v3, v4, :cond_0

    #@43
    aget-object v24, p1, v3

    #@45
    .line 1061
    .local v24, "md":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    #@46
    invoke-virtual {v14, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@49
    .line 1062
    move-object/from16 v0, v24

    #@4b
    invoke-virtual {v0, v14}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 1060
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_0

    #@51
    .line 1067
    .end local v24    # "md":Ljava/security/MessageDigest;
    :cond_0
    const-wide/16 v4, 0x0

    #@53
    cmp-long v3, v26, v4

    #@55
    if-eqz v3, :cond_1

    #@57
    .line 1069
    :try_start_1
    sget-object v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    #@59
    move-wide/from16 v0, v26

    #@5b
    invoke-interface {v3, v0, v1, v6, v7}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2

    #@5e
    .line 1023
    :cond_1
    :goto_1
    return-void

    #@5f
    .line 1064
    .end local v14    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v13

    #@60
    .line 1065
    .local v13, "e":Landroid/system/ErrnoException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    #@62
    new-instance v4, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v5, "Failed to mmap "

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    const-string/jumbo v5, " bytes"

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    invoke-direct {v3, v4, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@80
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@81
    .line 1066
    .end local v13    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v3

    #@82
    .line 1067
    const-wide/16 v4, 0x0

    #@84
    cmp-long v4, v26, v4

    #@86
    if-eqz v4, :cond_2

    #@88
    .line 1069
    :try_start_3
    sget-object v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    #@8a
    move-wide/from16 v0, v26

    #@8c
    invoke-interface {v4, v0, v1, v6, v7}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1

    #@8f
    .line 1066
    :cond_2
    :goto_2
    throw v3

    #@90
    .line 1070
    :catch_1
    move-exception v21

    #@91
    .local v21, "ignored":Landroid/system/ErrnoException;
    goto :goto_2

    #@92
    .end local v21    # "ignored":Landroid/system/ErrnoException;
    .restart local v14    # "buf":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v21

    #@93
    .restart local v21    # "ignored":Landroid/system/ErrnoException;
    goto :goto_1
.end method

.method public size()J
    .locals 2

    #@0
    .prologue
    .line 1018
    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mSize:J

    #@2
    return-wide v0
.end method
