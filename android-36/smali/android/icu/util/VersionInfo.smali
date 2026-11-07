.class public final Landroid/icu/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/util/VersionInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o ICU_DATA_VERSION:Landroid/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ICU_DATA_VERSION_PATH:Ljava/lang/String; = "76b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api ICU_VERSION:Landroid/icu/util/VersionInfo;

.field private static final greylist-max-o INVALID_VERSION_NUMBER_:Ljava/lang/String; = "Invalid version number: Version number may be negative or greater than 255"

.field private static final greylist-max-o LAST_BYTE_MASK_:I = 0xff

.field private static final greylist-max-o MAP_:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/icu/util/VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o TZDATA_VERSION:Ljava/lang/String;

.field public static final whitelist test-api UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

.field public static final greylist-max-o UCOL_TAILORINGS_VERSION:Landroid/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api UNICODE_10_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_11_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_12_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_12_1:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_13_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_14_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_15_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_15_1:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_16_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_1_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_1_0_1:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_1_1_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_1_1_5:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_2_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_2_1_2:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_2_1_5:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_2_1_8:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_2_1_9:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_3_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_3_0_1:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_3_1_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_3_1_1:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_3_2:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_4_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_4_0_1:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_4_1:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_5_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_5_1:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_5_2:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_6_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_6_1:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_6_2:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_6_3:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_7_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_8_0:Landroid/icu/util/VersionInfo;

.field public static final whitelist test-api UNICODE_9_0:Landroid/icu/util/VersionInfo;

.field private static final greylist-max-o UNICODE_VERSION:Landroid/icu/util/VersionInfo;


