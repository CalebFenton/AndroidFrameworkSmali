.class public Ljava/util/zip/ZipOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I = 0x0

.field private static final ZIP64_PLACEHOLDER_BYTES:[B

.field private static final ZIP_VERSION_2_0:I = 0x14


# instance fields
.field private archiveNeedsZip64EocdRecord:Z

.field private cDir:Ljava/io/ByteArrayOutputStream;

.field private commentBytes:[B

.field private compressionLevel:I

.field private final crc:Ljava/util/zip/CRC32;

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private currentEntryNeedsZip64:Z

.field private defaultCompressionMethod:I

.field private final entries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entryCommentBytes:[B

.field private final forceZip64:Z

.field private nameBytes:[B

.field private offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    .line 98
    sput-object v0, Ljava/util/zip/ZipOutputStream;->ZIP64_PLACEHOLDER_BYTES:[B

    #@8
    .line 62
    return-void

    #@9
    .line 99
    nop

    #@a
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    #@4
    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "forceZip64"    # Z

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 137
    new-instance v0, Llibcore/util/CountingOutputStream;

    #@3
    invoke-direct {v0, p1}, Llibcore/util/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@6
    new-instance v1, Ljava/util/zip/Deflater;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-direct {v1, v3, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    #@c
    invoke-direct {p0, v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    #@f
    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@11
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    #@13
    .line 78
    new-instance v0, Ljava/util/HashSet;

    #@15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@18
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    #@1a
    .line 80
    const/16 v0, 0x8

    #@1c
    iput v0, p0, Ljava/util/zip/ZipOutputStream;->defaultCompressionMethod:I

    #@1e
    .line 82
    iput v3, p0, Ljava/util/zip/ZipOutputStream;->compressionLevel:I

    #@20
    .line 84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@22
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@25
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@27
    .line 88
    new-instance v0, Ljava/util/zip/CRC32;

    #@29
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@2c
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@2e
    .line 90
    const-wide/16 v0, 0x0

    #@30
    iput-wide v0, p0, Ljava/util/zip/ZipOutputStream;->offset:J

    #@32
    .line 138
    iput-boolean p2, p0, Ljava/util/zip/ZipOutputStream;->forceZip64:Z

    #@34
    .line 136
    return-void
.end method

.method private checkAndSetZip64Requirements(Ljava/util/zip/ZipEntry;)V
    .locals 10
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/4 v6, 0x1

    #@6
    .line 457
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->getBytesWritten()J

    #@9
    move-result-wide v2

    #@a
    .line 458
    .local v2, "totalBytesWritten":J
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    #@c
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    #@f
    move-result v4

    #@10
    int-to-long v0, v4

    #@11
    .line 460
    .local v0, "entriesWritten":J
    const/4 v4, 0x0

    #@12
    iput-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntryNeedsZip64:Z

    #@14
    .line 461
    iget-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->forceZip64:Z

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 462
    iput-boolean v6, p0, Ljava/util/zip/ZipOutputStream;->currentEntryNeedsZip64:Z

    #@1a
    .line 463
    iput-boolean v6, p0, Ljava/util/zip/ZipOutputStream;->archiveNeedsZip64EocdRecord:Z

    #@1c
    .line 464
    return-void

    #@1d
    .line 470
    :cond_0
    const-wide/32 v4, 0xffff

    #@20
    cmp-long v4, v0, v4

    #@22
    if-nez v4, :cond_1

    #@24
    .line 471
    iput-boolean v6, p0, Ljava/util/zip/ZipOutputStream;->archiveNeedsZip64EocdRecord:Z

    #@26
    .line 480
    :cond_1
    cmp-long v4, v2, v8

    #@28
    if-gtz v4, :cond_2

    #@2a
    .line 481
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@2d
    move-result-wide v4

    #@2e
    cmp-long v4, v4, v8

    #@30
    if-lez v4, :cond_3

    #@32
    .line 482
    :cond_2
    iput-boolean v6, p0, Ljava/util/zip/ZipOutputStream;->currentEntryNeedsZip64:Z

    #@34
    .line 483
    iput-boolean v6, p0, Ljava/util/zip/ZipOutputStream;->archiveNeedsZip64EocdRecord:Z

    #@36
    .line 456
    :cond_3
    return-void
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 585
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 583
    :cond_0
    return-void
.end method

.method private checkSizeIsWithinShort(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    #@0
    .prologue
    .line 590
    array-length v0, p2

    #@1
    const v1, 0xffff

    #@4
    if-le v0, v1, :cond_0

    #@6
    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " too long in UTF-8:"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    array-length v2, p2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 592
    const-string/jumbo v2, " bytes"

    #@20
    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 589
    :cond_0
    return-void
.end method

.method private getBytesWritten()J
    .locals 2

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@2
    check-cast v0, Llibcore/util/CountingOutputStream;

    #@4
    invoke-virtual {v0}, Llibcore/util/CountingOutputStream;->getCount()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method static writeIntAsUint16(Ljava/io/OutputStream;I)I
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 550
    and-int/lit16 v0, p1, 0xff

    #@2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 551
    shr-int/lit8 v0, p1, 0x8

    #@7
    and-int/lit16 v0, v0, 0xff

    #@9
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    #@c
    .line 552
    return p1
.end method

.method static writeLongAsUint32(Ljava/io/OutputStream;J)J
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 526
    const-wide/16 v0, 0xff

    #@2
    and-long/2addr v0, p1

    #@3
    long-to-int v0, v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    #@7
    .line 527
    const/16 v0, 0x8

    #@9
    shr-long v0, p1, v0

    #@b
    long-to-int v0, v0

    #@c
    and-int/lit16 v0, v0, 0xff

    #@e
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    #@11
    .line 528
    const/16 v0, 0x10

    #@13
    shr-long v0, p1, v0

    #@15
    long-to-int v0, v0

    #@16
    and-int/lit16 v0, v0, 0xff

    #@18
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    #@1b
    .line 529
    const/16 v0, 0x18

    #@1d
    shr-long v0, p1, v0

    #@1f
    long-to-int v0, v0

    #@20
    and-int/lit16 v0, v0, 0xff

    #@22
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    #@25
    .line 530
    return-wide p1
.end method

.method static writeLongAsUint64(Ljava/io/OutputStream;J)J
    .locals 5
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 534
    long-to-int v0, p1

    #@1
    .line 535
    .local v0, "i1":I
    and-int/lit16 v2, v0, 0xff

    #@3
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    #@6
    .line 536
    shr-int/lit8 v2, v0, 0x8

    #@8
    and-int/lit16 v2, v2, 0xff

    #@a
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    #@d
    .line 537
    shr-int/lit8 v2, v0, 0x10

    #@f
    and-int/lit16 v2, v2, 0xff

    #@11
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    #@14
    .line 538
    shr-int/lit8 v2, v0, 0x18

    #@16
    and-int/lit16 v2, v2, 0xff

    #@18
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    #@1b
    .line 540
    const/16 v2, 0x20

    #@1d
    shr-long v2, p1, v2

    #@1f
    long-to-int v1, v2

    #@20
    .line 541
    .local v1, "i2":I
    and-int/lit16 v2, v1, 0xff

    #@22
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    #@25
    .line 542
    shr-int/lit8 v2, v1, 0x8

    #@27
    and-int/lit16 v2, v2, 0xff

    #@29
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    #@2c
    .line 543
    shr-int/lit8 v2, v1, 0x10

    #@2e
    and-int/lit16 v2, v2, 0xff

    #@30
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    #@33
    .line 544
    shr-int/lit8 v2, v1, 0x18

    #@35
    and-int/lit16 v2, v2, 0xff

    #@37
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    #@3a
    .line 546
    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 151
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 152
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->finish()V

    #@8
    .line 153
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@a
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    #@d
    .line 154
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@12
    .line 155
    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@14
    .line 149
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v13, 0x14

    #@2
    const/16 v12, 0x8

    #@4
    const-wide v10, 0xffffffffL

    #@9
    const/4 v9, 0x0

    #@a
    const/4 v8, 0x0

    #@b
    .line 167
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkOpen()V

    #@e
    .line 168
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@10
    if-nez v3, :cond_0

    #@12
    .line 169
    return-void

    #@13
    .line 171
    :cond_0
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@15
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@18
    move-result v3

    #@19
    if-ne v3, v12, :cond_1

    #@1b
    .line 172
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    #@1e
    .line 176
    :cond_1
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@20
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_3

    #@26
    .line 177
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@28
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    #@2b
    move-result-wide v4

    #@2c
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@2e
    iget-wide v6, v3, Ljava/util/zip/ZipEntry;->crc:J

    #@30
    cmp-long v3, v4, v6

    #@32
    if-eqz v3, :cond_2

    #@34
    .line 178
    new-instance v3, Ljava/util/zip/ZipException;

    #@36
    const-string/jumbo v4, "CRC mismatch"

    #@39
    invoke-direct {v3, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3

    #@3d
    .line 180
    :cond_2
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@3f
    iget-wide v4, v3, Ljava/util/zip/ZipEntry;->size:J

    #@41
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@43
    iget-wide v6, v3, Ljava/util/zip/CRC32;->tbytes:J

    #@45
    cmp-long v3, v4, v6

    #@47
    if-eqz v3, :cond_3

    #@49
    .line 181
    new-instance v3, Ljava/util/zip/ZipException;

    #@4b
    const-string/jumbo v4, "Size mismatch"

    #@4e
    invoke-direct {v3, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@51
    throw v3

    #@52
    .line 185
    :cond_3
    const-wide/16 v0, 0x1e

    #@54
    .line 188
    .local v0, "curOffset":J
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@56
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_4

    #@5c
    .line 189
    const-wide/16 v0, 0x2e

    #@5e
    .line 192
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@60
    const-wide/32 v4, 0x8074b50

    #@63
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@66
    .line 193
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@68
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@6a
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    #@6d
    move-result-wide v4

    #@6e
    iget-object v6, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@70
    iput-wide v4, v6, Ljava/util/zip/ZipEntry;->crc:J

    #@72
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@75
    .line 195
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@77
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@79
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getBytesWritten()J

    #@7c
    move-result-wide v4

    #@7d
    iput-wide v4, v3, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@7f
    .line 196
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@81
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@83
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getBytesRead()J

    #@86
    move-result-wide v4

    #@87
    iput-wide v4, v3, Ljava/util/zip/ZipEntry;->size:J

    #@89
    .line 198
    iget-boolean v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntryNeedsZip64:Z

    #@8b
    if-eqz v3, :cond_7

    #@8d
    .line 201
    const-wide/16 v4, 0x8

    #@8f
    add-long/2addr v0, v4

    #@90
    .line 202
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@92
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@94
    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@96
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint64(Ljava/io/OutputStream;J)J

    #@99
    .line 203
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@9b
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@9d
    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    #@9f
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint64(Ljava/io/OutputStream;J)J

    #@a2
    .line 211
    :cond_4
    :goto_0
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@a4
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@a7
    move-result v3

    #@a8
    if-nez v3, :cond_8

    #@aa
    const/4 v2, 0x0

    #@ab
    .line 215
    .local v2, "flags":I
    :goto_1
    or-int/lit16 v2, v2, 0x800

    #@ad
    .line 216
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@af
    const-wide/32 v4, 0x2014b50    # 1.6619997E-316

    #@b2
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@b5
    .line 217
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@b7
    invoke-static {v3, v13}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@ba
    .line 218
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@bc
    invoke-static {v3, v13}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@bf
    .line 219
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@c1
    invoke-static {v3, v2}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@c4
    .line 220
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@c6
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@c8
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@cb
    move-result v4

    #@cc
    invoke-static {v3, v4}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@cf
    .line 221
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@d1
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@d3
    iget v4, v4, Ljava/util/zip/ZipEntry;->time:I

    #@d5
    invoke-static {v3, v4}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@d8
    .line 222
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@da
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@dc
    iget v4, v4, Ljava/util/zip/ZipEntry;->modDate:I

    #@de
    invoke-static {v3, v4}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@e1
    .line 223
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@e3
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@e5
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    #@e8
    move-result-wide v4

    #@e9
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@ec
    .line 225
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@ee
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@f1
    move-result v3

    #@f2
    if-ne v3, v12, :cond_9

    #@f4
    .line 226
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@f6
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@f8
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getBytesWritten()J

    #@fb
    move-result-wide v4

    #@fc
    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    #@ff
    .line 227
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@101
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@103
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getBytesRead()J

    #@106
    move-result-wide v4

    #@107
    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    #@10a
    .line 228
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@10c
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    #@10f
    move-result-wide v4

    #@110
    add-long/2addr v0, v4

    #@111
    .line 235
    :goto_2
    iget-boolean v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntryNeedsZip64:Z

    #@113
    if-eqz v3, :cond_a

    #@115
    .line 238
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@117
    invoke-static {v3}, Ljava/util/zip/Zip64;->refreshZip64ExtendedInfo(Ljava/util/zip/ZipEntry;)V

    #@11a
    .line 245
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@11c
    invoke-static {v3, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@11f
    .line 246
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@121
    invoke-static {v3, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@124
    .line 252
    :goto_3
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@126
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    #@128
    array-length v4, v4

    #@129
    invoke-static {v3, v4}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@12c
    move-result v3

    #@12d
    int-to-long v4, v3

    #@12e
    add-long/2addr v0, v4

    #@12f
    .line 253
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@131
    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    #@133
    if-eqz v3, :cond_b

    #@135
    .line 254
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@137
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@139
    iget-object v4, v4, Ljava/util/zip/ZipEntry;->extra:[B

    #@13b
    array-length v4, v4

    #@13c
    invoke-static {v3, v4}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@13f
    move-result v3

    #@140
    int-to-long v4, v3

    #@141
    add-long/2addr v0, v4

    #@142
    .line 259
    :goto_4
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@144
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    #@146
    array-length v4, v4

    #@147
    invoke-static {v3, v4}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@14a
    .line 260
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@14c
    invoke-static {v3, v8}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@14f
    .line 261
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@151
    invoke-static {v3, v8}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@154
    .line 262
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@156
    const-wide/16 v4, 0x0

    #@158
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@15b
    .line 263
    iget-boolean v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntryNeedsZip64:Z

    #@15d
    if-eqz v3, :cond_c

    #@15f
    .line 264
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@161
    invoke-static {v3, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@164
    .line 268
    :goto_5
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@166
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    #@168
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@16b
    .line 269
    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    #@16d
    .line 270
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@16f
    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    #@171
    if-eqz v3, :cond_5

    #@173
    .line 271
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@175
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@177
    iget-object v4, v4, Ljava/util/zip/ZipEntry;->extra:[B

    #@179
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@17c
    .line 273
    :cond_5
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->offset:J

    #@17e
    add-long/2addr v4, v0

    #@17f
    iput-wide v4, p0, Ljava/util/zip/ZipOutputStream;->offset:J

    #@181
    .line 274
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    #@183
    array-length v3, v3

    #@184
    if-lez v3, :cond_6

    #@186
    .line 275
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@188
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    #@18a
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@18d
    .line 276
    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    #@18f
    iput-object v3, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    #@191
    .line 278
    :cond_6
    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@193
    .line 279
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@195
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    #@198
    .line 280
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@19a
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->reset()V

    #@19d
    .line 281
    iput-boolean v8, p0, Ljava/util/zip/ZipOutputStream;->done:Z

    #@19f
    .line 166
    return-void

    #@1a0
    .line 205
    .end local v2    # "flags":I
    :cond_7
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@1a2
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1a4
    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@1a6
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@1a9
    .line 206
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@1ab
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1ad
    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    #@1af
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@1b2
    goto/16 :goto_0

    #@1b4
    .line 211
    :cond_8
    const/16 v2, 0x8

    #@1b6
    .restart local v2    # "flags":I
    goto/16 :goto_1

    #@1b8
    .line 230
    :cond_9
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1ba
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@1bc
    iget-wide v4, v4, Ljava/util/zip/CRC32;->tbytes:J

    #@1be
    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    #@1c1
    .line 231
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1c3
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@1c5
    iget-wide v4, v4, Ljava/util/zip/CRC32;->tbytes:J

    #@1c7
    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    #@1ca
    .line 232
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1cc
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    #@1cf
    move-result-wide v4

    #@1d0
    add-long/2addr v0, v4

    #@1d1
    goto/16 :goto_2

    #@1d3
    .line 248
    :cond_a
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@1d5
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1d7
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    #@1da
    move-result-wide v4

    #@1db
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@1de
    .line 249
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@1e0
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1e2
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    #@1e5
    move-result-wide v4

    #@1e6
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@1e9
    goto/16 :goto_3

    #@1eb
    .line 256
    :cond_b
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@1ed
    invoke-static {v3, v8}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@1f0
    goto/16 :goto_4

    #@1f2
    .line 266
    :cond_c
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@1f4
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1f6
    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@1f8
    invoke-static {v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@1fb
    goto/16 :goto_5
.end method

.method public finish()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v12, -0x1

    #@2
    const v10, 0xffff

    #@5
    const/4 v9, 0x0

    #@6
    const/4 v8, 0x0

    #@7
    .line 294
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 295
    new-instance v1, Ljava/io/IOException;

    #@d
    const-string/jumbo v2, "Stream is closed"

    #@10
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 297
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@16
    if-nez v1, :cond_1

    #@18
    .line 298
    return-void

    #@19
    .line 300
    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    #@1b
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 301
    new-instance v1, Ljava/util/zip/ZipException;

    #@23
    const-string/jumbo v2, "No entries"

    #@26
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 303
    :cond_2
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@2c
    if-eqz v1, :cond_3

    #@2e
    .line 304
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    #@31
    .line 307
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@33
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    #@36
    move-result v0

    #@37
    .line 308
    .local v0, "cdirEntriesSize":I
    iget-boolean v1, p0, Ljava/util/zip/ZipOutputStream;->archiveNeedsZip64EocdRecord:Z

    #@39
    if-eqz v1, :cond_4

    #@3b
    .line 309
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@3d
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    #@3f
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@42
    move-result v2

    #@43
    int-to-long v2, v2

    #@44
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->offset:J

    #@46
    int-to-long v6, v0

    #@47
    invoke-static/range {v1 .. v7}, Ljava/util/zip/Zip64;->writeZip64EocdRecordAndLocator(Ljava/io/ByteArrayOutputStream;JJJ)V

    #@4a
    .line 313
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@4c
    const-wide/32 v2, 0x6054b50

    #@4f
    invoke-static {v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@52
    .line 314
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@54
    invoke-static {v1, v9}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@57
    .line 315
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@59
    invoke-static {v1, v9}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@5c
    .line 319
    iget-boolean v1, p0, Ljava/util/zip/ZipOutputStream;->archiveNeedsZip64EocdRecord:Z

    #@5e
    if-eqz v1, :cond_6

    #@60
    .line 320
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@62
    invoke-static {v1, v10}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@65
    .line 321
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@67
    invoke-static {v1, v10}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@6a
    .line 322
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@6c
    invoke-static {v1, v12, v13}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@6f
    .line 323
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@71
    invoke-static {v1, v12, v13}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@74
    .line 331
    :goto_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@76
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    #@78
    array-length v2, v2

    #@79
    invoke-static {v1, v2}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@7c
    .line 332
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    #@7e
    array-length v1, v1

    #@7f
    if-lez v1, :cond_5

    #@81
    .line 333
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@83
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    #@85
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@88
    .line 336
    :cond_5
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@8a
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@8c
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    #@8f
    .line 337
    iput-object v8, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@91
    .line 292
    return-void

    #@92
    .line 325
    :cond_6
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@94
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    #@96
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@99
    move-result v2

    #@9a
    invoke-static {v1, v2}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@9d
    .line 326
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@9f
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    #@a1
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@a4
    move-result v2

    #@a5
    invoke-static {v1, v2}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@a8
    .line 327
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@aa
    int-to-long v2, v0

    #@ab
    invoke-static {v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@ae
    .line 328
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    #@b0
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->offset:J

    #@b2
    invoke-static {v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@b5
    goto :goto_0
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 12
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    const-wide/16 v6, -0x1

    #@5
    .line 353
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 354
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    #@c
    .line 358
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@f
    move-result v1

    #@10
    .line 359
    .local v1, "method":I
    const/4 v2, -0x1

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 360
    iget v1, p0, Ljava/util/zip/ZipOutputStream;->defaultCompressionMethod:I

    #@15
    .line 364
    :cond_1
    if-nez v1, :cond_6

    #@17
    .line 365
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    #@1a
    move-result-wide v2

    #@1b
    cmp-long v2, v2, v6

    #@1d
    if-nez v2, :cond_3

    #@1f
    .line 366
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@22
    move-result-wide v2

    #@23
    invoke-virtual {p1, v2, v3}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    #@26
    .line 370
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    #@29
    move-result-wide v2

    #@2a
    cmp-long v2, v2, v6

    #@2c
    if-nez v2, :cond_4

    #@2e
    .line 371
    new-instance v2, Ljava/util/zip/ZipException;

    #@30
    const-string/jumbo v3, "STORED entry missing CRC"

    #@33
    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    .line 367
    :cond_3
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@3a
    move-result-wide v2

    #@3b
    cmp-long v2, v2, v6

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 368
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    #@42
    move-result-wide v2

    #@43
    invoke-virtual {p1, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    #@46
    goto :goto_0

    #@47
    .line 373
    :cond_4
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@4a
    move-result-wide v2

    #@4b
    cmp-long v2, v2, v6

    #@4d
    if-nez v2, :cond_5

    #@4f
    .line 374
    new-instance v2, Ljava/util/zip/ZipException;

    #@51
    const-string/jumbo v3, "STORED entry missing size"

    #@54
    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@57
    throw v2

    #@58
    .line 376
    :cond_5
    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->size:J

    #@5a
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@5c
    cmp-long v2, v2, v4

    #@5e
    if-eqz v2, :cond_6

    #@60
    .line 377
    new-instance v2, Ljava/util/zip/ZipException;

    #@62
    const-string/jumbo v3, "STORED entry size/compressed size mismatch"

    #@65
    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@68
    throw v2

    #@69
    .line 381
    :cond_6
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkOpen()V

    #@6c
    .line 382
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;->checkAndSetZip64Requirements(Ljava/util/zip/ZipEntry;)V

    #@6f
    .line 384
    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@71
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@76
    move-result-object v2

    #@77
    iput-object v2, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    #@79
    .line 385
    const-string/jumbo v2, "Name"

    #@7c
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    #@7e
    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->checkSizeIsWithinShort(Ljava/lang/String;[B)V

    #@81
    .line 386
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    #@83
    iput-object v2, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    #@85
    .line 387
    iget-object v2, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@87
    if-eqz v2, :cond_7

    #@89
    .line 388
    iget-object v2, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@8b
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@90
    move-result-object v2

    #@91
    iput-object v2, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    #@93
    .line 391
    const-string/jumbo v2, "Comment"

    #@96
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->entryCommentBytes:[B

    #@98
    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->checkSizeIsWithinShort(Ljava/lang/String;[B)V

    #@9b
    .line 394
    :cond_7
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@9d
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->compressionLevel:I

    #@9f
    invoke-virtual {v2, v3}, Ljava/util/zip/Deflater;->setLevel(I)V

    #@a2
    .line 395
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    #@a5
    .line 397
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@a7
    .line 398
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@a9
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->offset:J

    #@ab
    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@ad
    .line 399
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/HashSet;

    #@af
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@b1
    iget-object v3, v3, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@b3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b6
    .line 403
    if-nez v1, :cond_b

    #@b8
    const/4 v0, 0x0

    #@b9
    .line 406
    .local v0, "flags":I
    :goto_1
    or-int/lit16 v0, v0, 0x800

    #@bb
    .line 407
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@bd
    const-wide/32 v4, 0x4034b50

    #@c0
    invoke-static {v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@c3
    .line 408
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@c5
    const/16 v3, 0x14

    #@c7
    invoke-static {v2, v3}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@ca
    .line 409
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@cc
    invoke-static {v2, v0}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@cf
    .line 410
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@d1
    invoke-static {v2, v1}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@d4
    .line 411
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@d6
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getTime()J

    #@d9
    move-result-wide v2

    #@da
    cmp-long v2, v2, v6

    #@dc
    if-nez v2, :cond_8

    #@de
    .line 412
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@e0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e3
    move-result-wide v4

    #@e4
    invoke-virtual {v2, v4, v5}, Ljava/util/zip/ZipEntry;->setTime(J)V

    #@e7
    .line 414
    :cond_8
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@e9
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@eb
    iget v3, v3, Ljava/util/zip/ZipEntry;->time:I

    #@ed
    invoke-static {v2, v3}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@f0
    .line 415
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@f2
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@f4
    iget v3, v3, Ljava/util/zip/ZipEntry;->modDate:I

    #@f6
    invoke-static {v2, v3}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@f9
    .line 417
    if-nez v1, :cond_d

    #@fb
    .line 418
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@fd
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@ff
    iget-wide v4, v3, Ljava/util/zip/ZipEntry;->crc:J

    #@101
    invoke-static {v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@104
    .line 420
    iget-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntryNeedsZip64:Z

    #@106
    if-eqz v2, :cond_c

    #@108
    .line 427
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@10a
    sget-object v3, Ljava/util/zip/ZipOutputStream;->ZIP64_PLACEHOLDER_BYTES:[B

    #@10c
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    #@10f
    .line 428
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@111
    sget-object v3, Ljava/util/zip/ZipOutputStream;->ZIP64_PLACEHOLDER_BYTES:[B

    #@113
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    #@116
    .line 439
    :goto_2
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@118
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    #@11a
    array-length v3, v3

    #@11b
    invoke-static {v2, v3}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@11e
    .line 441
    iget-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntryNeedsZip64:Z

    #@120
    if-eqz v2, :cond_9

    #@122
    .line 442
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@124
    invoke-static {v2}, Ljava/util/zip/Zip64;->insertZip64ExtendedInfoToExtras(Ljava/util/zip/ZipEntry;)V

    #@127
    .line 445
    :cond_9
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@129
    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    #@12b
    if-eqz v2, :cond_e

    #@12d
    .line 446
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@12f
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@131
    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    #@133
    array-length v3, v3

    #@134
    invoke-static {v2, v3}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@137
    .line 450
    :goto_3
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@139
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    #@13b
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    #@13e
    .line 451
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@140
    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    #@142
    if-eqz v2, :cond_a

    #@144
    .line 452
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@146
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@148
    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    #@14a
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    #@14d
    .line 352
    :cond_a
    return-void

    #@14e
    .line 403
    .end local v0    # "flags":I
    :cond_b
    const/16 v0, 0x8

    #@150
    .restart local v0    # "flags":I
    goto/16 :goto_1

    #@152
    .line 430
    :cond_c
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@154
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@156
    iget-wide v4, v3, Ljava/util/zip/ZipEntry;->size:J

    #@158
    invoke-static {v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@15b
    .line 431
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@15d
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@15f
    iget-wide v4, v3, Ljava/util/zip/ZipEntry;->size:J

    #@161
    invoke-static {v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@164
    goto :goto_2

    #@165
    .line 434
    :cond_d
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@167
    invoke-static {v2, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@16a
    .line 435
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@16c
    invoke-static {v2, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@16f
    .line 436
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@171
    invoke-static {v2, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@174
    goto :goto_2

    #@175
    .line 448
    :cond_e
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@177
    invoke-static {v2, v8}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@17a
    goto :goto_3
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 492
    if-nez p1, :cond_0

    #@2
    .line 493
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    #@4
    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    #@6
    .line 494
    return-void

    #@7
    .line 497
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@c
    move-result-object v0

    #@d
    .line 498
    .local v0, "newCommentBytes":[B
    const-string/jumbo v1, "Comment"

    #@10
    invoke-direct {p0, v1, v0}, Ljava/util/zip/ZipOutputStream;->checkSizeIsWithinShort(Ljava/lang/String;[B)V

    #@13
    .line 499
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->commentBytes:[B

    #@15
    .line 491
    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    #@0
    .prologue
    .line 507
    const/4 v0, -0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    const/16 v0, 0x9

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 508
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Bad level: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 510
    :cond_1
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressionLevel:I

    #@23
    .line 506
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "method"    # I

    #@0
    .prologue
    .line 518
    if-eqz p1, :cond_0

    #@2
    const/16 v0, 0x8

    #@4
    if-eq p1, v0, :cond_0

    #@6
    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Bad method: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 521
    :cond_0
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->defaultCompressionMethod:I

    #@22
    .line 517
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 563
    array-length v2, p1

    #@1
    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 564
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 565
    new-instance v2, Ljava/util/zip/ZipException;

    #@a
    const-string/jumbo v3, "No active entry"

    #@d
    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 568
    :cond_0
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@13
    iget-wide v2, v2, Ljava/util/zip/CRC32;->tbytes:J

    #@15
    int-to-long v4, p3

    #@16
    add-long v0, v2, v4

    #@18
    .line 569
    .local v0, "totalBytes":J
    const-wide v2, 0xffffffffL

    #@1d
    cmp-long v2, v0, v2

    #@1f
    if-lez v2, :cond_1

    #@21
    iget-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntryNeedsZip64:Z

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 575
    :cond_1
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@27
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_3

    #@2d
    .line 576
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@2f
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@32
    .line 580
    :goto_0
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@34
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    #@37
    .line 562
    return-void

    #@38
    .line 570
    :cond_2
    new-instance v2, Ljava/io/IOException;

    #@3a
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v4, "Zip entry size ("

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 571
    const-string/jumbo v4, " bytes) cannot be represented in the zip format (needs Zip64)."

    #@4d
    .line 570
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 572
    const-string/jumbo v4, " Set the entry length using ZipEntry#setLength to use Zip64 where necessary."

    #@54
    .line 570
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v2

    #@60
    .line 578
    :cond_3
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    #@63
    goto :goto_0
.end method
