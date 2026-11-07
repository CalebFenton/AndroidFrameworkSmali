.class public final Landroid/icu/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Normalizer$Mode;,
        Landroid/icu/text/Normalizer$CharsAppendable;,
        Landroid/icu/text/Normalizer$QuickCheckResult;,
        Landroid/icu/text/Normalizer$NFKCModeImpl;,
        Landroid/icu/text/Normalizer$ModeImpl;,
        Landroid/icu/text/Normalizer$CmpEquivLevel;,
        Landroid/icu/text/Normalizer$NONEMode;,
        Landroid/icu/text/Normalizer$NFDMode;,
        Landroid/icu/text/Normalizer$NFKDMode;,
        Landroid/icu/text/Normalizer$NFCMode;,
        Landroid/icu/text/Normalizer$NFKCMode;,
        Landroid/icu/text/Normalizer$FCDMode;,
        Landroid/icu/text/Normalizer$FCD32ModeImpl;,
        Landroid/icu/text/Normalizer$NFKC32ModeImpl;,
        Landroid/icu/text/Normalizer$NFC32ModeImpl;,
        Landroid/icu/text/Normalizer$NFKD32ModeImpl;,
        Landroid/icu/text/Normalizer$NFD32ModeImpl;,
        Landroid/icu/text/Normalizer$Unicode32;,
        Landroid/icu/text/Normalizer$FCDModeImpl;,
        Landroid/icu/text/Normalizer$NFCModeImpl;,
        Landroid/icu/text/Normalizer$NFKDModeImpl;,
        Landroid/icu/text/Normalizer$NFDModeImpl;
    }
.end annotation


# static fields
.field public static final whitelist test-api COMPARE_CODE_POINT_ORDER:I = 0x8000

.field private static final greylist-max-o COMPARE_EQUIV:I = 0x80000

.field public static final whitelist test-api COMPARE_IGNORE_CASE:I = 0x10000

.field public static final greylist-max-o COMPARE_NORM_OPTIONS_SHIFT:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o COMPOSE:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o COMPOSE_COMPAT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o DECOMP:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o DECOMP_COMPAT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o DEFAULT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o DONE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o FCD:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api FOLD_CASE_DEFAULT:I = 0x0

.field public static final whitelist test-api FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field public static final greylist-max-o IGNORE_HANGUL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api INPUT_IS_FCD:I = 0x20000

.field public static final whitelist test-api MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

.field public static final greylist-max-o NFC:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o NFD:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o NFKC:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o NFKD:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api NO:Landroid/icu/text/Normalizer$QuickCheckResult;

.field public static final greylist-max-o NONE:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o NO_OP:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o UNICODE_3_2:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api YES:Landroid/icu/text/Normalizer$QuickCheckResult;


# instance fields
.field private greylist-max-o buffer:Ljava/lang/StringBuilder;

.field private greylist-max-o bufferPos:I

.field private greylist-max-o currentIndex:I

.field private greylist-max-o mode:Landroid/icu/text/Normalizer$Mode;

.field private greylist-max-o nextIndex:I

.field private greylist-max-o norm2:Landroid/icu/text/Normalizer2;

.field private greylist-max-o options:I

