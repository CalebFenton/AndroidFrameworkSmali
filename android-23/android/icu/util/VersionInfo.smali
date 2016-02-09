.class public final Landroid/icu/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/VersionInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final ICU_DATA_VERSION:Landroid/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_DATA_VERSION_PATH:Ljava/lang/String; = "55b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_VERSION:Landroid/icu/util/VersionInfo;

.field private static final INVALID_VERSION_NUMBER_:Ljava/lang/String; = "Invalid version number: Version number may be negative or greater than 255"

.field private static final LAST_BYTE_MASK_:I = 0xff

.field private static final MAP_:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/util/VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile TZDATA_VERSION:Ljava/lang/String;

.field public static final UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

.field public static final UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

.field public static final UCOL_TAILORINGS_VERSION:Landroid/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNICODE_1_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_0_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_1_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_1_5:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_5:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_8:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_9:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_0_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_1_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_1_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_4_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_4_0_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_4_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_5_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_5_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_5_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_3:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_7_0:Landroid/icu/util/VersionInfo;

.field private static final UNICODE_VERSION:Landroid/icu/util/VersionInfo;

.field private static volatile javaVersion:Landroid/icu/util/VersionInfo;


# instance fields
.field private m_version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x3

    #@2
    const/4 v3, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 485
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@a
    sput-object v0, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    .line 502
    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_1_0:Landroid/icu/util/VersionInfo;

    #@12
    .line 503
    invoke-static {v2, v1, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_1_0_1:Landroid/icu/util/VersionInfo;

    #@18
    .line 504
    invoke-static {v2, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_1_1_0:Landroid/icu/util/VersionInfo;

    #@1e
    .line 505
    invoke-static {v2, v2, v5, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_1_1_5:Landroid/icu/util/VersionInfo;

    #@24
    .line 506
    invoke-static {v3, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_0:Landroid/icu/util/VersionInfo;

    #@2a
    .line 507
    invoke-static {v3, v2, v3, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@2d
    move-result-object v0

    #@2e
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_1_2:Landroid/icu/util/VersionInfo;

    #@30
    .line 508
    invoke-static {v3, v2, v5, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_1_5:Landroid/icu/util/VersionInfo;

    #@36
    .line 509
    const/16 v0, 0x8

    #@38
    invoke-static {v3, v2, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@3b
    move-result-object v0

    #@3c
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_1_8:Landroid/icu/util/VersionInfo;

    #@3e
    .line 510
    const/16 v0, 0x9

    #@40
    invoke-static {v3, v2, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@43
    move-result-object v0

    #@44
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_2_1_9:Landroid/icu/util/VersionInfo;

    #@46
    .line 511
    invoke-static {v4, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_0:Landroid/icu/util/VersionInfo;

    #@4c
    .line 512
    invoke-static {v4, v1, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@4f
    move-result-object v0

    #@50
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_0_1:Landroid/icu/util/VersionInfo;

    #@52
    .line 513
    invoke-static {v4, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@55
    move-result-object v0

    #@56
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_1_0:Landroid/icu/util/VersionInfo;

    #@58
    .line 514
    invoke-static {v4, v2, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@5b
    move-result-object v0

    #@5c
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_1_1:Landroid/icu/util/VersionInfo;

    #@5e
    .line 515
    invoke-static {v4, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@61
    move-result-object v0

    #@62
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_3_2:Landroid/icu/util/VersionInfo;

    #@64
    .line 516
    const/4 v0, 0x4

    #@65
    invoke-static {v0, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@68
    move-result-object v0

    #@69
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_4_0:Landroid/icu/util/VersionInfo;

    #@6b
    .line 517
    const/4 v0, 0x4

    #@6c
    invoke-static {v0, v1, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@6f
    move-result-object v0

    #@70
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_4_0_1:Landroid/icu/util/VersionInfo;

    #@72
    .line 518
    const/4 v0, 0x4

    #@73
    invoke-static {v0, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@76
    move-result-object v0

    #@77
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_4_1:Landroid/icu/util/VersionInfo;

    #@79
    .line 519
    invoke-static {v5, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@7c
    move-result-object v0

    #@7d
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_5_0:Landroid/icu/util/VersionInfo;

    #@7f
    .line 520
    invoke-static {v5, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@82
    move-result-object v0

    #@83
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_5_1:Landroid/icu/util/VersionInfo;

    #@85
    .line 521
    invoke-static {v5, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@88
    move-result-object v0

    #@89
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_5_2:Landroid/icu/util/VersionInfo;

    #@8b
    .line 522
    const/4 v0, 0x6

    #@8c
    invoke-static {v0, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@8f
    move-result-object v0

    #@90
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_6_0:Landroid/icu/util/VersionInfo;

    #@92
    .line 523
    const/4 v0, 0x6

    #@93
    invoke-static {v0, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@96
    move-result-object v0

    #@97
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_6_1:Landroid/icu/util/VersionInfo;

    #@99
    .line 524
    const/4 v0, 0x6

    #@9a
    invoke-static {v0, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@9d
    move-result-object v0

    #@9e
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_6_2:Landroid/icu/util/VersionInfo;

    #@a0
    .line 525
    const/4 v0, 0x6

    #@a1
    invoke-static {v0, v4, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@a4
    move-result-object v0

    #@a5
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_6_3:Landroid/icu/util/VersionInfo;

    #@a7
    .line 526
    const/4 v0, 0x7

    #@a8
    invoke-static {v0, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@ab
    move-result-object v0

    #@ac
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_7_0:Landroid/icu/util/VersionInfo;

    #@ae
    .line 528
    const/16 v0, 0x37

    #@b0
    invoke-static {v0, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@b3
    move-result-object v0

    #@b4
    sput-object v0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@b6
    .line 529
    const/16 v0, 0x37

    #@b8
    invoke-static {v0, v2, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@bb
    move-result-object v0

    #@bc
    sput-object v0, Landroid/icu/util/VersionInfo;->ICU_DATA_VERSION:Landroid/icu/util/VersionInfo;

    #@be
    .line 530
    sget-object v0, Landroid/icu/util/VersionInfo;->UNICODE_7_0:Landroid/icu/util/VersionInfo;

    #@c0
    sput-object v0, Landroid/icu/util/VersionInfo;->UNICODE_VERSION:Landroid/icu/util/VersionInfo;

    #@c2
    .line 532
    const/16 v0, 0x9

    #@c4
    invoke-static {v0}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    #@c7
    move-result-object v0

    #@c8
    sput-object v0, Landroid/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

    #@ca
    .line 533
    const/16 v0, 0x9

    #@cc
    invoke-static {v0}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    #@cf
    move-result-object v0

    #@d0
    sput-object v0, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    #@d2
    .line 534
    invoke-static {v2}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    #@d5
    move-result-object v0

    #@d6
    sput-object v0, Landroid/icu/util/VersionInfo;->UCOL_TAILORINGS_VERSION:Landroid/icu/util/VersionInfo;

    #@d8
    .line 644
    const/4 v0, 0x0

    #@d9
    sput-object v0, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    #@db
    .line 17
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "compactversion"    # I

    #@0
    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 545
    iput p1, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    #@5
    .line 543
    return-void
.end method

.method public static getInstance(I)Landroid/icu/util/VersionInfo;
    .locals 1
    .param p0, "major"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 328
    invoke-static {p0, v0, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(II)Landroid/icu/util/VersionInfo;
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 315
    invoke-static {p0, p1, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(III)Landroid/icu/util/VersionInfo;
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "milli"    # I

    #@0
    .prologue
    .line 301
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(IIII)Landroid/icu/util/VersionInfo;
    .locals 6
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "milli"    # I
    .param p3, "micro"    # I

    #@0
    .prologue
    const/16 v4, 0xff

    #@2
    .line 272
    if-ltz p0, :cond_0

    #@4
    if-le p0, v4, :cond_1

    #@6
    .line 274
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "Invalid version number: Version number may be negative or greater than 255"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 272
    :cond_1
    if-ltz p1, :cond_0

    #@11
    if-gt p1, v4, :cond_0

    #@13
    .line 273
    if-ltz p2, :cond_0

    #@15
    if-gt p2, v4, :cond_0

    #@17
    if-ltz p3, :cond_0

    #@19
    if-gt p3, v4, :cond_0

    #@1b
    .line 276
    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/VersionInfo;->getInt(IIII)I

    #@1e
    move-result v3

    #@1f
    .line 277
    .local v3, "version":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v0

    #@23
    .line 278
    .local v0, "key":Ljava/lang/Integer;
    sget-object v4, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    #@25
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/icu/util/VersionInfo;

    #@2b
    .line 279
    .local v1, "result":Landroid/icu/util/VersionInfo;
    if-nez v1, :cond_2

    #@2d
    .line 280
    new-instance v1, Landroid/icu/util/VersionInfo;

    #@2f
    .end local v1    # "result":Landroid/icu/util/VersionInfo;
    invoke-direct {v1, v3}, Landroid/icu/util/VersionInfo;-><init>(I)V

    #@32
    .line 281
    .restart local v1    # "result":Landroid/icu/util/VersionInfo;
    sget-object v4, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    #@34
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Landroid/icu/util/VersionInfo;

    #@3a
    .line 282
    .local v2, "tmpvi":Landroid/icu/util/VersionInfo;
    if-eqz v2, :cond_2

    #@3c
    .line 283
    move-object v1, v2

    #@3d
    .line 286
    .end local v2    # "tmpvi":Landroid/icu/util/VersionInfo;
    :cond_2
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;
    .locals 10
    .param p0, "version"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/4 v8, 0x0

    #@2
    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v5

    #@6
    .line 226
    .local v5, "length":I
    filled-new-array {v8, v8, v8, v8}, [I

    #@9
    move-result-object v0

    #@a
    .line 227
    .local v0, "array":[I
    const/4 v2, 0x0

    #@b
    .line 228
    .local v2, "count":I
    const/4 v4, 0x0

    #@c
    .line 230
    .local v4, "index":I
    :goto_0
    if-ge v2, v9, :cond_3

    #@e
    if-ge v4, v5, :cond_3

    #@10
    .line 231
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v1

    #@14
    .line 232
    .local v1, "c":C
    const/16 v6, 0x2e

    #@16
    if-ne v1, v6, :cond_0

    #@18
    .line 233
    add-int/lit8 v2, v2, 0x1

    #@1a
    .line 243
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 236
    :cond_0
    add-int/lit8 v6, v1, -0x30

    #@1f
    int-to-char v1, v6

    #@20
    .line 237
    if-ltz v1, :cond_1

    #@22
    const/16 v6, 0x9

    #@24
    if-le v1, v6, :cond_2

    #@26
    .line 238
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@28
    const-string/jumbo v7, "Invalid version number: Version number may be negative or greater than 255"

    #@2b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v6

    #@2f
    .line 240
    :cond_2
    aget v6, v0, v2

    #@31
    mul-int/lit8 v6, v6, 0xa

    #@33
    aput v6, v0, v2

    #@35
    .line 241
    aget v6, v0, v2

    #@37
    add-int/2addr v6, v1

    #@38
    aput v6, v0, v2

    #@3a
    goto :goto_1

    #@3b
    .line 245
    .end local v1    # "c":C
    :cond_3
    if-eq v4, v5, :cond_4

    #@3d
    .line 246
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@3f
    .line 247
    new-instance v7, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v8, "Invalid version number: String \'"

    #@47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    const-string/jumbo v8, "\' exceeds version format"

    #@52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    .line 246
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v6

    #@5e
    .line 249
    :cond_4
    const/4 v3, 0x0

    #@5f
    .local v3, "i":I
    :goto_2
    if-ge v3, v9, :cond_7

    #@61
    .line 250
    aget v6, v0, v3

    #@63
    if-ltz v6, :cond_5

    #@65
    aget v6, v0, v3

    #@67
    const/16 v7, 0xff

    #@69
    if-le v6, v7, :cond_6

    #@6b
    .line 251
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@6d
    const-string/jumbo v7, "Invalid version number: Version number may be negative or greater than 255"

    #@70
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6

    #@74
    .line 249
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@76
    goto :goto_2

    #@77
    .line 255
    :cond_7
    aget v6, v0, v8

    #@79
    const/4 v7, 0x1

    #@7a
    aget v7, v0, v7

    #@7c
    const/4 v8, 0x2

    #@7d
    aget v8, v0, v8

    #@7f
    const/4 v9, 0x3

    #@80
    aget v9, v0, v9

    #@82
    invoke-static {v6, v7, v8, v9}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@85
    move-result-object v6

    #@86
    return-object v6
.end method

.method private static getInt(IIII)I
    .locals 2
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "milli"    # I
    .param p3, "micro"    # I

    #@0
    .prologue
    .line 557
    shl-int/lit8 v0, p0, 0x18

    #@2
    shl-int/lit8 v1, p1, 0x10

    #@4
    or-int/2addr v0, v1

    #@5
    shl-int/lit8 v1, p2, 0x8

    #@7
    or-int/2addr v0, v1

    #@8
    or-int/2addr v0, p3

    #@9
    return v0
.end method

.method static getTZDataVersion()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 647
    sget-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 648
    const-class v2, Landroid/icu/util/VersionInfo;

    #@6
    monitor-enter v2

    #@7
    .line 649
    :try_start_0
    sget-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 650
    const-string/jumbo v1, "android/icu/impl/data/icudt55b"

    #@e
    .line 651
    const-string/jumbo v3, "zoneinfo64"

    #@11
    .line 650
    invoke-static {v1, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@14
    move-result-object v0

    #@15
    .line 652
    .local v0, "tzbundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v1, "TZVersion"

    #@18
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    sput-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_0
    monitor-exit v2

    #@1f
    .line 656
    :cond_1
    sget-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    #@21
    return-object v1

    #@22
    .line 648
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public static javaVersion()Landroid/icu/util/VersionInfo;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v12, 0x2e

    #@2
    .line 339
    sget-object v10, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    #@4
    if-nez v10, :cond_5

    #@6
    .line 340
    const-class v11, Landroid/icu/util/VersionInfo;

    #@8
    monitor-enter v11

    #@9
    .line 341
    :try_start_0
    sget-object v10, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    #@b
    if-nez v10, :cond_4

    #@d
    .line 342
    const-string/jumbo v10, "java.version"

    #@10
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    .line 348
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    #@17
    move-result-object v1

    #@18
    .line 349
    .local v1, "chars":[C
    const/4 v4, 0x0

    #@19
    .local v4, "r":I
    const/4 v8, 0x0

    #@1a
    .local v8, "w":I
    const/4 v2, 0x0

    #@1b
    .line 350
    .local v2, "count":I
    const/4 v3, 0x0

    #@1c
    .local v3, "numeric":Z
    move v9, v8

    #@1d
    .end local v8    # "w":I
    .local v9, "w":I
    move v5, v4

    #@1e
    .line 351
    .end local v4    # "r":I
    .local v5, "r":I
    :goto_0
    array-length v10, v1

    #@1f
    if-ge v5, v10, :cond_7

    #@21
    .line 352
    add-int/lit8 v4, v5, 0x1

    #@23
    .end local v5    # "r":I
    .restart local v4    # "r":I
    aget-char v0, v1, v5

    #@25
    .line 353
    .local v0, "c":C
    const/16 v10, 0x30

    #@27
    if-lt v0, v10, :cond_0

    #@29
    const/16 v10, 0x39

    #@2b
    if-le v0, v10, :cond_2

    #@2d
    .line 354
    :cond_0
    if-eqz v3, :cond_6

    #@2f
    .line 355
    const/4 v10, 0x3

    #@30
    if-ne v2, v10, :cond_1

    #@32
    move v8, v9

    #@33
    .line 368
    .end local v0    # "c":C
    .end local v9    # "w":I
    .restart local v8    # "w":I
    :goto_1
    if-lez v8, :cond_3

    #@35
    add-int/lit8 v10, v8, -0x1

    #@37
    aget-char v10, v1, v10

    #@39
    if-ne v10, v12, :cond_3

    #@3b
    .line 369
    add-int/lit8 v8, v8, -0x1

    #@3d
    goto :goto_1

    #@3e
    .line 359
    .end local v8    # "w":I
    .restart local v0    # "c":C
    .restart local v9    # "w":I
    :cond_1
    const/4 v3, 0x0

    #@3f
    .line 360
    add-int/lit8 v8, v9, 0x1

    #@41
    .end local v9    # "w":I
    .restart local v8    # "w":I
    const/16 v10, 0x2e

    #@43
    aput-char v10, v1, v9

    #@45
    .line 361
    add-int/lit8 v2, v2, 0x1

    #@47
    :goto_2
    move v9, v8

    #@48
    .end local v8    # "w":I
    .restart local v9    # "w":I
    move v5, v4

    #@49
    .end local v4    # "r":I
    .restart local v5    # "r":I
    goto :goto_0

    #@4a
    .line 364
    .end local v5    # "r":I
    .restart local v4    # "r":I
    :cond_2
    const/4 v3, 0x1

    #@4b
    .line 365
    add-int/lit8 v8, v9, 0x1

    #@4d
    .end local v9    # "w":I
    .restart local v8    # "w":I
    aput-char v0, v1, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    goto :goto_2

    #@50
    .line 340
    .end local v0    # "c":C
    .end local v1    # "chars":[C
    .end local v2    # "count":I
    .end local v3    # "numeric":Z
    .end local v4    # "r":I
    .end local v8    # "w":I
    :catchall_0
    move-exception v10

    #@51
    monitor-exit v11

    #@52
    throw v10

    #@53
    .line 372
    .restart local v1    # "chars":[C
    .restart local v2    # "count":I
    .restart local v3    # "numeric":Z
    .restart local v4    # "r":I
    .restart local v8    # "w":I
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/String;

    #@55
    const/4 v10, 0x0

    #@56
    invoke-direct {v7, v1, v10, v8}, Ljava/lang/String;-><init>([CII)V

    #@59
    .line 374
    .local v7, "vs":Ljava/lang/String;
    invoke-static {v7}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    #@5c
    move-result-object v10

    #@5d
    sput-object v10, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    :cond_4
    monitor-exit v11

    #@60
    .line 378
    :cond_5
    sget-object v10, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    #@62
    return-object v10

    #@63
    .end local v7    # "vs":Ljava/lang/String;
    .end local v8    # "w":I
    .restart local v0    # "c":C
    .restart local v9    # "w":I
    :cond_6
    move v8, v9

    #@64
    .end local v9    # "w":I
    .restart local v8    # "w":I
    goto :goto_2

    #@65
    .end local v0    # "c":C
    .end local v4    # "r":I
    .end local v8    # "w":I
    .restart local v5    # "r":I
    .restart local v9    # "w":I
    :cond_7
    move v8, v9

    #@66
    .end local v9    # "w":I
    .restart local v8    # "w":I
    move v4, v5

    #@67
    .end local v5    # "r":I
    .restart local v4    # "r":I
    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x2

    #@2
    .line 568
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@4
    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@7
    move-result v3

    #@8
    if-gt v3, v7, :cond_2

    #@a
    .line 569
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@c
    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMinor()I

    #@f
    move-result v3

    #@10
    rem-int/lit8 v3, v3, 0x2

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 571
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@16
    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@19
    move-result v1

    #@1a
    .line 572
    .local v1, "major":I
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@1c
    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMinor()I

    #@1f
    move-result v3

    #@20
    add-int/lit8 v2, v3, 0x1

    #@22
    .line 573
    .local v2, "minor":I
    const/16 v3, 0xa

    #@24
    if-lt v2, v3, :cond_0

    #@26
    .line 574
    add-int/lit8 v2, v2, -0xa

    #@28
    .line 575
    add-int/lit8 v1, v1, 0x1

    #@2a
    .line 577
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, ""

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, "."

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    const-string/jumbo v4, "M"

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    sget-object v4, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@4e
    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMilli()I

    #@51
    move-result v4

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    .line 591
    .end local v1    # "major":I
    .end local v2    # "minor":I
    .local v0, "icuApiVer":Ljava/lang/String;
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5c
    new-instance v4, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v5, "International Components for Unicode for Java "

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@73
    .line 593
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@75
    const-string/jumbo v4, ""

    #@78
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7b
    .line 594
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7d
    new-instance v4, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v5, "Implementation Version: "

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    sget-object v5, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@8b
    invoke-virtual {v5, v6, v7}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9a
    .line 595
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9c
    new-instance v4, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v5, "Unicode Data Version:   "

    #@a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    sget-object v5, Landroid/icu/util/VersionInfo;->UNICODE_VERSION:Landroid/icu/util/VersionInfo;

    #@aa
    invoke-virtual {v5, v6, v7}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v4

    #@b2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b9
    .line 596
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@bb
    new-instance v4, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v5, "CLDR Data Version:      "

    #@c3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v4

    #@c7
    invoke-static {}, Landroid/icu/util/LocaleData;->getCLDRVersion()Landroid/icu/util/VersionInfo;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {v5, v6, v7}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v4

    #@d7
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@da
    .line 597
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@dc
    new-instance v4, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v5, "Time Zone Data Version: "

    #@e4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v4

    #@e8
    invoke-static {}, Landroid/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    #@eb
    move-result-object v5

    #@ec
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v4

    #@f4
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f7
    .line 565
    return-void

    #@f8
    .line 579
    .end local v0    # "icuApiVer":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@fa
    invoke-virtual {v3, v6, v6}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    #@fd
    move-result-object v0

    #@fe
    .restart local v0    # "icuApiVer":Ljava/lang/String;
    goto/16 :goto_0

    #@100
    .line 582
    .end local v0    # "icuApiVer":Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@102
    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMinor()I

    #@105
    move-result v3

    #@106
    if-nez v3, :cond_3

    #@108
    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v4, ""

    #@110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v3

    #@114
    sget-object v4, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@116
    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@119
    move-result v4

    #@11a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v3

    #@11e
    const-string/jumbo v4, "M"

    #@121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v3

    #@125
    sget-object v4, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@127
    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMilli()I

    #@12a
    move-result v4

    #@12b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v3

    #@12f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v0

    #@133
    .restart local v0    # "icuApiVer":Ljava/lang/String;
    goto/16 :goto_0

    #@135
    .line 586
    .end local v0    # "icuApiVer":Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    #@137
    invoke-virtual {v3, v6, v6}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    #@13a
    move-result-object v0

    #@13b
    .restart local v0    # "icuApiVer":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/VersionInfo;)I
    .locals 2
    .param p1, "other"    # Landroid/icu/util/VersionInfo;

    #@0
    .prologue
    .line 465
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    #@2
    iget v1, p1, Landroid/icu/util/VersionInfo;->m_version_:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 463
    check-cast p1, Landroid/icu/util/VersionInfo;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 449
    if-ne p1, p0, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public getMajor()I
    .locals 1

    #@0
    .prologue
    .line 407
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    #@2
    shr-int/lit8 v0, v0, 0x18

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    return v0
.end method

.method public getMicro()I
    .locals 1

    #@0
    .prologue
    .line 437
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method public getMilli()I
    .locals 1

    #@0
    .prologue
    .line 427
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    #@2
    shr-int/lit8 v0, v0, 0x8

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    return v0
.end method

.method public getMinor()I
    .locals 1

    #@0
    .prologue
    .line 417
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    #@2
    shr-int/lit8 v0, v0, 0x10

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    return v0
.end method

.method public getVersionString(II)Ljava/lang/String;
    .locals 7
    .param p1, "minDigits"    # I
    .param p2, "maxDigits"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 612
    if-lt p1, v5, :cond_0

    #@5
    if-ge p2, v5, :cond_1

    #@7
    .line 614
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v5, "Invalid min/maxDigits range"

    #@c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v4

    #@10
    .line 613
    :cond_1
    if-gt p1, v4, :cond_0

    #@12
    if-gt p2, v4, :cond_0

    #@14
    if-gt p1, p2, :cond_0

    #@16
    .line 617
    new-array v0, v4, [I

    #@18
    .line 618
    .local v0, "digits":[I
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@1b
    move-result v4

    #@1c
    aput v4, v0, v6

    #@1e
    .line 619
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    #@21
    move-result v4

    #@22
    aput v4, v0, v5

    #@24
    .line 620
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    #@27
    move-result v4

    #@28
    const/4 v5, 0x2

    #@29
    aput v4, v0, v5

    #@2b
    .line 621
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMicro()I

    #@2e
    move-result v4

    #@2f
    const/4 v5, 0x3

    #@30
    aput v4, v0, v5

    #@32
    .line 623
    move v2, p2

    #@33
    .line 624
    .local v2, "numDigits":I
    :goto_0
    if-le v2, p1, :cond_2

    #@35
    .line 625
    add-int/lit8 v4, v2, -0x1

    #@37
    aget v4, v0, v4

    #@39
    if-eqz v4, :cond_3

    #@3b
    .line 631
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    const/4 v4, 0x7

    #@3e
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@41
    .line 632
    .local v3, "verStr":Ljava/lang/StringBuilder;
    aget v4, v0, v6

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    .line 633
    const/4 v1, 0x1

    #@47
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    #@49
    .line 634
    const-string/jumbo v4, "."

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 635
    aget v4, v0, v1

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    .line 633
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_1

    #@57
    .line 628
    .end local v1    # "i":I
    .end local v3    # "verStr":Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@59
    goto :goto_0

    #@5a
    .line 638
    .restart local v1    # "i":I
    .restart local v3    # "verStr":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x2e

    #@2
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const/4 v1, 0x7

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 390
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 392
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 394
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 395
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 396
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMicro()I

    #@29
    move-result v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    return-object v1
.end method
