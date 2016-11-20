.class public final enum Ljava/util/stream/StreamOpFlag;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamOpFlag$MaskBuilder;,
        Ljava/util/stream/StreamOpFlag$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/stream/StreamOpFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/stream/StreamOpFlag;

.field private static final CLEAR_BITS:I = 0x2

.field public static final enum DISTINCT:Ljava/util/stream/StreamOpFlag;

.field private static final FLAG_MASK:I

.field private static final FLAG_MASK_IS:I

.field private static final FLAG_MASK_NOT:I

.field public static final INITIAL_OPS_VALUE:I

.field public static final IS_DISTINCT:I

.field public static final IS_ORDERED:I

.field public static final IS_SHORT_CIRCUIT:I

.field public static final IS_SIZED:I

.field public static final IS_SORTED:I

.field public static final NOT_DISTINCT:I

.field public static final NOT_ORDERED:I

.field public static final NOT_SIZED:I

.field public static final NOT_SORTED:I

.field public static final OP_MASK:I

.field public static final enum ORDERED:Ljava/util/stream/StreamOpFlag;

.field private static final PRESERVE_BITS:I = 0x3

.field private static final SET_BITS:I = 0x1

.field public static final enum SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

.field public static final enum SIZED:Ljava/util/stream/StreamOpFlag;

.field public static final enum SORTED:Ljava/util/stream/StreamOpFlag;

.field public static final SPLITERATOR_CHARACTERISTICS_MASK:I

.field public static final STREAM_MASK:I

.field public static final TERMINAL_OP_MASK:I

.field public static final UPSTREAM_TERMINAL_OP_MASK:I


# instance fields
.field private final bitPosition:I

.field private final clear:I

.field private final maskTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final preserve:I