.field private greylist-max-o text:Landroid/icu/text/UCharacterIterator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 300
    new-instance v0, Landroid/icu/text/Normalizer$NONEMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NONEMode;-><init>(Landroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NONE:Landroid/icu/text/Normalizer$Mode;

    .line 309
    new-instance v0, Landroid/icu/text/Normalizer$NFDMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NFDMode;-><init>(Landroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    .line 318
    new-instance v0, Landroid/icu/text/Normalizer$NFKDMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NFKDMode;-><init>(Landroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    .line 327
    new-instance v0, Landroid/icu/text/Normalizer$NFCMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NFCMode;-><init>(Landroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    .line 336
    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->DEFAULT:Landroid/icu/text/Normalizer$Mode;

    .line 345
    new-instance v0, Landroid/icu/text/Normalizer$NFKCMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NFKCMode;-><init>(Landroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    .line 354
    new-instance v0, Landroid/icu/text/Normalizer$FCDMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$FCDMode;-><init>(Landroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer;->FCD:Landroid/icu/text/Normalizer$Mode;

    .line 372
    sget-object v0, Landroid/icu/text/Normalizer;->NONE:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->NO_OP:Landroid/icu/text/Normalizer$Mode;

    .line 392
    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->COMPOSE:Landroid/icu/text/Normalizer$Mode;

    .line 412
    sget-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->COMPOSE_COMPAT:Landroid/icu/text/Normalizer$Mode;

    .line 432
    sget-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->DECOMP:Landroid/icu/text/Normalizer$Mode;

    .line 452
    sget-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->DECOMP_COMPAT:Landroid/icu/text/Normalizer$Mode;

    .line 489
    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    .line 494
    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    .line 500
    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer-IA;)V

    sput-object v0, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/Normalizer$Mode;I)V
    .registers 6
    .param p1, "iter"    # Landroid/icu/text/UCharacterIterator;
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    :try_start_3
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UCharacterIterator;

    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 626
    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 627
    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    .line 628
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_1c} :catch_1e

    .line 632
    nop

    .line 633
    return-void

    .line 630
    :catch_1e
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "opt"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 579
    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 580
    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    .line 581
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    .line 583
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/text/CharacterIterator;Landroid/icu/text/Normalizer$Mode;I)V
    .registers 5
    .param p1, "iter"    # Ljava/text/CharacterIterator;
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "opt"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-static {v0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 604
    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 605
    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    .line 606
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    .line 608
    return-void
.end method

.method private greylist-max-o clearBuffer()V
    .registers 3

    .line 1944
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1945
    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    .line 1946
    return-void
.end method

.method static greylist-max-o cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 29
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;
    .param p2, "options"    # I

    .line 2173
    move/from16 v0, p2

    const/4 v1, 0x0

    .local v1, "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    const/4 v2, 0x0

    .line 2196
    .local v2, "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    const/high16 v3, 0x80000

    and-int v4, v0, v3

    if-eqz v4, :cond_11

    .line 2197
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v4

    iget-object v4, v4, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    .local v4, "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    goto :goto_12

    .line 2199
    .end local v4    # "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    :cond_11
    const/4 v4, 0x0

    .line 2201
    .restart local v4    # "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    :goto_12
    const/high16 v5, 0x10000

    and-int v6, v0, v5

    const/4 v7, 0x0

    if-eqz v6, :cond_26

    .line 2202
    sget-object v6, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 2203
    .local v6, "csp":Landroid/icu/impl/UCaseProps;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2204
    .local v8, "fold1":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, "fold2":Ljava/lang/StringBuilder;
    goto :goto_29

    .line 2206
    .end local v6    # "csp":Landroid/icu/impl/UCaseProps;
    .end local v8    # "fold1":Ljava/lang/StringBuilder;
    .end local v9    # "fold2":Ljava/lang/StringBuilder;
    :cond_26
    const/4 v6, 0x0

    .line 2207
    .restart local v6    # "csp":Landroid/icu/impl/UCaseProps;
    move-object v9, v7

    .restart local v9    # "fold2":Ljava/lang/StringBuilder;
    move-object v8, v7

    .line 2211
    .restart local v8    # "fold1":Ljava/lang/StringBuilder;
    :goto_29
    const/4 v10, 0x0

    .line 2212
    .local v10, "s1":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 2213
    .local v11, "limit1":I
    const/4 v12, 0x0

    .line 2214
    .local v12, "s2":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 2216
    .local v13, "limit2":I
    const/4 v14, 0x0

    move v15, v14

    .local v15, "level2":I
    move/from16 v16, v14

    .line 2217
    .local v16, "level1":I
    const/16 v17, -0x1

    move/from16 v18, v17

    .local v18, "c2":I
    move/from16 v19, v17

    move/from16 v20, v18

    move/from16 v21, v19

    move/from16 v18, v15

    move/from16 v19, v16

    move v15, v12

    move/from16 v16, v13

    move v12, v10

    move v13, v11

    move-object v10, v1

    move-object v11, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2226
    .end local p0    # "cs1":Ljava/lang/CharSequence;
    .end local p1    # "cs2":Ljava/lang/CharSequence;
    .local v1, "cs1":Ljava/lang/CharSequence;
    .local v2, "cs2":Ljava/lang/CharSequence;
    .local v10, "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v11, "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v12, "s1":I
    .local v13, "limit1":I
    .local v15, "s2":I
    .local v16, "limit2":I
    .local v18, "level2":I
    .local v19, "level1":I
    .local v20, "c2":I
    .local v21, "c1":I
    :goto_50
    if-gez v21, :cond_89

    .line 2229
    :goto_52
    if-ne v12, v13, :cond_79

    .line 2230
    if-nez v19, :cond_61

    .line 2231
    const/16 v21, -0x1

    .line 2232
    move/from16 v22, v3

    move/from16 v3, v19

    move/from16 v19, v5

    move/from16 v5, v21

    goto :goto_91

    .line 2241
    :cond_61
    :goto_61
    add-int/lit8 v19, v19, -0x1

    .line 2242
    move/from16 v22, v3

    aget-object v3, v10, v19

    iget-object v1, v3, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2243
    if-eqz v1, :cond_76

    .line 2244
    aget-object v3, v10, v19

    iget v12, v3, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2245
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    move/from16 v3, v22

    goto :goto_52

    .line 2243
    :cond_76
    move/from16 v3, v22

    goto :goto_61

    .line 2235
    :cond_79
    move/from16 v22, v3

    add-int/lit8 v3, v12, 0x1

    .end local v12    # "s1":I
    .local v3, "s1":I
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    .line 2236
    move v12, v3

    move/from16 v3, v19

    move/from16 v19, v5

    move/from16 v5, v21

    goto :goto_91

    .line 2226
    .end local v3    # "s1":I
    .restart local v12    # "s1":I
    :cond_89
    move/from16 v22, v3

    move/from16 v3, v19

    move/from16 v19, v5

    move/from16 v5, v21

    .line 2249
    .end local v19    # "level1":I
    .end local v21    # "c1":I
    .local v3, "level1":I
    .local v5, "c1":I
    :goto_91
    if-gez v20, :cond_cc

    move/from16 v7, v16

    .line 2252
    .end local v16    # "limit2":I
    .local v7, "limit2":I
    :goto_95
    if-ne v15, v7, :cond_bc

    .line 2253
    if-nez v18, :cond_a4

    .line 2254
    const/16 v20, -0x1

    .line 2255
    move-object/from16 p0, v10

    move/from16 v23, v14

    move/from16 v14, v18

    move/from16 v10, v20

    goto :goto_d6

    .line 2264
    :cond_a4
    :goto_a4
    add-int/lit8 v18, v18, -0x1

    .line 2265
    move/from16 v23, v14

    aget-object v14, v11, v18

    iget-object v2, v14, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2266
    if-eqz v2, :cond_b9

    .line 2267
    aget-object v14, v11, v18

    iget v15, v14, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2268
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move/from16 v14, v23

    goto :goto_95

    .line 2266
    :cond_b9
    move/from16 v14, v23

    goto :goto_a4

    .line 2258
    :cond_bc
    move/from16 v23, v14

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "s2":I
    .local v14, "s2":I
    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    .line 2259
    move-object/from16 p0, v10

    move v15, v14

    move/from16 v14, v18

    move/from16 v10, v20

    goto :goto_d6

    .line 2249
    .end local v7    # "limit2":I
    .end local v14    # "s2":I
    .restart local v15    # "s2":I
    .restart local v16    # "limit2":I
    :cond_cc
    move/from16 v23, v14

    move-object/from16 p0, v10

    move/from16 v7, v16

    move/from16 v14, v18

    move/from16 v10, v20

    .line 2276
    .end local v16    # "limit2":I
    .end local v18    # "level2":I
    .end local v20    # "c2":I
    .restart local v7    # "limit2":I
    .local v10, "c2":I
    .local v14, "level2":I
    .local p0, "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :goto_d6
    if-ne v5, v10, :cond_f2

    .line 2277
    if-gez v5, :cond_db

    .line 2278
    return v23

    .line 2280
    :cond_db
    move/from16 v20, v17

    .end local v10    # "c2":I
    .restart local v20    # "c2":I
    move/from16 v5, v17

    .line 2281
    move-object/from16 v10, p0

    move/from16 v21, v5

    move/from16 v16, v7

    move/from16 v18, v14

    move/from16 v5, v19

    move/from16 v14, v23

    const/4 v7, 0x0

    move/from16 v19, v3

    move/from16 v3, v22

    goto/16 :goto_50

    .line 2282
    .end local v20    # "c2":I
    .restart local v10    # "c2":I
    :cond_f2
    if-gez v5, :cond_f5

    .line 2283
    return v17

    .line 2284
    :cond_f5
    if-gez v10, :cond_fa

    .line 2285
    const/16 v16, 0x1

    return v16

    .line 2290
    :cond_fa
    move/from16 v16, v5

    .line 2291
    .local v16, "cp1":I
    invoke-static {v5}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v18

    if-eqz v18, :cond_14d

    .line 2294
    invoke-static {v5}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v18

    if-eqz v18, :cond_130

    .line 2295
    if-eq v12, v13, :cond_12b

    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 p1, v18

    .local p1, "c":C
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v18

    if-eqz v18, :cond_124

    .line 2297
    move-object/from16 v18, v11

    .end local v11    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v18, "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    int-to-char v11, v5

    move/from16 v20, v12

    move/from16 v12, p1

    .end local p1    # "c":C
    .local v12, "c":C
    .local v20, "s1":I
    invoke-static {v11, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v16

    move/from16 v11, v16

    goto :goto_153

    .line 2295
    .end local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local v20    # "s1":I
    .restart local v11    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v12, "s1":I
    .restart local p1    # "c":C
    :cond_124
    move-object/from16 v18, v11

    move/from16 v20, v12

    move/from16 v12, p1

    .end local v11    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local p1    # "c":C
    .local v12, "c":C
    .restart local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v20    # "s1":I
    goto :goto_151

    .end local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local v20    # "s1":I
    .restart local v11    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v12, "s1":I
    :cond_12b
    move-object/from16 v18, v11

    move/from16 v20, v12

    .end local v11    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local v12    # "s1":I
    .restart local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v20    # "s1":I
    goto :goto_151

    .line 2300
    .end local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local v20    # "s1":I
    .restart local v11    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v12    # "s1":I
    :cond_130
    move-object/from16 v18, v11

    move/from16 v20, v12

    .end local v11    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local v12    # "s1":I
    .restart local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v20    # "s1":I
    add-int/lit8 v12, v20, -0x2

    if-ltz v12, :cond_151

    add-int/lit8 v12, v20, -0x2

    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    move v12, v11

    .local v12, "c":C
    invoke-static {v11}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v11

    if-eqz v11, :cond_151

    .line 2301
    int-to-char v11, v5

    invoke-static {v12, v11}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v16

    move/from16 v11, v16

    goto :goto_153

    .line 2291
    .end local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local v20    # "s1":I
    .restart local v11    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v12, "s1":I
    :cond_14d
    move-object/from16 v18, v11

    move/from16 v20, v12

    .line 2306
    .end local v11    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local v12    # "s1":I
    .restart local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v20    # "s1":I
    :cond_151
    :goto_151
    move/from16 v11, v16

    .end local v16    # "cp1":I
    .local v11, "cp1":I
    :goto_153
    move v12, v10

    .line 2307
    .local v12, "cp2":I
    invoke-static {v10}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v16

    if-eqz v16, :cond_1a2

    .line 2310
    invoke-static {v10}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v16

    if-eqz v16, :cond_186

    .line 2311
    if-eq v15, v7, :cond_181

    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    move/from16 p1, v16

    .restart local p1    # "c":C
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v16

    if-eqz v16, :cond_17a

    .line 2313
    move/from16 v16, v12

    .end local v12    # "cp2":I
    .local v16, "cp2":I
    int-to-char v12, v10

    move/from16 v24, v7

    move/from16 v7, p1

    .end local p1    # "c":C
    .local v7, "c":C
    .local v24, "limit2":I
    invoke-static {v12, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    .end local v16    # "cp2":I
    .restart local v12    # "cp2":I
    goto :goto_1a8

    .line 2311
    .end local v24    # "limit2":I
    .local v7, "limit2":I
    .restart local p1    # "c":C
    :cond_17a
    move/from16 v24, v7

    move/from16 v16, v12

    move/from16 v7, p1

    .end local v12    # "cp2":I
    .end local p1    # "c":C
    .local v7, "c":C
    .restart local v16    # "cp2":I
    .restart local v24    # "limit2":I
    goto :goto_1a6

    .end local v16    # "cp2":I
    .end local v24    # "limit2":I
    .local v7, "limit2":I
    .restart local v12    # "cp2":I
    :cond_181
    move/from16 v24, v7

    move/from16 v16, v12

    .end local v7    # "limit2":I
    .end local v12    # "cp2":I
    .restart local v16    # "cp2":I
    .restart local v24    # "limit2":I
    goto :goto_1a6

    .line 2316
    .end local v16    # "cp2":I
    .end local v24    # "limit2":I
    .restart local v7    # "limit2":I
    .restart local v12    # "cp2":I
    :cond_186
    move/from16 v24, v7

    move/from16 v16, v12

    .end local v7    # "limit2":I
    .end local v12    # "cp2":I
    .restart local v16    # "cp2":I
    .restart local v24    # "limit2":I
    add-int/lit8 v7, v15, -0x2

    if-ltz v7, :cond_1a6

    add-int/lit8 v7, v15, -0x2

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v12, v7

    .local v12, "c":C
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_1a6

    .line 2317
    int-to-char v7, v10

    invoke-static {v12, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    move v12, v7

    .end local v16    # "cp2":I
    .local v7, "cp2":I
    goto :goto_1a8

    .line 2307
    .end local v24    # "limit2":I
    .local v7, "limit2":I
    .local v12, "cp2":I
    :cond_1a2
    move/from16 v24, v7

    move/from16 v16, v12

    .line 2327
    .end local v7    # "limit2":I
    .end local v12    # "cp2":I
    .restart local v16    # "cp2":I
    .restart local v24    # "limit2":I
    :cond_1a6
    :goto_1a6
    move/from16 v12, v16

    .end local v16    # "cp2":I
    .restart local v12    # "cp2":I
    :goto_1a8
    if-nez v3, :cond_22e

    and-int v16, v0, v19

    if-eqz v16, :cond_22e

    .line 2328
    invoke-virtual {v6, v11, v8, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v16

    move/from16 p1, v16

    .local p1, "length":I
    if-ltz v16, :cond_22c

    .line 2331
    invoke-static {v5}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v16

    if-eqz v16, :cond_1d8

    .line 2332
    invoke-static {v5}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v16

    if-eqz v16, :cond_1c9

    .line 2334
    add-int/lit8 v16, v20, 0x1

    move/from16 v20, v10

    move/from16 v7, v16

    .end local v20    # "s1":I
    .local v16, "s1":I
    goto :goto_1dc

    .line 2343
    .end local v16    # "s1":I
    .restart local v20    # "s1":I
    :cond_1c9
    add-int/lit8 v15, v15, -0x1

    .line 2344
    add-int/lit8 v7, v15, -0x1

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move/from16 v25, v20

    move/from16 v20, v7

    move/from16 v7, v25

    .end local v10    # "c2":I
    .local v7, "c2":I
    goto :goto_1dc

    .line 2331
    .end local v7    # "c2":I
    .restart local v10    # "c2":I
    :cond_1d8
    move/from16 v7, v20

    move/from16 v20, v10

    .line 2349
    .end local v10    # "c2":I
    .local v7, "s1":I
    .local v20, "c2":I
    :goto_1dc
    if-nez p0, :cond_1e3

    .line 2350
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v10

    .end local p0    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v10, "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    goto :goto_1e5

    .line 2349
    .end local v10    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local p0    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :cond_1e3
    move-object/from16 v10, p0

    .line 2352
    .end local p0    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v10    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :goto_1e5
    move-object/from16 p0, v10

    .end local v10    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local p0    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    aget-object v10, p0, v23

    iput-object v1, v10, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2353
    aget-object v10, p0, v23

    iput v7, v10, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2354
    add-int/lit8 v3, v3, 0x1

    .line 2358
    move/from16 v10, p1

    move/from16 p1, v3

    const/16 v3, 0x1f

    .end local v3    # "level1":I
    .local v10, "length":I
    .local p1, "level1":I
    if-gt v10, v3, :cond_206

    .line 2359
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v10

    move/from16 v16, v7

    move/from16 v7, v23

    .end local v7    # "s1":I
    .restart local v16    # "s1":I
    invoke-virtual {v8, v7, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_210

    .line 2361
    .end local v16    # "s1":I
    .restart local v7    # "s1":I
    :cond_206
    move/from16 v16, v7

    move/from16 v7, v23

    .end local v7    # "s1":I
    .restart local v16    # "s1":I
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2362
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2366
    :goto_210
    move-object v1, v8

    .line 2367
    const/4 v3, 0x0

    .line 2368
    .end local v16    # "s1":I
    .local v3, "s1":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    .line 2371
    const/4 v5, -0x1

    .line 2372
    move-object/from16 v10, p0

    move v12, v3

    move/from16 v21, v5

    move-object/from16 v11, v18

    move/from16 v5, v19

    move/from16 v3, v22

    move/from16 v16, v24

    const/4 v7, 0x0

    move/from16 v19, p1

    move/from16 v18, v14

    const/4 v14, 0x0

    goto/16 :goto_50

    .line 2328
    .local v3, "level1":I
    .local v10, "c2":I
    .local v20, "s1":I
    .local p1, "length":I
    :cond_22c
    move/from16 v7, p1

    .line 2375
    .end local p1    # "length":I
    :cond_22e
    if-nez v14, :cond_2a9

    and-int v7, v0, v19

    if-eqz v7, :cond_2a9

    .line 2376
    invoke-virtual {v6, v12, v9, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v7

    move/from16 p1, v7

    .restart local p1    # "length":I
    if-ltz v7, :cond_2a5

    .line 2379
    invoke-static {v10}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_256

    .line 2380
    invoke-static {v10}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v7

    if-eqz v7, :cond_24b

    .line 2382
    add-int/lit8 v15, v15, 0x1

    goto :goto_256

    .line 2391
    :cond_24b
    add-int/lit8 v7, v20, -0x1

    .line 2392
    .end local v20    # "s1":I
    .restart local v7    # "s1":I
    add-int/lit8 v0, v7, -0x1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v5, v0

    move/from16 v20, v7

    .line 2397
    .end local v7    # "s1":I
    .restart local v20    # "s1":I
    :cond_256
    :goto_256
    if-nez v18, :cond_25d

    .line 2398
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v0

    .end local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v0, "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    goto :goto_25f

    .line 2397
    .end local v0    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :cond_25d
    move-object/from16 v0, v18

    .line 2400
    .end local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v0    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :goto_25f
    const/16 v23, 0x0

    aget-object v7, v0, v23

    iput-object v2, v7, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2401
    aget-object v7, v0, v23

    iput v15, v7, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2402
    add-int/lit8 v18, v14, 0x1

    .line 2406
    .end local v14    # "level2":I
    .local v18, "level2":I
    move/from16 v7, p1

    const/16 v14, 0x1f

    .end local p1    # "length":I
    .local v7, "length":I
    if-gt v7, v14, :cond_27e

    .line 2407
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    sub-int/2addr v14, v7

    move-object/from16 p1, v0

    move/from16 v0, v23

    .end local v0    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local p1, "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    invoke-virtual {v9, v0, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_288

    .line 2409
    .end local p1    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v0    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :cond_27e
    move-object/from16 p1, v0

    move/from16 v0, v23

    .end local v0    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local p1    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2410
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2414
    :goto_288
    move-object v2, v9

    .line 2415
    const/4 v15, 0x0

    .line 2416
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    .line 2419
    .end local v24    # "limit2":I
    .local v16, "limit2":I
    const/4 v10, -0x1

    .line 2420
    move-object/from16 v11, p1

    move v14, v0

    move/from16 v21, v5

    move/from16 v5, v19

    move/from16 v12, v20

    const/4 v7, 0x0

    move/from16 v0, p2

    move/from16 v19, v3

    move/from16 v20, v10

    move/from16 v3, v22

    move-object/from16 v10, p0

    goto/16 :goto_50

    .line 2376
    .end local v7    # "length":I
    .end local v16    # "limit2":I
    .restart local v14    # "level2":I
    .local v18, "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v24    # "limit2":I
    .local p1, "length":I
    :cond_2a5
    move/from16 v7, p1

    const/4 v0, 0x0

    .end local p1    # "length":I
    .restart local v7    # "length":I
    goto :goto_2aa

    .line 2375
    .end local v7    # "length":I
    :cond_2a9
    const/4 v0, 0x0

    .line 2423
    :goto_2aa
    const/4 v7, 0x2

    if-ge v3, v7, :cond_31f

    and-int v16, p2, v22

    if-eqz v16, :cond_31f

    .line 2424
    invoke-virtual {v4, v11}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v23, v16

    .local v23, "decomp1":Ljava/lang/String;
    if-eqz v16, :cond_31f

    .line 2427
    invoke-static {v5}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v16

    if-eqz v16, :cond_2db

    .line 2428
    invoke-static {v5}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v16

    if-eqz v16, :cond_2cc

    .line 2430
    add-int/lit8 v16, v20, 0x1

    move/from16 v20, v10

    move/from16 v0, v16

    .end local v20    # "s1":I
    .local v16, "s1":I
    goto :goto_2df

    .line 2439
    .end local v16    # "s1":I
    .restart local v20    # "s1":I
    :cond_2cc
    add-int/lit8 v15, v15, -0x1

    .line 2440
    add-int/lit8 v0, v15, -0x1

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move/from16 v25, v20

    move/from16 v20, v0

    move/from16 v0, v25

    .end local v10    # "c2":I
    .local v0, "c2":I
    goto :goto_2df

    .line 2427
    .end local v0    # "c2":I
    .restart local v10    # "c2":I
    :cond_2db
    move/from16 v0, v20

    move/from16 v20, v10

    .line 2445
    .end local v10    # "c2":I
    .local v0, "s1":I
    .local v20, "c2":I
    :goto_2df
    if-nez p0, :cond_2e6

    .line 2446
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v10

    .end local p0    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v10, "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    goto :goto_2e8

    .line 2445
    .end local v10    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local p0    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :cond_2e6
    move-object/from16 v10, p0

    .line 2448
    .end local p0    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v10    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :goto_2e8
    aget-object v7, v10, v3

    iput-object v1, v7, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2449
    aget-object v7, v10, v3

    iput v0, v7, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2450
    add-int/lit8 v3, v3, 0x1

    .line 2453
    const/4 v7, 0x2

    if-ge v3, v7, :cond_300

    .line 2454
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "level1":I
    .local v7, "level1":I
    aget-object v3, v10, v3

    move/from16 p1, v0

    const/4 v0, 0x0

    .end local v0    # "s1":I
    .local p1, "s1":I
    iput-object v0, v3, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    move v3, v7

    goto :goto_302

    .line 2453
    .end local v7    # "level1":I
    .end local p1    # "s1":I
    .restart local v0    # "s1":I
    .restart local v3    # "level1":I
    :cond_300
    move/from16 p1, v0

    .line 2458
    .end local v0    # "s1":I
    .restart local p1    # "s1":I
    :goto_302
    move-object/from16 v1, v23

    .line 2459
    const/4 v0, 0x0

    .line 2460
    .end local p1    # "s1":I
    .restart local v0    # "s1":I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v13

    .line 2463
    const/4 v5, -0x1

    .line 2464
    move v12, v0

    move/from16 v21, v5

    move-object/from16 v11, v18

    move/from16 v5, v19

    move/from16 v16, v24

    const/4 v7, 0x0

    move/from16 v0, p2

    move/from16 v19, v3

    move/from16 v18, v14

    move/from16 v3, v22

    const/4 v14, 0x0

    goto/16 :goto_50

    .line 2467
    .end local v0    # "s1":I
    .end local v23    # "decomp1":Ljava/lang/String;
    .local v10, "c2":I
    .local v20, "s1":I
    .restart local p0    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :cond_31f
    const/4 v7, 0x2

    if-ge v14, v7, :cond_38d

    and-int v0, p2, v22

    if-eqz v0, :cond_38d

    .line 2468
    invoke-virtual {v4, v12}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "decomp2":Ljava/lang/String;
    if-eqz v0, :cond_38d

    .line 2471
    invoke-static {v10}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_347

    .line 2472
    invoke-static {v10}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v0

    if-eqz v0, :cond_33c

    .line 2474
    add-int/lit8 v15, v15, 0x1

    goto :goto_347

    .line 2483
    :cond_33c
    add-int/lit8 v0, v20, -0x1

    .line 2484
    .end local v20    # "s1":I
    .restart local v0    # "s1":I
    move/from16 v20, v0

    .end local v0    # "s1":I
    .restart local v20    # "s1":I
    add-int/lit8 v0, v20, -0x1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v5, v0

    .line 2489
    :cond_347
    :goto_347
    if-nez v18, :cond_34e

    .line 2490
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v0

    .end local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v0, "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    goto :goto_350

    .line 2489
    .end local v0    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :cond_34e
    move-object/from16 v0, v18

    .line 2492
    .end local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v0    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :goto_350
    move-object/from16 v18, v0

    .end local v0    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v18    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    aget-object v0, v18, v14

    iput-object v2, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2493
    aget-object v0, v18, v14

    iput v15, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2494
    add-int/lit8 v14, v14, 0x1

    .line 2497
    const/4 v0, 0x2

    if-ge v14, v0, :cond_36b

    .line 2498
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "level2":I
    .local v0, "level2":I
    aget-object v14, v18, v14

    move/from16 p1, v0

    const/4 v0, 0x0

    .end local v0    # "level2":I
    .local p1, "level2":I
    iput-object v0, v14, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    move/from16 v14, p1

    goto :goto_36c

    .line 2497
    .end local p1    # "level2":I
    .restart local v14    # "level2":I
    :cond_36b
    const/4 v0, 0x0

    .line 2502
    :goto_36c
    move-object v2, v7

    .line 2503
    const/4 v15, 0x0

    .line 2504
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v21

    .line 2507
    .end local v24    # "limit2":I
    .local v21, "limit2":I
    const/4 v10, -0x1

    .line 2508
    move-object v7, v0

    move-object/from16 v11, v18

    move/from16 v12, v20

    move/from16 v16, v21

    move/from16 v0, p2

    move/from16 v21, v5

    move/from16 v20, v10

    move/from16 v18, v14

    move/from16 v5, v19

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move/from16 v19, v3

    move/from16 v3, v22

    goto/16 :goto_50

    .line 2528
    .end local v7    # "decomp2":Ljava/lang/String;
    .end local v21    # "limit2":I
    .restart local v24    # "limit2":I
    :cond_38d
    const v0, 0xd800

    if-lt v5, v0, :cond_401

    if-lt v10, v0, :cond_401

    const v0, 0x8000

    and-int v0, p2, v0

    if-eqz v0, :cond_401

    .line 2530
    const v0, 0xdbff

    if-gt v5, v0, :cond_3af

    move/from16 v7, v20

    .end local v20    # "s1":I
    .local v7, "s1":I
    if-eq v7, v13, :cond_3b1

    .line 2531
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v16

    if-nez v16, :cond_3cb

    goto :goto_3b1

    .line 2530
    .end local v7    # "s1":I
    .restart local v20    # "s1":I
    :cond_3af
    move/from16 v7, v20

    .line 2531
    .end local v20    # "s1":I
    .restart local v7    # "s1":I
    :cond_3b1
    :goto_3b1
    int-to-char v0, v5

    .line 2532
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3c9

    add-int/lit8 v0, v7, -0x1

    if-eqz v0, :cond_3c9

    add-int/lit8 v0, v7, -0x2

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3c9

    goto :goto_3cb

    .line 2537
    :cond_3c9
    add-int/lit16 v5, v5, -0x2800

    .line 2540
    :cond_3cb
    :goto_3cb
    const v0, 0xdbff

    if-gt v10, v0, :cond_3e2

    move/from16 v0, v24

    .end local v24    # "limit2":I
    .local v0, "limit2":I
    if-eq v15, v0, :cond_3e4

    .line 2541
    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v16

    if-nez v16, :cond_3df

    goto :goto_3e4

    :cond_3df
    move/from16 v24, v0

    goto :goto_403

    .line 2540
    .end local v0    # "limit2":I
    .restart local v24    # "limit2":I
    :cond_3e2
    move/from16 v0, v24

    .line 2541
    .end local v24    # "limit2":I
    .restart local v0    # "limit2":I
    :cond_3e4
    :goto_3e4
    move/from16 v24, v0

    .end local v0    # "limit2":I
    .restart local v24    # "limit2":I
    int-to-char v0, v10

    .line 2542
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3fe

    add-int/lit8 v0, v15, -0x1

    if-eqz v0, :cond_3fe

    add-int/lit8 v0, v15, -0x2

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3fe

    goto :goto_403

    .line 2547
    :cond_3fe
    add-int/lit16 v10, v10, -0x2800

    goto :goto_403

    .line 2528
    .end local v7    # "s1":I
    .restart local v20    # "s1":I
    :cond_401
    move/from16 v7, v20

    .line 2551
    .end local v20    # "s1":I
    .restart local v7    # "s1":I
    :goto_403
    sub-int v0, v5, v10

    return v0
.end method

.method public static whitelist test-api compare(III)I
    .registers 6
    .param p0, "char32a"    # I
    .param p1, "char32b"    # I
    .param p2, "options"    # I

    .line 1284
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x20000

    or-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api compare(ILjava/lang/String;I)I
    .registers 4
    .param p0, "char32a"    # I
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "options"    # I

    .line 1295
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api compare(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;
    .param p2, "options"    # I

    .line 1240
    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api compare([CII[CIII)I
    .registers 9
    .param p0, "s1"    # [C
    .param p1, "s1Start"    # I
    .param p2, "s1Limit"    # I
    .param p3, "s2"    # [C
    .param p4, "s2Start"    # I
    .param p5, "s2Limit"    # I
    .param p6, "options"    # I

    .line 1185
    if-eqz p0, :cond_21

    if-ltz p1, :cond_21

    if-ltz p2, :cond_21

    if-eqz p3, :cond_21

    if-ltz p4, :cond_21

    if-ltz p5, :cond_21

    if-lt p2, p1, :cond_21

    if-lt p5, p4, :cond_21

    .line 1191
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    sub-int v1, p5, p4

    .line 1192
    invoke-static {p3, p4, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1191
    invoke-static {v0, v1, p6}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1189
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api compare([C[CI)I
    .registers 5
    .param p0, "s1"    # [C
    .param p1, "s2"    # [C
    .param p2, "options"    # I

    .line 1273
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o compose([CII[CIIZI)I
    .registers 11
    .param p0, "src"    # [C
    .param p1, "srcStart"    # I
    .param p2, "srcLimit"    # I
    .param p3, "dest"    # [C
    .param p4, "destStart"    # I
    .param p5, "destLimit"    # I
    .param p6, "compat"    # Z
    .param p7, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 757
    .local v0, "srcBuffer":Ljava/nio/CharBuffer;
    new-instance v1, Landroid/icu/text/Normalizer$CharsAppendable;

    invoke-direct {v1, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    .line 758
    .local v1, "app":Landroid/icu/text/Normalizer$CharsAppendable;
    invoke-static {p6, p7}, Landroid/icu/text/Normalizer;->getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 759
    invoke-virtual {v1}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    move-result v2

    return v2
.end method

.method public static greylist-max-o compose([C[CZI)I
    .registers 12
    .param p0, "source"    # [C
    .param p1, "target"    # [C
    .param p2, "compat"    # Z
    .param p3, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 729
    array-length v2, p0

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    .end local p0    # "source":[C
    .end local p1    # "target":[C
    .end local p2    # "compat":Z
    .end local p3    # "options":I
    .local v0, "source":[C
    .local v3, "target":[C
    .local v6, "compat":Z
    .local v7, "options":I
    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->compose([CII[CIIZI)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o compose(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "compat"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 691
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->compose(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o compose(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "compat"    # Z
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 708
    invoke-static {p1, p2}, Landroid/icu/text/Normalizer;->getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o concatenate([CII[CII[CIILandroid/icu/text/Normalizer$Mode;I)I
    .registers 16
    .param p0, "left"    # [C
    .param p1, "leftStart"    # I
    .param p2, "leftLimit"    # I
    .param p3, "right"    # [C
    .param p4, "rightStart"    # I
    .param p5, "rightLimit"    # I
    .param p6, "dest"    # [C
    .param p7, "destStart"    # I
    .param p8, "destLimit"    # I
    .param p9, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p10, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1348
    if-eqz p6, :cond_45

    .line 1353
    if-ne p3, p6, :cond_11

    if-ge p4, p8, :cond_11

    if-lt p7, p5, :cond_9

    goto :goto_11

    .line 1354
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "overlapping right and dst ranges"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    add-int/2addr v1, p5

    sub-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1359
    .local v0, "destBuilder":Ljava/lang/StringBuilder;
    sub-int v1, p2, p1

    invoke-virtual {v0, p0, p1, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1360
    sub-int v1, p5, p4

    invoke-static {p3, p4, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1361
    .local v1, "rightBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {p9, p10}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1363
    .local v2, "destLength":I
    sub-int v3, p8, p7

    if-gt v2, v3, :cond_3b

    .line 1364
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, p6, p7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 1365
    return v2

    .line 1367
    :cond_3b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1349
    .end local v0    # "destBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "rightBuffer":Ljava/nio/CharBuffer;
    .end local v2    # "destLength":I
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static greylist-max-o concatenate(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .registers 7
    .param p0, "left"    # Ljava/lang/String;
    .param p1, "right"    # Ljava/lang/String;
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1440
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o concatenate([C[CLandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .registers 7
    .param p0, "left"    # [C
    .param p1, "right"    # [C
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1402
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final greylist-max-o createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .registers 4

    .line 2150
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/Normalizer$CmpEquivLevel;

    new-instance v1, Landroid/icu/text/Normalizer$CmpEquivLevel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/Normalizer$CmpEquivLevel;-><init>(Landroid/icu/text/Normalizer-IA;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/text/Normalizer$CmpEquivLevel;

    invoke-direct {v1, v2}, Landroid/icu/text/Normalizer$CmpEquivLevel;-><init>(Landroid/icu/text/Normalizer-IA;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static greylist-max-o decompose([CII[CIIZI)I
    .registers 11
    .param p0, "src"    # [C
    .param p1, "srcStart"    # I
    .param p2, "srcLimit"    # I
    .param p3, "dest"    # [C
    .param p4, "destStart"    # I
    .param p5, "destLimit"    # I
    .param p6, "compat"    # Z
    .param p7, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 841
    .local v0, "srcBuffer":Ljava/nio/CharBuffer;
    new-instance v1, Landroid/icu/text/Normalizer$CharsAppendable;

    invoke-direct {v1, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    .line 842
    .local v1, "app":Landroid/icu/text/Normalizer$CharsAppendable;
    invoke-static {p6, p7}, Landroid/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 843
    invoke-virtual {v1}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    move-result v2

    return v2
.end method

.method public static greylist-max-o decompose([C[CZI)I
    .registers 12
    .param p0, "source"    # [C
    .param p1, "target"    # [C
    .param p2, "compat"    # Z
    .param p3, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    array-length v2, p0

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    .end local p0    # "source":[C
    .end local p1    # "target":[C
    .end local p2    # "compat":Z
    .end local p3    # "options":I
    .local v0, "source":[C
    .local v3, "target":[C
    .local v6, "compat":Z
    .local v7, "options":I
    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->decompose([CII[CIIZI)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o decompose(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "compat"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o decompose(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "compat"    # Z
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    invoke-static {p1, p2}, Landroid/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final greylist-max-o getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;
    .registers 3
    .param p0, "compat"    # Z
    .param p1, "options"    # I

    .line 672
    if-eqz p0, :cond_5

    sget-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    :goto_7
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    return-object v0
.end method

.method private static final greylist-max-o getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;
    .registers 3
    .param p0, "compat"    # Z
    .param p1, "options"    # I

    .line 675
    if-eqz p0, :cond_5

    sget-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    :goto_7
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getFC_NFKC_Closure(I[C)I
    .registers 5
    .param p0, "c"    # I
    .param p1, "dest"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1453
    invoke-static {p0}, Landroid/icu/text/Normalizer;->getFC_NFKC_Closure(I)Ljava/lang/String;

    move-result-object v0

    .line 1454
    .local v0, "closure":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1455
    .local v1, "length":I
    if-eqz v1, :cond_13

    if-eqz p1, :cond_13

    array-length v2, p1

    if-gt v1, v2, :cond_13

    .line 1456
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1458
    :cond_13
    return v1
.end method

.method public static greylist-max-o getFC_NFKC_Closure(I)Ljava/lang/String;
    .registers 9
    .param p0, "c"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1475
    invoke-static {}, Landroid/icu/text/Normalizer$NFKCModeImpl;->-$$Nest$sfgetINSTANCE()Landroid/icu/text/Normalizer$ModeImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Normalizer$ModeImpl;->-$$Nest$fgetnormalizer2(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;

    move-result-object v0

    .line 1476
    .local v0, "nfkc":Landroid/icu/text/Normalizer2;
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 1478
    .local v1, "csp":Landroid/icu/impl/UCaseProps;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1479
    .local v2, "folded":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v4

    .line 1480
    .local v4, "folded1Length":I
    const-string v5, ""

    if-gez v4, :cond_2c

    .line 1481
    move-object v6, v0

    check-cast v6, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    iget-object v6, v6, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 1482
    .local v6, "nfkcImpl":Landroid/icu/impl/Normalizer2Impl;
    invoke-virtual {v6, p0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    move-result v7

    if-eqz v7, :cond_28

    .line 1483
    return-object v5

    .line 1485
    :cond_28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1486
    .end local v6    # "nfkcImpl":Landroid/icu/impl/Normalizer2Impl;
    goto :goto_33

    .line 1487
    :cond_2c
    const/16 v6, 0x1f

    if-le v4, v6, :cond_33

    .line 1488
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1491
    :cond_33
    :goto_33
    invoke-virtual {v0, v2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1493
    .local v6, "kc1":Ljava/lang/String;
    invoke-static {v6, v3}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1495
    .local v3, "kc2":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1496
    return-object v5

    .line 1498
    :cond_46
    return-object v3
.end method

.method private static greylist-max-o internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 10
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;
    .param p2, "options"    # I

    .line 1996
    ushr-int/lit8 v0, p2, 0x14

    .line 1997
    .local v0, "normOptions":I
    const/high16 v1, 0x80000

    or-int/2addr p2, v1

    .line 2020
    const/high16 v1, 0x20000

    and-int/2addr v1, p2

    if-eqz v1, :cond_e

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_6a

    .line 2022
    :cond_e
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_19

    .line 2023
    sget-object v1, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    .local v1, "n2":Landroid/icu/text/Normalizer2;
    goto :goto_1f

    .line 2025
    .end local v1    # "n2":Landroid/icu/text/Normalizer2;
    :cond_19
    sget-object v1, Landroid/icu/text/Normalizer;->FCD:Landroid/icu/text/Normalizer$Mode;

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    .line 2029
    .restart local v1    # "n2":Landroid/icu/text/Normalizer2;
    :goto_1f
    invoke-virtual {v1, p0}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v2

    .line 2030
    .local v2, "spanQCYes1":I
    invoke-virtual {v1, p1}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v3

    .line 2041
    .local v3, "spanQCYes2":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v2, v4, :cond_49

    .line 2042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p0, v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2043
    .local v4, "fcd1":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p0, v2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2045
    .end local v4    # "fcd1":Ljava/lang/StringBuilder;
    :cond_49
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_6a

    .line 2046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1, v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2047
    .local v4, "fcd2":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p1, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2051
    .end local v1    # "n2":Landroid/icu/text/Normalizer2;
    .end local v2    # "spanQCYes1":I
    .end local v3    # "spanQCYes2":I
    .end local v4    # "fcd2":Ljava/lang/StringBuilder;
    :cond_6a
    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    return v1
.end method

.method public static greylist-max-o isNormalized(ILandroid/icu/text/Normalizer$Mode;I)Z
    .registers 4
    .param p0, "char32"    # I
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1130
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1113
    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isNormalized([CIILandroid/icu/text/Normalizer$Mode;I)Z
    .registers 7
    .param p0, "src"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p4, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1089
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1090
    .local v0, "srcBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {p3, p4}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private greylist-max-o nextNormalize()Z
    .registers 6

    .line 1949
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    .line 1950
    iget v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1951
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    iget v1, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1953
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    .line 1954
    .local v0, "c":I
    const/4 v1, 0x0

    if-gez v0, :cond_18

    .line 1955
    return v1

    .line 1957
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1958
    .local v2, "segment":Ljava/lang/StringBuilder;
    :goto_21
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v3

    move v0, v3

    if-ltz v3, :cond_3d

    .line 1959
    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1960
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    .line 1961
    goto :goto_3d

    .line 1963
    :cond_39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1965
    :cond_3d
    :goto_3d
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v3

    iput v3, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    .line 1966
    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    iget-object v4, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v4}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1967
    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_55

    const/4 v1, 0x1

    :cond_55
    return v1
.end method

.method public static greylist-max-o normalize([CII[CIILandroid/icu/text/Normalizer$Mode;I)I
    .registers 11
    .param p0, "src"    # [C
    .param p1, "srcStart"    # I
    .param p2, "srcLimit"    # I
    .param p3, "dest"    # [C
    .param p4, "destStart"    # I
    .param p5, "destLimit"    # I
    .param p6, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p7, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 930
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 931
    .local v0, "srcBuffer":Ljava/nio/CharBuffer;
    new-instance v1, Landroid/icu/text/Normalizer$CharsAppendable;

    invoke-direct {v1, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    .line 932
    .local v1, "app":Landroid/icu/text/Normalizer$CharsAppendable;
    invoke-virtual {p6, p7}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 933
    invoke-virtual {v1}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    move-result v2

    return v2
.end method

.method public static greylist-max-o normalize([C[CLandroid/icu/text/Normalizer$Mode;I)I
    .registers 12
    .param p0, "source"    # [C
    .param p1, "target"    # [C
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 902
    array-length v2, p0

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    .end local p0    # "source":[C
    .end local p1    # "target":[C
    .end local p2    # "mode":Landroid/icu/text/Normalizer$Mode;
    .end local p3    # "options":I
    .local v0, "source":[C
    .local v3, "target":[C
    .local v6, "mode":Landroid/icu/text/Normalizer$Mode;
    .local v7, "options":I
    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->normalize([CII[CIILandroid/icu/text/Normalizer$Mode;I)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o normalize(ILandroid/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .registers 3
    .param p0, "char32"    # I
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 969
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->normalize(ILandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o normalize(ILandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .registers 4
    .param p0, "char32"    # I
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 949
    sget-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    if-ne p1, v0, :cond_15

    if-nez p2, :cond_15

    .line 950
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "decomposition":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 952
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 954
    :cond_14
    return-object v0

    .line 956
    .end local v0    # "decomposition":Ljava/lang/String;
    :cond_15
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .registers 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 881
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 864
    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o previousNormalize()Z
    .registers 6

    .line 1971
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    .line 1972
    iget v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    iput v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    .line 1973
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    iget v1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1976
    .local v0, "segment":Ljava/lang/StringBuilder;
    :cond_13
    iget-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/4 v3, 0x0

    if-ltz v1, :cond_37

    .line 1977
    const v1, 0xffff

    if-gt v2, v1, :cond_27

    .line 1978
    int-to-char v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 1980
    :cond_27
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 1982
    :goto_2e
    iget-object v1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v1, v2}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1983
    nop

    .line 1986
    :cond_37
    iget-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v1

    iput v1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1987
    iget-object v1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    iget-object v4, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v4}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1988
    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    .line 1989
    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_57

    const/4 v3, 0x1

    :cond_57
    return v3
.end method

.method public static greylist-max-o quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 985
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1011
    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o quickCheck([CIILandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .registers 7
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p4, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1060
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1061
    .local v0, "srcBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {p3, p4}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o quickCheck([CLandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .registers 5
    .param p0, "source"    # [C
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1030
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Landroid/icu/text/Normalizer;->quickCheck([CIILandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 651
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Normalizer;

    .line 652
    .local v0, "copy":Landroid/icu/text/Normalizer;
    iget-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UCharacterIterator;

    iput-object v1, v0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 653
    iget-object v1, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iput-object v1, v0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 654
    iget v1, p0, Landroid/icu/text/Normalizer;->options:I

    iput v1, v0, Landroid/icu/text/Normalizer;->options:I

    .line 655
    iget-object v1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    iput-object v1, v0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    .line 657
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iput v1, v0, Landroid/icu/text/Normalizer;->bufferPos:I

    .line 658
    iget v1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    iput v1, v0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 659
    iget v1, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v1, v0, Landroid/icu/text/Normalizer;->nextIndex:I
    :try_end_31
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_31} :catch_32

    .line 660
    return-object v0

    .line 662
    .end local v0    # "copy":Landroid/icu/text/Normalizer;
    :catch_32
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o current()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1514
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_13

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->nextNormalize()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 1517
    :cond_11
    const/4 v0, -0x1

    return v0

    .line 1515
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o endIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1723
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public greylist-max-o first()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1655
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    .line 1656
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->next()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getBeginIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1630
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getEndIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1644
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->endIndex()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getIndex()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1693
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1694
    iget v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    return v0

    .line 1696
    :cond_d
    iget v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    return v0
.end method

.method public greylist-max-o getLength()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1840
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getMode()Landroid/icu/text/Normalizer$Mode;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1770
    iget-object v0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    return-object v0
.end method

.method public greylist-max-o getOption(I)I
    .registers 3
    .param p1, "option"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1810
    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    .line 1811
    const/4 v0, 0x1

    return v0

    .line 1813
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getText([C)I
    .registers 3
    .param p1, "fillIn"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1829
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->getText([C)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getText()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1851
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o last()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1669
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToLimit()V

    .line 1670
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1671
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    .line 1672
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->previous()I

    move-result v0

    return v0
.end method

.method public greylist-max-o next()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1531
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_13

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->nextNormalize()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 1536
    :cond_11
    const/4 v0, -0x1

    return v0

    .line 1532
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    .line 1533
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    .line 1534
    return v0
.end method

.method public greylist-max-o previous()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1551
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    if-gtz v0, :cond_d

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->previousNormalize()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    .line 1556
    :cond_b
    const/4 v0, -0x1

    return v0

    .line 1552
    :cond_d
    :goto_d
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    .line 1553
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    .line 1554
    return v0
.end method

.method public greylist-max-o reset()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1568
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    .line 1569
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1570
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    .line 1571
    return-void
.end method

.method public greylist-max-o setIndex(I)I
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1615
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer;->setIndexOnly(I)V

    .line 1616
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->current()I

    move-result v0

    return v0
.end method

.method public greylist-max-o setIndexOnly(I)V
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1585
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1586
    iput p1, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput p1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1587
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    .line 1588
    return-void
.end method

.method public greylist-max-o setMode(Landroid/icu/text/Normalizer$Mode;)V
    .registers 4
    .param p1, "newMode"    # Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1758
    iput-object p1, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 1759
    iget-object v0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iget v1, p0, Landroid/icu/text/Normalizer;->options:I

    invoke-virtual {v0, v1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 1760
    return-void
.end method

.method public greylist-max-o setOption(IZ)V
    .registers 5
    .param p1, "option"    # I
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1793
    if-eqz p2, :cond_8

    .line 1794
    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/icu/text/Normalizer;->options:I

    goto :goto_e

    .line 1796
    :cond_8
    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Normalizer;->options:I

    .line 1798
    :goto_e
    iget-object v0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iget v1, p0, Landroid/icu/text/Normalizer;->options:I

    invoke-virtual {v0, v1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 1799
    return-void
.end method

.method public greylist-max-o setText(Landroid/icu/text/UCharacterIterator;)V
    .registers 5
    .param p1, "newText"    # Landroid/icu/text/UCharacterIterator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1932
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UCharacterIterator;

    .line 1933
    .local v0, "newIter":Landroid/icu/text/UCharacterIterator;
    if-eqz v0, :cond_f

    .line 1936
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1937
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    .line 1940
    .end local v0    # "newIter":Landroid/icu/text/UCharacterIterator;
    nop

    .line 1941
    return-void

    .line 1934
    .restart local v0    # "newIter":Landroid/icu/text/UCharacterIterator;
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create a new UCharacterIterator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/icu/text/Normalizer;
    .end local p1    # "newText":Landroid/icu/text/UCharacterIterator;
    throw v1
    :try_end_17
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_17} :catch_17

    .line 1938
    .end local v0    # "newIter":Landroid/icu/text/UCharacterIterator;
    .restart local p0    # "this":Landroid/icu/text/Normalizer;
    .restart local p1    # "newText":Landroid/icu/text/UCharacterIterator;
    :catch_17
    move-exception v0

    .line 1939
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v2, "Could not clone the UCharacterIterator"

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "newText"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1897
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 1898
    .local v0, "newIter":Landroid/icu/text/UCharacterIterator;
    if-eqz v0, :cond_c

    .line 1901
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1902
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    .line 1903
    return-void

    .line 1899
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create a new UCharacterIterator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o setText(Ljava/lang/StringBuffer;)V
    .registers 5
    .param p1, "newText"    # Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1863
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 1864
    .local v0, "newIter":Landroid/icu/text/UCharacterIterator;
    if-eqz v0, :cond_c

    .line 1867
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1868
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    .line 1869
    return-void

    .line 1865
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create a new UCharacterIterator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o setText(Ljava/text/CharacterIterator;)V
    .registers 5
    .param p1, "newText"    # Ljava/text/CharacterIterator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1914
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 1915
    .local v0, "newIter":Landroid/icu/text/UCharacterIterator;
    if-eqz v0, :cond_c

    .line 1918
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1919
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    .line 1920
    return-void

    .line 1916
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create a new UCharacterIterator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o setText([C)V
    .registers 5
    .param p1, "newText"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1880
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance([C)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 1881
    .local v0, "newIter":Landroid/icu/text/UCharacterIterator;
    if-eqz v0, :cond_c

    .line 1884
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1885
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    .line 1886
    return-void

    .line 1882
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create a new UCharacterIterator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o startIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1710
    const/4 v0, 0x0

    return v0
.end method
