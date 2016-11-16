.class public final Ljava/lang/System;
.super Ljava/lang/Object;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    }
.end annotation


# static fields
.field private static final ARRAYCOPY_SHORT_BOOLEAN_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_BYTE_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_CHAR_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_DOUBLE_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_FLOAT_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_INT_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_LONG_ARRAY_THRESHOLD:I = 0x20

.field private static final ARRAYCOPY_SHORT_SHORT_ARRAY_THRESHOLD:I = 0x20

.field private static final LOCK:Ljava/lang/Object;

.field private static cons:Ljava/io/Console;

.field public static final err:Ljava/io/PrintStream;

.field public static final in:Ljava/io/InputStream;

.field private static justRanFinalization:Z

.field private static lineSeparator:Ljava/lang/String;

.field public static final out:Ljava/io/PrintStream;

.field private static props:Ljava/util/Properties;

.field private static runGC:Z

.field private static unchangeableProps:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 111
    new-instance v3, Ljava/lang/Object;

    #@2
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v3, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    #@7
    .line 194
    const/4 v3, 0x0

    #@8
    sput-object v3, Ljava/lang/System;->cons:Ljava/io/Console;

    #@a
    .line 1551
    invoke-static {}, Ljava/lang/System;->initUnchangeableSystemProperties()Ljava/util/Properties;

    #@d
    move-result-object v3

    #@e
    sput-object v3, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    #@10
    .line 1552
    invoke-static {}, Ljava/lang/System;->initProperties()Ljava/util/Properties;

    #@13
    move-result-object v3

    #@14
    sput-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    #@16
    .line 1553
    invoke-static {}, Ljava/lang/System;->addLegacyLocaleSystemProperties()V

    #@19
    .line 1554
    invoke-static {}, Lsun/misc/Version;->initSystemProperties()V

    #@1c
    .line 1559
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    #@1e
    const-string/jumbo v4, "line.separator"

    #@21
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    sput-object v3, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    #@27
    .line 1561
    new-instance v1, Ljava/io/FileInputStream;

    #@29
    sget-object v3, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    #@2b
    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@2e
    .line 1562
    .local v1, "fdIn":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    #@30
    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@32
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@35
    .line 1563
    .local v2, "fdOut":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/FileOutputStream;

    #@37
    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    #@39
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@3c
    .line 1565
    .local v0, "fdErr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    #@3e
    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@41
    sput-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@43
    .line 1566
    new-instance v3, Ljava/io/PrintStream;

    #@45
    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@48
    sput-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4a
    .line 1567
    new-instance v3, Ljava/io/PrintStream;

    #@4c
    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@4f
    sput-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@51
    .line 1573
    invoke-static {}, Lsun/misc/VM;->initializeOSEnvironment()V

    #@54
    .line 1579
    invoke-static {}, Lsun/misc/VM;->booted()V

    #@57
    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addLegacyLocaleSystemProperties()V
    .locals 6

    #@0
    .prologue
    .line 1049
    const-string/jumbo v4, "user.locale"

    #@3
    const-string/jumbo v5, ""

    #@6
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 1050
    .local v2, "locale":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_1

    #@10
    .line 1051
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@13
    move-result-object v0

    #@14
    .line 1052
    .local v0, "l":Ljava/util/Locale;
    const-string/jumbo v4, "user.language"

    #@17
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 1053
    const-string/jumbo v4, "user.region"

    #@21
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 1054
    const-string/jumbo v4, "user.variant"

    #@2b
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 1048
    .end local v0    # "l":Ljava/util/Locale;
    :cond_0
    :goto_0
    return-void

    #@33
    .line 1060
    :cond_1
    const-string/jumbo v4, "user.language"

    #@36
    const-string/jumbo v5, ""

    #@39
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 1061
    .local v1, "language":Ljava/lang/String;
    const-string/jumbo v4, "user.region"

    #@40
    const-string/jumbo v5, ""

    #@43
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    .line 1063
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_2

    #@4d
    .line 1064
    const-string/jumbo v4, "user.language"

    #@50
    const-string/jumbo v5, "en"

    #@53
    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 1067
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_0

    #@5c
    .line 1068
    const-string/jumbo v4, "user.region"

    #@5f
    const-string/jumbo v5, "US"

    #@62
    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@65
    goto :goto_0
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
.end method