.field private final set:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 207
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    #@7
    const-string/jumbo v1, "DISTINCT"

    #@a
    .line 249
    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    #@c
    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@f
    move-result-object v2

    #@10
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    #@12
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    #@18
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 207
    invoke-direct {v0, v1, v4, v4, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    #@1f
    .line 248
    sput-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    #@21
    .line 251
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    #@23
    const-string/jumbo v1, "SORTED"

    #@26
    .line 270
    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    #@28
    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@2b
    move-result-object v2

    #@2c
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    #@2e
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@31
    move-result-object v2

    #@32
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    #@34
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@37
    move-result-object v2

    #@38
    .line 251
    invoke-direct {v0, v1, v5, v5, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    #@3b
    .line 269
    sput-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    #@3d
    .line 272
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    #@3f
    const-string/jumbo v1, "ORDERED"

    #@42
    .line 283
    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    #@44
    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@47
    move-result-object v2

    #@48
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    #@4a
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@4d
    move-result-object v2

    #@4e
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    #@50
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@53
    move-result-object v2

    #@54
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    #@56
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 284
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    #@5c
    .line 283
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 272
    invoke-direct {v0, v1, v6, v6, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    #@63
    .line 282
    sput-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    #@65
    .line 286
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    #@67
    const-string/jumbo v1, "SIZED"

    #@6a
    .line 298
    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    #@6c
    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@6f
    move-result-object v2

    #@70
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    #@72
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@75
    move-result-object v2

    #@76
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    #@78
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@7b
    move-result-object v2

    #@7c
    .line 286
    invoke-direct {v0, v1, v7, v7, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    #@7f
    .line 297
    sput-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    #@81
    .line 300
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    #@83
    const-string/jumbo v1, "SHORT_CIRCUIT"

    #@86
    .line 329
    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    #@88
    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@8b
    move-result-object v2

    #@8c
    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    #@8e
    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@91
    move-result-object v2

    #@92
    .line 328
    const/16 v3, 0xc

    #@94
    .line 300
    invoke-direct {v0, v1, v8, v3, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    #@97
    .line 328
    sput-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    #@99
    .line 205
    const/4 v0, 0x5

    #@9a
    new-array v0, v0, [Ljava/util/stream/StreamOpFlag;

    #@9c
    sget-object v1, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    #@9e
    aput-object v1, v0, v4

    #@a0
    sget-object v1, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    #@a2
    aput-object v1, v0, v5

    #@a4
    sget-object v1, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    #@a6
    aput-object v1, v0, v6

    #@a8
    sget-object v1, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    #@aa
    aput-object v1, v0, v7

    #@ac
    sget-object v1, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    #@ae
    aput-object v1, v0, v8

    #@b0
    sput-object v0, Ljava/util/stream/StreamOpFlag;->$VALUES:[Ljava/util/stream/StreamOpFlag;

    #@b2
    .line 529
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    #@b4
    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    #@b7
    move-result v0

    #@b8
    sput v0, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    #@ba
    .line 534
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    #@bc
    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    #@bf
    move-result v0

    #@c0
    sput v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    #@c2
    .line 539
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    #@c4
    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    #@c7
    move-result v0

    #@c8
    sput v0, Ljava/util/stream/StreamOpFlag;->OP_MASK:I

    #@ca
    .line 544
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    #@cc
    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    #@cf
    move-result v0

    #@d0
    sput v0, Ljava/util/stream/StreamOpFlag;->TERMINAL_OP_MASK:I

    #@d2
    .line 549
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    #@d4
    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    #@d7
    move-result v0

    #@d8
    sput v0, Ljava/util/stream/StreamOpFlag;->UPSTREAM_TERMINAL_OP_MASK:I

    #@da
    .line 562
    invoke-static {}, Ljava/util/stream/StreamOpFlag;->createFlagMask()I

    #@dd
    move-result v0

    #@de
    sput v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK:I

    #@e0
    .line 575
    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    #@e2
    sput v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    #@e4
    .line 580
    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    #@e6
    shl-int/lit8 v0, v0, 0x1

    #@e8
    sput v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    #@ea
    .line 586
    sget v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    #@ec
    sget v1, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    #@ee
    or-int/2addr v0, v1

    #@ef
    sput v0, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    #@f1
    .line 591
    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    #@f3
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    #@f5
    sput v0, Ljava/util/stream/StreamOpFlag;->IS_DISTINCT:I

    #@f7
    .line 596
    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    #@f9
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    #@fb
    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    #@fd
    .line 601
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    #@ff
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    #@101
    sput v0, Ljava/util/stream/StreamOpFlag;->IS_SORTED:I

    #@103
    .line 606
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    #@105
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    #@107
    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@109
    .line 611
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    #@10b
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    #@10d
    sput v0, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    #@10f
    .line 616
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    #@111
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    #@113
    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    #@115
    .line 621
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    #@117
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    #@119
    sput v0, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    #@11b
    .line 626
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    #@11d
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    #@11f
    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    #@121
    .line 631
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    #@123
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    #@125
    sput v0, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    #@127
    .line 205
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V
    .locals 1
    .param p3, "position"    # I
    .param p4, "maskBuilder"    # Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@0
    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 447
    invoke-virtual {p4}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->build()Ljava/util/Map;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    #@9
    .line 449
    mul-int/lit8 p3, p3, 0x2

    #@b
    .line 450
    iput p3, p0, Ljava/util/stream/StreamOpFlag;->bitPosition:I

    #@d
    .line 451
    const/4 v0, 0x1

    #@e
    shl-int/2addr v0, p3

    #@f
    iput v0, p0, Ljava/util/stream/StreamOpFlag;->set:I

    #@11
    .line 452
    const/4 v0, 0x2

    #@12
    shl-int/2addr v0, p3

    #@13
    iput v0, p0, Ljava/util/stream/StreamOpFlag;->clear:I

    #@15
    .line 453
    const/4 v0, 0x3

    #@16
    shl-int/2addr v0, p3

    #@17
    iput v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    #@19
    .line 446
    return-void
.end method

.method public static combineOpFlags(II)I
    .locals 1
    .param p0, "newStreamOrOpFlags"    # I
    .param p1, "prevCombOpFlags"    # I

    #@0
    .prologue
    .line 692
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->getMask(I)I

    #@3
    move-result v0

    #@4
    and-int/2addr v0, p1

    #@5
    or-int/2addr v0, p0

    #@6
    return v0
.end method

.method private static createFlagMask()I
    .locals 6

    #@0
    .prologue
    .line 565
    const/4 v1, 0x0

    #@1
    .line 566
    .local v1, "mask":I
    invoke-static {}, Ljava/util/stream/StreamOpFlag;->values()[Ljava/util/stream/StreamOpFlag;

    #@4
    move-result-object v3

    #@5
    const/4 v2, 0x0

    #@6
    array-length v4, v3

    #@7
    :goto_0
    if-ge v2, v4, :cond_0

    #@9
    aget-object v0, v3, v2

    #@b
    .line 567
    .local v0, "flag":Ljava/util/stream/StreamOpFlag;
    iget v5, v0, Ljava/util/stream/StreamOpFlag;->preserve:I

    #@d
    or-int/2addr v1, v5

    #@e
    .line 566
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 569
    .end local v0    # "flag":Ljava/util/stream/StreamOpFlag;
    :cond_0
    return v1
.end method

.method private static createMask(Ljava/util/stream/StreamOpFlag$Type;)I
    .locals 7
    .param p0, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    #@0
    .prologue
    .line 552
    const/4 v1, 0x0

    #@1
    .line 553
    .local v1, "mask":I
    invoke-static {}, Ljava/util/stream/StreamOpFlag;->values()[Ljava/util/stream/StreamOpFlag;

    #@4
    move-result-object v4

    #@5
    const/4 v2, 0x0

    #@6
    array-length v5, v4

    #@7
    move v3, v2

    #@8
    :goto_0
    if-ge v3, v5, :cond_0

    #@a
    aget-object v0, v4, v3

    #@c
    .line 554
    .local v0, "flag":Ljava/util/stream/StreamOpFlag;
    iget-object v2, v0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    #@e
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/Integer;

    #@14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v2

    #@18
    iget v6, v0, Ljava/util/stream/StreamOpFlag;->bitPosition:I

    #@1a
    shl-int/2addr v2, v6

    #@1b
    or-int/2addr v1, v2

    #@1c
    .line 553
    add-int/lit8 v2, v3, 0x1

    #@1e
    move v3, v2

    #@1f
    goto :goto_0

    #@20
    .line 556
    .end local v0    # "flag":Ljava/util/stream/StreamOpFlag;
    :cond_0
    return v1
.end method

.method public static fromCharacteristics(I)I
    .locals 1
    .param p0, "characteristics"    # I

    #@0
    .prologue
    .line 752
    sget v0, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    #@2
    and-int/2addr v0, p0

    #@3
    return v0
.end method

.method public static fromCharacteristics(Ljava/util/Spliterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 734
    .local p0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    #@3
    move-result v0

    #@4
    .line 735
    .local v0, "characteristics":I
    and-int/lit8 v1, v0, 0x4

    #@6
    if-eqz v1, :cond_0

    #@8
    invoke-interface {p0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 738
    sget v1, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    #@10
    and-int/2addr v1, v0

    #@11
    and-int/lit8 v1, v1, -0x5

    #@13
    return v1

    #@14
    .line 741
    :cond_0
    sget v1, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    #@16
    and-int/2addr v1, v0

    #@17
    return v1
.end method

.method private static getMask(I)I
    .locals 2
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 634
    if-nez p0, :cond_0

    #@2
    .line 635
    sget v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK:I

    #@4
    .line 634
    :goto_0
    return v0

    #@5
    .line 636
    :cond_0
    sget v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    #@7
    and-int/2addr v0, p0

    #@8
    shl-int/lit8 v0, v0, 0x1

    #@a
    or-int/2addr v0, p0

    #@b
    sget v1, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    #@d
    and-int/2addr v1, p0

    #@e
    shr-int/lit8 v1, v1, 0x1

    #@10
    or-int/2addr v0, v1

    #@11
    not-int v0, v0

    #@12
    goto :goto_0
.end method

.method private static set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .locals 3
    .param p0, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    #@0
    .prologue
    .line 385
    new-instance v0, Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@2
    new-instance v1, Ljava/util/EnumMap;

    #@4
    const-class v2, Ljava/util/stream/StreamOpFlag$Type;

    #@6
    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@9
    invoke-direct {v0, v1}, Ljava/util/stream/StreamOpFlag$MaskBuilder;-><init>(Ljava/util/Map;)V

    #@c
    invoke-virtual {v0, p0}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static toCharacteristics(I)I
    .locals 1
    .param p0, "streamFlags"    # I

    #@0
    .prologue
    .line 717
    sget v0, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    #@2
    and-int/2addr v0, p0

    #@3
    return v0
.end method

.method public static toStreamFlags(I)I
    .locals 2
    .param p0, "combOpFlags"    # I

    #@0
    .prologue
    .line 707
    not-int v0, p0

    #@1
    shr-int/lit8 v0, v0, 0x1

    #@3
    sget v1, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    #@5
    and-int/2addr v0, v1

    #@6
    and-int/2addr v0, p0

    #@7
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/stream/StreamOpFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 205
    const-class v0, Ljava/util/stream/StreamOpFlag;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/stream/StreamOpFlag;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/stream/StreamOpFlag;
    .locals 1

    #@0
    .prologue
    .line 205
    sget-object v0, Ljava/util/stream/StreamOpFlag;->$VALUES:[Ljava/util/stream/StreamOpFlag;

    #@2
    return-object v0
.end method


# virtual methods
.method public canSet(Ljava/util/stream/StreamOpFlag$Type;)Z
    .locals 2
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 523
    iget-object v0, p0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Integer;

    #@9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v0

    #@d
    and-int/lit8 v0, v0, 0x1

    #@f
    if-lez v0, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    move v0, v1

    #@14
    goto :goto_0
.end method

.method public clear()I
    .locals 1

    #@0
    .prologue
    .line 471
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->clear:I

    #@2
    return v0
.end method

.method public isCleared(I)Z
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 503
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    #@2
    and-int/2addr v0, p1

    #@3
    iget v1, p0, Ljava/util/stream/StreamOpFlag;->clear:I

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isKnown(I)Z
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 492
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    #@2
    and-int/2addr v0, p1

    #@3
    iget v1, p0, Ljava/util/stream/StreamOpFlag;->set:I

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isPreserved(I)Z
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 513
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    #@2
    and-int/2addr v0, p1

    #@3
    iget v1, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isStreamFlag()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 480
    iget-object v0, p0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    #@3
    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    #@5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Integer;

    #@b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v0

    #@f
    if-lez v0, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    move v0, v1

    #@14
    goto :goto_0
.end method

.method public set()I
    .locals 1

    #@0
    .prologue
    .line 462
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->set:I

    #@2
    return v0
.end method
