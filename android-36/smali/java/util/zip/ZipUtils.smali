.class Ljava/util/zip/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field static final blacklist END_MAXLEN:J = 0x10015L

.field static final blacklist FILE_ATTRIBUTES_UNIX:I = 0x3

.field static final blacklist READBLOCKSZ:I = 0x80

.field public static final blacklist UPPER_UNIXTIME_BOUND:J = 0x7fffffffL

.field static final blacklist VERSION_MADE_BY_BASE_UNIX:I = 0x300

.field private static final blacklist WINDOWS_EPOCH_IN_MICROSECONDS:J = -0x295e9648864000L

.field public static final blacklist WINDOWS_TIME_NOT_AVAILABLE:J = -0x8000000000000000L

.field private static final blacklist byteBufferArrayOffset:J

.field private static final blacklist byteBufferOffsetOffset:J

.field static final blacklist defaultBuf:Ljava/nio/ByteBuffer;

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Ljava/util/zip/ZipUtils;->defaultBuf:Ljava/nio/ByteBuffer;

    .line 334
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/zip/ZipUtils;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 336
    sget-object v0, Ljava/util/zip/ZipUtils;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/nio/ByteBuffer;

    const-string v2, "hb"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/zip/ZipUtils;->byteBufferArrayOffset:J

    .line 337
    sget-object v0, Ljava/util/zip/ZipUtils;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/nio/ByteBuffer;

    const-string v2, "offset"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/zip/ZipUtils;->byteBufferOffsetOffset:J

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final blacklist CENATT([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 313
    add-int/lit8 v0, p1, 0x24

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENATX([BI)J
    .registers 4
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 314
    add-int/lit8 v0, p1, 0x26

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENATX_PERMS(Ljava/nio/DirectByteBuffer;I)I
    .registers 3
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 316
    add-int/lit8 v0, p1, 0x28

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get16(Ljava/nio/DirectByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static final blacklist CENATX_PERMS([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 315
    add-int/lit8 v0, p1, 0x28

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENCOM(Ljava/nio/DirectByteBuffer;I)I
    .registers 3
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 311
    add-int/lit8 v0, p1, 0x20

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get16(Ljava/nio/DirectByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static final blacklist CENCOM([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 310
    add-int/lit8 v0, p1, 0x20

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENCRC(Ljava/nio/DirectByteBuffer;I)J
    .registers 4
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 301
    add-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get32(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENCRC([BI)J
    .registers 4
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 300
    add-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENDSK([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 312
    add-int/lit8 v0, p1, 0x22

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENEXT(Ljava/nio/DirectByteBuffer;I)I
    .registers 3
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 309
    add-int/lit8 v0, p1, 0x1e

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get16(Ljava/nio/DirectByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static final blacklist CENEXT([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 308
    add-int/lit8 v0, p1, 0x1e

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENFLG(Ljava/nio/DirectByteBuffer;I)I
    .registers 3
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 295
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get16(Ljava/nio/DirectByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static final blacklist CENFLG([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 294
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENHOW(Ljava/nio/DirectByteBuffer;I)I
    .registers 3
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 297
    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get16(Ljava/nio/DirectByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static final blacklist CENHOW([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 296
    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENLEN(Ljava/nio/DirectByteBuffer;I)J
    .registers 4
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 305
    add-int/lit8 v0, p1, 0x18

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get32(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENLEN([BI)J
    .registers 4
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 304
    add-int/lit8 v0, p1, 0x18

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENNAM(Ljava/nio/DirectByteBuffer;I)I
    .registers 3
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 307
    add-int/lit8 v0, p1, 0x1c

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get16(Ljava/nio/DirectByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static final blacklist CENNAM([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 306
    add-int/lit8 v0, p1, 0x1c

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENOFF(Ljava/nio/DirectByteBuffer;I)J
    .registers 4
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 318
    add-int/lit8 v0, p1, 0x2a

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get32(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENOFF([BI)J
    .registers 4
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 317
    add-int/lit8 v0, p1, 0x2a

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENSIG([BI)J
    .registers 4
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 289
    add-int/lit8 v0, p1, 0x0

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENSIZ(Ljava/nio/DirectByteBuffer;I)J
    .registers 4
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 303
    add-int/lit8 v0, p1, 0x14

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get32(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENSIZ([BI)J
    .registers 4
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 302
    add-int/lit8 v0, p1, 0x14

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENTIM(Ljava/nio/DirectByteBuffer;I)J
    .registers 4
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 299
    add-int/lit8 v0, p1, 0xc

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->get32(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENTIM([BI)J
    .registers 4
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 298
    add-int/lit8 v0, p1, 0xc

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist CENVEM([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 290
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENVEM_FA(Ljava/nio/DirectByteBuffer;I)I
    .registers 3
    .param p0, "b"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 292
    add-int/lit8 v0, p1, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method static final blacklist CENVEM_FA([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 291
    add-int/lit8 v0, p1, 0x5

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->CH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CENVER([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "pos"    # I

    .line 293
    add-int/lit8 v0, p1, 0x6

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist CH([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "n"    # I

    .line 225
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method static final blacklist ENDCOM([B)I
    .registers 2
    .param p0, "b"    # [B

    .line 277
    const/16 v0, 0x14

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist ENDCOM([BI)I
    .registers 3
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 278
    add-int/lit8 v0, p1, 0x14

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist ENDOFF([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 276
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist ENDSIZ([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 275
    const/16 v0, 0xc

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist ENDSUB([B)I
    .registers 2
    .param p0, "b"    # [B

    .line 273
    const/16 v0, 0x8

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist ENDTOT([B)I
    .registers 2
    .param p0, "b"    # [B

    .line 274
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist EXTCRC([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 268
    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist EXTLEN([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 270
    const/16 v0, 0xc

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist EXTSIZ([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 269
    const/16 v0, 0x8

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist GETSIG([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 241
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist LG([BI)J
    .registers 6
    .param p0, "b"    # [B
    .param p1, "n"    # I

    .line 233
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static final blacklist LL([BI)J
    .registers 7
    .param p0, "b"    # [B
    .param p1, "n"    # I

    .line 237
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static final blacklist LOCCRC([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 261
    const/16 v0, 0xe

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist LOCEXT([B)I
    .registers 2
    .param p0, "b"    # [B

    .line 265
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist LOCFLG([B)I
    .registers 2
    .param p0, "b"    # [B

    .line 258
    const/4 v0, 0x6

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist LOCHOW([B)I
    .registers 2
    .param p0, "b"    # [B

    .line 259
    const/16 v0, 0x8

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist LOCLEN([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 263
    const/16 v0, 0x16

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist LOCNAM([B)I
    .registers 2
    .param p0, "b"    # [B

    .line 264
    const/16 v0, 0x1a

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist LOCSIG([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist LOCSIZ([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 262
    const/16 v0, 0x12

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist LOCTIM([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 260
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LG([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist LOCVER([B)I
    .registers 2
    .param p0, "b"    # [B

    .line 257
    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->SH([BI)I

    move-result v0

    return v0
.end method

.method static final blacklist SH([BI)I
    .registers 4
    .param p0, "b"    # [B
    .param p1, "n"    # I

    .line 229
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static final blacklist ZIP64_ENDOFF([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 284
    const/16 v0, 0x30

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LL([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist ZIP64_ENDSIZ([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 283
    const/16 v0, 0x28

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LL([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist ZIP64_ENDTOD([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 281
    const/16 v0, 0x18

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LL([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist ZIP64_ENDTOT([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 282
    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LL([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static final blacklist ZIP64_LOCOFF([B)J
    .registers 3
    .param p0, "b"    # [B

    .line 285
    const/16 v0, 0x8

    invoke-static {p0, v0}, Ljava/util/zip/ZipUtils;->LL([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist dosToJavaTime(J)J
    .registers 13
    .param p0, "dtime"    # J

    .line 91
    const/16 v0, 0x19

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x7bc

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 92
    .local v2, "year":I
    const/16 v0, 0x15

    shr-long v0, p0, v0

    const-wide/16 v3, 0xf

    and-long/2addr v0, v3

    long-to-int v3, v0

    .line 93
    .local v3, "month":I
    const/16 v0, 0x10

    shr-long v0, p0, v0

    const-wide/16 v4, 0x1f

    and-long/2addr v0, v4

    long-to-int v1, v0

    .line 94
    .local v1, "day":I
    const/16 v0, 0xb

    shr-long v6, p0, v0

    and-long/2addr v4, v6

    long-to-int v5, v4

    .line 95
    .local v5, "hour":I
    const/4 v0, 0x5

    shr-long v6, p0, v0

    const-wide/16 v8, 0x3f

    and-long/2addr v6, v8

    long-to-int v6, v6

    .line 96
    .local v6, "minute":I
    const/4 v0, 0x1

    shl-long v7, p0, v0

    const-wide/16 v9, 0x3e

    and-long/2addr v7, v9

    long-to-int v7, v7

    .line 98
    .local v7, "second":I
    if-lez v3, :cond_61

    const/16 v0, 0xd

    if-ge v3, v0, :cond_61

    if-lez v1, :cond_61

    const/16 v0, 0x18

    if-ge v5, v0, :cond_61

    const/16 v0, 0x3c

    if-ge v6, v0, :cond_61

    if-ge v7, v0, :cond_61

    .line 100
    move v4, v1

    .end local v1    # "day":I
    .local v4, "day":I
    :try_start_42
    invoke-static/range {v2 .. v7}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 101
    .local v0, "ldt":Ljava/time/LocalDateTime;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 102
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v8

    .line 101
    invoke-virtual {v0, v8}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8
    :try_end_5e
    .catch Ljava/time/DateTimeException; {:try_start_42 .. :try_end_5e} :catch_5f

    return-wide v8

    .line 103
    .end local v0    # "ldt":Ljava/time/LocalDateTime;
    :catch_5f
    move-exception v0

    goto :goto_62

    .line 98
    .end local v4    # "day":I
    .restart local v1    # "day":I
    :cond_61
    move v4, v1

    .line 107
    .end local v1    # "day":I
    .restart local v4    # "day":I
    :goto_62
    invoke-static/range {v2 .. v7}, Ljava/util/zip/ZipUtils;->overflowDosToJavaTime(IIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist extendedDosToJavaTime(J)J
    .registers 6
    .param p0, "xdostime"    # J

    .line 128
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->dosToJavaTime(J)J

    move-result-wide v0

    .line 129
    .local v0, "time":J
    const/16 v2, 0x20

    shr-long v2, p0, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static final blacklist fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J
    .registers 3
    .param p0, "ftime"    # Ljava/nio/file/attribute/FileTime;

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final blacklist fileTimeToWinTime(Ljava/nio/file/attribute/FileTime;)J
    .registers 5
    .param p0, "ftime"    # Ljava/nio/file/attribute/FileTime;

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide v2, -0x295e9648864000L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static final blacklist get16(Ljava/nio/DirectByteBuffer;I)I
    .registers 4
    .param p0, "bb"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 178
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static final blacklist get16([BI)I
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 170
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static final blacklist get32(Ljava/nio/DirectByteBuffer;I)J
    .registers 6
    .param p0, "bb"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 194
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static final blacklist get32([BI)J
    .registers 7
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 186
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static final blacklist get32S([BI)I
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 220
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static final blacklist get64(Ljava/nio/DirectByteBuffer;I)J
    .registers 6
    .param p0, "bb"    # Ljava/nio/DirectByteBuffer;
    .param p1, "pos"    # I

    .line 211
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static final blacklist get64([BI)J
    .registers 7
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 202
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist getBufferArray(Ljava/nio/ByteBuffer;)[B
    .registers 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 340
    sget-object v0, Ljava/util/zip/ZipUtils;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/zip/ZipUtils;->byteBufferArrayOffset:J

    invoke-virtual {v0, p0, v1, v2}, Ljdk/internal/misc/Unsafe;->getReference(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static blacklist getBufferOffset(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 344
    sget-object v0, Ljava/util/zip/ZipUtils;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/zip/ZipUtils;->byteBufferOffsetOffset:J

    invoke-virtual {v0, p0, v1, v2}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static blacklist javaEpochToLocalDateTime(J)Ljava/time/LocalDateTime;
    .registers 4
    .param p0, "time"    # J

    .line 161
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 162
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist javaToDosTime(Ljava/time/LocalDateTime;)J
    .registers 6
    .param p0, "ldt"    # Ljava/time/LocalDateTime;

    .line 136
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x7bc

    .line 137
    .local v0, "year":I
    shl-int/lit8 v1, v0, 0x19

    .line 138
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v2

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    .line 139
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 140
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v1, v2

    .line 141
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    .line 142
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 137
    return-wide v1
.end method

.method static blacklist javaToExtendedDosTime(J)J
    .registers 8
    .param p0, "time"    # J

    .line 153
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->javaEpochToLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 154
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    const/16 v2, 0x7bc

    if-lt v1, v2, :cond_19

    .line 155
    invoke-static {v0}, Ljava/util/zip/ZipUtils;->javaToDosTime(Ljava/time/LocalDateTime;)J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    rem-long v3, p0, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    return-wide v1

    .line 157
    :cond_19
    const-wide/32 v1, 0x210000

    return-wide v1
.end method

.method private static blacklist overflowDosToJavaTime(IIIIII)J
    .registers 13
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .line 116
    new-instance v0, Ljava/util/Date;

    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v2, p1, -0x1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "day":I
    .end local p3    # "hour":I
    .end local p4    # "minute":I
    .end local p5    # "second":I
    .local v3, "day":I
    .local v4, "hour":I
    .local v5, "minute":I
    .local v6, "second":I
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    return-wide p2
.end method

.method public static final blacklist unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;
    .registers 3
    .param p0, "utime"    # J

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;
    .registers 6
    .param p0, "wtime"    # J

    .line 57
    const-wide/16 v0, 0xa

    div-long v0, p0, v0

    const-wide v2, -0x295e9648864000L

    add-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method
