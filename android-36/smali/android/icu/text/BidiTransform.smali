.class public Landroid/icu/text/BidiTransform;
.super Ljava/lang/Object;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BidiTransform$Order;,
        Landroid/icu/text/BidiTransform$ReorderingScheme;,
        Landroid/icu/text/BidiTransform$Mirroring;
    }
.end annotation


# instance fields
.field private greylist-max-o bidi:Landroid/icu/text/Bidi;

.field private greylist-max-o reorderingOptions:I

.field private greylist-max-o shapingOptions:I

.field private greylist-max-o text:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmirror(Landroid/icu/text/BidiTransform;)V
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/BidiTransform;->mirror()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreorder(Landroid/icu/text/BidiTransform;)V
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/BidiTransform;->reorder()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresolve(Landroid/icu/text/BidiTransform;BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/text/BidiTransform;->resolve(BI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreverse(Landroid/icu/text/BidiTransform;)V
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/BidiTransform;->reverse()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshapeArabic(Landroid/icu/text/BidiTransform;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/text/BidiTransform;->shapeArabic(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smIsLTR(B)Z
    .registers 1

    invoke-static {p0}, Landroid/icu/text/BidiTransform;->IsLTR(B)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smIsLogical(Landroid/icu/text/BidiTransform$Order;)Z
    .registers 1

    invoke-static {p0}, Landroid/icu/text/BidiTransform;->IsLogical(Landroid/icu/text/BidiTransform$Order;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smIsRTL(B)Z
    .registers 1

    invoke-static {p0}, Landroid/icu/text/BidiTransform;->IsRTL(B)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smIsVisual(Landroid/icu/text/BidiTransform$Order;)Z
    .registers 1

    invoke-static {p0}, Landroid/icu/text/BidiTransform;->IsVisual(Landroid/icu/text/BidiTransform$Order;)Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private static greylist-max-o IsLTR(B)Z
    .registers 2
    .param p0, "level"    # B

    .line 618
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static greylist-max-o IsLogical(Landroid/icu/text/BidiTransform$Order;)Z
    .registers 2
    .param p0, "order"    # Landroid/icu/text/BidiTransform$Order;

    .line 636
    sget-object v0, Landroid/icu/text/BidiTransform$Order;->LOGICAL:Landroid/icu/text/BidiTransform$Order;

    invoke-virtual {v0, p0}, Landroid/icu/text/BidiTransform$Order;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o IsRTL(B)Z
    .registers 3
    .param p0, "level"    # B

    .line 627
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private static greylist-max-o IsVisual(Landroid/icu/text/BidiTransform$Order;)Z
    .registers 2
    .param p0, "order"    # Landroid/icu/text/BidiTransform$Order;

    .line 645
    sget-object v0, Landroid/icu/text/BidiTransform$Order;->VISUAL:Landroid/icu/text/BidiTransform$Order;

    invoke-virtual {v0, p0}, Landroid/icu/text/BidiTransform$Order;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o findMatchingScheme(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Landroid/icu/text/BidiTransform$ReorderingScheme;
    .registers 10
    .param p1, "inLevel"    # B
    .param p2, "inOrder"    # Landroid/icu/text/BidiTransform$Order;
    .param p3, "outLevel"    # B
    .param p4, "outOrder"    # Landroid/icu/text/BidiTransform$Order;

    .line 272
    invoke-static {}, Landroid/icu/text/BidiTransform$ReorderingScheme;->values()[Landroid/icu/text/BidiTransform$ReorderingScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 273
    .local v3, "scheme":Landroid/icu/text/BidiTransform$ReorderingScheme;
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/icu/text/BidiTransform$ReorderingScheme;->matches(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 274
    return-object v3

    .line 272
    .end local v3    # "scheme":Landroid/icu/text/BidiTransform$ReorderingScheme;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 277
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o mirror()V
    .registers 7

    .line 313
    iget v0, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 314
    return-void

    .line 316
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getLevels()[B

    move-result-object v1

    .line 318
    .local v1, "levels":[B
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_16
    if-ge v2, v3, :cond_2f

    .line 319
    invoke-static {v0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/StringBuffer;I)I

    move-result v4

    .line 320
    .local v4, "ch":I
    aget-byte v5, v1, v2

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_29

    .line 321
    invoke-static {v4}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v5

    invoke-static {v0, v2, v5}, Landroid/icu/text/UTF16;->setCharAt(Ljava/lang/StringBuffer;II)V

    .line 323
    :cond_29
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 324
    .end local v4    # "ch":I
    goto :goto_16

    .line 325
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    .line 326
    iget v2, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    .line 327
    return-void
.end method

.method private greylist-max-o reorder()V
    .registers 3

    .line 297
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    iget v1, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->writeReordered(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    .line 299
    return-void
.end method

.method private greylist-max-o resolve(BI)V
    .registers 6
    .param p1, "level"    # B
    .param p2, "options"    # I

    .line 287
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    and-int/lit8 v1, p2, 0x5

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->setInverse(Z)V

    .line 288
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p2}, Landroid/icu/text/Bidi;->setReorderingMode(I)V

    .line 289
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    iget-object v1, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/icu/text/Bidi;->setPara(Ljava/lang/String;B[B)V

    .line 290
    return-void
.end method

.method private greylist-max-o resolveBaseDirection([B)V
    .registers 7
    .param p1, "levels"    # [B

    .line 250
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    invoke-static {v1}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 251
    iget-object v1, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/icu/text/Bidi;->getBaseDirection(Ljava/lang/CharSequence;)B

    move-result v1

    .line 252
    .local v1, "level":B
    const/4 v3, 0x3

    if-eq v1, v3, :cond_15

    move v3, v1

    goto :goto_1e

    .line 253
    :cond_15
    aget-byte v3, p1, v0

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_1d

    move v3, v2

    goto :goto_1e

    :cond_1d
    move v3, v0

    :goto_1e
    aput-byte v3, p1, v0

    .line 254
    .end local v1    # "level":B
    goto :goto_27

    .line 255
    :cond_21
    aget-byte v1, p1, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 257
    :goto_27
    aget-byte v1, p1, v2

    invoke-static {v1}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 258
    aget-byte v0, p1, v0

    aput-byte v0, p1, v2

    goto :goto_3a

    .line 260
    :cond_34
    aget-byte v0, p1, v2

    and-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 262
    :goto_3a
    return-void
.end method

.method private greylist-max-o reverse()V
    .registers 3

    .line 305
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/Bidi;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    .line 306
    return-void
.end method

.method private greylist-max-o shapeArabic(I)V
    .registers 4
    .param p1, "options"    # I

    .line 358
    if-eqz p1, :cond_11

    .line 359
    new-instance v0, Landroid/icu/text/ArabicShaping;

    invoke-direct {v0, p1}, Landroid/icu/text/ArabicShaping;-><init>(I)V

    .line 361
    .local v0, "shaper":Landroid/icu/text/ArabicShaping;
    :try_start_7
    iget-object v1, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/ArabicShaping;->shape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;
    :try_end_f
    .catch Landroid/icu/text/ArabicShapingException; {:try_start_7 .. :try_end_f} :catch_10

    .line 363
    goto :goto_11

    .line 362
    :catch_10
    move-exception v1

    .line 365
    .end local v0    # "shaper":Landroid/icu/text/ArabicShaping;
    :cond_11
    :goto_11
    return-void
.end method

.method private greylist-max-o shapeArabic(II)V
    .registers 4
    .param p1, "digitsDir"    # I
    .param p2, "lettersDir"    # I

    .line 339
    if-ne p1, p2, :cond_9

    .line 340
    iget v0, p0, Landroid/icu/text/BidiTransform;->shapingOptions:I

    or-int/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/icu/text/BidiTransform;->shapeArabic(I)V

    goto :goto_19

    .line 344
    :cond_9
    iget v0, p0, Landroid/icu/text/BidiTransform;->shapingOptions:I

    and-int/lit8 v0, v0, -0x19

    or-int/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/icu/text/BidiTransform;->shapeArabic(I)V

    .line 348
    iget v0, p0, Landroid/icu/text/BidiTransform;->shapingOptions:I

    and-int/lit16 v0, v0, -0xe1

    or-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroid/icu/text/BidiTransform;->shapeArabic(I)V

    .line 350
    :goto_19
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ljava/lang/CharSequence;BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;Landroid/icu/text/BidiTransform$Mirroring;I)Ljava/lang/String;
    .registers 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "inParaLevel"    # B
    .param p3, "inOrder"    # Landroid/icu/text/BidiTransform$Order;
    .param p4, "outParaLevel"    # B
    .param p5, "outOrder"    # Landroid/icu/text/BidiTransform$Order;
    .param p6, "doMirroring"    # Landroid/icu/text/BidiTransform$Mirroring;
    .param p7, "shapingOptions"    # I

    .line 216
    if-eqz p1, :cond_41

    if-eqz p3, :cond_41

    if-eqz p5, :cond_41

    if-eqz p6, :cond_41

    .line 219
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    .line 221
    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    const/4 v3, 0x1

    aput-byte p4, v1, v3

    .line 222
    .local v1, "levels":[B
    invoke-direct {p0, v1}, Landroid/icu/text/BidiTransform;->resolveBaseDirection([B)V

    .line 224
    aget-byte v4, v1, v2

    aget-byte v3, v1, v3

    invoke-direct {p0, v4, p3, v3, p5}, Landroid/icu/text/BidiTransform;->findMatchingScheme(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Landroid/icu/text/BidiTransform$ReorderingScheme;

    move-result-object v3

    .line 226
    .local v3, "currentScheme":Landroid/icu/text/BidiTransform$ReorderingScheme;
    if-eqz v3, :cond_3e

    .line 227
    new-instance v4, Landroid/icu/text/Bidi;

    invoke-direct {v4}, Landroid/icu/text/Bidi;-><init>()V

    iput-object v4, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    .line 228
    sget-object v4, Landroid/icu/text/BidiTransform$Mirroring;->ON:Landroid/icu/text/BidiTransform$Mirroring;

    invoke-virtual {v4, p6}, Landroid/icu/text/BidiTransform$Mirroring;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 229
    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    iput v0, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    .line 233
    and-int/lit8 v0, p7, -0x5

    iput v0, p0, Landroid/icu/text/BidiTransform;->shapingOptions:I

    .line 234
    invoke-virtual {v3, p0}, Landroid/icu/text/BidiTransform$ReorderingScheme;->doTransform(Landroid/icu/text/BidiTransform;)V

    .line 236
    :cond_3e
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    return-object v0

    .line 217
    .end local v1    # "levels":[B
    .end local v3    # "currentScheme":Landroid/icu/text/BidiTransform$ReorderingScheme;
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
