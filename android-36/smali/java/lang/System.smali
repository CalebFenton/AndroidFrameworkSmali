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
.field private static final greylist-max-o ARRAYCOPY_SHORT_BOOLEAN_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_BYTE_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_CHAR_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_DOUBLE_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_FLOAT_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_INT_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_LONG_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o ARRAYCOPY_SHORT_SHORT_ARRAY_THRESHOLD:I = 0x20

.field private static final greylist-max-o LOCK:Ljava/lang/Object;

.field private static volatile greylist-max-o cons:Ljava/io/Console;

.field public static final whitelist test-api err:Ljava/io/PrintStream;

.field public static final whitelist test-api in:Ljava/io/InputStream;

.field private static greylist-max-o justRanFinalization:Z

.field private static greylist-max-o lineSeparator:Ljava/lang/String;

.field public static final whitelist test-api out:Ljava/io/PrintStream;

.field private static greylist-max-o props:Ljava/util/Properties;

.field private static greylist-max-o runGC:Z

.field private static greylist-max-o unchangeableProps:Ljava/util/Properties;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    .line 202
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    .line 1799
    invoke-static {}, Ljava/lang/System;->initUnchangeableSystemProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    .line 1800
    invoke-static {}, Ljava/lang/System;->initProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1801
    invoke-static {}, Ljava/lang/System;->addLegacyLocaleSystemProperties()V

    .line 1802
    invoke-static {}, Lsun/misc/Version;->initSystemProperties()V

    .line 1807
    sget-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string v1, "line.separator"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    .line 1809
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1810
    .local v0, "fdIn":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1811
    .local v1, "fdOut":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1814
    .local v2, "fdErr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x80

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sput-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 1816
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string v4, "sun.stdout.encoding"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/System;->newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1817
    sget-object v3, Ljava/lang/System;->props:Ljava/util/Properties;

    const-string v4, "sun.stderr.encoding"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v3

    sput-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1823
    invoke-static {}, Lsun/misc/VM;->initializeOSEnvironment()V

    .line 1829
    invoke-static {}, Lsun/misc/VM;->booted()V

    .line 1830
    invoke-static {}, Ljdk/internal/misc/VM;->booted()V

    .line 1831
    .end local v0    # "fdIn":Ljava/io/FileInputStream;
    .end local v1    # "fdOut":Ljava/io/FileOutputStream;
    .end local v2    # "fdErr":Ljava/io/FileOutputStream;
    return-void
.end method

