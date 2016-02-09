.class public final Ljava/lang/System;
.super Ljava/lang/Object;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/System$PropertiesWithNonOverrideableDefaults;,
        Ljava/lang/System$SystemEnvironment;
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

.field private static final FILE_SEPARATOR:Ljava/lang/String; = "/"

.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final PATH_SEPARATOR:Ljava/lang/String; = ":"

.field public static final err:Ljava/io/PrintStream;

.field public static final in:Ljava/io/InputStream;

.field private static justRanFinalization:Z

.field private static final lock:Ljava/lang/Object;

.field public static final out:Ljava/io/PrintStream;

.field private static runGC:Z

.field private static systemProperties:Ljava/util/Properties;

.field private static final unchangeableSystemProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/lang/System;->lock:Ljava/lang/Object;

    #@7
    .line 109
    new-instance v0, Ljava/io/PrintStream;

    #@9
    new-instance v1, Ljava/io/FileOutputStream;

    #@b
    sget-object v2, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    #@d
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@10
    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@13
    sput-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@15
    .line 110
    new-instance v0, Ljava/io/PrintStream;

    #@17
    new-instance v1, Ljava/io/FileOutputStream;

    #@19
    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@1b
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@1e
    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@21
    sput-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@23
    .line 111
    new-instance v0, Ljava/io/BufferedInputStream;

    #@25
    new-instance v1, Ljava/io/FileInputStream;

    #@27
    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    #@29
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@2c
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@2f
    sput-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@31
    .line 112
    invoke-static {}, Ljava/lang/System;->initUnchangeableSystemProperties()Ljava/util/Properties;

    #@34
    move-result-object v0

    #@35
    sput-object v0, Ljava/lang/System;->unchangeableSystemProperties:Ljava/util/Properties;

    #@37
    .line 113
    invoke-static {}, Ljava/lang/System;->createSystemProperties()Ljava/util/Properties;

    #@3a
    move-result-object v0

    #@3b
    sput-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    #@3d
    .line 115
    invoke-static {}, Ljava/lang/System;->addLegacyLocaleSystemProperties()V

    #@40
    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addLegacyLocaleSystemProperties()V
    .locals 6

    #@0
    .prologue
    .line 119
    const-string/jumbo v4, "user.locale"

    #@3
    const-string/jumbo v5, ""

    #@6
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 120
    .local v2, "locale":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_1

    #@10
    .line 121
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@13
    move-result-object v0

    #@14
    .line 122
    .local v0, "l":Ljava/util/Locale;
    const-string/jumbo v4, "user.language"

    #@17
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 123
    const-string/jumbo v4, "user.region"

    #@21
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 124
    const-string/jumbo v4, "user.variant"

    #@2b
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 118
    .end local v0    # "l":Ljava/util/Locale;
    :cond_0
    :goto_0
    return-void

    #@33
    .line 130
    :cond_1
    const-string/jumbo v4, "user.language"

    #@36
    const-string/jumbo v5, ""

    #@39
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 131
    .local v1, "language":Ljava/lang/String;
    const-string/jumbo v4, "user.region"

    #@40
    const-string/jumbo v5, ""

    #@43
    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    .line 133
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_2

    #@4d
    .line 134
    const-string/jumbo v4, "user.language"

    #@50
    const-string/jumbo v5, "en"

    #@53
    invoke-static {v4, v5}, Ljava/lang/System;->setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 137
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_0

    #@5c
    .line 138
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
    .line 274
    if-nez p0, :cond_0

    #@2
    .line 275
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 277
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 278
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 280
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 282
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 283
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
    .line 284
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 284
    array-length v3, p2

    #@40
    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 284
    const-string/jumbo v3, " dstPos="

    #@47
    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 284
    const-string/jumbo v3, " length="

    #@52
    .line 283
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
    .line 282
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 280
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 281
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
    .line 286
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 288
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 292
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 293
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-byte v2, p0, v2

    #@82
    aput-byte v2, p2, v1

    #@84
    .line 292
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 297
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 298
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-byte v2, p0, v2

    #@90
    aput-byte v2, p2, v1

    #@92
    .line 297
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 303
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyByteUnchecked([BI[BII)V

    #@98
    .line 273
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
    .line 221
    if-nez p0, :cond_0

    #@2
    .line 222
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 224
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 225
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 227
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 229
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 230
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
    .line 231
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 231
    array-length v3, p2

    #@40
    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 231
    const-string/jumbo v3, " dstPos="

    #@47
    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 231
    const-string/jumbo v3, " length="

    #@52
    .line 230
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
    .line 229
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 227
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 228
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
    .line 233
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 235
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 239
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 240
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-char v2, p0, v2

    #@82
    aput-char v2, p2, v1

    #@84
    .line 239
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 244
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 245
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-char v2, p0, v2

    #@90
    aput-char v2, p2, v1

    #@92
    .line 244
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 250
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyCharUnchecked([CI[CII)V

    #@98
    .line 220
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
    .line 539
    if-nez p0, :cond_0

    #@2
    .line 540
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 542
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 543
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 545
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 547
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 548
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
    .line 549
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 548
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 549
    array-length v3, p2

    #@40
    .line 548
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 549
    const-string/jumbo v3, " dstPos="

    #@47
    .line 548
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 549
    const-string/jumbo v3, " length="

    #@52
    .line 548
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
    .line 547
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 545
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 546
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
    .line 551
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 553
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 557
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 558
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-wide v2, p0, v2

    #@82
    aput-wide v2, p2, v1

    #@84
    .line 557
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 562
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 563
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-wide v2, p0, v2

    #@90
    aput-wide v2, p2, v1

    #@92
    .line 562
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 568
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyDoubleUnchecked([DI[DII)V

    #@98
    .line 538
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
    .line 486
    if-nez p0, :cond_0

    #@2
    .line 487
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 489
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 490
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 492
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 494
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 495
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
    .line 496
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 496
    array-length v3, p2

    #@40
    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 496
    const-string/jumbo v3, " dstPos="

    #@47
    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 496
    const-string/jumbo v3, " length="

    #@52
    .line 495
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
    .line 494
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 492
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 493
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
    .line 498
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 500
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 504
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 505
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget v2, p0, v2

    #@82
    aput v2, p2, v1

    #@84
    .line 504
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 509
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 510
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget v2, p0, v2

    #@90
    aput v2, p2, v1

    #@92
    .line 509
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 515
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyFloatUnchecked([FI[FII)V

    #@98
    .line 485
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
    .line 380
    if-nez p0, :cond_0

    #@2
    .line 381
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 383
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 384
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 386
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 388
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 389
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
    .line 390
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 390
    array-length v3, p2

    #@40
    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 390
    const-string/jumbo v3, " dstPos="

    #@47
    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 390
    const-string/jumbo v3, " length="

    #@52
    .line 389
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
    .line 388
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 386
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 387
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
    .line 392
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 394
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 398
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 399
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget v2, p0, v2

    #@82
    aput v2, p2, v1

    #@84
    .line 398
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 403
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 404
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget v2, p0, v2

    #@90
    aput v2, p2, v1

    #@92
    .line 403
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 409
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyIntUnchecked([II[III)V

    #@98
    .line 379
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
    .line 433
    if-nez p0, :cond_0

    #@2
    .line 434
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 436
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 437
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 439
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 441
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 442
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
    .line 443
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 443
    array-length v3, p2

    #@40
    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 443
    const-string/jumbo v3, " dstPos="

    #@47
    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 443
    const-string/jumbo v3, " length="

    #@52
    .line 442
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
    .line 441
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 439
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 440
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
    .line 445
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 447
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 451
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 452
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-wide v2, p0, v2

    #@82
    aput-wide v2, p2, v1

    #@84
    .line 451
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 456
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 457
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-wide v2, p0, v2

    #@90
    aput-wide v2, p2, v1

    #@92
    .line 456
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 462
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyLongUnchecked([JI[JII)V

    #@98
    .line 432
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
    .line 327
    if-nez p0, :cond_0

    #@2
    .line 328
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 330
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 331
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 333
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 335
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 336
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
    .line 337
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 337
    array-length v3, p2

    #@40
    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 337
    const-string/jumbo v3, " dstPos="

    #@47
    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 337
    const-string/jumbo v3, " length="

    #@52
    .line 336
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
    .line 335
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 333
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 334
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
    .line 339
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 341
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 345
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 346
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-short v2, p0, v2

    #@82
    aput-short v2, p2, v1

    #@84
    .line 345
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 350
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 351
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-short v2, p0, v2

    #@90
    aput-short v2, p2, v1

    #@92
    .line 350
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 356
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyShortUnchecked([SI[SII)V

    #@98
    .line 326
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
    .line 592
    if-nez p0, :cond_0

    #@2
    .line 593
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "src == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 595
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 596
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "dst == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 598
    :cond_1
    if-ltz p1, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 600
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1c
    .line 601
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
    .line 602
    const-string/jumbo v3, " dst.length="

    #@3b
    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 602
    array-length v3, p2

    #@40
    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 602
    const-string/jumbo v3, " dstPos="

    #@47
    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 602
    const-string/jumbo v3, " length="

    #@52
    .line 601
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
    .line 600
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@61
    throw v1

    #@62
    .line 598
    :cond_3
    if-ltz p4, :cond_2

    #@64
    .line 599
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
    .line 604
    const/16 v1, 0x20

    #@6e
    if-gt p4, v1, :cond_5

    #@70
    .line 606
    if-ne p0, p2, :cond_4

    #@72
    if-ge p1, p3, :cond_4

    #@74
    add-int v1, p1, p4

    #@76
    if-ge p3, v1, :cond_4

    #@78
    .line 610
    add-int/lit8 v0, p4, -0x1

    #@7a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    #@7c
    .line 611
    add-int v1, p3, v0

    #@7e
    add-int v2, p1, v0

    #@80
    aget-boolean v2, p0, v2

    #@82
    aput-boolean v2, p2, v1

    #@84
    .line 610
    add-int/lit8 v0, v0, -0x1

    #@86
    goto :goto_0

    #@87
    .line 615
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@88
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p4, :cond_6

    #@8a
    .line 616
    add-int v1, p3, v0

    #@8c
    add-int v2, p1, v0

    #@8e
    aget-boolean v2, p0, v2

    #@90
    aput-boolean v2, p2, v1

    #@92
    .line 615
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_1

    #@95
    .line 621
    .end local v0    # "i":I
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopyBooleanUnchecked([ZI[ZII)V

    #@98
    .line 591
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

.method private static checkPropertyName(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1010
    if-nez p0, :cond_0

    #@2
    .line 1011
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1013
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1014
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "name is empty"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 1009
    :cond_1
    return-void
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1005
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    #@3
    .line 1006
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

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
    .locals 1

    #@0
    .prologue
    .line 1025
    invoke-static {}, Ljava/io/Console;->getConsole()Ljava/io/Console;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static createSystemProperties()Ljava/util/Properties;
    .locals 2

    #@0
    .prologue
    .line 859
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    #@2
    sget-object v1, Ljava/lang/System;->unchangeableSystemProperties:Ljava/util/Properties;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    #@7
    .line 860
    .local v0, "p":Ljava/util/Properties;
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)V

    #@a
    .line 861
    return-object v0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .locals 1
    .param p0, "code"    # I

    #@0
    .prologue
    .line 664
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    #@7
    .line 663
    return-void
.end method

.method public static gc()V
    .locals 3

    #@0
    .prologue
    .line 674
    sget-object v2, Ljava/lang/System;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 675
    :try_start_0
    sget-boolean v0, Ljava/lang/System;->justRanFinalization:Z

    #@5
    .line 676
    .local v0, "shouldRunGC":Z
    if-eqz v0, :cond_1

    #@7
    .line 677
    const/4 v1, 0x0

    #@8
    sput-boolean v1, Ljava/lang/System;->justRanFinalization:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :goto_0
    monitor-exit v2

    #@b
    .line 682
    if-eqz v0, :cond_0

    #@d
    .line 683
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    #@14
    .line 672
    :cond_0
    return-void

    #@15
    .line 679
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
    .line 674
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method private static generateIcuDataPath()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 867
    .local v1, "icuDataPathBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "ANDROID_DATA"

    #@8
    const-string/jumbo v4, "/misc/zoneinfo/current/icu"

    #@b
    invoke-static {v3, v4}, Ljava/lang/System;->getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 868
    .local v0, "dataIcuDataPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@11
    .line 869
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 873
    :cond_0
    const-string/jumbo v3, "ANDROID_ROOT"

    #@17
    const-string/jumbo v4, "/usr/icu"

    #@1a
    invoke-static {v3, v4}, Ljava/lang/System;->getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 874
    .local v2, "systemIcuDataPath":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@20
    .line 875
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@23
    move-result v3

    #@24
    if-lez v3, :cond_1

    #@26
    .line 876
    const-string/jumbo v3, ":"

    #@29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 878
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 880
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    return-object v3
.end method

.method private static getEnvironmentPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "environmentVariable"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 888
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 889
    .local v0, "variable":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 890
    return-object v1

    #@8
    .line 892
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public static getProperties()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 734
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    #@2
    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 968
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 976
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    #@3
    .line 977
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

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
    .line 1035
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 692
    if-nez p0, :cond_0

    #@2
    .line 693
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 695
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
    .locals 9
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
    const/4 v4, 0x0

    #@1
    .line 702
    new-instance v2, Ljava/util/HashMap;

    #@3
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@6
    .line 703
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@8
    invoke-interface {v3}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    array-length v6, v5

    #@d
    move v3, v4

    #@e
    :goto_0
    if-ge v3, v6, :cond_1

    #@10
    aget-object v0, v5, v3

    #@12
    .line 704
    .local v0, "entry":Ljava/lang/String;
    const/16 v7, 0x3d

    #@14
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v1

    #@18
    .line 705
    .local v1, "index":I
    const/4 v7, -0x1

    #@19
    if-eq v1, v7, :cond_0

    #@1b
    .line 706
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    add-int/lit8 v8, v1, 0x1

    #@21
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 703
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 709
    .end local v0    # "entry":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_1
    new-instance v3, Ljava/lang/System$SystemEnvironment;

    #@2d
    invoke-direct {v3, v2}, Ljava/lang/System$SystemEnvironment;-><init>(Ljava/util/Map;)V

    #@30
    return-object v3
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
    .line 723
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

.method private static initUnchangeableSystemProperties()Ljava/util/Properties;
    .locals 11

    #@0
    .prologue
    .line 738
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v8

    #@4
    .line 739
    .local v8, "runtime":Ldalvik/system/VMRuntime;
    new-instance v4, Ljava/util/Properties;

    #@6
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    #@9
    .line 741
    .local v4, "p":Ljava/util/Properties;
    const-string/jumbo v7, "http://www.android.com/"

    #@c
    .line 742
    .local v7, "projectUrl":Ljava/lang/String;
    const-string/jumbo v6, "The Android Project"

    #@f
    .line 744
    .local v6, "projectName":Ljava/lang/String;
    const-string/jumbo v9, "java.boot.class.path"

    #@12
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->bootClassPath()Ljava/lang/String;

    #@15
    move-result-object v10

    #@16
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 745
    const-string/jumbo v9, "java.class.path"

    #@1c
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->classPath()Ljava/lang/String;

    #@1f
    move-result-object v10

    #@20
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 750
    const-string/jumbo v9, "java.class.version"

    #@26
    const-string/jumbo v10, "50.0"

    #@29
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 751
    const-string/jumbo v9, "java.compiler"

    #@2f
    const-string/jumbo v10, ""

    #@32
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 752
    const-string/jumbo v9, "java.ext.dirs"

    #@38
    const-string/jumbo v10, ""

    #@3b
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 753
    const-string/jumbo v9, "java.version"

    #@41
    const-string/jumbo v10, "0"

    #@44
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 756
    const-string/jumbo v9, "JAVA_HOME"

    #@4a
    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 757
    .local v3, "javaHome":Ljava/lang/String;
    if-nez v3, :cond_0

    #@50
    .line 758
    const-string/jumbo v3, "/system"

    #@53
    .line 760
    :cond_0
    const-string/jumbo v9, "java.home"

    #@56
    invoke-virtual {v4, v9, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 762
    const-string/jumbo v9, "java.specification.name"

    #@5c
    const-string/jumbo v10, "Dalvik Core Library"

    #@5f
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 763
    const-string/jumbo v9, "java.specification.vendor"

    #@65
    invoke-virtual {v4, v9, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    .line 764
    const-string/jumbo v9, "java.specification.version"

    #@6b
    const-string/jumbo v10, "0.9"

    #@6e
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 766
    const-string/jumbo v9, "java.vendor"

    #@74
    invoke-virtual {v4, v9, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 767
    const-string/jumbo v9, "java.vendor.url"

    #@7a
    invoke-virtual {v4, v9, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 768
    const-string/jumbo v9, "java.vm.name"

    #@80
    const-string/jumbo v10, "Dalvik"

    #@83
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    .line 769
    const-string/jumbo v9, "java.vm.specification.name"

    #@89
    const-string/jumbo v10, "Dalvik Virtual Machine Specification"

    #@8c
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 770
    const-string/jumbo v9, "java.vm.specification.vendor"

    #@92
    invoke-virtual {v4, v9, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    .line 771
    const-string/jumbo v9, "java.vm.specification.version"

    #@98
    const-string/jumbo v10, "0.9"

    #@9b
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 772
    const-string/jumbo v9, "java.vm.vendor"

    #@a1
    invoke-virtual {v4, v9, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    .line 773
    const-string/jumbo v9, "java.vm.version"

    #@a7
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->vmVersion()Ljava/lang/String;

    #@aa
    move-result-object v10

    #@ab
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 775
    const-string/jumbo v9, "java.runtime.name"

    #@b1
    const-string/jumbo v10, "Android Runtime"

    #@b4
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    .line 776
    const-string/jumbo v9, "java.runtime.version"

    #@ba
    const-string/jumbo v10, "0.9"

    #@bd
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    .line 777
    const-string/jumbo v9, "java.vm.vendor.url"

    #@c3
    invoke-virtual {v4, v9, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    .line 779
    const-string/jumbo v9, "file.encoding"

    #@c9
    const-string/jumbo v10, "UTF-8"

    #@cc
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cf
    .line 782
    :try_start_0
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@d1
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@d3
    invoke-interface {v10}, Llibcore/io/Os;->getuid()I

    #@d6
    move-result v10

    #@d7
    invoke-interface {v9, v10}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    #@da
    move-result-object v5

    #@db
    .line 783
    .local v5, "passwd":Landroid/system/StructPasswd;
    const-string/jumbo v9, "user.name"

    #@de
    iget-object v10, v5, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    #@e0
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@e3
    .line 788
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@e5
    invoke-interface {v9}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    #@e8
    move-result-object v2

    #@e9
    .line 789
    .local v2, "info":Landroid/system/StructUtsname;
    const-string/jumbo v9, "os.arch"

    #@ec
    iget-object v10, v2, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    #@ee
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    .line 790
    const-string/jumbo v9, "os.name"

    #@f4
    iget-object v10, v2, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    #@f6
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f9
    .line 791
    const-string/jumbo v9, "os.version"

    #@fc
    iget-object v10, v2, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    #@fe
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@101
    .line 794
    const-string/jumbo v9, "android.icu.library.version"

    #@104
    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    #@107
    move-result-object v10

    #@108
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10b
    .line 795
    const-string/jumbo v9, "android.icu.unicode.version"

    #@10e
    invoke-static {}, Llibcore/icu/ICU;->getUnicodeVersion()Ljava/lang/String;

    #@111
    move-result-object v10

    #@112
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@115
    .line 796
    const-string/jumbo v9, "android.icu.cldr.version"

    #@118
    invoke-static {}, Llibcore/icu/ICU;->getCldrVersion()Ljava/lang/String;

    #@11b
    move-result-object v10

    #@11c
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    .line 802
    invoke-static {}, Ljava/lang/System;->generateIcuDataPath()Ljava/lang/String;

    #@122
    move-result-object v1

    #@123
    .line 803
    .local v1, "icuDataPath":Ljava/lang/String;
    const-string/jumbo v9, "android.icu.impl.ICUBinary.dataPath"

    #@126
    invoke-virtual {v4, v9, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@129
    .line 805
    invoke-static {}, Ljava/lang/System;->specialProperties()[Ljava/lang/String;

    #@12c
    move-result-object v9

    #@12d
    invoke-static {v4, v9}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    #@130
    .line 808
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->properties()[Ljava/lang/String;

    #@133
    move-result-object v9

    #@134
    invoke-static {v4, v9}, Ljava/lang/System;->parsePropertyAssignments(Ljava/util/Properties;[Ljava/lang/String;)V

    #@137
    .line 810
    const-string/jumbo v9, "file.separator"

    #@13a
    invoke-virtual {v4, v9}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@13d
    move-result v9

    #@13e
    if-eqz v9, :cond_1

    #@140
    .line 811
    const-string/jumbo v9, "Ignoring command line argument: -Dfile.separator"

    #@143
    invoke-static {v9}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@146
    .line 814
    :cond_1
    const-string/jumbo v9, "line.separator"

    #@149
    invoke-virtual {v4, v9}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@14c
    move-result v9

    #@14d
    if-eqz v9, :cond_2

    #@14f
    .line 815
    const-string/jumbo v9, "Ignoring command line argument: -Dline.separator"

    #@152
    invoke-static {v9}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@155
    .line 818
    :cond_2
    const-string/jumbo v9, "path.separator"

    #@158
    invoke-virtual {v4, v9}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@15b
    move-result v9

    #@15c
    if-eqz v9, :cond_3

    #@15e
    .line 819
    const-string/jumbo v9, "Ignoring command line argument: -Dpath.separator"

    #@161
    invoke-static {v9}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@164
    .line 824
    :cond_3
    const-string/jumbo v9, "file.separator"

    #@167
    const-string/jumbo v10, "/"

    #@16a
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16d
    .line 825
    const-string/jumbo v9, "line.separator"

    #@170
    const-string/jumbo v10, "\n"

    #@173
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@176
    .line 826
    const-string/jumbo v9, "path.separator"

    #@179
    const-string/jumbo v10, ":"

    #@17c
    invoke-virtual {v4, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17f
    .line 828
    return-object v4

    #@180
    .line 784
    .end local v1    # "icuDataPath":Ljava/lang/String;
    .end local v2    # "info":Landroid/system/StructUtsname;
    .end local v5    # "passwd":Landroid/system/StructPasswd;
    :catch_0
    move-exception v0

    #@181
    .line 785
    .local v0, "exception":Landroid/system/ErrnoException;
    new-instance v9, Ljava/lang/AssertionError;

    #@183
    invoke-direct {v9, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@186
    throw v9
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1062
    const-string/jumbo v0, "\n"

    #@3
    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1069
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@b
    .line 1068
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2
    .param p0, "libName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1076
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p0, v1}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@b
    .line 1075
    return-void
.end method

.method private static native log(CLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1083
    const/16 v0, 0x45

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 1082
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1090
    const/16 v0, 0x45

    #@2
    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@5
    .line 1089
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1097
    const/16 v0, 0x49

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 1096
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1104
    const/16 v0, 0x49

    #@2
    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@5
    .line 1103
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1111
    const/16 v0, 0x57

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p0, v1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 1110
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1118
    const/16 v0, 0x57

    #@2
    invoke-static {v0, p0, p1}, Ljava/lang/System;->log(CLjava/lang/String;Ljava/lang/Throwable;)V

    #@5
    .line 1117
    return-void
.end method

.method public static mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "nickname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1198
    if-nez p0, :cond_0

    #@2
    .line 1199
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "nickname == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "lib"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, ".so"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
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
    .line 906
    array-length v6, p1

    #@2
    move v4, v5

    #@3
    :goto_0
    if-ge v4, v6, :cond_0

    #@5
    aget-object v0, p1, v4

    #@7
    .line 907
    .local v0, "assignment":Ljava/lang/String;
    const/16 v7, 0x3d

    #@9
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v2

    #@d
    .line 908
    .local v2, "split":I
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 909
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    #@13
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 910
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 906
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 905
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
    .line 1129
    sget-object v2, Ljava/lang/System;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1130
    :try_start_0
    sget-boolean v0, Ljava/lang/System;->runGC:Z

    #@5
    .line 1131
    .local v0, "shouldRunGC":Z
    const/4 v1, 0x0

    #@6
    sput-boolean v1, Ljava/lang/System;->runGC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v2

    #@9
    .line 1133
    if-eqz v0, :cond_0

    #@b
    .line 1134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    #@12
    .line 1136
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/Runtime;->runFinalization()V

    #@19
    .line 1137
    sget-object v1, Ljava/lang/System;->lock:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 1138
    const/4 v2, 0x1

    #@1d
    :try_start_1
    sput-boolean v2, Ljava/lang/System;->justRanFinalization:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    monitor-exit v1

    #@20
    .line 1127
    return-void

    #@21
    .line 1129
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1

    #@24
    .line 1137
    :catchall_1
    move-exception v2

    #@25
    monitor-exit v1

    #@26
    throw v2
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .param p0, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1154
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    #@3
    .line 1153
    return-void
.end method

.method private static setDefaultChangeableProperties(Ljava/util/Properties;)V
    .locals 2
    .param p0, "p"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 848
    const-string/jumbo v0, "java.io.tmpdir"

    #@3
    const-string/jumbo v1, "/tmp"

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 855
    const-string/jumbo v0, "user.home"

    #@c
    const-string/jumbo v1, ""

    #@f
    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 844
    return-void
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "newErr"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 174
    const-string/jumbo v0, "err"

    #@3
    const-string/jumbo v1, "Ljava/io/PrintStream;"

    #@6
    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@9
    .line 173
    return-void
.end method

.method private static native setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "newIn"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 151
    const-string/jumbo v0, "in"

    #@3
    const-string/jumbo v1, "Ljava/io/InputStream;"

    #@6
    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@9
    .line 150
    return-void
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "newOut"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 162
    const-string/jumbo v0, "out"

    #@3
    const-string/jumbo v1, "Ljava/io/PrintStream;"

    #@6
    invoke-static {v0, v1, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@9
    .line 161
    return-void
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 2
    .param p0, "p"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 1164
    new-instance v0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;

    #@2
    sget-object v1, Ljava/lang/System;->unchangeableSystemProperties:Ljava/util/Properties;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;-><init>(Ljava/util/Properties;)V

    #@7
    .line 1165
    .local v0, "userProperties":Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
    if-eqz p0, :cond_0

    #@9
    .line 1166
    invoke-virtual {v0, p0}, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->putAll(Ljava/util/Map;)V

    #@c
    .line 1172
    :goto_0
    sput-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    #@e
    .line 1162
    return-void

    #@f
    .line 1169
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->setDefaultChangeableProperties(Ljava/util/Properties;)V

    #@12
    goto :goto_0
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 989
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    #@3
    .line 990
    sget-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

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
    .line 1187
    if-eqz p0, :cond_0

    #@2
    .line 1188
    new-instance v0, Ljava/lang/SecurityException;

    #@4
    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1186
    :cond_0
    return-void
.end method

.method public static setUnchangeableSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 840
    invoke-static {p0}, Ljava/lang/System;->checkPropertyName(Ljava/lang/String;)V

    #@3
    .line 841
    sget-object v0, Ljava/lang/System;->unchangeableSystemProperties:Ljava/util/Properties;

    #@5
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 839
    return-void
.end method

.method private static native specialProperties()[Ljava/lang/String;
.end method
