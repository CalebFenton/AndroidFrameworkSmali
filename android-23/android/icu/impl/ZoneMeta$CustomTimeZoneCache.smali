.class Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;
.super Landroid/icu/impl/SoftCache;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ZoneMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomTimeZoneCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/icu/util/SimpleTimeZone;",
        "[I>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    #@b
    .line 586
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 586
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/Integer;[I)Landroid/icu/util/SimpleTimeZone;
    .locals 11
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "data"    # [I

    #@0
    .prologue
    const/16 v7, 0x3b

    #@2
    const/4 v10, 0x3

    #@3
    const/4 v9, 0x2

    #@4
    const/4 v4, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 593
    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    #@8
    if-nez v3, :cond_1

    #@a
    array-length v3, p2

    #@b
    const/4 v6, 0x4

    #@c
    if-ne v3, v6, :cond_0

    #@e
    move v3, v4

    #@f
    :goto_0
    if-nez v3, :cond_1

    #@11
    new-instance v3, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v3

    #@17
    :cond_0
    move v3, v5

    #@18
    goto :goto_0

    #@19
    .line 594
    :cond_1
    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    #@1b
    if-nez v3, :cond_4

    #@1d
    aget v3, p2, v5

    #@1f
    if-eq v3, v4, :cond_2

    #@21
    aget v3, p2, v5

    #@23
    const/4 v6, -0x1

    #@24
    if-ne v3, v6, :cond_3

    #@26
    :cond_2
    move v3, v4

    #@27
    :goto_1
    if-nez v3, :cond_4

    #@29
    new-instance v3, Ljava/lang/AssertionError;

    #@2b
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@2e
    throw v3

    #@2f
    :cond_3
    move v3, v5

    #@30
    goto :goto_1

    #@31
    .line 595
    :cond_4
    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    #@33
    if-nez v3, :cond_6

    #@35
    aget v3, p2, v4

    #@37
    if-ltz v3, :cond_5

    #@39
    aget v3, p2, v4

    #@3b
    const/16 v6, 0x17

    #@3d
    if-gt v3, v6, :cond_5

    #@3f
    move v3, v4

    #@40
    :goto_2
    if-nez v3, :cond_6

    #@42
    new-instance v3, Ljava/lang/AssertionError;

    #@44
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@47
    throw v3

    #@48
    :cond_5
    move v3, v5

    #@49
    goto :goto_2

    #@4a
    .line 596
    :cond_6
    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    #@4c
    if-nez v3, :cond_8

    #@4e
    aget v3, p2, v9

    #@50
    if-ltz v3, :cond_7

    #@52
    aget v3, p2, v9

    #@54
    if-gt v3, v7, :cond_7

    #@56
    move v3, v4

    #@57
    :goto_3
    if-nez v3, :cond_8

    #@59
    new-instance v3, Ljava/lang/AssertionError;

    #@5b
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@5e
    throw v3

    #@5f
    :cond_7
    move v3, v5

    #@60
    goto :goto_3

    #@61
    .line 597
    :cond_8
    sget-boolean v3, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->-assertionsDisabled:Z

    #@63
    if-nez v3, :cond_a

    #@65
    aget v3, p2, v10

    #@67
    if-ltz v3, :cond_9

    #@69
    aget v3, p2, v10

    #@6b
    if-gt v3, v7, :cond_9

    #@6d
    move v3, v4

    #@6e
    :goto_4
    if-nez v3, :cond_a

    #@70
    new-instance v3, Ljava/lang/AssertionError;

    #@72
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@75
    throw v3

    #@76
    :cond_9
    move v3, v5

    #@77
    goto :goto_4

    #@78
    .line 598
    :cond_a
    aget v6, p2, v4

    #@7a
    aget v7, p2, v9

    #@7c
    aget v8, p2, v10

    #@7e
    aget v3, p2, v5

    #@80
    if-gez v3, :cond_b

    #@82
    move v3, v4

    #@83
    :goto_5
    invoke-static {v6, v7, v8, v3}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    .line 599
    .local v0, "id":Ljava/lang/String;
    aget v3, p2, v5

    #@89
    aget v4, p2, v4

    #@8b
    mul-int/lit8 v4, v4, 0x3c

    #@8d
    aget v5, p2, v9

    #@8f
    add-int/2addr v4, v5

    #@90
    mul-int/lit8 v4, v4, 0x3c

    #@92
    aget v5, p2, v10

    #@94
    add-int/2addr v4, v5

    #@95
    mul-int/2addr v3, v4

    #@96
    mul-int/lit16 v1, v3, 0x3e8

    #@98
    .line 600
    .local v1, "offset":I
    new-instance v2, Landroid/icu/util/SimpleTimeZone;

    #@9a
    invoke-direct {v2, v1, v0}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@9d
    .line 601
    .local v2, "tz":Landroid/icu/util/SimpleTimeZone;
    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->freeze()Landroid/icu/util/TimeZone;

    #@a0
    .line 602
    return-object v2

    #@a1
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "offset":I
    .end local v2    # "tz":Landroid/icu/util/SimpleTimeZone;
    :cond_b
    move v3, v5

    #@a2
    .line 598
    goto :goto_5
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 592
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, [I

    #@4
    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->createInstance(Ljava/lang/Integer;[I)Landroid/icu/util/SimpleTimeZone;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
