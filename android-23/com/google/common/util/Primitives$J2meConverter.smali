.class Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;
.super Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;
.source "Primitives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "J2meConverter"
.end annotation


# instance fields
.field private SMALL_INTS:[Ljava/lang/Integer;

.field private SMALL_LONGS:[Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x4

    #@1
    const/4 v9, 0x3

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 40
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;-><init>()V

    #@8
    const/16 v0, 0x10

    #@a
    .line 41
    new-array v0, v0, [Ljava/lang/Long;

    #@c
    new-instance v1, Ljava/lang/Long;

    #@e
    const-wide/16 v2, 0x0

    #@10
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@13
    aput-object v1, v0, v6

    #@15
    new-instance v1, Ljava/lang/Long;

    #@17
    const-wide/16 v2, 0x1

    #@19
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@1c
    aput-object v1, v0, v7

    #@1e
    new-instance v1, Ljava/lang/Long;

    #@20
    const-wide/16 v2, 0x2

    #@22
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@25
    aput-object v1, v0, v8

    #@27
    new-instance v1, Ljava/lang/Long;

    #@29
    const-wide/16 v2, 0x3

    #@2b
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@2e
    aput-object v1, v0, v9

    #@30
    new-instance v1, Ljava/lang/Long;

    #@32
    const-wide/16 v2, 0x4

    #@34
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@37
    aput-object v1, v0, v10

    #@39
    const/4 v1, 0x5

    #@3a
    new-instance v2, Ljava/lang/Long;

    #@3c
    const-wide/16 v4, 0x5

    #@3e
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@41
    aput-object v2, v0, v1

    #@43
    const/4 v1, 0x6

    #@44
    new-instance v2, Ljava/lang/Long;

    #@46
    const-wide/16 v4, 0x6

    #@48
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@4b
    aput-object v2, v0, v1

    #@4d
    const/4 v1, 0x7

    #@4e
    new-instance v2, Ljava/lang/Long;

    #@50
    const-wide/16 v4, 0x7

    #@52
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@55
    aput-object v2, v0, v1

    #@57
    const/16 v1, 0x8

    #@59
    new-instance v2, Ljava/lang/Long;

    #@5b
    const-wide/16 v4, 0x8

    #@5d
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@60
    aput-object v2, v0, v1

    #@62
    const/16 v1, 0x9

    #@64
    new-instance v2, Ljava/lang/Long;

    #@66
    const-wide/16 v4, 0x9

    #@68
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@6b
    aput-object v2, v0, v1

    #@6d
    const/16 v1, 0xa

    #@6f
    new-instance v2, Ljava/lang/Long;

    #@71
    const-wide/16 v4, 0xa

    #@73
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@76
    aput-object v2, v0, v1

    #@78
    const/16 v1, 0xb

    #@7a
    new-instance v2, Ljava/lang/Long;

    #@7c
    const-wide/16 v4, 0xb

    #@7e
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@81
    aput-object v2, v0, v1

    #@83
    const/16 v1, 0xc

    #@85
    new-instance v2, Ljava/lang/Long;

    #@87
    const-wide/16 v4, 0xc

    #@89
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@8c
    aput-object v2, v0, v1

    #@8e
    const/16 v1, 0xd

    #@90
    new-instance v2, Ljava/lang/Long;

    #@92
    const-wide/16 v4, 0xd

    #@94
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@97
    aput-object v2, v0, v1

    #@99
    const/16 v1, 0xe

    #@9b
    new-instance v2, Ljava/lang/Long;

    #@9d
    const-wide/16 v4, 0xe

    #@9f
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@a2
    aput-object v2, v0, v1

    #@a4
    const/16 v1, 0xf

    #@a6
    new-instance v2, Ljava/lang/Long;

    #@a8
    const-wide/16 v4, 0xf

    #@aa
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@ad
    aput-object v2, v0, v1

    #@af
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_LONGS:[Ljava/lang/Long;

    #@b1
    const/16 v0, 0x10

    #@b3
    .line 46
    new-array v0, v0, [Ljava/lang/Integer;

    #@b5
    new-instance v1, Ljava/lang/Integer;

    #@b7
    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    #@ba
    aput-object v1, v0, v6

    #@bc
    new-instance v1, Ljava/lang/Integer;

    #@be
    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    #@c1
    aput-object v1, v0, v7

    #@c3
    new-instance v1, Ljava/lang/Integer;

    #@c5
    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    #@c8
    aput-object v1, v0, v8

    #@ca
    new-instance v1, Ljava/lang/Integer;

    #@cc
    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    #@cf
    aput-object v1, v0, v9

    #@d1
    new-instance v1, Ljava/lang/Integer;

    #@d3
    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    #@d6
    aput-object v1, v0, v10

    #@d8
    const/4 v1, 0x5

    #@d9
    new-instance v2, Ljava/lang/Integer;

    #@db
    const/4 v3, 0x5

    #@dc
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@df
    aput-object v2, v0, v1

    #@e1
    const/4 v1, 0x6

    #@e2
    new-instance v2, Ljava/lang/Integer;

    #@e4
    const/4 v3, 0x6

    #@e5
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@e8
    aput-object v2, v0, v1

    #@ea
    const/4 v1, 0x7

    #@eb
    new-instance v2, Ljava/lang/Integer;

    #@ed
    const/4 v3, 0x7

    #@ee
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@f1
    aput-object v2, v0, v1

    #@f3
    const/16 v1, 0x8

    #@f5
    new-instance v2, Ljava/lang/Integer;

    #@f7
    const/16 v3, 0x8

    #@f9
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@fc
    aput-object v2, v0, v1

    #@fe
    const/16 v1, 0x9

    #@100
    new-instance v2, Ljava/lang/Integer;

    #@102
    const/16 v3, 0x9

    #@104
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@107
    aput-object v2, v0, v1

    #@109
    const/16 v1, 0xa

    #@10b
    new-instance v2, Ljava/lang/Integer;

    #@10d
    const/16 v3, 0xa

    #@10f
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@112
    aput-object v2, v0, v1

    #@114
    const/16 v1, 0xb

    #@116
    new-instance v2, Ljava/lang/Integer;

    #@118
    const/16 v3, 0xb

    #@11a
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@11d
    aput-object v2, v0, v1

    #@11f
    const/16 v1, 0xc

    #@121
    new-instance v2, Ljava/lang/Integer;

    #@123
    const/16 v3, 0xc

    #@125
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@128
    aput-object v2, v0, v1

    #@12a
    const/16 v1, 0xd

    #@12c
    new-instance v2, Ljava/lang/Integer;

    #@12e
    const/16 v3, 0xd

    #@130
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@133
    aput-object v2, v0, v1

    #@135
    const/16 v1, 0xe

    #@137
    new-instance v2, Ljava/lang/Integer;

    #@139
    const/16 v3, 0xe

    #@13b
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@13e
    aput-object v2, v0, v1

    #@140
    const/16 v1, 0xf

    #@142
    new-instance v2, Ljava/lang/Integer;

    #@144
    const/16 v3, 0xf

    #@146
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@149
    aput-object v2, v0, v1

    #@14b
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_INTS:[Ljava/lang/Integer;

    #@14d
    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$1;)V
    .locals 0
    .param p1, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$1;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 58
    if-gez p1, :cond_1

    #@2
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_INTS:[Ljava/lang/Integer;

    #@a
    array-length v0, v0

    #@b
    if-ge p1, v0, :cond_0

    #@d
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_INTS:[Ljava/lang/Integer;

    #@f
    aget-object v0, v0, p1

    #@11
    goto :goto_0
.end method

.method public toLong(J)Ljava/lang/Long;
    .locals 5
    .param p1, "l"    # J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-wide/16 v2, 0x0

    #@4
    .line 53
    cmp-long v2, p1, v2

    #@6
    if-gez v2, :cond_0

    #@8
    move v2, v0

    #@9
    :goto_0
    if-nez v2, :cond_2

    #@b
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_LONGS:[Ljava/lang/Long;

    #@d
    array-length v2, v2

    #@e
    int-to-long v2, v2

    #@f
    cmp-long v2, p1, v2

    #@11
    if-ltz v2, :cond_1

    #@13
    :goto_1
    if-nez v0, :cond_2

    #@15
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_LONGS:[Ljava/lang/Long;

    #@17
    long-to-int v1, p1

    #@18
    aget-object v0, v0, v1

    #@1a
    :goto_2
    return-object v0

    #@1b
    :cond_0
    move v2, v1

    #@1c
    goto :goto_0

    #@1d
    :cond_1
    move v0, v1

    #@1e
    goto :goto_1

    #@1f
    :cond_2
    new-instance v0, Ljava/lang/Long;

    #@21
    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    #@24
    goto :goto_2
.end method
