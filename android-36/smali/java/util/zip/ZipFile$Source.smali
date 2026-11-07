.class Ljava/util/zip/ZipFile$Source;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$Source$Key;,
        Ljava/util/zip/ZipFile$Source$End;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BUF_SIZE:I = 0x2000

.field private static final blacklist EMPTY_META_VERSIONS:[I

.field private static final blacklist META_INF_LEN:I = 0x9

.field private static final blacklist ZIP_ENDCHAIN:I = -0x1

.field private static final blacklist files:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/zip/ZipFile$Source$Key;",
            "Ljava/util/zip/ZipFile$Source;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist cen:Ljava/nio/DirectByteBuffer;

.field private blacklist cenlen:I

.field private blacklist cenpos:J

.field private blacklist comment:[B

.field private blacklist entries:[I

.field private final blacklist key:Ljava/util/zip/ZipFile$Source$Key;

.field private blacklist locpos:J

.field private blacklist manifestNum:I

.field private blacklist manifestPos:I

.field private blacklist metaVersions:[I

.field private blacklist refs:I

.field private blacklist signatureMetaNames:[I

.field private final blacklist startsWithLoc:Z

.field private blacklist table:[I

.field private blacklist tablelen:I

.field private blacklist total:I

.field private final blacklist zc:Ljava/util/zip/ZipCoder;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private blacklist zfile:Ljava/io/RandomAccessFile;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcen(Ljava/util/zip/ZipFile$Source;)Ljava/nio/DirectByteBuffer;
    .registers 1

    iget-object p0, p0, Ljava/util/zip/ZipFile$Source;->cen:Ljava/nio/DirectByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcomment(Ljava/util/zip/ZipFile$Source;)[B
    .registers 1

    iget-object p0, p0, Ljava/util/zip/ZipFile$Source;->comment:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlocpos(Ljava/util/zip/ZipFile$Source;)J
    .registers 3

    iget-wide v0, p0, Ljava/util/zip/ZipFile$Source;->locpos:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmanifestNum(Ljava/util/zip/ZipFile$Source;)I
    .registers 1

    iget p0, p0, Ljava/util/zip/ZipFile$Source;->manifestNum:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmanifestPos(Ljava/util/zip/ZipFile$Source;)I
    .registers 1

    iget p0, p0, Ljava/util/zip/ZipFile$Source;->manifestPos:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmetaVersions(Ljava/util/zip/ZipFile$Source;)[I
    .registers 1

    iget-object p0, p0, Ljava/util/zip/ZipFile$Source;->metaVersions:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsignatureMetaNames(Ljava/util/zip/ZipFile$Source;)[I
    .registers 1

    iget-object p0, p0, Ljava/util/zip/ZipFile$Source;->signatureMetaNames:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstartsWithLoc(Ljava/util/zip/ZipFile$Source;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/util/zip/ZipFile$Source;->startsWithLoc:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettotal(Ljava/util/zip/ZipFile$Source;)I
    .registers 1

    iget p0, p0, Ljava/util/zip/ZipFile$Source;->total:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetzc(Ljava/util/zip/ZipFile$Source;)Ljava/util/zip/ZipCoder;
    .registers 1

    iget-object p0, p0, Ljava/util/zip/ZipFile$Source;->zc:Ljava/util/zip/ZipCoder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetEntryPos(Ljava/util/zip/ZipFile$Source;I)I
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile$Source;->getEntryPos(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetEntryPos(Ljava/util/zip/ZipFile$Source;Ljava/lang/String;Z)I
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/zip/ZipFile$Source;->getEntryPos(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreadAt(Ljava/util/zip/ZipFile$Source;[BIIJ)I
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljava/util/zip/ZipFile$Source;->readAt([BIIJ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreadFullyAt(Ljava/util/zip/ZipFile$Source;[BIIJ)I
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljava/util/zip/ZipFile$Source;->readFullyAt([BIIJ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mzipCoderForPos(Ljava/util/zip/ZipFile$Source;I)Ljava/util/zip/ZipCoder;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile$Source;->zipCoderForPos(I)Ljava/util/zip/ZipCoder;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1234
    const-class v0, Ljava/util/zip/ZipFile;

    .line 1241
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Ljava/util/zip/ZipFile$Source;->EMPTY_META_VERSIONS:[I

    .line 1384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/zip/ZipFile$Source;->files:Ljava/util/HashMap;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/zip/ZipFile$Source$Key;ZLjava/util/zip/ZipCoder;)V
    .registers 13
    .param p1, "key"    # Ljava/util/zip/ZipFile$Source$Key;
    .param p2, "toDelete"    # Z
    .param p3, "zc"    # Ljava/util/zip/ZipCoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1246
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/zip/ZipFile$Source;->refs:I

    .line 1255
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/zip/ZipFile$Source;->manifestPos:I

    .line 1256
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/zip/ZipFile$Source;->manifestNum:I

    .line 1438
    iput-object p3, p0, Ljava/util/zip/ZipFile$Source;->zc:Ljava/util/zip/ZipCoder;

    .line 1439
    iput-object p1, p0, Ljava/util/zip/ZipFile$Source;->key:Ljava/util/zip/ZipFile$Source$Key;

    .line 1440
    const-string v3, "r"

    if-eqz p2, :cond_23

    .line 1452
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p1, Ljava/util/zip/ZipFile$Source$Key;->file:Ljava/io/File;

    invoke-direct {v4, v5, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    iput-object v4, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    .line 1453
    iget-object v3, p1, Ljava/util/zip/ZipFile$Source$Key;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2c

    .line 1458
    :cond_23
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p1, Ljava/util/zip/ZipFile$Source$Key;->file:Ljava/io/File;

    invoke-direct {v4, v5, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    iput-object v4, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    .line 1461
    :goto_2c
    const/4 v3, 0x0

    :try_start_2d
    invoke-direct {p0, v3, v1}, Ljava/util/zip/ZipFile$Source;->initCEN([BI)V

    .line 1462
    const/4 v1, 0x4

    new-array v1, v1, [B
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_78

    move-object v4, v1

    .line 1463
    .local v4, "buf":[B
    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    :try_start_39
    invoke-direct/range {v3 .. v8}, Ljava/util/zip/ZipFile$Source;->readFullyAt([BIIJ)I

    .line 1466
    invoke-static {v4}, Ljava/util/zip/ZipUtils;->LOCSIG([B)J

    move-result-wide v5

    .line 1467
    .local v5, "locsig":J
    const-wide/32 v7, 0x4034b50

    cmp-long v1, v5, v7

    if-nez v1, :cond_48

    goto :goto_49

    :cond_48
    move v0, v2

    :goto_49
    iput-boolean v0, v3, Ljava/util/zip/ZipFile$Source;->startsWithLoc:Z

    .line 1470
    cmp-long v0, v5, v7

    if-eqz v0, :cond_74

    const-wide/32 v0, 0x6054b50

    cmp-long v0, v5, v0

    if-nez v0, :cond_57

    goto :goto_74

    .line 1471
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry at offset zero has invalid LFH signature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1472
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/util/zip/ZipException;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/zip/ZipFile$Source;
    .end local p1    # "key":Ljava/util/zip/ZipFile$Source$Key;
    .end local p2    # "toDelete":Z
    .end local p3    # "zc":Ljava/util/zip/ZipCoder;
    throw v1
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_74} :catch_76

    .line 1481
    .end local v0    # "msg":Ljava/lang/String;
    .end local v4    # "buf":[B
    .end local v5    # "locsig":J
    .restart local p0    # "this":Ljava/util/zip/ZipFile$Source;
    .restart local p1    # "key":Ljava/util/zip/ZipFile$Source$Key;
    .restart local p2    # "toDelete":Z
    .restart local p3    # "zc":Ljava/util/zip/ZipCoder;
    :cond_74
    :goto_74
    nop

    .line 1482
    return-void

    .line 1476
    :catch_76
    move-exception v0

    goto :goto_7a

    :catch_78
    move-exception v0

    move-object v3, p0

    :goto_7a
    move-object v1, v0

    .line 1478
    .local v1, "x":Ljava/io/IOException;
    :try_start_7b
    iget-object v0, v3, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_80} :catch_81

    goto :goto_82

    .line 1479
    :catch_81
    move-exception v0

    :goto_82
    nop

    .line 1480
    throw v1
.end method

.method private blacklist checkAndAddEntry([BII)I
    .registers 14
    .param p1, "cen"    # [B
    .param p2, "pos"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1290
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->CENSIG([BI)J

    move-result-wide v0

    const-wide/32 v2, 0x2014b50    # 1.6619997E-316

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 1291
    const-string v0, "invalid CEN header (bad signature)"

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1293
    :cond_10
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->CENHOW([BI)I

    move-result v0

    .line 1294
    .local v0, "method":I
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->CENFLG([BI)I

    move-result v1

    .line 1295
    .local v1, "flag":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_21

    .line 1296
    const-string v2, "invalid CEN header (encrypted entry)"

    invoke-static {v2}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1298
    :cond_21
    if-eqz v0, :cond_43

    const/16 v2, 0x8

    if-eq v0, v2, :cond_43

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid CEN header (bad compression method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1301
    :cond_43
    add-int/lit8 v2, p2, 0x2e

    .line 1302
    .local v2, "entryPos":I
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->CENNAM([BI)I

    move-result v3

    .line 1303
    .local v3, "nlen":I
    add-int v4, v2, v3

    array-length v5, p1

    add-int/lit8 v5, v5, -0x16

    if-le v4, v5, :cond_55

    .line 1304
    const-string v4, "invalid CEN header (bad header size)"

    invoke-static {v4}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1307
    :cond_55
    :try_start_55
    invoke-direct {p0, p1, p2}, Ljava/util/zip/ZipFile$Source;->zipCoderForPos([BI)Ljava/util/zip/ZipCoder;

    move-result-object v4

    .line 1308
    .local v4, "zcp":Ljava/util/zip/ZipCoder;
    invoke-virtual {v4, p1, v2, v3}, Ljava/util/zip/ZipCoder;->checkedHash([BII)I

    move-result v5

    .line 1309
    .local v5, "hash":I
    const v6, 0x7fffffff

    and-int/2addr v6, v5

    iget v7, p0, Ljava/util/zip/ZipFile$Source;->tablelen:I

    rem-int/2addr v6, v7

    .line 1310
    .local v6, "hsh":I
    iget-object v7, p0, Ljava/util/zip/ZipFile$Source;->table:[I

    aget v7, v7, v6

    .line 1311
    .local v7, "next":I
    iget-object v8, p0, Ljava/util/zip/ZipFile$Source;->table:[I

    aput p3, v8, v6

    .line 1313
    iget-object v8, p0, Ljava/util/zip/ZipFile$Source;->entries:[I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6e} :catch_82

    add-int/lit8 v9, p3, 0x1

    .end local p3    # "index":I
    .local v9, "index":I
    :try_start_70
    aput v5, v8, p3

    .line 1314
    iget-object p3, p0, Ljava/util/zip/ZipFile$Source;->entries:[I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_7f

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .local v8, "index":I
    :try_start_76
    aput v7, p3, v9

    .line 1315
    iget-object p3, p0, Ljava/util/zip/ZipFile$Source;->entries:[I

    aput p2, p3, v8
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7c} :catch_7d

    .line 1318
    .end local v4    # "zcp":Ljava/util/zip/ZipCoder;
    .end local v5    # "hash":I
    .end local v6    # "hsh":I
    .end local v7    # "next":I
    goto :goto_8a

    .line 1316
    :catch_7d
    move-exception p3

    goto :goto_85

    .end local v8    # "index":I
    .restart local v9    # "index":I
    :catch_7f
    move-exception p3

    move v8, v9

    goto :goto_85

    .end local v9    # "index":I
    .restart local p3    # "index":I
    :catch_82
    move-exception v4

    move v8, p3

    move-object p3, v4

    .line 1317
    .restart local v8    # "index":I
    .local p3, "e":Ljava/lang/Exception;
    :goto_85
    const-string v4, "invalid CEN header (bad entry name)"

    invoke-static {v4}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1319
    .end local p3    # "e":Ljava/lang/Exception;
    :goto_8a
    return v3
.end method

.method private blacklist close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1485
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1486
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    .line 1487
    iget-object v1, p0, Ljava/util/zip/ZipFile$Source;->cen:Ljava/nio/DirectByteBuffer;

    if-eqz v1, :cond_19

    .line 1488
    iget-object v1, p0, Ljava/util/zip/ZipFile$Source;->cen:Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v1

    .line 1489
    .local v1, "cleaner":Lsun/misc/Cleaner;
    if-eqz v1, :cond_17

    .line 1490
    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    .line 1492
    :cond_17
    iput-object v0, p0, Ljava/util/zip/ZipFile$Source;->cen:Ljava/nio/DirectByteBuffer;

    .line 1494
    .end local v1    # "cleaner":Lsun/misc/Cleaner;
    :cond_19
    iput-object v0, p0, Ljava/util/zip/ZipFile$Source;->entries:[I

    .line 1495
    iput-object v0, p0, Ljava/util/zip/ZipFile$Source;->table:[I

    .line 1496
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/zip/ZipFile$Source;->manifestPos:I

    .line 1497
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/zip/ZipFile$Source;->manifestNum:I

    .line 1498
    iput-object v0, p0, Ljava/util/zip/ZipFile$Source;->signatureMetaNames:[I

    .line 1499
    sget-object v0, Ljava/util/zip/ZipFile$Source;->EMPTY_META_VERSIONS:[I

    iput-object v0, p0, Ljava/util/zip/ZipFile$Source;->metaVersions:[I

    .line 1500
    return-void
.end method

.method private static blacklist countCENHeaders([BI)I
    .registers 6
    .param p0, "cen"    # [B
    .param p1, "size"    # I

    .line 1996
    const/4 v0, 0x0

    .line 1997
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1998
    .local v1, "p":I
    :goto_2
    add-int/lit8 v2, v1, 0x2e

    if-gt v2, p1, :cond_1a

    .line 2000
    add-int/lit8 v0, v0, 0x1

    .line 1999
    invoke-static {p0, v1}, Ljava/util/zip/ZipUtils;->CENNAM([BI)I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-static {p0, v1}, Ljava/util/zip/ZipUtils;->CENEXT([BI)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0, v1}, Ljava/util/zip/ZipUtils;->CENCOM([BI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_2

    .line 2001
    .end local v1    # "p":I
    :cond_1a
    return v0
.end method

.method private blacklist findEND()Ljava/util/zip/ZipFile$Source$End;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1543
    move-object/from16 v1, p0

    iget-object v0, v1, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    .line 1544
    .local v7, "ziplen":J
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gtz v0, :cond_13

    .line 1545
    const-string v0, "zip file is empty"

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1546
    :cond_13
    new-instance v0, Ljava/util/zip/ZipFile$Source$End;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile$Source$End;-><init>(Ljava/util/zip/ZipFile-IA;)V

    move-object v11, v0

    .line 1547
    .local v11, "end":Ljava/util/zip/ZipFile$Source$End;
    const/16 v0, 0x80

    new-array v2, v0, [B

    .line 1548
    .local v2, "buf":[B
    const-wide/32 v3, 0x10015

    sub-long v5, v7, v3

    cmp-long v0, v5, v9

    if-lez v0, :cond_2a

    sub-long v3, v7, v3

    goto :goto_2b

    :cond_2a
    move-wide v3, v9

    :goto_2b
    move-wide v12, v3

    .line 1549
    .local v12, "minHDR":J
    array-length v0, v2

    add-int/lit8 v0, v0, -0x16

    int-to-long v3, v0

    sub-long v14, v12, v3

    .line 1550
    .local v14, "minPos":J
    array-length v0, v2

    int-to-long v3, v0

    sub-long v3, v7, v3

    .local v3, "pos":J
    :goto_36
    cmp-long v0, v3, v14

    const-string v5, "zip END header not found"

    if-ltz v0, :cond_222

    .line 1551
    const/4 v0, 0x0

    .line 1552
    .local v0, "off":I
    cmp-long v6, v3, v9

    if-gez v6, :cond_4b

    .line 1554
    move-wide/from16 v16, v9

    neg-long v9, v3

    long-to-int v0, v9

    .line 1555
    const/4 v6, 0x0

    invoke-static {v2, v6, v0, v6}, Ljava/util/Arrays;->fill([BIIB)V

    move v6, v0

    goto :goto_4e

    .line 1552
    :cond_4b
    move-wide/from16 v16, v9

    move v6, v0

    .line 1557
    .end local v0    # "off":I
    .local v6, "off":I
    :goto_4e
    array-length v0, v2

    sub-int v9, v0, v6

    .line 1558
    .local v9, "len":I
    int-to-long v0, v6

    add-long/2addr v0, v3

    move-wide/from16 v30, v3

    move v4, v9

    move-wide/from16 v9, v30

    move v3, v6

    move-wide/from16 v30, v0

    move-object/from16 v1, p0

    move-object v0, v5

    move-wide/from16 v5, v30

    .end local v6    # "off":I
    .local v3, "off":I
    .local v4, "len":I
    .local v9, "pos":J
    invoke-direct/range {v1 .. v6}, Ljava/util/zip/ZipFile$Source;->readFullyAt([BIIJ)I

    move-result v5

    move-object v1, v2

    move/from16 v18, v3

    move v2, v4

    .end local v3    # "off":I
    .end local v4    # "len":I
    .local v1, "buf":[B
    .local v2, "len":I
    .local v18, "off":I
    if-eq v5, v2, :cond_6d

    .line 1559
    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1562
    :cond_6d
    array-length v0, v1

    add-int/lit8 v0, v0, -0x16

    move v3, v0

    .local v3, "i":I
    :goto_71
    if-ltz v3, :cond_20c

    .line 1563
    add-int/lit8 v0, v3, 0x0

    aget-byte v0, v1, v0

    const/16 v4, 0x50

    if-ne v0, v4, :cond_1fc

    add-int/lit8 v0, v3, 0x1

    aget-byte v0, v1, v0

    const/16 v4, 0x4b

    if-ne v0, v4, :cond_1fc

    add-int/lit8 v0, v3, 0x2

    aget-byte v0, v1, v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1fc

    add-int/lit8 v0, v3, 0x3

    aget-byte v0, v1, v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1fc

    .line 1568
    add-int/lit8 v0, v3, 0x16

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v19

    .line 1569
    .local v19, "endbuf":[B
    invoke-static/range {v19 .. v19}, Ljava/util/zip/ZipUtils;->ENDTOT([B)I

    move-result v0

    iput v0, v11, Ljava/util/zip/ZipFile$Source$End;->centot:I

    .line 1570
    invoke-static/range {v19 .. v19}, Ljava/util/zip/ZipUtils;->ENDSIZ([B)J

    move-result-wide v4

    iput-wide v4, v11, Ljava/util/zip/ZipFile$Source$End;->cenlen:J

    .line 1571
    invoke-static/range {v19 .. v19}, Ljava/util/zip/ZipUtils;->ENDOFF([B)J

    move-result-wide v4

    iput-wide v4, v11, Ljava/util/zip/ZipFile$Source$End;->cenoff:J

    .line 1572
    int-to-long v4, v3

    add-long/2addr v4, v9

    iput-wide v4, v11, Ljava/util/zip/ZipFile$Source$End;->endpos:J

    .line 1573
    invoke-static/range {v19 .. v19}, Ljava/util/zip/ZipUtils;->ENDCOM([B)I

    move-result v4

    .line 1574
    .local v4, "comlen":I
    iget-wide v5, v11, Ljava/util/zip/ZipFile$Source$End;->endpos:J

    const-wide/16 v20, 0x16

    add-long v5, v5, v20

    move-object/from16 v22, v1

    .end local v1    # "buf":[B
    .local v22, "buf":[B
    int-to-long v0, v4

    add-long/2addr v5, v0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_12b

    .line 1580
    const/4 v0, 0x4

    move v1, v2

    .end local v2    # "len":I
    .local v1, "len":I
    new-array v2, v0, [B

    .line 1581
    .local v2, "sbuf":[B
    iget-wide v5, v11, Ljava/util/zip/ZipFile$Source$End;->endpos:J

    move/from16 v24, v1

    .end local v1    # "len":I
    .local v24, "len":I
    iget-wide v0, v11, Ljava/util/zip/ZipFile$Source$End;->cenlen:J

    sub-long/2addr v5, v0

    .line 1582
    .local v5, "cenpos":J
    iget-wide v0, v11, Ljava/util/zip/ZipFile$Source$End;->cenoff:J

    sub-long v25, v5, v0

    .line 1583
    .local v25, "locpos":J
    cmp-long v0, v5, v16

    if-ltz v0, :cond_11c

    cmp-long v0, v25, v16

    if-ltz v0, :cond_11c

    move v1, v4

    .end local v4    # "comlen":I
    .local v1, "comlen":I
    array-length v4, v2

    .line 1585
    move/from16 v27, v3

    .end local v3    # "i":I
    .local v27, "i":I
    const/4 v3, 0x0

    move-wide/from16 v28, v7

    move-object/from16 v7, v22

    move v8, v1

    move-object/from16 v1, p0

    .end local v1    # "comlen":I
    .end local v22    # "buf":[B
    .local v7, "buf":[B
    .local v8, "comlen":I
    .local v28, "ziplen":J
    invoke-direct/range {v1 .. v6}, Ljava/util/zip/ZipFile$Source;->readFullyAt([BIIJ)I

    move-result v0

    move-wide/from16 v22, v5

    const/4 v1, 0x4

    .end local v5    # "cenpos":J
    .local v22, "cenpos":J
    if-ne v0, v1, :cond_116

    .line 1586
    invoke-static {v2}, Ljava/util/zip/ZipUtils;->GETSIG([B)J

    move-result-wide v3

    const-wide/32 v5, 0x2014b50    # 1.6619997E-316

    cmp-long v0, v3, v5

    if-nez v0, :cond_110

    array-length v4, v2

    .line 1587
    const/4 v3, 0x0

    move v0, v1

    move-wide/from16 v5, v25

    move-object/from16 v1, p0

    .end local v25    # "locpos":J
    .local v5, "locpos":J
    invoke-direct/range {v1 .. v6}, Ljava/util/zip/ZipFile$Source;->readFullyAt([BIIJ)I

    move-result v3

    if-ne v3, v0, :cond_203

    .line 1588
    invoke-static {v2}, Ljava/util/zip/ZipUtils;->GETSIG([B)J

    move-result-wide v3

    const-wide/32 v25, 0x4034b50

    cmp-long v0, v3, v25

    if-eqz v0, :cond_136

    .line 1589
    goto/16 :goto_203

    .line 1586
    .end local v5    # "locpos":J
    .restart local v25    # "locpos":J
    :cond_110
    move-object/from16 v1, p0

    move-wide/from16 v5, v25

    .end local v25    # "locpos":J
    .restart local v5    # "locpos":J
    goto/16 :goto_203

    .line 1585
    .end local v5    # "locpos":J
    .restart local v25    # "locpos":J
    :cond_116
    move-object/from16 v1, p0

    move-wide/from16 v5, v25

    .end local v25    # "locpos":J
    .restart local v5    # "locpos":J
    goto/16 :goto_203

    .line 1583
    .end local v8    # "comlen":I
    .end local v27    # "i":I
    .end local v28    # "ziplen":J
    .restart local v3    # "i":I
    .restart local v4    # "comlen":I
    .local v5, "cenpos":J
    .local v7, "ziplen":J
    .local v22, "buf":[B
    .restart local v25    # "locpos":J
    :cond_11c
    move-object/from16 v1, p0

    move/from16 v27, v3

    move-wide/from16 v28, v7

    move-object/from16 v7, v22

    move v8, v4

    move-wide/from16 v22, v5

    move-wide/from16 v5, v25

    .end local v3    # "i":I
    .end local v4    # "comlen":I
    .end local v25    # "locpos":J
    .local v5, "locpos":J
    .local v7, "buf":[B
    .restart local v8    # "comlen":I
    .local v22, "cenpos":J
    .restart local v27    # "i":I
    .restart local v28    # "ziplen":J
    goto/16 :goto_203

    .line 1574
    .end local v5    # "locpos":J
    .end local v8    # "comlen":I
    .end local v24    # "len":I
    .end local v27    # "i":I
    .end local v28    # "ziplen":J
    .local v2, "len":I
    .restart local v3    # "i":I
    .restart local v4    # "comlen":I
    .local v7, "ziplen":J
    .local v22, "buf":[B
    :cond_12b
    move-object/from16 v1, p0

    move/from16 v24, v2

    move/from16 v27, v3

    move-wide/from16 v28, v7

    move-object/from16 v7, v22

    move v8, v4

    .line 1592
    .end local v2    # "len":I
    .end local v3    # "i":I
    .end local v4    # "comlen":I
    .end local v22    # "buf":[B
    .local v7, "buf":[B
    .restart local v8    # "comlen":I
    .restart local v24    # "len":I
    .restart local v27    # "i":I
    .restart local v28    # "ziplen":J
    :cond_136
    if-lez v8, :cond_14f

    .line 1593
    new-array v0, v8, [B

    iput-object v0, v1, Ljava/util/zip/ZipFile$Source;->comment:[B

    .line 1594
    iget-object v2, v1, Ljava/util/zip/ZipFile$Source;->comment:[B

    iget-wide v3, v11, Ljava/util/zip/ZipFile$Source$End;->endpos:J

    add-long v5, v3, v20

    const/4 v3, 0x0

    move v4, v8

    .end local v8    # "comlen":I
    .restart local v4    # "comlen":I
    invoke-direct/range {v1 .. v6}, Ljava/util/zip/ZipFile$Source;->readFullyAt([BIIJ)I

    move-result v0

    .end local v4    # "comlen":I
    .restart local v8    # "comlen":I
    if-eq v0, v8, :cond_14f

    .line 1595
    const-string v0, "zip comment read failed"

    invoke-static {v0}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1600
    :cond_14f
    const/16 v0, 0x14

    :try_start_151
    new-array v2, v0, [B

    .line 1601
    .local v2, "loc64":[B
    iget-wide v0, v11, Ljava/util/zip/ZipFile$Source$End;->endpos:J

    const-wide/16 v3, 0x14

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1f6

    move-wide v0, v3

    array-length v4, v2

    iget-wide v5, v11, Ljava/util/zip/ZipFile$Source$End;->endpos:J

    sub-long/2addr v5, v0

    .line 1602
    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/zip/ZipFile$Source;->readFullyAt([BIIJ)I

    move-result v0

    move-object v1, v2

    .end local v2    # "loc64":[B
    .local v1, "loc64":[B
    array-length v2, v1

    if-ne v0, v2, :cond_1f3

    .line 1603
    invoke-static {v1}, Ljava/util/zip/ZipUtils;->GETSIG([B)J

    move-result-wide v2

    const-wide/32 v4, 0x7064b50

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17a

    move-object/from16 v16, v1

    goto/16 :goto_1f8

    .line 1606
    :cond_17a
    invoke-static {v1}, Ljava/util/zip/ZipUtils;->ZIP64_LOCOFF([B)J

    move-result-wide v5

    .line 1607
    .local v5, "end64pos":J
    const/16 v0, 0x38

    new-array v2, v0, [B

    .line 1608
    .local v2, "end64buf":[B
    array-length v4, v2

    const/4 v3, 0x0

    move-object v0, v1

    move-object/from16 v1, p0

    .end local v1    # "loc64":[B
    .local v0, "loc64":[B
    invoke-direct/range {v1 .. v6}, Ljava/util/zip/ZipFile$Source;->readFullyAt([BIIJ)I

    move-result v3

    array-length v1, v2

    if-ne v3, v1, :cond_1ee

    .line 1609
    invoke-static {v2}, Ljava/util/zip/ZipUtils;->GETSIG([B)J

    move-result-wide v3

    const-wide/32 v16, 0x6064b50

    cmp-long v1, v3, v16

    if-eqz v1, :cond_19e

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    goto :goto_1f2

    .line 1613
    :cond_19e
    invoke-static {v2}, Ljava/util/zip/ZipUtils;->ZIP64_ENDSIZ([B)J

    move-result-wide v3

    .line 1614
    .local v3, "cenlen64":J
    invoke-static {v2}, Ljava/util/zip/ZipUtils;->ZIP64_ENDOFF([B)J

    move-result-wide v16

    move-wide/from16 v20, v16

    .line 1615
    .local v20, "cenoff64":J
    invoke-static {v2}, Ljava/util/zip/ZipUtils;->ZIP64_ENDTOT([B)J

    move-result-wide v16

    move-wide/from16 v22, v16

    .line 1617
    .local v22, "centot64":J
    move-object/from16 v16, v0

    .end local v0    # "loc64":[B
    .local v16, "loc64":[B
    iget-wide v0, v11, Ljava/util/zip/ZipFile$Source$End;->cenlen:J

    cmp-long v0, v3, v0

    const-wide v25, 0xffffffffL

    if-eqz v0, :cond_1c1

    iget-wide v0, v11, Ljava/util/zip/ZipFile$Source$End;->cenlen:J

    cmp-long v0, v0, v25

    if-nez v0, :cond_1db

    :cond_1c1
    iget-wide v0, v11, Ljava/util/zip/ZipFile$Source$End;->cenoff:J

    cmp-long v0, v20, v0

    if-eqz v0, :cond_1cd

    iget-wide v0, v11, Ljava/util/zip/ZipFile$Source$End;->cenoff:J

    cmp-long v0, v0, v25

    if-nez v0, :cond_1db

    :cond_1cd
    iget v0, v11, Ljava/util/zip/ZipFile$Source$End;->centot:I

    int-to-long v0, v0

    cmp-long v0, v22, v0

    if-eqz v0, :cond_1dc

    iget v0, v11, Ljava/util/zip/ZipFile$Source$End;->centot:I

    const v1, 0xffff

    if-eq v0, v1, :cond_1dc

    .line 1620
    :cond_1db
    return-object v11

    .line 1623
    :cond_1dc
    iput-wide v3, v11, Ljava/util/zip/ZipFile$Source$End;->cenlen:J

    .line 1624
    move-wide/from16 v0, v20

    .end local v20    # "cenoff64":J
    .local v0, "cenoff64":J
    iput-wide v0, v11, Ljava/util/zip/ZipFile$Source$End;->cenoff:J

    .line 1625
    move-wide/from16 v20, v0

    move-object/from16 v17, v2

    move-wide/from16 v0, v22

    .end local v2    # "end64buf":[B
    .end local v22    # "centot64":J
    .local v0, "centot64":J
    .local v17, "end64buf":[B
    .restart local v20    # "cenoff64":J
    long-to-int v2, v0

    iput v2, v11, Ljava/util/zip/ZipFile$Source$End;->centot:I

    .line 1626
    iput-wide v5, v11, Ljava/util/zip/ZipFile$Source$End;->endpos:J
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_1ed} :catch_1f9

    .end local v0    # "centot64":J
    .end local v3    # "cenlen64":J
    .end local v5    # "end64pos":J
    .end local v16    # "loc64":[B
    .end local v17    # "end64buf":[B
    .end local v20    # "cenoff64":J
    goto :goto_1fa

    .line 1608
    .local v0, "loc64":[B
    .restart local v2    # "end64buf":[B
    .restart local v5    # "end64pos":J
    :cond_1ee
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 1610
    .end local v0    # "loc64":[B
    .end local v2    # "end64buf":[B
    .restart local v16    # "loc64":[B
    .restart local v17    # "end64buf":[B
    :goto_1f2
    return-object v11

    .line 1602
    .end local v5    # "end64pos":J
    .end local v16    # "loc64":[B
    .end local v17    # "end64buf":[B
    .restart local v1    # "loc64":[B
    :cond_1f3
    move-object/from16 v16, v1

    .end local v1    # "loc64":[B
    .restart local v16    # "loc64":[B
    goto :goto_1f8

    .line 1601
    .end local v16    # "loc64":[B
    .local v2, "loc64":[B
    :cond_1f6
    move-object/from16 v16, v2

    .line 1604
    .end local v2    # "loc64":[B
    .restart local v16    # "loc64":[B
    :goto_1f8
    return-object v11

    .line 1627
    .end local v16    # "loc64":[B
    :catch_1f9
    move-exception v0

    :goto_1fa
    nop

    .line 1628
    return-object v11

    .line 1563
    .end local v8    # "comlen":I
    .end local v19    # "endbuf":[B
    .end local v24    # "len":I
    .end local v27    # "i":I
    .end local v28    # "ziplen":J
    .local v1, "buf":[B
    .local v2, "len":I
    .local v3, "i":I
    .local v7, "ziplen":J
    :cond_1fc
    move/from16 v24, v2

    move/from16 v27, v3

    move-wide/from16 v28, v7

    move-object v7, v1

    .line 1562
    .end local v1    # "buf":[B
    .end local v2    # "len":I
    .end local v3    # "i":I
    .local v7, "buf":[B
    .restart local v24    # "len":I
    .restart local v27    # "i":I
    .restart local v28    # "ziplen":J
    :cond_203
    :goto_203
    add-int/lit8 v3, v27, -0x1

    move-object v1, v7

    move/from16 v2, v24

    move-wide/from16 v7, v28

    .end local v27    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_71

    .end local v24    # "len":I
    .end local v28    # "ziplen":J
    .restart local v1    # "buf":[B
    .restart local v2    # "len":I
    .local v7, "ziplen":J
    :cond_20c
    move/from16 v24, v2

    move/from16 v27, v3

    move-wide/from16 v28, v7

    move-object v7, v1

    .line 1550
    .end local v1    # "buf":[B
    .end local v2    # "len":I
    .end local v3    # "i":I
    .end local v18    # "off":I
    .local v7, "buf":[B
    .restart local v28    # "ziplen":J
    array-length v0, v7

    add-int/lit8 v0, v0, -0x16

    int-to-long v0, v0

    sub-long v3, v9, v0

    move-object/from16 v1, p0

    move-object v2, v7

    move-wide/from16 v9, v16

    move-wide/from16 v7, v28

    .end local v9    # "pos":J
    .local v3, "pos":J
    goto/16 :goto_36

    .end local v28    # "ziplen":J
    .local v2, "buf":[B
    .local v7, "ziplen":J
    :cond_222
    move-object v0, v5

    .line 1632
    .end local v3    # "pos":J
    new-instance v1, Ljava/util/zip/ZipException;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist get(Ljava/io/File;ZLjava/util/zip/ZipCoder;Z)Ljava/util/zip/ZipFile$Source;
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "toDelete"    # Z
    .param p2, "zc"    # Ljava/util/zip/ZipCoder;
    .param p3, "isZipPathValidatorEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1399
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile$Source$Key;

    .line 1400
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const-class v2, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2, v3}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Ljava/util/zip/ZipFile$Source$Key;-><init>(Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/util/zip/ZipCoder;Z)V
    :try_end_12
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_12} :catch_5a

    .line 1405
    .local v0, "key":Ljava/util/zip/ZipFile$Source$Key;
    nop

    .line 1407
    sget-object v1, Ljava/util/zip/ZipFile$Source;->files:Ljava/util/HashMap;

    monitor-enter v1

    .line 1408
    :try_start_16
    sget-object v2, Ljava/util/zip/ZipFile$Source;->files:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipFile$Source;

    .line 1409
    .local v2, "src":Ljava/util/zip/ZipFile$Source;
    if-eqz v2, :cond_28

    .line 1410
    iget v3, v2, Ljava/util/zip/ZipFile$Source;->refs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/zip/ZipFile$Source;->refs:I

    .line 1411
    monitor-exit v1

    return-object v2

    .line 1413
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_57

    .line 1414
    new-instance v1, Ljava/util/zip/ZipFile$Source;

    invoke-direct {v1, v0, p1, p2}, Ljava/util/zip/ZipFile$Source;-><init>(Ljava/util/zip/ZipFile$Source$Key;ZLjava/util/zip/ZipCoder;)V

    .line 1416
    .end local v2    # "src":Ljava/util/zip/ZipFile$Source;
    .local v1, "src":Ljava/util/zip/ZipFile$Source;
    sget-object v2, Ljava/util/zip/ZipFile$Source;->files:Ljava/util/HashMap;

    monitor-enter v2

    .line 1417
    :try_start_31
    sget-object v3, Ljava/util/zip/ZipFile$Source;->files:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1418
    invoke-direct {v1}, Ljava/util/zip/ZipFile$Source;->close()V

    .line 1419
    sget-object v3, Ljava/util/zip/ZipFile$Source;->files:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipFile$Source;

    move-object v1, v3

    .line 1420
    iget v3, v1, Ljava/util/zip/ZipFile$Source;->refs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Ljava/util/zip/ZipFile$Source;->refs:I

    .line 1421
    monitor-exit v2

    return-object v1

    .line 1423
    :cond_4d
    sget-object v3, Ljava/util/zip/ZipFile$Source;->files:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    monitor-exit v2

    return-object v1

    .line 1425
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_31 .. :try_end_56} :catchall_54

    throw v3

    .line 1413
    .end local v1    # "src":Ljava/util/zip/ZipFile$Source;
    :catchall_57
    move-exception v2

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v2

    .line 1403
    .end local v0    # "key":Ljava/util/zip/ZipFile$Source$Key;
    :catch_5a
    move-exception v0

    .line 1404
    .local v0, "ipe":Ljava/nio/file/InvalidPathException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist getEntryHash(I)I
    .registers 3
    .param p1, "index"    # I

    .line 1322
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->entries:[I

    aget v0, v0, p1

    return v0
.end method

.method private blacklist getEntryNext(I)I
    .registers 4
    .param p1, "index"    # I

    .line 1323
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->entries:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private blacklist getEntryPos(I)I
    .registers 4
    .param p1, "index"    # I

    .line 1324
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->entries:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private blacklist getEntryPos(Ljava/lang/String;Z)I
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "addSlash"    # Z

    .line 1811
    iget v0, p0, Ljava/util/zip/ZipFile$Source;->total:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 1812
    return v1

    .line 1815
    :cond_6
    invoke-static {p1}, Ljava/util/zip/ZipCoder;->hash(Ljava/lang/String;)I

    move-result v0

    .line 1816
    .local v0, "hsh":I
    iget-object v2, p0, Ljava/util/zip/ZipFile$Source;->table:[I

    const v3, 0x7fffffff

    and-int/2addr v3, v0

    iget v4, p0, Ljava/util/zip/ZipFile$Source;->tablelen:I

    rem-int/2addr v3, v4

    aget v2, v2, v3

    .line 1820
    .local v2, "idx":I
    :goto_15
    if-eq v2, v1, :cond_61

    .line 1821
    invoke-direct {p0, v2}, Ljava/util/zip/ZipFile$Source;->getEntryHash(I)I

    move-result v3

    if-ne v3, v0, :cond_5c

    .line 1823
    invoke-direct {p0, v2}, Ljava/util/zip/ZipFile$Source;->getEntryPos(I)I

    move-result v3

    .line 1826
    .local v3, "pos":I
    :try_start_21
    invoke-direct {p0, v3}, Ljava/util/zip/ZipFile$Source;->zipCoderForPos(I)Ljava/util/zip/ZipCoder;

    move-result-object v4

    .line 1827
    .local v4, "zc":Ljava/util/zip/ZipCoder;
    iget-object v5, p0, Ljava/util/zip/ZipFile$Source;->cen:Ljava/nio/DirectByteBuffer;

    add-int/lit8 v6, v3, 0x2e

    iget-object v7, p0, Ljava/util/zip/ZipFile$Source;->cen:Ljava/nio/DirectByteBuffer;

    invoke-static {v7, v3}, Ljava/util/zip/ZipUtils;->CENNAM(Ljava/nio/DirectByteBuffer;I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/ZipCoder;->toString(Ljava/nio/DirectByteBuffer;II)Ljava/lang/String;

    move-result-object v5

    .line 1832
    .local v5, "entry":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1833
    .local v6, "entryLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1834
    .local v7, "nameLen":I
    if-ne v6, v7, :cond_43

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_59

    :cond_43
    if-eqz p2, :cond_5a

    add-int/lit8 v8, v7, 0x1

    if-ne v8, v6, :cond_5a

    .line 1837
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5a

    add-int/lit8 v8, v6, -0x1

    .line 1838
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8
    :try_end_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_55} :catch_5b

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_5a

    .line 1839
    :cond_59
    return v3

    .line 1843
    .end local v4    # "zc":Ljava/util/zip/ZipCoder;
    .end local v5    # "entry":Ljava/lang/String;
    .end local v6    # "entryLen":I
    .end local v7    # "nameLen":I
    :cond_5a
    goto :goto_5c

    .line 1841
    :catch_5b
    move-exception v4

    .line 1845
    .end local v3    # "pos":I
    :cond_5c
    :goto_5c
    invoke-direct {p0, v2}, Ljava/util/zip/ZipFile$Source;->getEntryNext(I)I

    move-result v2

    goto :goto_15

    .line 1847
    :cond_61
    return v1
.end method

.method private blacklist getMetaVersion([BII)I
    .registers 11
    .param p1, "name"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 1956
    add-int v0, p2, p3

    .line 1957
    .local v0, "nend":I
    const/16 v1, 0xa

    const/4 v2, 0x0

    if-le p3, v1, :cond_86

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_86

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    aget-byte p2, p1, p2

    or-int/lit8 p2, p2, 0x20

    const/16 v4, 0x76

    if-ne p2, v4, :cond_85

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v1, p1, v1

    or-int/lit8 v1, v1, 0x20

    const/16 v4, 0x65

    if-ne v1, v4, :cond_86

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte p2, p1, p2

    or-int/lit8 p2, p2, 0x20

    const/16 v4, 0x72

    if-ne p2, v4, :cond_85

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v1, p1, v1

    or-int/lit8 v1, v1, 0x20

    const/16 v4, 0x73

    if-ne v1, v4, :cond_86

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte p2, p1, p2

    or-int/lit8 p2, p2, 0x20

    const/16 v5, 0x69

    if-ne p2, v5, :cond_85

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v1, p1, v1

    or-int/lit8 v1, v1, 0x20

    const/16 v5, 0x6f

    if-ne v1, v5, :cond_86

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte p2, p1, p2

    or-int/lit8 p2, p2, 0x20

    const/16 v5, 0x6e

    if-ne p2, v5, :cond_85

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v1, p1, v1

    or-int/lit8 v1, v1, 0x20

    if-ne v1, v4, :cond_86

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte p2, p1, p2

    if-eq p2, v3, :cond_66

    goto :goto_85

    .line 1970
    :cond_66
    const/4 p2, 0x0

    .line 1971
    .local p2, "version":I
    :goto_67
    if-ge v1, v0, :cond_84

    .line 1972
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "off":I
    .local v4, "off":I
    aget-byte v1, p1, v1

    .line 1973
    .local v1, "c":B
    if-ne v1, v3, :cond_70

    .line 1974
    return p2

    .line 1976
    :cond_70
    const/16 v5, 0x30

    if-lt v1, v5, :cond_83

    const/16 v6, 0x39

    if-le v1, v6, :cond_79

    goto :goto_83

    .line 1979
    :cond_79
    mul-int/lit8 v6, p2, 0xa

    add-int/2addr v6, v1

    add-int/lit8 p2, v6, -0x30

    .line 1981
    if-gtz p2, :cond_81

    .line 1982
    return v2

    .line 1984
    .end local v1    # "c":B
    :cond_81
    move v1, v4

    goto :goto_67

    .line 1977
    .restart local v1    # "c":B
    :cond_83
    :goto_83
    return v2

    .line 1985
    .end local v4    # "off":I
    .local v1, "off":I
    :cond_84
    return v2

    .line 1957
    .end local p2    # "version":I
    :cond_85
    :goto_85
    move p2, v1

    .line 1968
    .end local v1    # "off":I
    .local p2, "off":I
    :cond_86
    return v2
.end method

.method private blacklist initCEN([BI)V
    .registers 21
    .param p1, "cen"    # [B
    .param p2, "knownTotal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1642
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_76

    .line 1643
    invoke-direct {v0}, Ljava/util/zip/ZipFile$Source;->findEND()Ljava/util/zip/ZipFile$Source$End;

    move-result-object v4

    .line 1644
    .local v4, "end":Ljava/util/zip/ZipFile$Source$End;
    iget-wide v5, v4, Ljava/util/zip/ZipFile$Source$End;->endpos:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_20

    .line 1645
    iput-wide v7, v0, Ljava/util/zip/ZipFile$Source;->locpos:J

    .line 1646
    iput v2, v0, Ljava/util/zip/ZipFile$Source;->total:I

    .line 1647
    new-array v2, v2, [I

    iput-object v2, v0, Ljava/util/zip/ZipFile$Source;->entries:[I

    .line 1648
    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/zip/ZipFile$Source;->cen:Ljava/nio/DirectByteBuffer;

    .line 1649
    return-void

    .line 1651
    :cond_20
    iget-wide v5, v4, Ljava/util/zip/ZipFile$Source$End;->cenlen:J

    iget-wide v9, v4, Ljava/util/zip/ZipFile$Source$End;->endpos:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2d

    .line 1652
    const-string v5, "invalid END header (bad central directory size)"

    invoke-static {v5}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1654
    :cond_2d
    iget-wide v5, v4, Ljava/util/zip/ZipFile$Source$End;->endpos:J

    iget-wide v9, v4, Ljava/util/zip/ZipFile$Source$End;->cenlen:J

    sub-long/2addr v5, v9

    iput-wide v5, v0, Ljava/util/zip/ZipFile$Source;->cenpos:J

    .line 1657
    iget-wide v5, v0, Ljava/util/zip/ZipFile$Source;->cenpos:J

    iget-wide v9, v4, Ljava/util/zip/ZipFile$Source$End;->cenoff:J

    sub-long/2addr v5, v9

    iput-wide v5, v0, Ljava/util/zip/ZipFile$Source;->locpos:J

    .line 1658
    iget-wide v5, v0, Ljava/util/zip/ZipFile$Source;->locpos:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_46

    .line 1659
    const-string v5, "invalid END header (bad central directory offset)"

    invoke-static {v5}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1664
    :cond_46
    iget-wide v5, v4, Ljava/util/zip/ZipFile$Source$End;->cenlen:J

    const-wide/16 v7, 0x16

    add-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v0, Ljava/util/zip/ZipFile$Source;->cenlen:I

    .line 1665
    iget-object v5, v0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v8, v0, Ljava/util/zip/ZipFile$Source;->cenpos:J

    iget v5, v0, Ljava/util/zip/ZipFile$Source;->cenlen:I

    int-to-long v10, v5

    .line 1666
    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    check-cast v5, Ljava/nio/DirectByteBuffer;

    iput-object v5, v0, Ljava/util/zip/ZipFile$Source;->cen:Ljava/nio/DirectByteBuffer;

    .line 1667
    .local v5, "cenBuf":Ljava/nio/DirectByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/DirectByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1668
    iget v6, v0, Ljava/util/zip/ZipFile$Source;->cenlen:I

    new-array v6, v6, [B

    .line 1669
    .end local p1    # "cen":[B
    .local v6, "cen":[B
    iget v7, v0, Ljava/util/zip/ZipFile$Source;->cenlen:I

    invoke-virtual {v5, v2, v6, v2, v7}, Ljava/nio/DirectByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    .line 1671
    iget v7, v4, Ljava/util/zip/ZipFile$Source$End;->centot:I

    iput v7, v0, Ljava/util/zip/ZipFile$Source;->total:I

    .line 1672
    .end local v4    # "end":Ljava/util/zip/ZipFile$Source$End;
    .end local v5    # "cenBuf":Ljava/nio/DirectByteBuffer;
    goto :goto_7a

    .line 1675
    .end local v6    # "cen":[B
    .restart local p1    # "cen":[B
    :cond_76
    iput v1, v0, Ljava/util/zip/ZipFile$Source;->total:I

    move-object/from16 v6, p1

    .line 1678
    .end local p1    # "cen":[B
    .restart local v6    # "cen":[B
    :goto_7a
    iget v4, v0, Ljava/util/zip/ZipFile$Source;->total:I

    mul-int/lit8 v4, v4, 0x3

    .line 1679
    .local v4, "entriesLength":I
    new-array v5, v4, [I

    iput-object v5, v0, Ljava/util/zip/ZipFile$Source;->entries:[I

    .line 1681
    iget v5, v0, Ljava/util/zip/ZipFile$Source;->total:I

    div-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x1

    .line 1682
    .local v5, "tablelen":I
    iput v5, v0, Ljava/util/zip/ZipFile$Source;->tablelen:I

    .line 1684
    new-array v7, v5, [I

    .line 1685
    .local v7, "table":[I
    iput-object v7, v0, Ljava/util/zip/ZipFile$Source;->table:[I

    .line 1687
    invoke-static {v7, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1690
    const/4 v3, 0x0

    .line 1692
    .local v3, "signatureNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 1695
    .local v8, "metaVersionsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1696
    .local v9, "idx":I
    const/4 v10, 0x0

    .line 1697
    .local v10, "pos":I
    const/16 v11, 0x2e

    .line 1700
    .local v11, "entryPos":I
    iget v12, v0, Ljava/util/zip/ZipFile$Source;->cenlen:I

    add-int/lit8 v12, v12, -0x16

    .line 1701
    .local v12, "limit":I
    iput v2, v0, Ljava/util/zip/ZipFile$Source;->manifestNum:I

    .line 1703
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1704
    .local v2, "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_a2
    if-gt v11, v12, :cond_174

    .line 1705
    if-lt v9, v4, :cond_ae

    .line 1709
    invoke-static {v6, v12}, Ljava/util/zip/ZipFile$Source;->countCENHeaders([BI)I

    move-result v13

    invoke-direct {v0, v6, v13}, Ljava/util/zip/ZipFile$Source;->initCEN([BI)V

    .line 1710
    return-void

    .line 1714
    :cond_ae
    invoke-direct {v0, v6, v10, v9}, Ljava/util/zip/ZipFile$Source;->checkAndAddEntry([BII)I

    move-result v13

    .line 1719
    .local v13, "nlen":I
    invoke-direct {v0, v6, v11}, Ljava/util/zip/ZipFile$Source;->zipCoderForPos([BI)Ljava/util/zip/ZipCoder;

    move-result-object v14

    .line 1720
    .local v14, "zcp":Ljava/util/zip/ZipCoder;
    add-int/lit8 v15, v10, 0x2e

    invoke-virtual {v14, v6, v15, v13}, Ljava/util/zip/ZipCoder;->toString([BII)Ljava/lang/String;

    move-result-object v15

    .line 1721
    .local v15, "name":Ljava/lang/String;
    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_db

    .line 1722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v2

    .end local v2    # "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "Duplicate entry name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    goto :goto_dd

    .line 1721
    .end local p1    # "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_db
    move-object/from16 p1, v2

    .line 1728
    .end local v2    # "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p1    # "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_dd
    const/4 v1, 0x0

    .local v1, "nameIdx":I
    :goto_de
    if-ge v1, v13, :cond_109

    .line 1729
    add-int/lit8 v2, v10, 0x2e

    add-int/2addr v2, v1

    aget-byte v2, v6, v2

    .line 1731
    .local v2, "b":B
    if-nez v2, :cond_102

    .line 1732
    move/from16 v16, v1

    .end local v1    # "nameIdx":I
    .local v16, "nameIdx":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    .end local v2    # "b":B
    .local v17, "b":B
    const-string v2, "Filename contains NUL byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    goto :goto_106

    .line 1731
    .end local v16    # "nameIdx":I
    .end local v17    # "b":B
    .restart local v1    # "nameIdx":I
    .restart local v2    # "b":B
    :cond_102
    move/from16 v16, v1

    move/from16 v17, v2

    .line 1728
    .end local v1    # "nameIdx":I
    .end local v2    # "b":B
    .restart local v16    # "nameIdx":I
    :goto_106
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "nameIdx":I
    .restart local v1    # "nameIdx":I
    goto :goto_de

    :cond_109
    move/from16 v16, v1

    .line 1737
    .end local v1    # "nameIdx":I
    iget-object v1, v0, Ljava/util/zip/ZipFile$Source;->key:Ljava/util/zip/ZipFile$Source$Key;

    iget-boolean v1, v1, Ljava/util/zip/ZipFile$Source$Key;->isZipFilePathValidatorEnabled:Z

    if-eqz v1, :cond_11e

    invoke-static {}, Ldalvik/system/ZipPathValidator;->isClear()Z

    move-result v1

    if-nez v1, :cond_11e

    .line 1738
    invoke-static {}, Ldalvik/system/ZipPathValidator;->getInstance()Ldalvik/system/ZipPathValidator$Callback;

    move-result-object v1

    invoke-interface {v1, v15}, Ldalvik/system/ZipPathValidator$Callback;->onZipEntryAccess(Ljava/lang/String;)V

    .line 1741
    :cond_11e
    add-int/lit8 v9, v9, 0x3

    .line 1744
    invoke-static {v6, v11, v13}, Ljava/util/zip/ZipFile$Source;->isMetaName([BII)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 1746
    add-int/lit8 v1, v11, 0x9

    add-int/lit8 v2, v13, -0x9

    invoke-direct {v0, v6, v1, v2}, Ljava/util/zip/ZipFile$Source;->isManifestName([BII)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 1747
    iput v10, v0, Ljava/util/zip/ZipFile$Source;->manifestPos:I

    .line 1748
    iget v1, v0, Ljava/util/zip/ZipFile$Source;->manifestNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljava/util/zip/ZipFile$Source;->manifestNum:I

    goto :goto_168

    .line 1750
    :cond_139
    invoke-direct {v0, v6, v11, v13}, Ljava/util/zip/ZipFile$Source;->isSignatureRelated([BII)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 1751
    if-nez v3, :cond_148

    .line 1752
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v1

    .line 1753
    :cond_148
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    :cond_14f
    add-int/lit8 v1, v11, 0x9

    add-int/lit8 v2, v13, -0x9

    invoke-direct {v0, v6, v1, v2}, Ljava/util/zip/ZipFile$Source;->getMetaVersion([BII)I

    move-result v1

    .line 1760
    .local v1, "version":I
    if-lez v1, :cond_168

    .line 1761
    if-nez v8, :cond_161

    .line 1762
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    move-object v8, v2

    .line 1763
    :cond_161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1768
    .end local v1    # "version":I
    :cond_168
    :goto_168
    invoke-direct {v0, v6, v10, v11, v13}, Ljava/util/zip/ZipFile$Source;->nextEntryPos([BIII)I

    move-result v10

    .line 1769
    add-int/lit8 v11, v10, 0x2e

    .line 1770
    .end local v13    # "nlen":I
    .end local v14    # "zcp":Ljava/util/zip/ZipCoder;
    .end local v15    # "name":Ljava/lang/String;
    move-object/from16 v2, p1

    move/from16 v1, p2

    goto/16 :goto_a2

    .line 1773
    .end local p1    # "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_174
    move-object/from16 p1, v2

    .end local v2    # "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p1    # "entriesNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    div-int/lit8 v1, v9, 0x3

    iput v1, v0, Ljava/util/zip/ZipFile$Source;->total:I

    .line 1775
    if-eqz v3, :cond_198

    .line 1776
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1777
    .local v1, "len":I
    new-array v2, v1, [I

    iput-object v2, v0, Ljava/util/zip/ZipFile$Source;->signatureMetaNames:[I

    .line 1778
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_185
    if-ge v2, v1, :cond_198

    .line 1779
    iget-object v13, v0, Ljava/util/zip/ZipFile$Source;->signatureMetaNames:[I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v13, v2

    .line 1778
    add-int/lit8 v2, v2, 0x1

    goto :goto_185

    .line 1782
    .end local v1    # "len":I
    .end local v2    # "j":I
    :cond_198
    if-eqz v8, :cond_1c0

    .line 1783
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Ljava/util/zip/ZipFile$Source;->metaVersions:[I

    .line 1784
    const/4 v1, 0x0

    .line 1785
    .local v1, "c":I
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1bf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 1786
    .local v13, "version":Ljava/lang/Integer;
    iget-object v14, v0, Ljava/util/zip/ZipFile$Source;->metaVersions:[I

    add-int/lit8 v15, v1, 0x1

    .end local v1    # "c":I
    .local v15, "c":I
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aput v16, v14, v1

    .line 1787
    .end local v13    # "version":Ljava/lang/Integer;
    move v1, v15

    goto :goto_1a7

    .line 1788
    .end local v15    # "c":I
    :cond_1bf
    goto :goto_1c4

    .line 1789
    :cond_1c0
    sget-object v1, Ljava/util/zip/ZipFile$Source;->EMPTY_META_VERSIONS:[I

    iput-object v1, v0, Ljava/util/zip/ZipFile$Source;->metaVersions:[I

    .line 1791
    :goto_1c4
    add-int/lit8 v1, v10, 0x16

    array-length v2, v6

    if-eq v1, v2, :cond_1ce

    .line 1792
    const-string v1, "invalid CEN header (bad header size)"

    invoke-static {v1}, Ljava/util/zip/ZipFile$Source;->zerror(Ljava/lang/String;)V

    .line 1794
    :cond_1ce
    return-void
.end method

.method private blacklist isManifestName([BII)Z
    .registers 8
    .param p1, "name"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 1897
    const/16 v0, 0xb

    if-ne p3, v0, :cond_6d

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-byte p2, p1, p2

    or-int/lit8 p2, p2, 0x20

    const/16 v1, 0x6d

    if-ne p2, v1, :cond_6c

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    aget-byte v0, p1, v0

    or-int/lit8 v0, v0, 0x20

    const/16 v2, 0x61

    if-ne v0, v2, :cond_6d

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    aget-byte p2, p1, p2

    or-int/lit8 p2, p2, 0x20

    const/16 v2, 0x6e

    if-ne p2, v2, :cond_6c

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    aget-byte v0, p1, v0

    or-int/lit8 v0, v0, 0x20

    const/16 v2, 0x69

    if-ne v0, v2, :cond_6d

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    aget-byte p2, p1, p2

    or-int/lit8 p2, p2, 0x20

    const/16 v2, 0x66

    if-ne p2, v2, :cond_6c

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    aget-byte v0, p1, v0

    or-int/lit8 v0, v0, 0x20

    const/16 v3, 0x65

    if-ne v0, v3, :cond_6d

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    aget-byte p2, p1, p2

    or-int/lit8 p2, p2, 0x20

    const/16 v3, 0x73

    if-ne p2, v3, :cond_6c

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    aget-byte v0, p1, v0

    or-int/lit8 v0, v0, 0x20

    const/16 v3, 0x74

    if-ne v0, v3, :cond_6d

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    aget-byte p2, p1, p2

    const/16 v3, 0x2e

    if-ne p2, v3, :cond_6c

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    aget-byte v0, p1, v0

    or-int/lit8 v0, v0, 0x20

    if-ne v0, v1, :cond_6d

    aget-byte v0, p1, p2

    or-int/lit8 v0, v0, 0x20

    if-ne v0, v2, :cond_6d

    const/4 v0, 0x1

    goto :goto_6e

    .end local p2    # "off":I
    .restart local v0    # "off":I
    :cond_6c
    move p2, v0

    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    return v0
.end method

.method private static blacklist isMetaName([BII)Z
    .registers 7
    .param p0, "name"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 1878
    const/16 v0, 0x9

    if-le p2, v0, :cond_62

    add-int v0, p1, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_62

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "off":I
    .local v0, "off":I
    aget-byte p1, p0, p1

    or-int/lit8 p1, p1, 0x20

    const/16 v3, 0x6d

    if-ne p1, v3, :cond_61

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "off":I
    .restart local p1    # "off":I
    aget-byte v0, p0, v0

    or-int/lit8 v0, v0, 0x20

    const/16 v3, 0x65

    if-ne v0, v3, :cond_62

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "off":I
    .restart local v0    # "off":I
    aget-byte p1, p0, p1

    or-int/lit8 p1, p1, 0x20

    const/16 v3, 0x74

    if-ne p1, v3, :cond_61

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "off":I
    .restart local p1    # "off":I
    aget-byte v0, p0, v0

    or-int/lit8 v0, v0, 0x20

    const/16 v3, 0x61

    if-ne v0, v3, :cond_62

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "off":I
    .restart local v0    # "off":I
    aget-byte p1, p0, p1

    const/16 v3, 0x2d

    if-ne p1, v3, :cond_61

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "off":I
    .restart local p1    # "off":I
    aget-byte v0, p0, v0

    or-int/lit8 v0, v0, 0x20

    const/16 v3, 0x69

    if-ne v0, v3, :cond_62

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "off":I
    .restart local v0    # "off":I
    aget-byte p1, p0, p1

    or-int/lit8 p1, p1, 0x20

    const/16 v3, 0x6e

    if-ne p1, v3, :cond_61

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "off":I
    .restart local p1    # "off":I
    aget-byte v0, p0, v0

    or-int/lit8 v0, v0, 0x20

    const/16 v3, 0x66

    if-ne v0, v3, :cond_62

    aget-byte v0, p0, p1

    if-ne v0, v2, :cond_62

    goto :goto_63

    .end local p1    # "off":I
    .restart local v0    # "off":I
    :cond_61
    move p1, v0

    .end local v0    # "off":I
    .restart local p1    # "off":I
    :cond_62
    const/4 v1, 0x0

    :goto_63
    return v1
.end method

.method private blacklist isSignatureRelated([BII)Z
    .registers 10
    .param p1, "name"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 1917
    const/4 v0, 0x0

    .line 1920
    .local v0, "signatureRelated":Z
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x73

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2d

    .line 1922
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p1, v1

    or-int/lit8 v1, v1, 0x20

    .line 1923
    .local v1, "b1":I
    add-int v3, p2, p3

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    or-int/lit8 v3, v3, 0x20

    .line 1924
    .local v3, "b2":I
    const/16 v4, 0x65

    if-ne v1, v4, :cond_25

    const/16 v4, 0x63

    if-eq v3, v4, :cond_2b

    :cond_25
    if-ne v1, v2, :cond_2c

    const/16 v2, 0x66

    if-ne v3, v2, :cond_2c

    .line 1925
    :cond_2b
    const/4 v0, 0x1

    .line 1927
    .end local v1    # "b1":I
    .end local v3    # "b2":I
    :cond_2c
    goto :goto_5c

    :cond_2d
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x4

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_2c

    .line 1929
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x3

    aget-byte v1, p1, v1

    or-int/lit8 v1, v1, 0x20

    .line 1930
    .restart local v1    # "b1":I
    add-int v3, p2, p3

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p1, v3

    or-int/lit8 v3, v3, 0x20

    .line 1931
    .restart local v3    # "b2":I
    add-int v4, p2, p3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    or-int/lit8 v4, v4, 0x20

    .line 1932
    .local v4, "b3":I
    const/16 v5, 0x72

    if-eq v1, v5, :cond_55

    const/16 v5, 0x64

    if-ne v1, v5, :cond_5c

    :cond_55
    if-ne v3, v2, :cond_5c

    const/16 v2, 0x61

    if-ne v4, v2, :cond_5c

    .line 1933
    const/4 v0, 0x1

    .line 1937
    .end local v1    # "b1":I
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    :cond_5c
    :goto_5c
    nop

    .line 1942
    return v0
.end method

.method private blacklist nextEntryPos([BIII)I
    .registers 7
    .param p1, "cen"    # [B
    .param p2, "pos"    # I
    .param p3, "entryPos"    # I
    .param p4, "nlen"    # I

    .line 1799
    add-int v0, p3, p4

    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->CENCOM([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->CENEXT([BI)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private final blacklist readAt([BIIJ)I
    .registers 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1522
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 1523
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p4, p5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1524
    iget-object v1, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1525
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private final blacklist readFullyAt([BIIJ)I
    .registers 10
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 1507
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p4, p5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1508
    move v1, p3

    .line 1509
    .local v1, "N":I
    :goto_9
    if-lez v1, :cond_19

    .line 1510
    const/16 v2, 0x2000

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1511
    .local v2, "n":I
    iget-object v3, p0, Ljava/util/zip/ZipFile$Source;->zfile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, p1, p2, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1512
    add-int/2addr p2, v2

    .line 1513
    sub-int/2addr v1, v2

    .line 1514
    .end local v2    # "n":I
    goto :goto_9

    .line 1515
    :cond_19
    monitor-exit v0

    return p3

    .line 1516
    .end local v1    # "N":I
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method static blacklist release(Ljava/util/zip/ZipFile$Source;)V
    .registers 4
    .param p0, "src"    # Ljava/util/zip/ZipFile$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1429
    sget-object v0, Ljava/util/zip/ZipFile$Source;->files:Ljava/util/HashMap;

    monitor-enter v0

    .line 1430
    if-eqz p0, :cond_17

    :try_start_5
    iget v1, p0, Ljava/util/zip/ZipFile$Source;->refs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/zip/ZipFile$Source;->refs:I

    if-nez v1, :cond_17

    .line 1431
    sget-object v1, Ljava/util/zip/ZipFile$Source;->files:Ljava/util/HashMap;

    iget-object v2, p0, Ljava/util/zip/ZipFile$Source;->key:Ljava/util/zip/ZipFile$Source$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    invoke-direct {p0}, Ljava/util/zip/ZipFile$Source;->close()V

    .line 1434
    :cond_17
    monitor-exit v0

    .line 1435
    return-void

    .line 1434
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private static blacklist zerror(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1803
    new-instance v0, Ljava/util/zip/ZipException;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist zipCoderForPos(I)Ljava/util/zip/ZipCoder;
    .registers 3
    .param p1, "pos"    # I

    .line 1851
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1852
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->zc:Ljava/util/zip/ZipCoder;

    return-object v0

    .line 1854
    :cond_b
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->cen:Ljava/nio/DirectByteBuffer;

    invoke-static {v0, p1}, Ljava/util/zip/ZipUtils;->CENFLG(Ljava/nio/DirectByteBuffer;I)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_18

    .line 1855
    sget-object v0, Ljava/util/zip/ZipCoder;->UTF8:Ljava/util/zip/ZipCoder$UTF8ZipCoder;

    return-object v0

    .line 1857
    :cond_18
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->zc:Ljava/util/zip/ZipCoder;

    return-object v0
.end method

.method private blacklist zipCoderForPos([BI)Ljava/util/zip/ZipCoder;
    .registers 4
    .param p1, "cen"    # [B
    .param p2, "pos"    # I

    .line 1862
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1863
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->zc:Ljava/util/zip/ZipCoder;

    return-object v0

    .line 1865
    :cond_b
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->CENFLG([BI)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_16

    .line 1866
    sget-object v0, Ljava/util/zip/ZipCoder;->UTF8:Ljava/util/zip/ZipCoder$UTF8ZipCoder;

    return-object v0

    .line 1868
    :cond_16
    iget-object v0, p0, Ljava/util/zip/ZipFile$Source;->zc:Ljava/util/zip/ZipCoder;

    return-object v0
.end method
