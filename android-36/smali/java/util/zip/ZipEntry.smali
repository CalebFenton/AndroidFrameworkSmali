.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final whitelist test-api DEFLATED:I = 0x8

.field static final greylist-max-o DOSTIME_BEFORE_1980:J = 0x210000L

.field public static final whitelist test-api STORED:I = 0x0

.field public static final greylist-max-o UPPER_DOSTIME_BOUND:J = 0x3abd8960000L


# instance fields
.field greylist-max-o atime:Ljava/nio/file/attribute/FileTime;

.field greylist-max-o comment:Ljava/lang/String;

.field greylist-max-o crc:J

.field greylist-max-o csize:J

.field blacklist csizeSet:Z

.field greylist-max-o ctime:Ljava/nio/file/attribute/FileTime;

.field greylist-max-o dataOffset:J

.field greylist-max-o extra:[B

.field blacklist extraAttributes:I

.field greylist-max-o flag:I

.field greylist-max-r method:I

.field greylist-max-o mtime:Ljava/nio/file/attribute/FileTime;

.field greylist-max-o name:Ljava/lang/String;

.field greylist-max-o size:J

.field greylist-max-o xdostime:J


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 55
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 56
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 57
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipEntry;->csizeSet:Z

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 61
    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 64
    iput v1, p0, Ljava/util/zip/ZipEntry;->extraAttributes:I

    .line 174
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 55
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 56
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 57
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipEntry;->csizeSet:Z

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 61
    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 64
    iput v1, p0, Ljava/util/zip/ZipEntry;->extraAttributes:I

    .line 130
    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2b

    .line 139
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 140
    return-void

    .line 136
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/String;JJJII[BJ)V
    .registers 27
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "crc"    # J
    .param p5, "compressedSize"    # J
    .param p7, "size"    # J
    .param p9, "compressionMethod"    # I
    .param p10, "xdostime"    # I
    .param p11, "extra"    # [B
    .param p12, "dataOffset"    # J

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 55
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 56
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 57
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipEntry;->csizeSet:Z

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 61
    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 64
    iput v1, p0, Ljava/util/zip/ZipEntry;->extraAttributes:I

    .line 108
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 110
    move-wide/from16 v2, p3

    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 111
    move-wide/from16 v4, p5

    iput-wide v4, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 112
    move-wide/from16 v6, p7

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 113
    move/from16 v8, p9

    iput v8, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 114
    move/from16 v9, p10

    int-to-long v10, v9

    iput-wide v10, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 115
    move-wide/from16 v10, p12

    iput-wide v10, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 116
    move-object/from16 v12, p11

    invoke-virtual {p0, v12, v0, v0}, Ljava/util/zip/ZipEntry;->setExtra0([BZZ)V

    .line 117
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/zip/ZipEntry;)V
    .registers 4
    .param p1, "e"    # Ljava/util/zip/ZipEntry;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 55
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 56
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 57
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipEntry;->csizeSet:Z

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 61
    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 64
    iput v1, p0, Ljava/util/zip/ZipEntry;->extraAttributes:I

    .line 152
    const-string v0, "entry"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 154
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->xdostime:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 155
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 156
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 157
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 158
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 159
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 160
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 161
    iget-boolean v0, p1, Ljava/util/zip/ZipEntry;->csizeSet:Z

    iput-boolean v0, p0, Ljava/util/zip/ZipEntry;->csizeSet:Z

    .line 162
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 163
    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 164
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 165
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 166
    iget v0, p1, Ljava/util/zip/ZipEntry;->extraAttributes:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->extraAttributes:I

    .line 168
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->dataOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 169
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 748
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 749
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget-object v1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_14

    :cond_c
    iget-object v1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_14
    iput-object v1, v0, Ljava/util/zip/ZipEntry;->extra:[B
    :try_end_16
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_16} :catch_17

    .line 750
    return-object v0

    .line 751
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :catch_17
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getComment()Ljava/lang/String;
    .registers 2

    .line 717
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getCompressedSize()J
    .registers 3

    .line 484
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    return-wide v0
.end method

.method public whitelist test-api getCrc()J
    .registers 3

    .line 524
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public whitelist test-api getCreationTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 443
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public greylist-max-o test-api getDataOffset()J
    .registers 3

    .line 179
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-wide v0
.end method

.method public whitelist test-api getExtra()[B
    .registers 2

    .line 684
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public whitelist test-api getLastAccessTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 407
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public whitelist test-api getLastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .registers 5

    .line 367
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_7

    .line 368
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    return-object v0

    .line 369
    :cond_7
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 370
    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_11
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMethod()I
    .registers 2

    .line 550
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSize()J
    .registers 3

    .line 471
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public whitelist test-api getTime()J
    .registers 5

    .line 241
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_b

    .line 242
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0

    .line 244
    :cond_b
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->extendedDosToJavaTime(J)J

    move-result-wide v2

    :cond_19
    return-wide v2
.end method

.method public whitelist test-api getTimeLocal()Ljava/time/LocalDateTime;
    .registers 13

    .line 312
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_13

    .line 313
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 315
    :cond_13
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 316
    .local v0, "ms":I
    iget-wide v1, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const/16 v3, 0x19

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    const-wide/16 v3, 0x7bc

    add-long/2addr v1, v3

    long-to-int v3, v1

    iget-wide v1, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const/16 v4, 0x15

    shr-long/2addr v1, v4

    const-wide/16 v4, 0xf

    and-long/2addr v1, v4

    long-to-int v4, v1

    iget-wide v1, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const/16 v5, 0x10

    shr-long/2addr v1, v5

    const-wide/16 v5, 0x1f

    and-long/2addr v1, v5

    long-to-int v1, v1

    iget-wide v7, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const/16 v2, 0xb

    shr-long/2addr v7, v2

    and-long/2addr v5, v7

    long-to-int v6, v5

    iget-wide v7, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const/4 v2, 0x5

    shr-long/2addr v7, v2

    const-wide/16 v9, 0x3f

    and-long/2addr v7, v9

    long-to-int v7, v7

    iget-wide v8, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const/4 v2, 0x1

    shl-long/2addr v8, v2

    const-wide/16 v10, 0x3e

    and-long/2addr v8, v10

    long-to-int v2, v8

    div-int/lit16 v5, v0, 0x3e8

    add-int v8, v2, v5

    rem-int/lit16 v2, v0, 0x3e8

    const v5, 0xf4240

    mul-int v9, v2, v5

    move v5, v1

    invoke-static/range {v3 .. v9}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 740
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isDirectory()Z
    .registers 3

    .line 726
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setComment(Ljava/lang/String;)V
    .registers 5
    .param p1, "comment"    # Ljava/lang/String;

    .line 700
    if-eqz p1, :cond_33

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_f

    goto :goto_33

    .line 701
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 702
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_33
    :goto_33
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 707
    return-void
.end method

.method public whitelist test-api setCompressedSize(J)V
    .registers 4
    .param p1, "csize"    # J

    .line 495
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipEntry;->csizeSet:Z

    .line 497
    return-void
.end method

.method public whitelist test-api setCrc(J)V
    .registers 5
    .param p1, "crc"    # J

    .line 509
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 512
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 513
    return-void

    .line 510
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry crc-32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 427
    const-string v0, "creationTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 428
    return-object p0
.end method

.method public whitelist test-api setExtra([B)V
    .registers 4
    .param p1, "extra"    # [B

    .line 572
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/ZipEntry;->setExtra0([BZZ)V

    .line 573
    return-void
.end method

.method blacklist setExtra0([BZZ)V
    .registers 14
    .param p1, "extra"    # [B
    .param p2, "doZIP64"    # Z
    .param p3, "isLOC"    # Z

    .line 587
    if-eqz p1, :cond_10c

    .line 588
    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_104

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "off":I
    array-length v1, p1

    .line 594
    .local v1, "len":I
    :goto_a
    add-int/lit8 v2, v0, 0x4

    if-ge v2, v1, :cond_10c

    .line 595
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v2

    .line 596
    .local v2, "tag":I
    add-int/lit8 v3, v0, 0x2

    invoke-static {p1, v3}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v3

    .line 597
    .local v3, "sz":I
    add-int/lit8 v0, v0, 0x4

    .line 598
    add-int v4, v0, v3

    if-le v4, v1, :cond_20

    .line 599
    goto/16 :goto_10c

    .line 600
    :cond_20
    sparse-switch v2, :sswitch_data_110

    goto/16 :goto_101

    .line 649
    :sswitch_25
    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    .line 650
    .local v4, "flag":I
    const/4 v5, 0x1

    .line 655
    .local v5, "sz0":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_43

    add-int/lit8 v6, v5, 0x4

    if-gt v6, v3, :cond_43

    .line 656
    add-int v6, v0, v5

    invoke-static {p1, v6}, Ljava/util/zip/ZipUtils;->get32S([BI)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 657
    add-int/lit8 v5, v5, 0x4

    .line 659
    :cond_43
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_5a

    add-int/lit8 v6, v5, 0x4

    if-gt v6, v3, :cond_5a

    .line 660
    add-int v6, v0, v5

    invoke-static {p1, v6}, Ljava/util/zip/ZipUtils;->get32S([BI)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 661
    add-int/lit8 v5, v5, 0x4

    .line 663
    :cond_5a
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_101

    add-int/lit8 v6, v5, 0x4

    if-gt v6, v3, :cond_101

    .line 664
    add-int v6, v0, v5

    invoke-static {p1, v6}, Ljava/util/zip/ZipUtils;->get32S([BI)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 665
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_101

    .line 630
    .end local v4    # "flag":I
    .end local v5    # "sz0":I
    :sswitch_73
    const/16 v4, 0x20

    if-ge v3, v4, :cond_79

    .line 631
    goto/16 :goto_101

    .line 632
    :cond_79
    add-int/lit8 v4, v0, 0x4

    .line 633
    .local v4, "pos":I
    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_101

    add-int/lit8 v5, v4, 0x2

    invoke-static {p1, v5}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_8e

    .line 634
    goto/16 :goto_101

    .line 635
    :cond_8e
    add-int/lit8 v5, v4, 0x4

    invoke-static {p1, v5}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v5

    .line 636
    .local v5, "wtime":J
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-eqz v9, :cond_a0

    .line 637
    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v9

    iput-object v9, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 639
    :cond_a0
    add-int/lit8 v9, v4, 0xc

    invoke-static {p1, v9}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v5

    .line 640
    cmp-long v9, v5, v7

    if-eqz v9, :cond_b0

    .line 641
    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v9

    iput-object v9, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 643
    :cond_b0
    add-int/lit8 v9, v4, 0x14

    invoke-static {p1, v9}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v5

    .line 644
    cmp-long v7, v5, v7

    if-eqz v7, :cond_101

    .line 645
    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    goto :goto_101

    .line 602
    .end local v4    # "pos":I
    .end local v5    # "wtime":J
    :sswitch_c1
    if-eqz p2, :cond_101

    .line 603
    if-eqz p3, :cond_d8

    .line 610
    const/16 v4, 0x10

    if-lt v3, v4, :cond_101

    .line 611
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 612
    add-int/lit8 v4, v0, 0x8

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipEntry;->csize:J

    goto :goto_101

    .line 616
    :cond_d8
    iget-wide v4, p0, Ljava/util/zip/ZipEntry;->size:J

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_ee

    .line 617
    add-int/lit8 v4, v0, 0x8

    if-le v4, v1, :cond_e8

    .line 618
    goto :goto_101

    .line 619
    :cond_e8
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 621
    :cond_ee
    iget-wide v4, p0, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_101

    .line 622
    add-int/lit8 v4, v0, 0x10

    if-le v4, v1, :cond_f9

    .line 623
    goto :goto_101

    .line 624
    :cond_f9
    add-int/lit8 v4, v0, 0x8

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 670
    :cond_101
    :goto_101
    add-int/2addr v0, v3

    .line 671
    .end local v2    # "tag":I
    .end local v3    # "sz":I
    goto/16 :goto_a

    .line 589
    .end local v0    # "off":I
    .end local v1    # "len":I
    :cond_104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid extra field length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_10c
    :goto_10c
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 674
    return-void

    nop

    :sswitch_data_110
    .sparse-switch
        0x1 -> :sswitch_c1
        0xa -> :sswitch_73
        0x5455 -> :sswitch_25
    .end sparse-switch
.end method

.method public whitelist test-api setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 391
    const-string v0, "lastAccessTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 392
    return-object p0
.end method

.method public whitelist test-api setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 345
    const-string v0, "lastModifiedTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 346
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 347
    return-object p0
.end method

.method public whitelist test-api setMethod(I)V
    .registers 4
    .param p1, "method"    # I

    .line 537
    if-eqz p1, :cond_f

    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 538
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_f
    :goto_f
    iput p1, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 541
    return-void
.end method

.method public whitelist test-api setSize(J)V
    .registers 5
    .param p1, "size"    # J

    .line 458
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 461
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 462
    return-void

    .line 459
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTime(J)V
    .registers 7
    .param p1, "time"    # J

    .line 209
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 212
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/32 v2, 0x210000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-wide v2, 0x3abd8960000L

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1c

    .line 213
    iput-object v1, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    goto :goto_37

    .line 215
    :cond_1c
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->javaEpochToLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    .line 216
    .local v0, "localYear":I
    const/16 v2, 0x7bc

    if-lt v0, v2, :cond_2f

    const/16 v2, 0x833

    if-gt v0, v2, :cond_2f

    .line 217
    iput-object v1, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    goto :goto_37

    .line 219
    :cond_2f
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v1}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    iput-object v1, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 222
    .end local v0    # "localYear":I
    :goto_37
    return-void
.end method

.method public whitelist test-api setTimeLocal(Ljava/time/LocalDateTime;)V
    .registers 10
    .param p1, "time"    # Ljava/time/LocalDateTime;

    .line 273
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x7bc

    .line 274
    .local v0, "year":I
    const-wide/32 v1, 0x210000

    if-gez v0, :cond_e

    .line 275
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    goto :goto_52

    .line 277
    :cond_e
    shl-int/lit8 v3, v0, 0x19

    .line 278
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v4

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v3, v4

    .line 279
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 280
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v4

    shl-int/lit8 v4, v4, 0xb

    or-int/2addr v3, v4

    .line 281
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    .line 282
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 283
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x3e8

    .line 284
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getNano()I

    move-result v6

    const v7, 0xf4240

    div-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 286
    :goto_52
    iget-wide v3, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_60

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_60

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    goto :goto_73

    .line 289
    :cond_60
    nop

    .line 290
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    .line 289
    invoke-static {v1}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    iput-object v1, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 292
    :goto_73
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 733
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
