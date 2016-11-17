.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field comment:Ljava/lang/String;

.field crc:J

.field csize:J

.field dataOffset:J

.field extra:[B

.field flag:I

.field method:I

.field name:Ljava/lang/String;

.field size:J

.field time:J


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 40
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    #@7
    .line 41
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@9
    .line 42
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@b
    .line 43
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    #@d
    .line 44
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    #@10
    .line 45
    const/4 v0, 0x0

    #@11
    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    #@13
    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 40
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    #@7
    .line 41
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@9
    .line 42
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@b
    .line 43
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    #@d
    .line 44
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    #@10
    .line 45
    const/4 v0, 0x0

    #@11
    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    #@13
    .line 86
    if-nez p1, :cond_0

    #@15
    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 91
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@20
    move-result-object v0

    #@21
    array-length v0, v0

    #@22
    const v1, 0xffff

    #@25
    if-le v0, v1, :cond_1

    #@27
    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, " too long: "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 93
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@3b
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@3e
    move-result-object v2

    #@3f
    array-length v2, v2

    #@40
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 95
    :cond_1
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@4e
    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJII[BJ)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "crc"    # J
    .param p5, "compressedSize"    # J
    .param p7, "size"    # J
    .param p9, "compressionMethod"    # I
    .param p10, "time"    # I
    .param p11, "extra"    # [B
    .param p12, "dataOffset"    # J

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 40
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    #@7
    .line 41
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@9
    .line 42
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@b
    .line 43
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    #@d
    .line 44
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    #@10
    .line 45
    const/4 v0, 0x0

    #@11
    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    #@13
    .line 66
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@15
    .line 67
    iput-object p2, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@17
    .line 68
    iput-wide p3, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@19
    .line 69
    iput-wide p5, p0, Ljava/util/zip/ZipEntry;->csize:J

    #@1b
    .line 70
    iput-wide p7, p0, Ljava/util/zip/ZipEntry;->size:J

    #@1d
    .line 71
    iput p9, p0, Ljava/util/zip/ZipEntry;->method:I

    #@1f
    .line 72
    int-to-long v0, p10

    #@20
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    #@22
    .line 73
    iput-object p11, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@24
    .line 74
    iput-wide p12, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@26
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 2
    .param p1, "e"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 40
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    #@7
    .line 41
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@9
    .line 42
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@b
    .line 43
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    #@d
    .line 44
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    #@10
    .line 45
    const/4 v0, 0x0

    #@11
    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    #@13
    .line 104
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@15
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@17
    .line 105
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->time:J

    #@19
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    #@1b
    .line 106
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@1d
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@1f
    .line 107
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@21
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@23
    .line 108
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@25
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    #@27
    .line 109
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    #@29
    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    #@2b
    .line 110
    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    #@2d
    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    #@2f
    .line 111
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    #@31
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@33
    .line 112
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@35
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@37
    .line 113
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@39
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@3b
    .line 103
    return-void
.end method

.method private static dosToJavaTime(J)J
    .locals 10
    .param p0, "dtime"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x1f

    #@2
    .line 325
    new-instance v0, Ljava/util/Date;

    #@4
    const/16 v1, 0x19

    #@6
    shr-long v2, p0, v1

    #@8
    const-wide/16 v4, 0x7f

    #@a
    and-long/2addr v2, v4

    #@b
    const-wide/16 v4, 0x50

    #@d
    add-long/2addr v2, v4

    #@e
    long-to-int v1, v2

    #@f
    .line 326
    const/16 v2, 0x15

    #@11
    shr-long v2, p0, v2

    #@13
    const-wide/16 v4, 0xf

    #@15
    and-long/2addr v2, v4

    #@16
    const-wide/16 v4, 0x1

    #@18
    sub-long/2addr v2, v4

    #@19
    long-to-int v2, v2

    #@1a
    .line 327
    const/16 v3, 0x10

    #@1c
    shr-long v4, p0, v3

    #@1e
    and-long/2addr v4, v6

    #@1f
    long-to-int v3, v4

    #@20
    .line 328
    const/16 v4, 0xb

    #@22
    shr-long v4, p0, v4

    #@24
    and-long/2addr v4, v6

    #@25
    long-to-int v4, v4

    #@26
    .line 329
    const/4 v5, 0x5

    #@27
    shr-long v6, p0, v5

    #@29
    const-wide/16 v8, 0x3f

    #@2b
    and-long/2addr v6, v8

    #@2c
    long-to-int v5, v6

    #@2d
    .line 330
    const/4 v6, 0x1

    #@2e
    shl-long v6, p0, v6

    #@30
    const-wide/16 v8, 0x3e

    #@32
    and-long/2addr v6, v8

    #@33
    long-to-int v6, v6

    #@34
    .line 325
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    #@37
    .line 331
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@3a
    move-result-wide v2

    #@3b
    return-wide v2
.end method

.method private static javaToDosTime(J)J
    .locals 4
    .param p0, "time"    # J

    #@0
    .prologue
    .line 338
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@5
    .line 339
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    #@8
    move-result v2

    #@9
    add-int/lit16 v1, v2, 0x76c

    #@b
    .line 340
    .local v1, "year":I
    const/16 v2, 0x7bc

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 341
    const-wide/32 v2, 0x210000

    #@12
    return-wide v2

    #@13
    .line 343
    :cond_0
    add-int/lit16 v2, v1, -0x7bc

    #@15
    shl-int/lit8 v2, v2, 0x19

    #@17
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    #@1a
    move-result v3

    #@1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    shl-int/lit8 v3, v3, 0x15

    #@1f
    or-int/2addr v2, v3

    #@20
    .line 344
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    #@23
    move-result v3

    #@24
    shl-int/lit8 v3, v3, 0x10

    #@26
    .line 343
    or-int/2addr v2, v3

    #@27
    .line 344
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    #@2a
    move-result v3

    #@2b
    shl-int/lit8 v3, v3, 0xb

    #@2d
    .line 343
    or-int/2addr v2, v3

    #@2e
    .line 344
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    #@31
    move-result v3

    #@32
    shl-int/lit8 v3, v3, 0x5

    #@34
    .line 343
    or-int/2addr v2, v3

    #@35
    .line 345
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    #@38
    move-result v3

    #@39
    shr-int/lit8 v3, v3, 0x1

    #@3b
    .line 343
    or-int/2addr v2, v3

    #@3c
    int-to-long v2, v2

    #@3d
    return-wide v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 360
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Ljava/util/zip/ZipEntry;

    #@7
    .line 361
    .local v1, "e":Ljava/util/zip/ZipEntry;
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@9
    if-nez v3, :cond_0

    #@b
    :goto_0
    iput-object v2, v1, Ljava/util/zip/ZipEntry;->extra:[B

    #@d
    .line 362
    return-object v1

    #@e
    .line 361
    :cond_0
    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@10
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    goto :goto_0

    #@17
    .line 363
    .end local v1    # "e":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    #@18
    .line 365
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@1a
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@1d
    throw v2
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    #@0
    .prologue
    .line 186
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    #@2
    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    #@0
    .prologue
    .line 220
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@2
    return-wide v0
.end method

.method public getDataOffset()J
    .locals 2

    #@0
    .prologue
    .line 123
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@2
    return-wide v0
.end method

.method public getExtra()[B
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@2
    return-object v0
.end method

.method public getMethod()I
    .locals 1

    #@0
    .prologue
    .line 243
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSize()J
    .locals 2

    #@0
    .prologue
    .line 175
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@2
    return-wide v0
.end method

.method public getTime()J
    .locals 4

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 150
    iget-wide v2, p0, Ljava/util/zip/ZipEntry;->time:J

    #@4
    cmp-long v2, v2, v0

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    #@a
    invoke-static {v0, v1}, Ljava/util/zip/ZipEntry;->dosToJavaTime(J)J

    #@d
    move-result-wide v0

    #@e
    :cond_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDirectory()Z
    .locals 2

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "/"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3
    .param p1, "comment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 283
    if-nez p1, :cond_0

    #@3
    .line 284
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@5
    .line 285
    return-void

    #@6
    .line 289
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@b
    move-result-object v0

    #@c
    array-length v0, v0

    #@d
    const v1, 0xffff

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, " too long: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 291
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@26
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@29
    move-result-object v2

    #@2a
    array-length v2, v2

    #@2b
    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 293
    :cond_1
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@39
    .line 280
    return-void
.end method

.method public setCompressedSize(J)V
    .locals 1
    .param p1, "csize"    # J

    #@0
    .prologue
    .line 195
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->csize:J

    #@2
    .line 194
    return-void
.end method

.method public setCrc(J)V
    .locals 3
    .param p1, "crc"    # J

    #@0
    .prologue
    .line 206
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide v0, 0xffffffffL

    #@b
    cmp-long v0, p1, v0

    #@d
    if-lez v0, :cond_1

    #@f
    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "invalid entry crc-32"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 209
    :cond_1
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@1a
    .line 205
    return-void
.end method

.method public setExtra([B)V
    .locals 2
    .param p1, "extra"    # [B

    #@0
    .prologue
    .line 254
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    const v1, 0xffff

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "invalid extra field length"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 257
    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@13
    .line 253
    return-void
.end method

.method public setMethod(I)V
    .locals 2
    .param p1, "method"    # I

    #@0
    .prologue
    .line 231
    if-eqz p1, :cond_0

    #@2
    const/16 v0, 0x8

    #@4
    if-eq p1, v0, :cond_0

    #@6
    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "invalid compression method"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 234
    :cond_0
    iput p1, p0, Ljava/util/zip/ZipEntry;->method:I

    #@11
    .line 230
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .line 163
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "invalid entry size"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 166
    :cond_0
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    #@11
    .line 162
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 141
    invoke-static {p1, p2}, Ljava/util/zip/ZipEntry;->javaToDosTime(J)J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->time:J

    #@6
    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 318
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