.method public static arraycopy([BI[BII)V
    .locals 4
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 503
    if-nez p0, :cond_0

    #@2
    .line 504
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 506
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 507
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 509
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 511
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "src.length="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    array-length v3, p0

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " srcPos="

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 513
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 513
    array-length v3, p2

    #@40
    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 513
    const-string/jumbo v3, " dstPos="

    #@47
    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 513
    const-string/jumbo v3, " length="

    #@52
    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 511
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 509
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 510
    array-length v1, p0

    #@65
    sub-int/2addr v1, p4

    #@66
    if-gt p1, v1, :cond_2

    #@68
    array-length v1, p2

    #@69
    sub-int/2addr v1, p4

    #@6a
    if-gt p3, v1, :cond_2

    #@6c
    .line 515
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 517
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 521
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 522
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-byte v2, p0, v2

    #@82
    aput-byte v2, p2, v1

    #@84
    .line 521
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 526
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 527
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-byte v2, p0, v2

    #@90
    aput-byte v2, p2, v1

    #@92
    .line 526
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 532
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyByteUnchecked([BI[BII)V

    #@98
    .line 502
    :cond_6
    return-void
.end method

.method public static arraycopy([CI[CII)V
    .locals 4
    .param p0, "src"    # [C
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 450
    if-nez p0, :cond_0

    #@2
    .line 451
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 453
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 454
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 456
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 458
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "src.length="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    array-length v3, p0

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " srcPos="

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 460
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 460
    array-length v3, p2

    #@40
    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 460
    const-string/jumbo v3, " dstPos="

    #@47
    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 460
    const-string/jumbo v3, " length="

    #@52
    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 458
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 456
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 457
    array-length v1, p0

    #@65
    sub-int/2addr v1, p4

    #@66
    if-gt p1, v1, :cond_2

    #@68
    array-length v1, p2

    #@69
    sub-int/2addr v1, p4

    #@6a
    if-gt p3, v1, :cond_2

    #@6c
    .line 462
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 464
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 468
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 469
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-char v2, p0, v2

    #@82
    aput-char v2, p2, v1

    #@84
    .line 468
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 473
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 474
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-char v2, p0, v2

    #@90
    aput-char v2, p2, v1

    #@92
    .line 473
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 479
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyCharUnchecked([CI[CII)V

    #@98
    .line 449
    :cond_6
    return-void
.end method

.method public static arraycopy([DI[DII)V
    .locals 4
    .param p0, "src"    # [D
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 768
    if-nez p0, :cond_0

    #@2
    .line 769
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 771
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 772
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 774
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 776
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "src.length="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    array-length v3, p0

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " srcPos="

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 778
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 778
    array-length v3, p2

    #@40
    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 778
    const-string/jumbo v3, " dstPos="

    #@47
    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 778
    const-string/jumbo v3, " length="

    #@52
    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 776
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 774
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 775
    array-length v1, p0

    #@65
    sub-int/2addr v1, p4

    #@66
    if-gt p1, v1, :cond_2

    #@68
    array-length v1, p2

    #@69
    sub-int/2addr v1, p4

    #@6a
    if-gt p3, v1, :cond_2

    #@6c
    .line 780
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 782
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 786
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 787
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-wide v2, p0, v2

    #@82
    aput-wide v2, p2, v1

    #@84
    .line 786
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 791
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 792
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-wide v2, p0, v2

    #@90
    aput-wide v2, p2, v1

    #@92
    .line 791
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 797
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyDoubleUnchecked([DI[DII)V

    #@98
    .line 767
    :cond_6
    return-void
.end method

.method public static arraycopy([FI[FII)V
    .locals 4
    .param p0, "src"    # [F
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 715
    if-nez p0, :cond_0

    #@2
    .line 716
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 718
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 719
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 721
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 723
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "src.length="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    array-length v3, p0

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " srcPos="

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 725
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 725
    array-length v3, p2

    #@40
    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 725
    const-string/jumbo v3, " dstPos="

    #@47
    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 725
    const-string/jumbo v3, " length="

    #@52
    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 723
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 721
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 722
    array-length v1, p0

    #@65
    sub-int/2addr v1, p4

    #@66
    if-gt p1, v1, :cond_2

    #@68
    array-length v1, p2

    #@69
    sub-int/2addr v1, p4

    #@6a
    if-gt p3, v1, :cond_2

    #@6c
    .line 727
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 729
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 733
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 734
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget v2, p0, v2

    #@82
    aput v2, p2, v1

    #@84
    .line 733
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 738
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 739
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget v2, p0, v2

    #@90
    aput v2, p2, v1

    #@92
    .line 738
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 744
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyFloatUnchecked([FI[FII)V

    #@98
    .line 714
    :cond_6
    return-void
.end method

.method public static arraycopy([II[III)V
    .locals 4
    .param p0, "src"    # [I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 609
    if-nez p0, :cond_0

    #@2
    .line 610
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 612
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 613
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 615
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 617
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "src.length="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    array-length v3, p0

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " srcPos="

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 619
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 619
    array-length v3, p2

    #@40
    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 619
    const-string/jumbo v3, " dstPos="

    #@47
    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 619
    const-string/jumbo v3, " length="

    #@52
    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 617
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 615
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 616
    array-length v1, p0

    #@65
    sub-int/2addr v1, p4

    #@66
    if-gt p1, v1, :cond_2

    #@68
    array-length v1, p2

    #@69
    sub-int/2addr v1, p4

    #@6a
    if-gt p3, v1, :cond_2

    #@6c
    .line 621
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 623
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 627
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 628
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget v2, p0, v2

    #@82
    aput v2, p2, v1

    #@84
    .line 627
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 632
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 633
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget v2, p0, v2

    #@90
    aput v2, p2, v1

    #@92
    .line 632
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 638
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyIntUnchecked([II[III)V

    #@98
    .line 608
    :cond_6
    return-void
.end method

.method public static arraycopy([JI[JII)V
    .locals 4
    .param p0, "src"    # [J
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 662
    if-nez p0, :cond_0

    #@2
    .line 663
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 665
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 666
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 668
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 670
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "src.length="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    array-length v3, p0

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " srcPos="

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 672
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 672
    array-length v3, p2

    #@40
    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 672
    const-string/jumbo v3, " dstPos="

    #@47
    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 672
    const-string/jumbo v3, " length="

    #@52
    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 670
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 668
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 669
    array-length v1, p0

    #@65
    sub-int/2addr v1, p4

    #@66
    if-gt p1, v1, :cond_2

    #@68
    array-length v1, p2

    #@69
    sub-int/2addr v1, p4

    #@6a
    if-gt p3, v1, :cond_2

    #@6c
    .line 674
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 676
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 680
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 681
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-wide v2, p0, v2

    #@82
    aput-wide v2, p2, v1

    #@84
    .line 680
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 685
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 686
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-wide v2, p0, v2

    #@90
    aput-wide v2, p2, v1

    #@92
    .line 685
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 691
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyLongUnchecked([JI[JII)V

    #@98
    .line 661
    :cond_6
    return-void
.end method

.method public static arraycopy([SI[SII)V
    .locals 4
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 556
    if-nez p0, :cond_0

    #@2
    .line 557
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 559
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 560
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 562
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 564
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "src.length="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    array-length v3, p0

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " srcPos="

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 566
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 566
    array-length v3, p2

    #@40
    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 566
    const-string/jumbo v3, " dstPos="

    #@47
    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 566
    const-string/jumbo v3, " length="

    #@52
    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 564
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 562
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 563
    array-length v1, p0

    #@65
    sub-int/2addr v1, p4

    #@66
    if-gt p1, v1, :cond_2

    #@68
    array-length v1, p2

    #@69
    sub-int/2addr v1, p4

    #@6a
    if-gt p3, v1, :cond_2

    #@6c
    .line 568
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 570
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 574
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 575
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-short v2, p0, v2

    #@82
    aput-short v2, p2, v1

    #@84
    .line 574
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 579
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 580
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-short v2, p0, v2

    #@90
    aput-short v2, p2, v1

    #@92
    .line 579
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 585
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyShortUnchecked([SI[SII)V

    #@98
    .line 555
    :cond_6
    return-void
.end method

.method public static arraycopy([ZI[ZII)V
    .locals 4
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 821
    if-nez p0, :cond_0

    #@2
    .line 822
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 824
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 825
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 827
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 829
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "src.length="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    array-length v3, p0

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, " srcPos="

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 831
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 831
    array-length v3, p2

    #@40
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 831
    const-string/jumbo v3, " dstPos="

    #@47
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 831
    const-string/jumbo v3, " length="

    #@52
    .line 830
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 829
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 827
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 828
    array-length v1, p0

    #@65
    sub-int/2addr v1, p4

    #@66
    if-gt p1, v1, :cond_2

    #@68
    array-length v1, p2

    #@69
    sub-int/2addr v1, p4

    #@6a
    if-gt p3, v1, :cond_2

    #@6c
    .line 833
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 835
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 839
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 840
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-boolean v2, p0, v2

    #@82
    aput-boolean v2, p2, v1

    #@84
    .line 839
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 844
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 845
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-boolean v2, p0, v2

    #@90
    aput-boolean v2, p2, v1

    #@92
    .line 844
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 850
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyBooleanUnchecked([ZI[ZII)V

    #@98
    .line 820
    :cond_6
    return-void
.end method

.method private static native arraycopyBooleanUnchecked([ZI[ZII)V
.end method

.method private static native arraycopyByteUnchecked([BI[BII)V
.end method

.method private static native arraycopyCharUnchecked([CI[CII)V
.end method

.method private static native arraycopyDoubleUnchecked([DI[DII)V
.end method

.method private static native arraycopyFloatUnchecked([FI[FII)V
.end method

.method private static native arraycopyIntUnchecked([II[III)V
.end method

.method private static native arraycopyLongUnchecked([JI[JII)V
.end method

.method private static native arraycopyShortUnchecked([SI[SII)V
.end method

.method private static checkKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1256
    if-nez p0, :cond_0

    #@2
    .line 1257
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "key can\'t be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1259
    :cond_0
    const-string/jumbo v0, ""

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "key can\'t be empty"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1255
    :cond_1
    return-void
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1250
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    #@3
    .line 1252
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public static console()Ljava/io/Console;
    .locals 2

    #@0
    .prologue
    .line 205
    const-class v1, Ljava/lang/System;

    #@2
    monitor-enter v1

    #@3
    .line 206
    :try_start_0
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 207
    invoke-static {}, Ljava/io/Console;->console()Ljava/io/Console;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    #@d
    .line 210
    :cond_0
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 205
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .locals 1
    .param p0, "status"    # I

    #@0
    .prologue
    .line 1384
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    #@7
    .line 1383
    return-void
.end method

.method public static gc()V
    .locals 3

    #@0
    .prologue
    .line 1407
    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1408
    :try_start_0
    sget-boolean v0, Ljava/lang/System;->justRanFinalization:Z

    #@5
    .line 1409
    .local v0, "shouldRunGC":Z
    if-eqz v0, :cond_1

    #@7
    .line 1410
    const/4 v1, 0x0

    #@8
    sput-boolean v1, Ljava/lang/System;->justRanFinalization:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :goto_0
    monitor-exit v2

    #@b
    .line 1415
    if-eqz v0, :cond_0

    #@d
    .line 1416
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    #@14
    .line 1405
    :cond_0
    return-void

    #@15
    .line 1412
    :cond_1
    const/4 v1, 0x1

    #@16
    :try_start_1
    sput-boolean v1, Ljava/lang/System;->runGC:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 1407
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public static getProperties()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 1126
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    #@2
    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1179
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    #@3
    .line 1181
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1207
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    #@3
    .line 1209
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    #@5
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getSecurityManager()Ljava/lang/SecurityManager;
    .locals 1

    #@0
    .prologue
    .line 272
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1311
    if-nez p0, :cond_0

    #@2
    .line 1312
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1315
    :cond_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@d
    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static getenv()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1360
    invoke-static {}, Ljava/lang/ProcessEnvironment;->getenv()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static native identityHashCode(Ljava/lang/Object;)I
.end method

.method public static inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static initProperties()Ljava/util/Properties;
    .locals 2

    #@0
    .prologue
    .line 1006
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    #@2
    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    #@7
    .line 1007
    .local v0, "p":Ljava/util/Properties;
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    #@a
    .line 1008
    return-object v0
.end method

.method private static initUnchangeableSystemProperties()Ljava/util/Properties;
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 938
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@5
    move-result-object v6

    #@6
    .line 939
    .local v6, "runtime":Ldalvik/system/VMRuntime;
    new-instance v3, Ljava/util/Properties;

    #@8
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    #@b
    .line 942
    .local v3, "p":Ljava/util/Properties;
    const-string/jumbo v7, "java.boot.class.path"

    #@e
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    #@11
    move-result-object v9

    #@12
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 943
    const-string/jumbo v7, "java.class.path"

    #@18
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 946
    const-string/jumbo v7, "JAVA_HOME"

    #@22
    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 947
    .local v2, "javaHome":Ljava/lang/String;
    if-nez v2, :cond_0

    #@28
    .line 948
    const-string/jumbo v2, "/system"

    #@2b
    .line 950
    :cond_0
    const-string/jumbo v7, "java.home"

    #@2e
    invoke-virtual {v3, v7, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 952
    const-string/jumbo v7, "java.vm.version"

    #@34
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    #@37
    move-result-object v9

    #@38
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 955
    :try_start_0
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3d
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3f
    invoke-interface {v9}, Llibcore/io/Os;->getuid()I

    #@42
    move-result v9

    #@43
    invoke-interface {v7, v9}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    #@46
    move-result-object v5

    #@47
    .line 956
    .local v5, "passwd":Landroid/system/StructPasswd;
    const-string/jumbo v7, "user.name"

    #@4a
    iget-object v9, v5, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    #@4c
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 961
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@51
    invoke-interface {v7}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    #@54
    move-result-object v1

    #@55
    .line 962
    .local v1, "info":Landroid/system/StructUtsname;
    const-string/jumbo v7, "os.arch"

    #@58
    iget-object v9, v1, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    #@5a
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 963
    const-string/jumbo v7, "os.name"

    #@60
    invoke-virtual {v3, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    move-result-object v7

    #@64
    if-eqz v7, :cond_1

    #@66
    const-string/jumbo v7, "os.name"

    #@69
    invoke-virtual {v3, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    move-result-object v7

    #@6d
    iget-object v9, v1, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    #@6f
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v7

    #@73
    if-eqz v7, :cond_3

    #@75
    .line 968
    :cond_1
    :goto_0
    const-string/jumbo v7, "os.version"

    #@78
    iget-object v9, v1, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    #@7a
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 971
    const-string/jumbo v7, "android.icu.library.version"

    #@80
    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 972
    const-string/jumbo v7, "android.icu.unicode.version"

    #@8a
    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    .line 973
    const-string/jumbo v7, "android.icu.cldr.version"

    #@94
    invoke-static {}, Llibcore/icu/ICU;->getCldrVersion()Ljava/lang/String;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    .line 979
    const-string/jumbo v7, "android.icu.impl.ICUBinary.dataPath"

    #@9e
    new-instance v9, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v10, "ANDROID_ROOT"

    #@a6
    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@a9
    move-result-object v10

    #@aa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v9

    #@ae
    const-string/jumbo v10, "/usr/icu"

    #@b1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v9

    #@b9
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 981
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    #@bf
    move-result-object v7

    #@c0
    invoke-static {v3, v7}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    #@c3
    .line 985
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    #@c6
    move-result-object v7

    #@c7
    invoke-static {v3, v7}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    #@ca
    .line 991
    sget-object v9, Ljava/lang/AndroidHardcodedSystemProperties;->STATIC_PROPERTIES:[[Ljava/lang/String;

    #@cc
    array-length v10, v9

    #@cd
    move v7, v8

    #@ce
    :goto_1
    if-ge v7, v10, :cond_5

    #@d0
    aget-object v4, v9, v7

    #@d2
    .line 992
    .local v4, "pair":[Ljava/lang/String;
    aget-object v11, v4, v8

    #@d4
    invoke-virtual {v3, v11}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@d7
    move-result v11

    #@d8
    if-eqz v11, :cond_2

    #@da
    .line 993
    new-instance v11, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v12, "Ignoring command line argument: -D"

    #@e2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v11

    #@e6
    aget-object v12, v4, v8

    #@e8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v11

    #@ec
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v11

    #@f0
    invoke-static {v11}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@f3
    .line 995
    :cond_2
    aget-object v11, v4, v13

    #@f5
    if-nez v11, :cond_4

    #@f7
    .line 996
    aget-object v11, v4, v8

    #@f9
    invoke-virtual {v3, v11}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@fc
    .line 991
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@fe
    goto :goto_1

    #@ff
    .line 957
    .end local v1    # "info":Landroid/system/StructUtsname;
    .end local v4    # "pair":[Ljava/lang/String;
    .end local v5    # "passwd":Landroid/system/StructPasswd;
    :catch_0
    move-exception v0

    #@100
    .line 958
    .local v0, "exception":Landroid/system/ErrnoException;
    new-instance v7, Ljava/lang/AssertionError;

    #@102
    invoke-direct {v7, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@105
    throw v7

    #@106
    .line 964
    .end local v0    # "exception":Landroid/system/ErrnoException;
    .restart local v1    # "info":Landroid/system/StructUtsname;
    .restart local v5    # "passwd":Landroid/system/StructPasswd;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v9, "Wrong compile-time assumption for os.name: "

    #@10e
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v7

    #@112
    const-string/jumbo v9, "os.name"

    #@115
    invoke-virtual {v3, v9}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@118
    move-result-object v9

    #@119
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v7

    #@11d
    const-string/jumbo v9, " vs "

    #@120
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v7

    #@124
    .line 965
    iget-object v9, v1, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    #@126
    .line 964
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v7

    #@12a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v7

    #@12e
    invoke-static {v7}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@131
    .line 966
    const-string/jumbo v7, "os.name"

    #@134
    iget-object v9, v1, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    #@136
    invoke-virtual {v3, v7, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@139
    goto/16 :goto_0

    #@13b
    .line 998
    .restart local v4    # "pair":[Ljava/lang/String;
    :cond_4
    aget-object v11, v4, v8

    #@13d
    aget-object v12, v4, v13

    #@13f
    invoke-virtual {v3, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@142
    goto :goto_2

    #@143
    .line 1002
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1138
    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1505
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    #@b
    .line 1504
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2
    .param p0, "libname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1530
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@b
    .line 1529
    return-void
.end method

.method private static native log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1586
    const/16 v0, 0x45

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 1585
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1593
    const/16 v0, 0x45

    #@2
    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@5
    .line 1592
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1600
    const/16 v0, 0x49

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 1599
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1607
    const/16 v0, 0x49

    #@2
    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@5
    .line 1606
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1614
    const/16 v0, 0x57

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 1613
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1621
    const/16 v0, 0x57

    #@2
    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@5
    .line 1620
    return-void
.end method

.method public static native mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nanoTime()J
.end method

.method private static parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .locals 8
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "assignments"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 929
    array-length v6, p1

    #@2
    move v4, v5

    #@3
    :goto_0
    if-ge v4, v6, :cond_0

    #@5
    aget-object v0, p1, v4

    #@7
    .line 930
    .local v0, "assignment":Ljava/lang/String;
    const/16 v7, 0x3d

    #@9
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v2

    #@d
    .line 931
    .local v2, "split":I
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 932
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    #@13
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 933
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 929
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 928
    .end local v0    # "assignment":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "split":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static runFinalization()V
    .locals 3

    #@0
    .prologue
    .line 1440
    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1441
    :try_start_0
    sget-boolean v0, Ljava/lang/System;->runGC:Z

    #@5
    .line 1442
    .local v0, "shouldRunGC":Z
    const/4 v1, 0x0

    #@6
    sput-boolean v1, Ljava/lang/System;->runGC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v2

    #@9
    .line 1444
    if-eqz v0, :cond_0

    #@b
    .line 1445
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    #@12
    .line 1447
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    #@19
    .line 1448
    sget-object v1, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 1449
    const/4 v2, 0x1

    #@1d
    :try_start_1
    sput-boolean v2, Ljava/lang/System;->justRanFinalization:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    monitor-exit v1

    #@20
    .line 1438
    return-void

    #@21
    .line 1440
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1

    #@24
    .line 1448
    :catchall_1
    move-exception v2

    #@25
    monitor-exit v1

    #@26
    throw v2
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .param p0, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1480
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    #@6
    .line 1479
    return-void
.end method

.method private static setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 2
    .param p0, "p"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 1017
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    #@2
    const-string/jumbo v1, "java.io.tmpdir"

    #@5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1018
    const-string/jumbo v0, "java.io.tmpdir"

    #@e
    const-string/jumbo v1, "/tmp"

    #@11
    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 1028
    :cond_0
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    #@16
    const-string/jumbo v1, "user.home"

    #@19
    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 1029
    const-string/jumbo v0, "user.home"

    #@22
    const-string/jumbo v1, ""

    #@25
    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 1032
    :cond_1
    return-object p0
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .locals 0
    .param p0, "err"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 191
    invoke-static {p0}, Ljava/lang/System;->setErr0(Ljava/io/PrintStream;)V

    #@3
    .line 190
    return-void
.end method

.method private static native setErr0(Ljava/io/PrintStream;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .locals 0
    .param p0, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 145
    invoke-static {p0}, Ljava/lang/System;->setIn0(Ljava/io/InputStream;)V

    #@3
    .line 144
    return-void
.end method

.method private static native setIn0(Ljava/io/InputStream;)V
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .locals 0
    .param p0, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 168
    invoke-static {p0}, Ljava/lang/System;->setOut0(Ljava/io/PrintStream;)V

    #@3
    .line 167
    return-void
.end method

.method private static native setOut0(Ljava/io/PrintStream;)V
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 2
    .param p0, "props"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 1151
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    #@2
    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    #@7
    .line 1152
    .local v0, "baseProperties":Ljava/util/Properties;
    if-eqz p0, :cond_0

    #@9
    .line 1153
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    #@c
    .line 1158
    :goto_0
    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    #@e
    .line 1150
    return-void

    #@f
    .line 1155
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    #@12
    goto :goto_0
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1229
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    #@3
    .line 1231
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    #@5
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public static setSecurityManager(Ljava/lang/SecurityManager;)V
    .locals 1
    .param p0, "sm"    # Ljava/lang/SecurityManager;

    #@0
    .prologue
    .line 259
    if-eqz p0, :cond_0

    #@2
    .line 260
    new-instance v0, Ljava/lang/SecurityException;

    #@4
    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    #@7
    throw v0

    #@8
    .line 258
    :cond_0
    return-void
.end method

.method public static setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1044
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    #@3
    .line 1045
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    #@5
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 1043
    return-void
.end method

.method private static native specialProperties()[Ljava/lang/String;
.end method