# instance fields
.field private greylist-max-o m_version_:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 485
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    .line 502
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_1_0:Landroid/icu/util/VersionInfo;

    .line 503
    invoke-static {v0, v1, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_1_0_1:Landroid/icu/util/VersionInfo;

    .line 504
    invoke-static {v0, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_1_1_0:Landroid/icu/util/VersionInfo;

    .line 505
    const/4 v2, 0x5

    invoke-static {v0, v0, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v3

    sput-object v3, Landroid/icu/util/VersionInfo;->UNICODE_1_1_5:Landroid/icu/util/VersionInfo;

    .line 506
    const/4 v3, 0x2

    invoke-static {v3, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Landroid/icu/util/VersionInfo;->UNICODE_2_0:Landroid/icu/util/VersionInfo;

    .line 507
    invoke-static {v3, v0, v3, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Landroid/icu/util/VersionInfo;->UNICODE_2_1_2:Landroid/icu/util/VersionInfo;

    .line 508
    invoke-static {v3, v0, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Landroid/icu/util/VersionInfo;->UNICODE_2_1_5:Landroid/icu/util/VersionInfo;

    .line 509
    const/16 v4, 0x8

    invoke-static {v3, v0, v4, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v5

    sput-object v5, Landroid/icu/util/VersionInfo;->UNICODE_2_1_8:Landroid/icu/util/VersionInfo;

    .line 510
    const/16 v5, 0x9

    invoke-static {v3, v0, v5, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v6

    sput-object v6, Landroid/icu/util/VersionInfo;->UNICODE_2_1_9:Landroid/icu/util/VersionInfo;

    .line 511
    const/4 v6, 0x3

    invoke-static {v6, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_0:Landroid/icu/util/VersionInfo;

    .line 512
    invoke-static {v6, v1, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_0_1:Landroid/icu/util/VersionInfo;

    .line 513
    invoke-static {v6, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_1_0:Landroid/icu/util/VersionInfo;

    .line 514
    invoke-static {v6, v0, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_1_1:Landroid/icu/util/VersionInfo;

    .line 515
    invoke-static {v6, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_2:Landroid/icu/util/VersionInfo;

    .line 516
    const/4 v7, 0x4

    invoke-static {v7, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v8

    sput-object v8, Landroid/icu/util/VersionInfo;->UNICODE_4_0:Landroid/icu/util/VersionInfo;

    .line 517
    invoke-static {v7, v1, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v8

    sput-object v8, Landroid/icu/util/VersionInfo;->UNICODE_4_0_1:Landroid/icu/util/VersionInfo;

    .line 518
    invoke-static {v7, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_4_1:Landroid/icu/util/VersionInfo;

    .line 519
    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_5_0:Landroid/icu/util/VersionInfo;

    .line 520
    invoke-static {v2, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_5_1:Landroid/icu/util/VersionInfo;

    .line 521
    invoke-static {v2, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_5_2:Landroid/icu/util/VersionInfo;

    .line 522
    const/4 v2, 0x6

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_6_0:Landroid/icu/util/VersionInfo;

    .line 523
    invoke-static {v2, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_6_1:Landroid/icu/util/VersionInfo;

    .line 524
    invoke-static {v2, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v3

    sput-object v3, Landroid/icu/util/VersionInfo;->UNICODE_6_2:Landroid/icu/util/VersionInfo;

    .line 525
    invoke-static {v2, v6, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_6_3:Landroid/icu/util/VersionInfo;

    .line 526
    const/4 v2, 0x7

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_7_0:Landroid/icu/util/VersionInfo;

    .line 527
    invoke-static {v4, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_8_0:Landroid/icu/util/VersionInfo;

    .line 528
    invoke-static {v5, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_9_0:Landroid/icu/util/VersionInfo;

    .line 529
    const/16 v2, 0xa

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_10_0:Landroid/icu/util/VersionInfo;

    .line 530
    const/16 v2, 0xb

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_11_0:Landroid/icu/util/VersionInfo;

    .line 531
    const/16 v2, 0xc

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v3

    sput-object v3, Landroid/icu/util/VersionInfo;->UNICODE_12_0:Landroid/icu/util/VersionInfo;

    .line 532
    invoke-static {v2, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_12_1:Landroid/icu/util/VersionInfo;

    .line 533
    const/16 v2, 0xd

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_13_0:Landroid/icu/util/VersionInfo;

    .line 534
    const/16 v2, 0xe

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_14_0:Landroid/icu/util/VersionInfo;

    .line 535
    const/16 v2, 0xf

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v3

    sput-object v3, Landroid/icu/util/VersionInfo;->UNICODE_15_0:Landroid/icu/util/VersionInfo;

    .line 536
    invoke-static {v2, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_15_1:Landroid/icu/util/VersionInfo;

    .line 537
    const/16 v2, 0x10

    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_16_0:Landroid/icu/util/VersionInfo;

    .line 539
    const/16 v2, 0x4c

    invoke-static {v2, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    .line 540
    sget-object v1, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    sput-object v1, Landroid/icu/util/VersionInfo;->ICU_DATA_VERSION:Landroid/icu/util/VersionInfo;

    .line 541
    sget-object v1, Landroid/icu/util/VersionInfo;->UNICODE_16_0:Landroid/icu/util/VersionInfo;

    sput-object v1, Landroid/icu/util/VersionInfo;->UNICODE_VERSION:Landroid/icu/util/VersionInfo;

    .line 543
    invoke-static {v5}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

    .line 544
    invoke-static {v5}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    .line 545
    invoke-static {v0}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UCOL_TAILORINGS_VERSION:Landroid/icu/util/VersionInfo;

    .line 656
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "compactversion"    # I

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput p1, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    .line 557
    return-void
.end method

.method public static whitelist test-api getInstance(I)Landroid/icu/util/VersionInfo;
    .registers 2
    .param p0, "major"    # I

    .line 359
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(II)Landroid/icu/util/VersionInfo;
    .registers 3
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .line 347
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(III)Landroid/icu/util/VersionInfo;
    .registers 4
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "milli"    # I

    .line 334
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(IIII)Landroid/icu/util/VersionInfo;
    .registers 8
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "milli"    # I
    .param p3, "micro"    # I

    .line 306
    if-ltz p0, :cond_36

    const/16 v0, 0xff

    if-gt p0, v0, :cond_36

    if-ltz p1, :cond_36

    if-gt p1, v0, :cond_36

    if-ltz p2, :cond_36

    if-gt p2, v0, :cond_36

    if-ltz p3, :cond_36

    if-gt p3, v0, :cond_36

    .line 310
    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/VersionInfo;->getInt(IIII)I

    move-result v0

    .line 311
    .local v0, "version":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 312
    .local v1, "key":Ljava/lang/Integer;
    sget-object v2, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/VersionInfo;

    .line 313
    .local v2, "result":Landroid/icu/util/VersionInfo;
    if-nez v2, :cond_35

    .line 314
    new-instance v3, Landroid/icu/util/VersionInfo;

    invoke-direct {v3, v0}, Landroid/icu/util/VersionInfo;-><init>(I)V

    move-object v2, v3

    .line 315
    sget-object v3, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/VersionInfo;

    .line 316
    .local v3, "tmpvi":Landroid/icu/util/VersionInfo;
    if-eqz v3, :cond_35

    .line 317
    move-object v2, v3

    .line 320
    .end local v3    # "tmpvi":Landroid/icu/util/VersionInfo;
    :cond_35
    return-object v2

    .line 308
    .end local v0    # "version":I
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "result":Landroid/icu/util/VersionInfo;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid version number: Version number may be negative or greater than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;
    .registers 11
    .param p0, "version"    # Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 261
    .local v0, "length":I
    const/4 v1, 0x0

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v2

    .line 262
    .local v2, "array":[I
    const/4 v3, 0x0

    .line 263
    .local v3, "count":I
    const/4 v4, 0x0

    .line 265
    .local v4, "index":I
    :goto_b
    const-string v5, "Invalid version number: Version number may be negative or greater than 255"

    const/4 v6, 0x4

    if-ge v3, v6, :cond_3b

    if-ge v4, v0, :cond_3b

    .line 266
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 267
    .local v6, "c":C
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1d

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 271
    :cond_1d
    add-int/lit8 v7, v6, -0x30

    int-to-char v6, v7

    .line 272
    if-ltz v6, :cond_35

    const/16 v7, 0x9

    if-gt v6, v7, :cond_35

    .line 275
    aget v5, v2, v3

    mul-int/lit8 v5, v5, 0xa

    aput v5, v2, v3

    .line 276
    aget v5, v2, v3

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 278
    :goto_31
    nop

    .end local v6    # "c":C
    add-int/lit8 v4, v4, 0x1

    .line 279
    goto :goto_b

    .line 273
    .restart local v6    # "c":C
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    .end local v6    # "c":C
    :cond_3b
    if-ne v4, v0, :cond_63

    .line 284
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3e
    if-ge v7, v6, :cond_53

    .line 285
    aget v8, v2, v7

    if-ltz v8, :cond_4d

    aget v8, v2, v7

    const/16 v9, 0xff

    if-gt v8, v9, :cond_4d

    .line 284
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 286
    :cond_4d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    .end local v7    # "i":I
    :cond_53
    aget v1, v2, v1

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    const/4 v7, 0x3

    aget v7, v2, v7

    invoke-static {v1, v5, v6, v7}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v1

    return-object v1

    .line 281
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid version number: String \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' exceeds version format"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o getInt(IIII)I
    .registers 6
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "milli"    # I
    .param p3, "micro"    # I

    .line 568
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method static greylist-max-o getTZDataVersion()Ljava/lang/String;
    .registers 3

    .line 659
    sget-object v0, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 660
    const-class v0, Landroid/icu/util/VersionInfo;

    monitor-enter v0

    .line 661
    :try_start_7
    sget-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 662
    const-string v1, "android/icu/impl/data/icudata"

    const-string v2, "zoneinfo64"

    .line 663
    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 664
    .local v1, "tzbundle":Landroid/icu/util/UResourceBundle;
    const-string v2, "TZVersion"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    .line 666
    .end local v1    # "tzbundle":Landroid/icu/util/UResourceBundle;
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1

    .line 668
    :cond_20
    :goto_20
    sget-object v0, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static greylist-max-o main([Ljava/lang/String;)V
    .registers 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 579
    sget-object v0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v0

    const-string v1, "M"

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-gt v0, v4, :cond_5e

    .line 580
    sget-object v0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v0

    rem-int/2addr v0, v3

    if-eqz v0, :cond_57

    .line 582
    sget-object v0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v0

    .line 583
    .local v0, "major":I
    sget-object v5, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v5}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 584
    .local v5, "minor":I
    const/16 v6, 0xa

    if-lt v5, v6, :cond_2d

    .line 585
    add-int/lit8 v5, v5, -0xa

    .line 586
    add-int/lit8 v0, v0, 0x1

    .line 588
    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v6}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    .end local v5    # "minor":I
    .local v0, "icuApiVer":Ljava/lang/String;
    goto :goto_92

    .line 590
    .end local v0    # "icuApiVer":Ljava/lang/String;
    :cond_57
    sget-object v0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0, v3, v3}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "icuApiVer":Ljava/lang/String;
    goto :goto_92

    .line 593
    .end local v0    # "icuApiVer":Ljava/lang/String;
    :cond_5e
    sget-object v0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v0

    if-nez v0, :cond_8c

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v5}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v1}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "icuApiVer":Ljava/lang/String;
    goto :goto_92

    .line 597
    .end local v0    # "icuApiVer":Ljava/lang/String;
    :cond_8c
    sget-object v0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0, v3, v3}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v0

    .line 602
    .restart local v0    # "icuApiVer":Ljava/lang/String;
    :goto_92
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "International Components for Unicode for Java "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Implementation Version: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v5, v3, v4}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 606
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unicode Data Version:   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Landroid/icu/util/VersionInfo;->UNICODE_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v5, v3, v4}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLDR Data Version:      "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/icu/util/LocaleData;->getCLDRVersion()Landroid/icu/util/VersionInfo;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 608
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Zone Data Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    return-void
.end method


# virtual methods
.method public whitelist test-api compareTo(Landroid/icu/util/VersionInfo;)I
    .registers 5
    .param p1, "other"    # Landroid/icu/util/VersionInfo;

    .line 458
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p1, Landroid/icu/util/VersionInfo;->m_version_:I

    ushr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 459
    .local v0, "diff":I
    if-eqz v0, :cond_c

    return v0

    .line 461
    :cond_c
    iget v1, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    and-int/lit8 v1, v1, 0x1

    iget v2, p1, Landroid/icu/util/VersionInfo;->m_version_:I

    and-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    check-cast p1, Landroid/icu/util/VersionInfo;

    invoke-virtual {p0, p1}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 426
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public whitelist test-api getMajor()I
    .registers 2

    .line 387
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist test-api getMicro()I
    .registers 2

    .line 414
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist test-api getMilli()I
    .registers 2

    .line 405
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist test-api getMinor()I
    .registers 2

    .line 396
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public greylist-max-o getVersionString(II)Ljava/lang/String;
    .registers 8
    .param p1, "minDigits"    # I
    .param p2, "maxDigits"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    const/4 v0, 0x1

    if-lt p1, v0, :cond_56

    if-lt p2, v0, :cond_56

    const/4 v1, 0x4

    if-gt p1, v1, :cond_56

    if-gt p2, v1, :cond_56

    if-gt p1, p2, :cond_56

    .line 629
    new-array v1, v1, [I

    .line 630
    .local v1, "digits":[I
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 631
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v2

    aput v2, v1, v0

    .line 632
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v2

    aput v2, v1, v0

    .line 633
    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMicro()I

    move-result v2

    aput v2, v1, v0

    .line 635
    move v0, p2

    .line 636
    .local v0, "numDigits":I
    :goto_2a
    if-le v0, p1, :cond_36

    .line 637
    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    if-eqz v2, :cond_33

    .line 638
    goto :goto_36

    .line 640
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 643
    :cond_36
    :goto_36
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 644
    .local v2, "verStr":Ljava/lang/StringBuilder;
    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 645
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_42
    if-ge v3, v0, :cond_51

    .line 646
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 645
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 650
    .end local v3    # "i":I
    :cond_51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 626
    .end local v0    # "numDigits":I
    .end local v1    # "digits":[I
    .end local v2    # "verStr":Ljava/lang/StringBuilder;
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid min/maxDigits range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 437
    iget v0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 371
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMicro()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
