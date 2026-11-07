.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$CleanableResource;,
        Ljava/util/zip/ZipFile$Source;,
        Ljava/util/zip/ZipFile$ZipFileInputStream;,
        Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;,
        Ljava/util/zip/ZipFile$ZipEntryIterator;,
        Ljava/util/zip/ZipFile$EntrySpliterator;,
        Ljava/util/zip/ZipFile$InflaterCleanupAction;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFLATED:I = 0x8

.field public static final whitelist test-api OPEN_DELETE:I = 0x4

.field public static final whitelist test-api OPEN_READ:I = 0x1

.field private static final greylist-max-o STORED:I


# instance fields
.field private volatile greylist-max-o closeRequested:Z

.field private blacklist lastEntryName:Ljava/lang/String;

.field private blacklist lastEntryPos:I

.field private final greylist-max-o name:Ljava/lang/String;

.field private final blacklist res:Ljava/util/zip/ZipFile$CleanableResource;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$E6H00l6z3Lr623CYOBOGhMpxBB8(Ljava/util/zip/ZipFile;I)Ljava/util/jar/JarEntry;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;->lambda$jarStream$1(I)Ljava/util/jar/JarEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ZHaIYBAblJk1_wjJIK_woaEGYTE(Ljava/util/zip/ZipFile;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;->getEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ezC-4OQ_M11WsQ9SZfXtPWcxf2w(Ljava/util/zip/ZipFile;I)Ljava/util/zip/ZipEntry;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;->lambda$stream$0(I)Ljava/util/zip/ZipEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;
    .registers 1

    iget-object p0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mensureOpen(Ljava/util/zip/ZipFile;)V
    .registers 1

    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mensureOpenOrZipException(Ljava/util/zip/ZipFile;)V
    .registers 1

    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpenOrZipException()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetZipEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;I)Ljava/util/zip/ZipEntry;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;I)Ljava/util/zip/ZipEntry;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 204
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;I)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 190
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;Z)V

    .line 242
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;ILjava/nio/charset/Charset;Z)V
    .registers 13
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "enableZipPathValidator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_36

    and-int/lit8 v0, p2, -0x6

    if-nez v0, :cond_36

    .line 261
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    .line 275
    .end local p1    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    const-string p1, "charset"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    iput-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    .line 283
    if-eqz p4, :cond_26

    invoke-static {}, Ldalvik/system/ZipPathValidator;->isClear()Z

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    move v7, p1

    .line 284
    .local v7, "isZipPathValidatorEnabled":Z
    new-instance v2, Ljava/util/zip/ZipFile$CleanableResource;

    .line 285
    invoke-static {p3}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v4

    move-object v3, p0

    move v6, p2

    .end local p2    # "mode":I
    .local v6, "mode":I
    invoke-direct/range {v2 .. v7}, Ljava/util/zip/ZipFile$CleanableResource;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipCoder;Ljava/io/File;IZ)V

    iput-object v2, v3, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    .line 290
    return-void

    .line 256
    .end local v0    # "name":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "mode":I
    .end local v7    # "isZipPathValidatorEnabled":Z
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "mode":I
    :cond_36
    move-object v3, p0

    move v6, p2

    .line 258
    .end local p2    # "mode":I
    .restart local v6    # "mode":I
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal mode: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor blacklist <init>(Ljava/io/File;IZ)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .param p3, "enableZipPathValidator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;Z)V

    .line 248
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 340
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 159
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 319
    return-void
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3

    .line 910
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-nez v0, :cond_13

    .line 913
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    if-eqz v0, :cond_b

    .line 916
    return-void

    .line 914
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The object is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpenOrZipException()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-nez v0, :cond_5

    .line 922
    return-void

    .line 920
    :cond_5
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "ZipFile closed"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist entryNameStream()Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 658
    monitor-enter p0

    .line 659
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 660
    new-instance v0, Ljava/util/zip/ZipFile$EntrySpliterator;

    iget-object v1, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v1}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgettotal(Ljava/util/zip/ZipFile$Source;)I

    move-result v1

    new-instance v2, Ljava/util/zip/ZipFile$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile$$ExternalSyntheticLambda2;-><init>(Ljava/util/zip/ZipFile;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Ljava/util/zip/ZipFile$EntrySpliterator;-><init>(Ljava/util/zip/ZipFile;IILjava/util/function/IntFunction;)V

    invoke-static {v0, v3}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 662
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private blacklist getEntryName(I)Ljava/lang/String;
    .registers 6
    .param p1, "pos"    # I

    .line 641
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetcen(Ljava/util/zip/ZipFile$Source;)Ljava/nio/DirectByteBuffer;

    move-result-object v0

    .line 642
    .local v0, "cen":Ljava/nio/DirectByteBuffer;
    invoke-static {v0, p1}, Ljava/util/zip/ZipUtils;->CENNAM(Ljava/nio/DirectByteBuffer;I)I

    move-result v1

    .line 643
    .local v1, "nlen":I
    iget-object v2, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v2, v2, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v2, p1}, Ljava/util/zip/ZipFile$Source;->-$$Nest$mzipCoderForPos(Ljava/util/zip/ZipFile$Source;I)Ljava/util/zip/ZipCoder;

    move-result-object v2

    .line 644
    .local v2, "zc":Ljava/util/zip/ZipCoder;
    add-int/lit8 v3, p1, 0x2e

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/zip/ZipCoder;->toString(Ljava/nio/DirectByteBuffer;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private blacklist getManifestNum()I
    .registers 2

    .line 1139
    monitor-enter p0

    .line 1140
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 1141
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetmanifestNum(Ljava/util/zip/ZipFile$Source;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 1142
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private blacklist getMetaInfVersions()[I
    .registers 2

    .line 1174
    monitor-enter p0

    .line 1175
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 1176
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetmetaVersions(Ljava/util/zip/ZipFile$Source;)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1177
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private blacklist getZipEntry(Ljava/lang/String;I)Ljava/util/zip/ZipEntry;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 690
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetcen(Ljava/util/zip/ZipFile$Source;)Ljava/nio/DirectByteBuffer;

    move-result-object v0

    .line 691
    .local v0, "cen":Ljava/nio/DirectByteBuffer;
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENNAM(Ljava/nio/DirectByteBuffer;I)I

    move-result v1

    .line 692
    .local v1, "nlen":I
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENEXT(Ljava/nio/DirectByteBuffer;I)I

    move-result v2

    .line 693
    .local v2, "elen":I
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENCOM(Ljava/nio/DirectByteBuffer;I)I

    move-result v3

    .line 695
    .local v3, "clen":I
    iget-object v4, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v4, v4, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v4, p2}, Ljava/util/zip/ZipFile$Source;->-$$Nest$mzipCoderForPos(Ljava/util/zip/ZipFile$Source;I)Ljava/util/zip/ZipCoder;

    move-result-object v4

    .line 696
    .local v4, "zc":Ljava/util/zip/ZipCoder;
    if-eqz p1, :cond_4b

    .line 698
    if-lez v1, :cond_51

    .line 699
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_51

    add-int/lit8 v5, p2, 0x2e

    add-int/2addr v5, v1

    .line 700
    invoke-virtual {v4, v0, v5}, Ljava/util/zip/ZipCoder;->hasTrailingSlash(Ljava/nio/DirectByteBuffer;I)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 701
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    .line 707
    :cond_4b
    add-int/lit8 v5, p2, 0x2e

    invoke-virtual {v4, v0, v5, v1}, Ljava/util/zip/ZipCoder;->toString(Ljava/nio/DirectByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    .line 710
    :cond_51
    :goto_51
    instance-of v5, p0, Ljava/util/jar/JarFile;

    if-eqz v5, :cond_5d

    .line 713
    move-object v5, p0

    check-cast v5, Ljava/util/jar/JarFile;

    invoke-virtual {v5, p1}, Ljava/util/jar/JarFile;->entryFor(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .local v5, "e":Ljava/util/zip/ZipEntry;
    goto :goto_62

    .line 715
    .end local v5    # "e":Ljava/util/zip/ZipEntry;
    :cond_5d
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 717
    .restart local v5    # "e":Ljava/util/zip/ZipEntry;
    :goto_62
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENFLG(Ljava/nio/DirectByteBuffer;I)I

    move-result v6

    iput v6, v5, Ljava/util/zip/ZipEntry;->flag:I

    .line 718
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENTIM(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 719
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENCRC(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->crc:J

    .line 720
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENLEN(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->size:J

    .line 721
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENSIZ(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->csize:J

    .line 722
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENHOW(Ljava/nio/DirectByteBuffer;I)I

    move-result v6

    iput v6, v5, Ljava/util/zip/ZipEntry;->method:I

    .line 723
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENVEM_FA(Ljava/nio/DirectByteBuffer;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_97

    .line 725
    invoke-static {v0, p2}, Ljava/util/zip/ZipUtils;->CENATX_PERMS(Ljava/nio/DirectByteBuffer;I)I

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    iput v6, v5, Ljava/util/zip/ZipEntry;->extraAttributes:I

    .line 728
    :cond_97
    if-eqz v2, :cond_a6

    .line 729
    add-int/lit8 v6, p2, 0x2e

    add-int/2addr v6, v1

    .line 732
    .local v6, "start":I
    new-array v7, v2, [B

    .line 733
    .local v7, "bytes":[B
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8, v2}, Ljava/nio/DirectByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    .line 734
    const/4 v9, 0x1

    invoke-virtual {v5, v7, v9, v8}, Ljava/util/zip/ZipEntry;->setExtra0([BZZ)V

    .line 737
    .end local v6    # "start":I
    .end local v7    # "bytes":[B
    :cond_a6
    if-eqz v3, :cond_b2

    .line 738
    add-int/lit8 v6, p2, 0x2e

    add-int/2addr v6, v1

    add-int/2addr v6, v2

    .line 739
    .restart local v6    # "start":I
    invoke-virtual {v4, v0, v6, v3}, Ljava/util/zip/ZipCoder;->toString(Ljava/nio/DirectByteBuffer;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 741
    .end local v6    # "start":I
    :cond_b2
    iget-object v6, v5, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v6, p0, Ljava/util/zip/ZipFile;->lastEntryName:Ljava/lang/String;

    .line 742
    iput p2, p0, Ljava/util/zip/ZipFile;->lastEntryPos:I

    .line 743
    return-object v5
.end method

.method private blacklist jarEntries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .line 585
    monitor-enter p0

    .line 586
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 587
    new-instance v0, Ljava/util/zip/ZipFile$ZipEntryIterator;

    iget-object v1, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v1}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgettotal(Ljava/util/zip/ZipFile$Source;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/util/zip/ZipFile$ZipEntryIterator;-><init>(Ljava/util/zip/ZipFile;I)V

    monitor-exit p0

    return-object v0

    .line 588
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private blacklist jarStream()Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .line 676
    monitor-enter p0

    .line 677
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 678
    new-instance v0, Ljava/util/zip/ZipFile$EntrySpliterator;

    iget-object v1, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v1}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgettotal(Ljava/util/zip/ZipFile$Source;)I

    move-result v1

    new-instance v2, Ljava/util/zip/ZipFile$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile$$ExternalSyntheticLambda1;-><init>(Ljava/util/zip/ZipFile;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Ljava/util/zip/ZipFile$EntrySpliterator;-><init>(Ljava/util/zip/ZipFile;IILjava/util/function/IntFunction;)V

    invoke-static {v0, v3}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 680
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private synthetic blacklist lambda$jarStream$1(I)Ljava/util/jar/JarEntry;
    .registers 3
    .param p1, "pos"    # I

    .line 679
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;I)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method private synthetic blacklist lambda$stream$0(I)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "pos"    # I

    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;I)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-eqz v0, :cond_5

    .line 892
    return-void

    .line 894
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    .line 896
    monitor-enter p0

    .line 901
    :try_start_9
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 902
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile$CleanableResource;->clean()V
    :try_end_15
    .catch Ljava/io/UncheckedIOException; {:try_start_9 .. :try_end_15} :catch_1a
    .catchall {:try_start_9 .. :try_end_15} :catchall_18

    .line 905
    nop

    .line 906
    :try_start_16
    monitor-exit p0

    .line 907
    return-void

    .line 906
    :catchall_18
    move-exception v0

    goto :goto_20

    .line 903
    :catch_1a
    move-exception v0

    .line 904
    .local v0, "ioe":Ljava/io/UncheckedIOException;
    invoke-virtual {v0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object v1

    .end local p0    # "this":Ljava/util/zip/ZipFile;
    throw v1

    .line 906
    .end local v0    # "ioe":Ljava/io/UncheckedIOException;
    .restart local p0    # "this":Ljava/util/zip/ZipFile;
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_18

    throw v0
.end method

.method public whitelist test-api entries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 578
    monitor-enter p0

    .line 579
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 580
    new-instance v0, Ljava/util/zip/ZipFile$ZipEntryIterator;

    iget-object v1, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v1}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgettotal(Ljava/util/zip/ZipFile$Source;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/util/zip/ZipFile$ZipEntryIterator;-><init>(Ljava/util/zip/ZipFile;I)V

    monitor-exit p0

    return-object v0

    .line 581
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist test-api getComment()Ljava/lang/String;
    .registers 3

    .line 352
    monitor-enter p0

    .line 353
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 354
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetcomment(Ljava/util/zip/ZipFile$Source;)[B

    move-result-object v0

    if-nez v0, :cond_11

    .line 355
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 357
    :cond_11
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetzc(Ljava/util/zip/ZipFile$Source;)Ljava/util/zip/ZipCoder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v1}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetcomment(Ljava/util/zip/ZipFile$Source;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipCoder;->toString([B)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 358
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public whitelist test-api getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 370
    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    monitor-enter p0

    .line 373
    :try_start_7
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 374
    iget-object v1, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Ljava/util/zip/ZipFile$Source;->-$$Nest$mgetEntryPos(Ljava/util/zip/ZipFile$Source;Ljava/lang/String;Z)I

    move-result v1

    .line 375
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 376
    invoke-direct {p0, p1, v1}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;I)Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v0, v2

    .line 378
    .end local v1    # "pos":I
    :cond_1b
    monitor-exit p0

    .line 379
    return-object v0

    .line 378
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist test-api getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 11
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    const-string v0, "entry"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    .line 401
    .local v0, "zsrc":Ljava/util/zip/ZipFile$Source;
    iget-object v1, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    .line 402
    .local v1, "istreams":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/InputStream;>;"
    monitor-enter p0

    .line 403
    :try_start_e
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 404
    iget-object v2, p0, Ljava/util/zip/ZipFile;->lastEntryName:Ljava/lang/String;

    iget-object v3, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 405
    iget v2, p0, Ljava/util/zip/ZipFile;->lastEntryPos:I

    .local v2, "pos":I
    goto :goto_25

    .line 407
    .end local v2    # "pos":I
    :cond_1e
    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/zip/ZipFile$Source;->-$$Nest$mgetEntryPos(Ljava/util/zip/ZipFile$Source;Ljava/lang/String;Z)I

    move-result v2

    .line 409
    .restart local v2    # "pos":I
    :goto_25
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    .line 410
    monitor-exit p0

    const/4 v3, 0x0

    return-object v3

    .line 412
    :cond_2b
    new-instance v3, Ljava/util/zip/ZipFile$ZipFileInputStream;

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetcen(Ljava/util/zip/ZipFile$Source;)Ljava/nio/DirectByteBuffer;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Ljava/util/zip/ZipFile$ZipFileInputStream;-><init>(Ljava/util/zip/ZipFile;Ljava/nio/DirectByteBuffer;I)V

    .line 413
    .local v3, "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetcen(Ljava/util/zip/ZipFile$Source;)Ljava/nio/DirectByteBuffer;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/zip/ZipUtils;->CENHOW(Ljava/nio/DirectByteBuffer;I)I

    move-result v4

    sparse-switch v4, :sswitch_data_84

    .line 438
    new-instance v4, Ljava/util/zip/ZipException;

    goto :goto_7b

    .line 422
    :sswitch_42
    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetcen(Ljava/util/zip/ZipFile$Source;)Ljava/nio/DirectByteBuffer;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/zip/ZipUtils;->CENLEN(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    .line 423
    .local v4, "size":J
    const-wide/32 v6, 0x10000

    cmp-long v6, v4, v6

    if-lez v6, :cond_57

    .line 427
    const-wide/32 v4, 0x10000

    .line 429
    :cond_57
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_5f

    .line 430
    const-wide/16 v4, 0x1000

    .line 432
    :cond_5f
    new-instance v6, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;

    iget-object v7, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    long-to-int v8, v4

    invoke-direct {v6, p0, v3, v7, v8}, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/ZipFile$CleanableResource;I)V

    .line 433
    .local v6, "is":Ljava/io/InputStream;
    monitor-enter v1
    :try_end_68
    .catchall {:try_start_e .. :try_end_68} :catchall_81

    .line 434
    :try_start_68
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6e

    .line 436
    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_81

    return-object v6

    .line 435
    :catchall_6e
    move-exception v7

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    .end local v0    # "zsrc":Ljava/util/zip/ZipFile$Source;
    .end local v1    # "istreams":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/InputStream;>;"
    .end local p0    # "this":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    :try_start_70
    throw v7

    .line 415
    .end local v4    # "size":J
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v0    # "zsrc":Ljava/util/zip/ZipFile$Source;
    .restart local v1    # "istreams":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/InputStream;>;"
    .restart local p0    # "this":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
    :sswitch_71
    monitor-enter v1
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_81

    .line 416
    :try_start_72
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_78

    .line 418
    :try_start_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_81

    return-object v3

    .line 417
    :catchall_78
    move-exception v4

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    .end local v0    # "zsrc":Ljava/util/zip/ZipFile$Source;
    .end local v1    # "istreams":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/InputStream;>;"
    .end local p0    # "this":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    :try_start_7a
    throw v4

    .line 438
    .restart local v0    # "zsrc":Ljava/util/zip/ZipFile$Source;
    .restart local v1    # "istreams":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/InputStream;>;"
    .restart local p0    # "this":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
    :goto_7b
    const-string v5, "invalid compression method"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "zsrc":Ljava/util/zip/ZipFile$Source;
    .end local v1    # "istreams":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/InputStream;>;"
    .end local p0    # "this":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    throw v4

    .line 440
    .end local v2    # "pos":I
    .end local v3    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .restart local v0    # "zsrc":Ljava/util/zip/ZipFile$Source;
    .restart local v1    # "istreams":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/InputStream;>;"
    .restart local p0    # "this":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_81
    move-exception v2

    monitor-exit p0
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_81

    throw v2

    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_71
        0x8 -> :sswitch_42
    .end sparse-switch
.end method

.method protected blacklist getManifestAndSignatureRelatedFiles()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1112
    monitor-enter p0

    .line 1113
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 1114
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    .line 1115
    .local v0, "zsrc":Ljava/util/zip/ZipFile$Source;
    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetsignatureMetaNames(Ljava/util/zip/ZipFile$Source;)[I

    move-result-object v1

    .line 1116
    .local v1, "metanames":[I
    const/4 v2, 0x0

    .line 1117
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetmanifestPos(Ljava/util/zip/ZipFile$Source;)I

    move-result v3

    if-ltz v3, :cond_24

    .line 1118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 1119
    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetmanifestPos(Ljava/util/zip/ZipFile$Source;)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/zip/ZipFile;->getEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    :cond_24
    if-eqz v1, :cond_3e

    .line 1122
    if-nez v2, :cond_2e

    .line 1123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 1125
    :cond_2e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    array-length v4, v1

    if-ge v3, v4, :cond_3e

    .line 1126
    aget v4, v1, v3

    invoke-direct {p0, v4}, Ljava/util/zip/ZipFile;->getEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1129
    .end local v3    # "i":I
    :cond_3e
    if-nez v2, :cond_45

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v3

    goto :goto_46

    :cond_45
    move-object v3, v2

    :goto_46
    monitor-exit p0

    return-object v3

    .line 1130
    .end local v0    # "zsrc":Ljava/util/zip/ZipFile$Source;
    .end local v1    # "metanames":[I
    .end local v2    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method protected blacklist getManifestName(Z)Ljava/lang/String;
    .registers 5
    .param p1, "onlyIfSignatureRelatedFiles"    # Z

    .line 1155
    monitor-enter p0

    .line 1156
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 1157
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    .line 1158
    .local v0, "zsrc":Ljava/util/zip/ZipFile$Source;
    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetmanifestPos(Ljava/util/zip/ZipFile$Source;)I

    move-result v1

    .line 1159
    .local v1, "pos":I
    if-ltz v1, :cond_1c

    if-eqz p1, :cond_16

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetsignatureMetaNames(Ljava/util/zip/ZipFile$Source;)[I

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1160
    :cond_16
    invoke-direct {p0, v1}, Ljava/util/zip/ZipFile;->getEntryName(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 1162
    .end local v0    # "zsrc":Ljava/util/zip/ZipFile$Source;
    .end local v1    # "pos":I
    :cond_1c
    monitor-exit p0

    .line 1163
    const/4 v0, 0x0

    return-object v0

    .line 1162
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 520
    iget-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 753
    monitor-enter p0

    .line 754
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 755
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgettotal(Ljava/util/zip/ZipFile$Source;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 756
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public greylist-max-o startsWithLocHeader()Z
    .registers 2

    .line 1101
    iget-object v0, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetstartsWithLoc(Ljava/util/zip/ZipFile$Source;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 631
    monitor-enter p0

    .line 632
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 633
    new-instance v0, Ljava/util/zip/ZipFile$EntrySpliterator;

    iget-object v1, p0, Ljava/util/zip/ZipFile;->res:Ljava/util/zip/ZipFile$CleanableResource;

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {v1}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgettotal(Ljava/util/zip/ZipFile$Source;)I

    move-result v1

    new-instance v2, Ljava/util/zip/ZipFile$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile$$ExternalSyntheticLambda0;-><init>(Ljava/util/zip/ZipFile;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Ljava/util/zip/ZipFile$EntrySpliterator;-><init>(Ljava/util/zip/ZipFile;IILjava/util/function/IntFunction;)V

    invoke-static {v0, v3}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 635
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method