.method private constructor greylist-max-r <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private static greylist-max-o addLegacyLocaleSystemProperties()V
    .registers 6

    .line 1164
    const-string v0, "user.locale"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "locale":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "user.region"

    const-string v4, "user.language"

    if-nez v2, :cond_2e

    .line 1166
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 1167
    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v2, "user.variant"

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    .end local v1    # "l":Ljava/util/Locale;
    goto :goto_4c

    .line 1175
    :cond_2e
    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, "language":Ljava/lang/String;
    invoke-static {v3, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    .local v1, "region":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1179
    const-string v5, "en"

    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1183
    const-string v4, "US"

    invoke-static {v3, v4}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    .end local v1    # "region":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-void
.end method

.method public static native whitelist test-api arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static greylist arraycopy([BI[BII)V
    .registers 8
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 523
    if-eqz p0, :cond_8c

    .line 526
    if-eqz p2, :cond_84

    .line 529
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 535
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 537
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 541
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 542
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 541
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 546
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 547
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 552
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyByteUnchecked([BI[BII)V

    .line 554
    :goto_40
    return-void

    .line 531
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([CI[CII)V
    .registers 8
    .param p0, "src"    # [C
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 468
    if-eqz p0, :cond_8c

    .line 471
    if-eqz p2, :cond_84

    .line 474
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 480
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 482
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 486
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 487
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 486
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 491
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 492
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-char v2, p0, v2

    aput-char v2, p2, v1

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 497
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyCharUnchecked([CI[CII)V

    .line 499
    :goto_40
    return-void

    .line 476
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o arraycopy([DI[DII)V
    .registers 9
    .param p0, "src"    # [D
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 798
    if-eqz p0, :cond_8c

    .line 801
    if-eqz p2, :cond_84

    .line 804
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 810
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 812
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 816
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 817
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 816
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 821
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 822
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 827
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyDoubleUnchecked([DI[DII)V

    .line 829
    :goto_40
    return-void

    .line 806
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([FI[FII)V
    .registers 8
    .param p0, "src"    # [F
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 743
    if-eqz p0, :cond_8c

    .line 746
    if-eqz p2, :cond_84

    .line 749
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 755
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 757
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 761
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 762
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 761
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 766
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 767
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 772
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyFloatUnchecked([FI[FII)V

    .line 774
    :goto_40
    return-void

    .line 751
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([II[III)V
    .registers 8
    .param p0, "src"    # [I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 633
    if-eqz p0, :cond_8c

    .line 636
    if-eqz p2, :cond_84

    .line 639
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 645
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 647
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 651
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 652
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 651
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 656
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 657
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 662
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyIntUnchecked([II[III)V

    .line 664
    :goto_40
    return-void

    .line 641
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([JI[JII)V
    .registers 9
    .param p0, "src"    # [J
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 688
    if-eqz p0, :cond_8c

    .line 691
    if-eqz p2, :cond_84

    .line 694
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 700
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 702
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 706
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 707
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 706
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 711
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 712
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, p2, v1

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 717
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyLongUnchecked([JI[JII)V

    .line 719
    :goto_40
    return-void

    .line 696
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([SI[SII)V
    .registers 8
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 578
    if-eqz p0, :cond_8c

    .line 581
    if-eqz p2, :cond_84

    .line 584
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 590
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 592
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 596
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 597
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 596
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 601
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 602
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    aput-short v2, p2, v1

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 607
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyShortUnchecked([SI[SII)V

    .line 609
    :goto_40
    return-void

    .line 586
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist arraycopy([ZI[ZII)V
    .registers 8
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "length"    # I

    .line 853
    if-eqz p0, :cond_8c

    .line 856
    if-eqz p2, :cond_84

    .line 859
    if-ltz p1, :cond_41

    if-ltz p3, :cond_41

    if-ltz p4, :cond_41

    array-length v0, p0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_41

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_41

    .line 865
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3d

    .line 867
    if-ne p0, p2, :cond_2e

    if-ge p1, p3, :cond_2e

    add-int v0, p1, p4

    if-ge p3, v0, :cond_2e

    .line 871
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_2d

    .line 872
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 871
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .end local v0    # "i":I
    :cond_2d
    goto :goto_40

    .line 876
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    if-ge v0, p4, :cond_3c

    .line 877
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-boolean v2, p0, v2

    aput-boolean v2, p2, v1

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .end local v0    # "i":I
    :cond_3c
    goto :goto_40

    .line 882
    :cond_3d
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyBooleanUnchecked([ZI[ZII)V

    .line 884
    :goto_40
    return-void

    .line 861
    :cond_41
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o arraycopyBooleanUnchecked([ZI[ZII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyByteUnchecked([BI[BII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyCharUnchecked([CI[CII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyDoubleUnchecked([DI[DII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyFloatUnchecked([FI[FII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyIntUnchecked([II[III)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyLongUnchecked([JI[JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o arraycopyShortUnchecked([SI[SII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static greylist-max-o checkKey(Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 1443
    if-eqz p0, :cond_13

    .line 1446
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1449
    return-void

    .line 1447
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .line 1433
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1434
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1435
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 1436
    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "write"

    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1439
    :cond_13
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist test-api console()Ljava/io/Console;
    .registers 2

    .line 213
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v0, :cond_16

    .line 214
    const-class v0, Ljava/lang/System;

    monitor-enter v0

    .line 215
    :try_start_7
    sget-object v1, Ljava/lang/System;->cons:Ljava/io/Console;

    if-nez v1, :cond_11

    .line 216
    invoke-static {}, Ljava/io/Console;->console()Ljava/io/Console;

    move-result-object v1

    sput-object v1, Ljava/lang/System;->cons:Ljava/io/Console;

    .line 218
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 220
    :cond_16
    :goto_16
    sget-object v0, Ljava/lang/System;->cons:Ljava/io/Console;

    return-object v0
.end method

.method public static native whitelist test-api currentTimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api exit(I)V
    .registers 2
    .param p0, "status"    # I

    .line 1576
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    .line 1577
    return-void
.end method

.method public static whitelist test-api gc()V
    .registers 4

    .line 1604
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 1605
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x22

    if-le v0, v1, :cond_14

    .line 1606
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    goto :goto_32

    .line 1609
    :cond_14
    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 1610
    const/4 v3, 0x1

    if-gt v0, v1, :cond_1f

    :try_start_1a
    sget-boolean v1, Ljava/lang/System;->justRanFinalization:Z

    goto :goto_20

    .line 1616
    :catchall_1d
    move-exception v1

    goto :goto_33

    .line 1610
    :cond_1f
    move v1, v3

    .line 1611
    .local v1, "shouldRunGC":Z
    :goto_20
    if-eqz v1, :cond_26

    .line 1612
    const/4 v3, 0x0

    sput-boolean v3, Ljava/lang/System;->justRanFinalization:Z

    goto :goto_28

    .line 1614
    :cond_26
    sput-boolean v3, Ljava/lang/System;->runGC:Z

    .line 1616
    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_1d

    .line 1617
    if-eqz v1, :cond_32

    .line 1618
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1621
    .end local v1    # "shouldRunGC":Z
    :cond_32
    :goto_32
    return-void

    .line 1616
    :goto_33
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_1d

    throw v1
.end method

.method public static whitelist test-api getProperties()Ljava/util/Properties;
    .registers 2

    .line 1250
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1251
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 1252
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkPropertiesAccess()V

    .line 1255
    :cond_9
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    return-object v1
.end method

.method public static whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 1320
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1321
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1322
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 1323
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 1326
    :cond_c
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 1356
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1357
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1358
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 1359
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 1362
    :cond_c
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getSecurityManager()Ljava/lang/SecurityManager;
    .registers 1

    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1498
    if-eqz p0, :cond_9

    .line 1502
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1499
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getenv()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1547
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1548
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1549
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getenv.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1552
    :cond_10
    invoke-static {}, Ljava/lang/ProcessEnvironment;->getenv()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api identityHashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 907
    if-nez p0, :cond_4

    .line 908
    const/4 v0, 0x0

    return v0

    .line 910
    :cond_4
    invoke-static {p0}, Ljava/lang/Object;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api inheritedChannel()Ljava/nio/channels/Channel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o initProperties()Ljava/util/Properties;
    .registers 2

    .line 1121
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1122
    .local v0, "p":Ljava/util/Properties;
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 1123
    return-object v0
.end method

.method private static greylist-max-o initUnchangeableSystemProperties()Ljava/util/Properties;
    .registers 12

    .line 1060
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 1061
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1064
    .local v1, "p":Ljava/util/Properties;
    const-string v2, "java.boot.class.path"

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const-string v2, "java.class.path"

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string v2, "ANDROID_ART_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, "javaHome":Ljava/lang/String;
    if-nez v2, :cond_25

    .line 1071
    const-string v2, "/apex/com.android.art"

    .line 1073
    :cond_25
    const-string v3, "java.home"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const-string v3, "java.vm.version"

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :try_start_33
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4}, Llibcore/io/Os;->getuid()I

    move-result v4

    invoke-interface {v3, v4}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object v3

    iget-object v3, v3, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_33 .. :try_end_41} :catch_42

    .line 1082
    .local v3, "userName":Ljava/lang/String;
    goto :goto_46

    .line 1080
    .end local v3    # "userName":Ljava/lang/String;
    :catch_42
    move-exception v3

    .line 1081
    .local v3, "exception":Landroid/system/ErrnoException;
    const-string v4, "unknown"

    move-object v3, v4

    .line 1083
    .local v3, "userName":Ljava/lang/String;
    :goto_46
    const-string v4, "user.name"

    invoke-virtual {v1, v4, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v4

    .line 1086
    .local v4, "info":Landroid/system/StructUtsname;
    const-string v5, "os.arch"

    iget-object v6, v4, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string v5, "os.name"

    iget-object v6, v4, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    const-string v5, "os.version"

    iget-object v6, v4, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    const-string v5, "android.icu.library.version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    const-string v5, "android.icu.unicode.version"

    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    const-string v5, "android.icu.cldr.version"

    invoke-static {}, Llibcore/icu/ICU;->getCldrVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    .line 1106
    sget-object v5, Ljava/lang/AndroidHardcodedSystemProperties;->STATIC_PROPERTIES:[[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_94
    if-ge v8, v6, :cond_cd

    aget-object v9, v5, v8

    .line 1107
    .local v9, "pair":[Ljava/lang/String;
    aget-object v10, v9, v7

    invoke-virtual {v1, v10}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b8

    .line 1108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring command line argument: -D"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v9, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 1110
    :cond_b8
    const/4 v10, 0x1

    aget-object v11, v9, v10

    if-nez v11, :cond_c3

    .line 1111
    aget-object v10, v9, v7

    invoke-virtual {v1, v10}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ca

    .line 1113
    :cond_c3
    aget-object v11, v9, v7

    aget-object v10, v9, v10

    invoke-virtual {v1, v11, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    .end local v9    # "pair":[Ljava/lang/String;
    :goto_ca
    add-int/lit8 v8, v8, 0x1

    goto :goto_94

    .line 1117
    :cond_cd
    return-object v1
.end method

.method public static whitelist test-api lineSeparator()Ljava/lang/String;
    .registers 1

    .line 1270
    sget-object v0, Ljava/lang/System;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist test-api load(Ljava/lang/String;)V
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1729
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1730
    return-void
.end method

.method public static whitelist test-api loadLibrary(Ljava/lang/String;)V
    .registers 3
    .param p0, "libname"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1765
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1766
    return-void
.end method

.method private static native greylist-max-r log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static greylist logE(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1837
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1838
    return-void
.end method

.method public static greylist logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 1844
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1845
    return-void
.end method

.method public static greylist-max-o logI(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1851
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1852
    return-void
.end method

.method public static greylist-max-o logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 1858
    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1859
    return-void
.end method

.method public static greylist-max-o logW(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1865
    const/16 v0, 0x57

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1866
    return-void
.end method

.method public static greylist logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .line 1872
    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 1873
    return-void
.end method

.method public static native whitelist test-api mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native whitelist test-api nanoTime()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static greylist-max-o newPrintStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/PrintStream;
    .registers 6
    .param p0, "fos"    # Ljava/io/FileOutputStream;
    .param p1, "enc"    # Ljava/lang/String;

    .line 1786
    const/4 v0, 0x1

    const/16 v1, 0x80

    if-eqz p1, :cond_11

    .line 1788
    :try_start_5
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3, v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    return-object v2

    .line 1789
    :catch_10
    move-exception v2

    .line 1791
    :cond_11
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v2
.end method

.method private static greylist-max-o parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V
    .registers 9
    .param p0, "p"    # Ljava/util/Properties;
    .param p1, "assignments"    # [Ljava/lang/String;

    .line 1051
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1d

    aget-object v3, p1, v2

    .line 1052
    .local v3, "assignment":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1053
    .local v4, "split":I
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1054
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1055
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p0, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    .end local v3    # "assignment":Ljava/lang/String;
    .end local v4    # "split":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1057
    :cond_1d
    return-void
.end method

.method public static whitelist test-api runFinalization()V
    .registers 5

    .line 1642
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 1643
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x22

    if-gt v0, v1, :cond_22

    .line 1645
    sget-object v2, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 1646
    :try_start_f
    sget-boolean v3, Ljava/lang/System;->runGC:Z

    .line 1647
    .local v3, "shouldRunGC":Z
    const/4 v4, 0x0

    sput-boolean v4, Ljava/lang/System;->runGC:Z

    .line 1648
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1f

    .line 1649
    if-eqz v3, :cond_22

    .line 1650
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto :goto_22

    .line 1648
    .end local v3    # "shouldRunGC":Z
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 1653
    :cond_22
    :goto_22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->runFinalization()V

    .line 1654
    if-gt v0, v1, :cond_36

    .line 1655
    sget-object v1, Ljava/lang/System;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1656
    const/4 v2, 0x1

    :try_start_2f
    sput-boolean v2, Ljava/lang/System;->justRanFinalization:Z

    .line 1657
    monitor-exit v1

    goto :goto_36

    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    throw v2

    .line 1659
    :cond_36
    :goto_36
    return-void
.end method

.method public static whitelist test-api runFinalizersOnExit(Z)V
    .registers 1
    .param p0, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1688
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    .line 1689
    return-void
.end method

.method private static greylist-max-o setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .registers 3
    .param p0, "p"    # Ljava/util/Properties;

    .line 1132
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string v1, "java.io.tmpdir"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1133
    const-string v0, "/tmp"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    :cond_f
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    const-string v1, "user.home"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1144
    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    :cond_1e
    return-object p0
.end method

.method public static whitelist test-api setErr(Ljava/io/PrintStream;)V
    .registers 1
    .param p0, "err"    # Ljava/io/PrintStream;

    .line 199
    invoke-static {p0}, Ljava/lang/System;->setErr0(Ljava/io/PrintStream;)V

    .line 200
    return-void
.end method

.method private static native greylist-max-o setErr0(Ljava/io/PrintStream;)V
.end method

.method public static whitelist test-api setIn(Ljava/io/InputStream;)V
    .registers 1
    .param p0, "in"    # Ljava/io/InputStream;

    .line 153
    invoke-static {p0}, Ljava/lang/System;->setIn0(Ljava/io/InputStream;)V

    .line 154
    return-void
.end method

.method private static native greylist-max-o setIn0(Ljava/io/InputStream;)V
.end method

.method public static whitelist test-api setOut(Ljava/io/PrintStream;)V
    .registers 1
    .param p0, "out"    # Ljava/io/PrintStream;

    .line 176
    invoke-static {p0}, Ljava/lang/System;->setOut0(Ljava/io/PrintStream;)V

    .line 177
    return-void
.end method

.method private static native greylist-max-o setOut0(Ljava/io/PrintStream;)V
.end method

.method public static whitelist test-api setProperties(Ljava/util/Properties;)V
    .registers 3
    .param p0, "props"    # Ljava/util/Properties;

    .line 1283
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    sget-object v1, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    .line 1284
    .local v0, "baseProperties":Ljava/util/Properties;
    if-eqz p0, :cond_d

    .line 1285
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    goto :goto_10

    .line 1287
    :cond_d
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)Ljava/util/Properties;

    .line 1290
    :goto_10
    sput-object v0, Ljava/lang/System;->props:Ljava/util/Properties;

    .line 1291
    return-void
.end method

.method public static whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1395
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1396
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1397
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 1398
    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "write"

    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1402
    :cond_13
    sget-object v1, Ljava/lang/System;->props:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static whitelist test-api setSecurityManager(Ljava/lang/SecurityManager;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/SecurityManager;

    .line 269
    if-nez p0, :cond_3

    .line 272
    return-void

    .line 270
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public static greylist-max-o setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1159
    invoke-static {p0}, Ljava/lang/System;->checkKey(Ljava/lang/String;)V

    .line 1160
    sget-object v0, Ljava/lang/System;->unchangeableProps:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    return-void
.end method

.method private static native greylist-max-o specialProperties()[Ljava/lang/String;
.end method
