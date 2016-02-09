.class public final Landroid/icu/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Normalizer$ModeImpl;,
        Landroid/icu/text/Normalizer$NFDModeImpl;,
        Landroid/icu/text/Normalizer$NFKDModeImpl;,
        Landroid/icu/text/Normalizer$NFCModeImpl;,
        Landroid/icu/text/Normalizer$NFKCModeImpl;,
        Landroid/icu/text/Normalizer$FCDModeImpl;,
        Landroid/icu/text/Normalizer$Unicode32;,
        Landroid/icu/text/Normalizer$NFD32ModeImpl;,
        Landroid/icu/text/Normalizer$NFKD32ModeImpl;,
        Landroid/icu/text/Normalizer$NFC32ModeImpl;,
        Landroid/icu/text/Normalizer$NFKC32ModeImpl;,
        Landroid/icu/text/Normalizer$FCD32ModeImpl;,
        Landroid/icu/text/Normalizer$Mode;,
        Landroid/icu/text/Normalizer$NONEMode;,
        Landroid/icu/text/Normalizer$NFDMode;,
        Landroid/icu/text/Normalizer$NFKDMode;,
        Landroid/icu/text/Normalizer$NFCMode;,
        Landroid/icu/text/Normalizer$NFKCMode;,
        Landroid/icu/text/Normalizer$FCDMode;,
        Landroid/icu/text/Normalizer$QuickCheckResult;,
        Landroid/icu/text/Normalizer$CmpEquivLevel;,
        Landroid/icu/text/Normalizer$CharsAppendable;
    }
.end annotation


# static fields
.field public static final COMPARE_CODE_POINT_ORDER:I = 0x8000

.field private static final COMPARE_EQUIV:I = 0x80000

.field public static final COMPARE_IGNORE_CASE:I = 0x10000

.field public static final COMPARE_NORM_OPTIONS_SHIFT:I = 0x14

.field public static final COMPOSE:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMPOSE_COMPAT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP_COMPAT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT:Landroid/icu/text/Normalizer$Mode;

.field public static final DONE:I = -0x1

.field public static final FCD:Landroid/icu/text/Normalizer$Mode;

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field public static final IGNORE_HANGUL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INPUT_IS_FCD:I = 0x20000

.field public static final MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

.field public static final NFC:Landroid/icu/text/Normalizer$Mode;

.field public static final NFD:Landroid/icu/text/Normalizer$Mode;

.field public static final NFKC:Landroid/icu/text/Normalizer$Mode;

.field public static final NFKD:Landroid/icu/text/Normalizer$Mode;

.field public static final NO:Landroid/icu/text/Normalizer$QuickCheckResult;

.field public static final NONE:Landroid/icu/text/Normalizer$Mode;

.field public static final NO_OP:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNICODE_3_2:I = 0x20

.field public static final YES:Landroid/icu/text/Normalizer$QuickCheckResult;


# instance fields
.field private buffer:Ljava/lang/StringBuilder;

.field private bufferPos:I

.field private currentIndex:I

.field private mode:Landroid/icu/text/Normalizer$Mode;

.field private nextIndex:I

.field private norm2:Landroid/icu/text/Normalizer2;

.field private options:I

.field private text:Landroid/icu/text/UCharacterIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 275
    new-instance v0, Landroid/icu/text/Normalizer$NONEMode;

    #@3
    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NONEMode;-><init>(Landroid/icu/text/Normalizer$NONEMode;)V

    #@6
    sput-object v0, Landroid/icu/text/Normalizer;->NONE:Landroid/icu/text/Normalizer$Mode;

    #@8
    .line 281
    new-instance v0, Landroid/icu/text/Normalizer$NFDMode;

    #@a
    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NFDMode;-><init>(Landroid/icu/text/Normalizer$NFDMode;)V

    #@d
    sput-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    #@f
    .line 287
    new-instance v0, Landroid/icu/text/Normalizer$NFKDMode;

    #@11
    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NFKDMode;-><init>(Landroid/icu/text/Normalizer$NFKDMode;)V

    #@14
    sput-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    #@16
    .line 293
    new-instance v0, Landroid/icu/text/Normalizer$NFCMode;

    #@18
    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NFCMode;-><init>(Landroid/icu/text/Normalizer$NFCMode;)V

    #@1b
    sput-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    #@1d
    .line 299
    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    #@1f
    sput-object v0, Landroid/icu/text/Normalizer;->DEFAULT:Landroid/icu/text/Normalizer$Mode;

    #@21
    .line 305
    new-instance v0, Landroid/icu/text/Normalizer$NFKCMode;

    #@23
    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$NFKCMode;-><init>(Landroid/icu/text/Normalizer$NFKCMode;)V

    #@26
    sput-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    #@28
    .line 311
    new-instance v0, Landroid/icu/text/Normalizer$FCDMode;

    #@2a
    invoke-direct {v0, v2}, Landroid/icu/text/Normalizer$FCDMode;-><init>(Landroid/icu/text/Normalizer$FCDMode;)V

    #@2d
    sput-object v0, Landroid/icu/text/Normalizer;->FCD:Landroid/icu/text/Normalizer$Mode;

    #@2f
    .line 328
    sget-object v0, Landroid/icu/text/Normalizer;->NONE:Landroid/icu/text/Normalizer$Mode;

    #@31
    sput-object v0, Landroid/icu/text/Normalizer;->NO_OP:Landroid/icu/text/Normalizer$Mode;

    #@33
    .line 347
    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    #@35
    sput-object v0, Landroid/icu/text/Normalizer;->COMPOSE:Landroid/icu/text/Normalizer$Mode;

    #@37
    .line 366
    sget-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    #@39
    sput-object v0, Landroid/icu/text/Normalizer;->COMPOSE_COMPAT:Landroid/icu/text/Normalizer$Mode;

    #@3b
    .line 385
    sget-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    #@3d
    sput-object v0, Landroid/icu/text/Normalizer;->DECOMP:Landroid/icu/text/Normalizer$Mode;

    #@3f
    .line 404
    sget-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    #@41
    sput-object v0, Landroid/icu/text/Normalizer;->DECOMP_COMPAT:Landroid/icu/text/Normalizer$Mode;

    #@43
    .line 442
    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    #@45
    const/4 v1, 0x0

    #@46
    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer$QuickCheckResult;)V

    #@49
    sput-object v0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@4b
    .line 448
    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    #@4d
    const/4 v1, 0x1

    #@4e
    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer$QuickCheckResult;)V

    #@51
    sput-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@53
    .line 455
    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    #@55
    const/4 v1, 0x2

    #@56
    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer$QuickCheckResult;)V

    #@59
    sput-object v0, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@5b
    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/Normalizer$Mode;I)V
    .locals 2
    .param p1, "iter"    # Landroid/icu/text/UCharacterIterator;
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "options"    # I

    #@0
    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 577
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/icu/text/UCharacterIterator;

    #@9
    iput-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@b
    .line 578
    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    #@d
    .line 579
    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    #@f
    .line 580
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@15
    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    iput-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 575
    return-void

    #@1d
    .line 582
    :catch_0
    move-exception v0

    #@1e
    .line 583
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    #@20
    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@23
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "opt"    # I

    #@0
    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 534
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@9
    .line 535
    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    #@b
    .line 536
    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    #@d
    .line 537
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@13
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    iput-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@1a
    .line 533
    return-void
.end method

.method public constructor <init>(Ljava/text/CharacterIterator;Landroid/icu/text/Normalizer$Mode;I)V
    .locals 1
    .param p1, "iter"    # Ljava/text/CharacterIterator;
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "opt"    # I

    #@0
    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 557
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/text/CharacterIterator;

    #@9
    invoke-static {v0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@f
    .line 558
    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    #@11
    .line 559
    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    #@13
    .line 560
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@19
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@20
    .line 556
    return-void
.end method

.method private clearBuffer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1809
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 1810
    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@8
    .line 1808
    return-void
.end method

.method static cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 28
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 2038
    const/16 v24, 0x0

    #@2
    .local v24, "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    const/16 v25, 0x0

    #@4
    .line 2061
    .local v25, "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    const/high16 v26, 0x80000

    #@6
    and-int v26, v26, p2

    #@8
    if-eqz v26, :cond_2

    #@a
    .line 2062
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@d
    move-result-object v26

    #@e
    move-object/from16 v0, v26

    #@10
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@12
    move-object/from16 v19, v0

    #@14
    .line 2066
    :goto_0
    const/high16 v26, 0x10000

    #@16
    and-int v26, v26, p2

    #@18
    if-eqz v26, :cond_3

    #@1a
    .line 2067
    sget-object v7, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@1c
    .line 2068
    .local v7, "csp":Landroid/icu/impl/UCaseProps;
    new-instance v10, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    .line 2069
    .local v10, "fold1":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    .line 2076
    .end local v7    # "csp":Landroid/icu/impl/UCaseProps;
    .end local v10    # "fold1":Ljava/lang/StringBuilder;
    :goto_1
    const/16 v20, 0x0

    #@28
    .line 2077
    .local v20, "s1":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@2b
    move-result v17

    #@2c
    .line 2078
    .local v17, "limit1":I
    const/16 v22, 0x0

    #@2e
    .line 2079
    .local v22, "s2":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@31
    move-result v18

    #@32
    .line 2081
    .local v18, "limit2":I
    const/4 v15, 0x0

    #@33
    .local v15, "level2":I
    const/4 v13, 0x0

    #@34
    .line 2082
    .local v13, "level1":I
    const/4 v4, -0x1

    #@35
    .local v4, "c2":I
    const/4 v3, -0x1

    #@36
    .line 2091
    .end local v24    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local v25    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .local v3, "c1":I
    :goto_2
    if-gez v3, :cond_0

    #@38
    :goto_3
    move/from16 v21, v20

    #@3a
    .line 2094
    .end local v20    # "s1":I
    .local v21, "s1":I
    move/from16 v0, v21

    #@3c
    move/from16 v1, v17

    #@3e
    if-ne v0, v1, :cond_4

    #@40
    .line 2095
    if-nez v13, :cond_5

    #@42
    .line 2096
    const/4 v3, -0x1

    #@43
    move/from16 v20, v21

    #@45
    .line 2114
    .end local v21    # "s1":I
    .restart local v20    # "s1":I
    :cond_0
    :goto_4
    if-gez v4, :cond_1

    #@47
    :goto_5
    move/from16 v23, v22

    #@49
    .line 2117
    .end local v22    # "s2":I
    .local v23, "s2":I
    move/from16 v0, v23

    #@4b
    move/from16 v1, v18

    #@4d
    if-ne v0, v1, :cond_6

    #@4f
    .line 2118
    if-nez v15, :cond_7

    #@51
    .line 2119
    const/4 v4, -0x1

    #@52
    move/from16 v22, v23

    #@54
    .line 2141
    .end local v23    # "s2":I
    .restart local v22    # "s2":I
    :cond_1
    :goto_6
    if-ne v3, v4, :cond_9

    #@56
    .line 2142
    if-gez v3, :cond_8

    #@58
    .line 2143
    const/16 v26, 0x0

    #@5a
    return v26

    #@5b
    .line 2064
    .end local v3    # "c1":I
    .end local v4    # "c2":I
    .end local v13    # "level1":I
    .end local v15    # "level2":I
    .end local v17    # "limit1":I
    .end local v18    # "limit2":I
    .end local v20    # "s1":I
    .end local v22    # "s2":I
    .restart local v24    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v25    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    :cond_2
    const/16 v19, 0x0

    #@5d
    .local v19, "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    goto :goto_0

    #@5e
    .line 2071
    .end local v19    # "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    :cond_3
    const/4 v7, 0x0

    #@5f
    .line 2072
    .local v7, "csp":Landroid/icu/impl/UCaseProps;
    const/4 v11, 0x0

    #@60
    .local v11, "fold2":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    #@61
    .local v10, "fold1":Ljava/lang/StringBuilder;
    goto :goto_1

    #@62
    .line 2100
    .end local v7    # "csp":Landroid/icu/impl/UCaseProps;
    .end local v10    # "fold1":Ljava/lang/StringBuilder;
    .end local v11    # "fold2":Ljava/lang/StringBuilder;
    .end local v24    # "stack1":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .end local v25    # "stack2":[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .restart local v3    # "c1":I
    .restart local v4    # "c2":I
    .restart local v13    # "level1":I
    .restart local v15    # "level2":I
    .restart local v17    # "limit1":I
    .restart local v18    # "limit2":I
    .restart local v21    # "s1":I
    .restart local v22    # "s2":I
    :cond_4
    add-int/lit8 v20, v21, 0x1

    #@64
    .end local v21    # "s1":I
    .restart local v20    # "s1":I
    move-object/from16 v0, p0

    #@66
    move/from16 v1, v21

    #@68
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@6b
    move-result v3

    #@6c
    .line 2101
    goto :goto_4

    #@6d
    .line 2106
    .end local v20    # "s1":I
    .restart local v21    # "s1":I
    :cond_5
    add-int/lit8 v13, v13, -0x1

    #@6f
    .line 2107
    aget-object v26, v24, v13

    #@71
    move-object/from16 v0, v26

    #@73
    iget-object v0, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    #@75
    move-object/from16 p0, v0

    #@77
    .line 2108
    if-eqz p0, :cond_5

    #@79
    .line 2109
    aget-object v26, v24, v13

    #@7b
    move-object/from16 v0, v26

    #@7d
    iget v0, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    #@7f
    move/from16 v20, v0

    #@81
    .line 2110
    .end local v21    # "s1":I
    .restart local v20    # "s1":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@84
    move-result v17

    #@85
    goto :goto_3

    #@86
    .line 2123
    .end local v22    # "s2":I
    .restart local v23    # "s2":I
    :cond_6
    add-int/lit8 v22, v23, 0x1

    #@88
    .end local v23    # "s2":I
    .restart local v22    # "s2":I
    move-object/from16 v0, p1

    #@8a
    move/from16 v1, v23

    #@8c
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@8f
    move-result v4

    #@90
    .line 2124
    goto :goto_6

    #@91
    .line 2129
    .end local v22    # "s2":I
    .restart local v23    # "s2":I
    :cond_7
    add-int/lit8 v15, v15, -0x1

    #@93
    .line 2130
    aget-object v26, v25, v15

    #@95
    move-object/from16 v0, v26

    #@97
    iget-object v0, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    #@99
    move-object/from16 p1, v0

    #@9b
    .line 2131
    if-eqz p1, :cond_7

    #@9d
    .line 2132
    aget-object v26, v25, v15

    #@9f
    move-object/from16 v0, v26

    #@a1
    iget v0, v0, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    #@a3
    move/from16 v22, v0

    #@a5
    .line 2133
    .end local v23    # "s2":I
    .restart local v22    # "s2":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@a8
    move-result v18

    #@a9
    goto :goto_5

    #@aa
    .line 2145
    :cond_8
    const/4 v4, -0x1

    #@ab
    const/4 v3, -0x1

    #@ac
    .line 2146
    goto :goto_2

    #@ad
    .line 2147
    :cond_9
    if-gez v3, :cond_a

    #@af
    .line 2148
    const/16 v26, -0x1

    #@b1
    return v26

    #@b2
    .line 2149
    :cond_a
    if-gez v4, :cond_b

    #@b4
    .line 2150
    const/16 v26, 0x1

    #@b6
    return v26

    #@b7
    .line 2155
    :cond_b
    move v5, v3

    #@b8
    .line 2156
    .local v5, "cp1":I
    int-to-char v0, v3

    #@b9
    move/from16 v26, v0

    #@bb
    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@be
    move-result v26

    #@bf
    if-eqz v26, :cond_c

    #@c1
    .line 2159
    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@c4
    move-result v26

    #@c5
    if-eqz v26, :cond_10

    #@c7
    .line 2160
    move/from16 v0, v20

    #@c9
    move/from16 v1, v17

    #@cb
    if-eq v0, v1, :cond_c

    #@cd
    move-object/from16 v0, p0

    #@cf
    move/from16 v1, v20

    #@d1
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@d4
    move-result v2

    #@d5
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@d8
    move-result v26

    #@d9
    if-eqz v26, :cond_c

    #@db
    .line 2162
    int-to-char v0, v3

    #@dc
    move/from16 v26, v0

    #@de
    move/from16 v0, v26

    #@e0
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    #@e3
    move-result v5

    #@e4
    .line 2171
    .end local v2    # "c":C
    :cond_c
    :goto_7
    move v6, v4

    #@e5
    .line 2172
    .local v6, "cp2":I
    int-to-char v0, v4

    #@e6
    move/from16 v26, v0

    #@e8
    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@eb
    move-result v26

    #@ec
    if-eqz v26, :cond_d

    #@ee
    .line 2175
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@f1
    move-result v26

    #@f2
    if-eqz v26, :cond_11

    #@f4
    .line 2176
    move/from16 v0, v22

    #@f6
    move/from16 v1, v18

    #@f8
    if-eq v0, v1, :cond_d

    #@fa
    move-object/from16 v0, p1

    #@fc
    move/from16 v1, v22

    #@fe
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@101
    move-result v2

    #@102
    .restart local v2    # "c":C
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@105
    move-result v26

    #@106
    if-eqz v26, :cond_d

    #@108
    .line 2178
    int-to-char v0, v4

    #@109
    move/from16 v26, v0

    #@10b
    move/from16 v0, v26

    #@10d
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    #@110
    move-result v6

    #@111
    .line 2192
    .end local v2    # "c":C
    :cond_d
    :goto_8
    if-nez v13, :cond_14

    #@113
    const/high16 v26, 0x10000

    #@115
    and-int v26, v26, p2

    #@117
    if-eqz v26, :cond_14

    #@119
    .line 2193
    move/from16 v0, p2

    #@11b
    invoke-virtual {v7, v5, v10, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    #@11e
    move-result v12

    #@11f
    .local v12, "length":I
    if-ltz v12, :cond_14

    #@121
    .line 2196
    int-to-char v0, v3

    #@122
    move/from16 v26, v0

    #@124
    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@127
    move-result v26

    #@128
    if-eqz v26, :cond_e

    #@12a
    .line 2197
    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@12d
    move-result v26

    #@12e
    if-eqz v26, :cond_12

    #@130
    .line 2199
    add-int/lit8 v20, v20, 0x1

    #@132
    .line 2214
    :cond_e
    :goto_9
    if-nez v24, :cond_f

    #@134
    .line 2215
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    #@137
    move-result-object v24

    #@138
    .line 2217
    :cond_f
    const/16 v26, 0x0

    #@13a
    aget-object v26, v24, v26

    #@13c
    move-object/from16 v0, p0

    #@13e
    move-object/from16 v1, v26

    #@140
    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    #@142
    .line 2218
    const/16 v26, 0x0

    #@144
    aget-object v26, v24, v26

    #@146
    move/from16 v0, v20

    #@148
    move-object/from16 v1, v26

    #@14a
    iput v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    #@14c
    .line 2219
    add-int/lit8 v13, v13, 0x1

    #@14e
    .line 2223
    const/16 v26, 0x1f

    #@150
    move/from16 v0, v26

    #@152
    if-gt v12, v0, :cond_13

    #@154
    .line 2224
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    #@157
    move-result v26

    #@158
    sub-int v26, v26, v12

    #@15a
    const/16 v27, 0x0

    #@15c
    move/from16 v0, v27

    #@15e
    move/from16 v1, v26

    #@160
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@163
    .line 2231
    :goto_a
    move-object/from16 p0, v10

    #@165
    .line 2232
    const/16 v20, 0x0

    #@167
    .line 2233
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    #@16a
    move-result v17

    #@16b
    .line 2236
    const/4 v3, -0x1

    #@16c
    .line 2237
    goto/16 :goto_2

    #@16e
    .line 2165
    .end local v6    # "cp2":I
    .end local v12    # "length":I
    :cond_10
    add-int/lit8 v26, v20, -0x2

    #@170
    if-ltz v26, :cond_c

    #@172
    add-int/lit8 v26, v20, -0x2

    #@174
    move-object/from16 v0, p0

    #@176
    move/from16 v1, v26

    #@178
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@17b
    move-result v2

    #@17c
    .restart local v2    # "c":C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@17f
    move-result v26

    #@180
    if-eqz v26, :cond_c

    #@182
    .line 2166
    int-to-char v0, v3

    #@183
    move/from16 v26, v0

    #@185
    move/from16 v0, v26

    #@187
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    #@18a
    move-result v5

    #@18b
    goto/16 :goto_7

    #@18d
    .line 2181
    .end local v2    # "c":C
    .restart local v6    # "cp2":I
    :cond_11
    add-int/lit8 v26, v22, -0x2

    #@18f
    if-ltz v26, :cond_d

    #@191
    add-int/lit8 v26, v22, -0x2

    #@193
    move-object/from16 v0, p1

    #@195
    move/from16 v1, v26

    #@197
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@19a
    move-result v2

    #@19b
    .restart local v2    # "c":C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@19e
    move-result v26

    #@19f
    if-eqz v26, :cond_d

    #@1a1
    .line 2182
    int-to-char v0, v4

    #@1a2
    move/from16 v26, v0

    #@1a4
    move/from16 v0, v26

    #@1a6
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    #@1a9
    move-result v6

    #@1aa
    goto/16 :goto_8

    #@1ac
    .line 2208
    .end local v2    # "c":C
    .restart local v12    # "length":I
    :cond_12
    add-int/lit8 v22, v22, -0x1

    #@1ae
    .line 2209
    add-int/lit8 v26, v22, -0x1

    #@1b0
    move-object/from16 v0, p1

    #@1b2
    move/from16 v1, v26

    #@1b4
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b7
    move-result v4

    #@1b8
    goto/16 :goto_9

    #@1ba
    .line 2226
    :cond_13
    const/16 v26, 0x0

    #@1bc
    move/from16 v0, v26

    #@1be
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1c1
    .line 2227
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@1c4
    goto :goto_a

    #@1c5
    .line 2240
    .end local v12    # "length":I
    :cond_14
    if-nez v15, :cond_19

    #@1c7
    const/high16 v26, 0x10000

    #@1c9
    and-int v26, v26, p2

    #@1cb
    if-eqz v26, :cond_19

    #@1cd
    .line 2241
    move/from16 v0, p2

    #@1cf
    invoke-virtual {v7, v6, v11, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    #@1d2
    move-result v12

    #@1d3
    .restart local v12    # "length":I
    if-ltz v12, :cond_19

    #@1d5
    .line 2244
    int-to-char v0, v4

    #@1d6
    move/from16 v26, v0

    #@1d8
    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@1db
    move-result v26

    #@1dc
    if-eqz v26, :cond_15

    #@1de
    .line 2245
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@1e1
    move-result v26

    #@1e2
    if-eqz v26, :cond_17

    #@1e4
    .line 2247
    add-int/lit8 v22, v22, 0x1

    #@1e6
    .line 2262
    :cond_15
    :goto_b
    if-nez v25, :cond_16

    #@1e8
    .line 2263
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    #@1eb
    move-result-object v25

    #@1ec
    .line 2265
    :cond_16
    const/16 v26, 0x0

    #@1ee
    aget-object v26, v25, v26

    #@1f0
    move-object/from16 v0, p1

    #@1f2
    move-object/from16 v1, v26

    #@1f4
    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    #@1f6
    .line 2266
    const/16 v26, 0x0

    #@1f8
    aget-object v26, v25, v26

    #@1fa
    move/from16 v0, v22

    #@1fc
    move-object/from16 v1, v26

    #@1fe
    iput v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    #@200
    .line 2267
    add-int/lit8 v15, v15, 0x1

    #@202
    .line 2271
    const/16 v26, 0x1f

    #@204
    move/from16 v0, v26

    #@206
    if-gt v12, v0, :cond_18

    #@208
    .line 2272
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    #@20b
    move-result v26

    #@20c
    sub-int v26, v26, v12

    #@20e
    const/16 v27, 0x0

    #@210
    move/from16 v0, v27

    #@212
    move/from16 v1, v26

    #@214
    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@217
    .line 2279
    :goto_c
    move-object/from16 p1, v11

    #@219
    .line 2280
    const/16 v22, 0x0

    #@21b
    .line 2281
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    #@21e
    move-result v18

    #@21f
    .line 2284
    const/4 v4, -0x1

    #@220
    .line 2285
    goto/16 :goto_2

    #@222
    .line 2256
    :cond_17
    add-int/lit8 v20, v20, -0x1

    #@224
    .line 2257
    add-int/lit8 v26, v20, -0x1

    #@226
    move-object/from16 v0, p0

    #@228
    move/from16 v1, v26

    #@22a
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@22d
    move-result v3

    #@22e
    goto :goto_b

    #@22f
    .line 2274
    :cond_18
    const/16 v26, 0x0

    #@231
    move/from16 v0, v26

    #@233
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@236
    .line 2275
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@239
    goto :goto_c

    #@23a
    .line 2288
    .end local v12    # "length":I
    :cond_19
    const/16 v26, 0x2

    #@23c
    move/from16 v0, v26

    #@23e
    if-ge v13, v0, :cond_1e

    #@240
    const/high16 v26, 0x80000

    #@242
    and-int v26, v26, p2

    #@244
    if-eqz v26, :cond_1e

    #@246
    .line 2289
    move-object/from16 v0, v19

    #@248
    invoke-virtual {v0, v5}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    #@24b
    move-result-object v8

    #@24c
    .local v8, "decomp1":Ljava/lang/String;
    if-eqz v8, :cond_1e

    #@24e
    .line 2292
    int-to-char v0, v3

    #@24f
    move/from16 v26, v0

    #@251
    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@254
    move-result v26

    #@255
    if-eqz v26, :cond_1a

    #@257
    .line 2293
    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@25a
    move-result v26

    #@25b
    if-eqz v26, :cond_1d

    #@25d
    .line 2295
    add-int/lit8 v20, v20, 0x1

    #@25f
    .line 2310
    :cond_1a
    :goto_d
    if-nez v24, :cond_1b

    #@261
    .line 2311
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    #@264
    move-result-object v24

    #@265
    .line 2313
    :cond_1b
    aget-object v26, v24, v13

    #@267
    move-object/from16 v0, p0

    #@269
    move-object/from16 v1, v26

    #@26b
    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    #@26d
    .line 2314
    aget-object v26, v24, v13

    #@26f
    move/from16 v0, v20

    #@271
    move-object/from16 v1, v26

    #@273
    iput v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    #@275
    .line 2315
    add-int/lit8 v13, v13, 0x1

    #@277
    .line 2318
    const/16 v26, 0x2

    #@279
    move/from16 v0, v26

    #@27b
    if-ge v13, v0, :cond_1c

    #@27d
    .line 2319
    add-int/lit8 v14, v13, 0x1

    #@27f
    .end local v13    # "level1":I
    .local v14, "level1":I
    aget-object v26, v24, v13

    #@281
    const/16 v27, 0x0

    #@283
    move-object/from16 v0, v27

    #@285
    move-object/from16 v1, v26

    #@287
    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    #@289
    move v13, v14

    #@28a
    .line 2323
    .end local v14    # "level1":I
    .restart local v13    # "level1":I
    :cond_1c
    move-object/from16 p0, v8

    #@28c
    .line 2324
    const/16 v20, 0x0

    #@28e
    .line 2325
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@291
    move-result v17

    #@292
    .line 2328
    const/4 v3, -0x1

    #@293
    .line 2329
    goto/16 :goto_2

    #@295
    .line 2304
    :cond_1d
    add-int/lit8 v22, v22, -0x1

    #@297
    .line 2305
    add-int/lit8 v26, v22, -0x1

    #@299
    move-object/from16 v0, p1

    #@29b
    move/from16 v1, v26

    #@29d
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2a0
    move-result v4

    #@2a1
    goto :goto_d

    #@2a2
    .line 2332
    .end local v8    # "decomp1":Ljava/lang/String;
    :cond_1e
    const/16 v26, 0x2

    #@2a4
    move/from16 v0, v26

    #@2a6
    if-ge v15, v0, :cond_23

    #@2a8
    const/high16 v26, 0x80000

    #@2aa
    and-int v26, v26, p2

    #@2ac
    if-eqz v26, :cond_23

    #@2ae
    .line 2333
    move-object/from16 v0, v19

    #@2b0
    invoke-virtual {v0, v6}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    #@2b3
    move-result-object v9

    #@2b4
    .local v9, "decomp2":Ljava/lang/String;
    if-eqz v9, :cond_23

    #@2b6
    .line 2336
    int-to-char v0, v4

    #@2b7
    move/from16 v26, v0

    #@2b9
    invoke-static/range {v26 .. v26}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@2bc
    move-result v26

    #@2bd
    if-eqz v26, :cond_1f

    #@2bf
    .line 2337
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@2c2
    move-result v26

    #@2c3
    if-eqz v26, :cond_22

    #@2c5
    .line 2339
    add-int/lit8 v22, v22, 0x1

    #@2c7
    .line 2354
    :cond_1f
    :goto_e
    if-nez v25, :cond_20

    #@2c9
    .line 2355
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    #@2cc
    move-result-object v25

    #@2cd
    .line 2357
    :cond_20
    aget-object v26, v25, v15

    #@2cf
    move-object/from16 v0, p1

    #@2d1
    move-object/from16 v1, v26

    #@2d3
    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    #@2d5
    .line 2358
    aget-object v26, v25, v15

    #@2d7
    move/from16 v0, v22

    #@2d9
    move-object/from16 v1, v26

    #@2db
    iput v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    #@2dd
    .line 2359
    add-int/lit8 v15, v15, 0x1

    #@2df
    .line 2362
    const/16 v26, 0x2

    #@2e1
    move/from16 v0, v26

    #@2e3
    if-ge v15, v0, :cond_21

    #@2e5
    .line 2363
    add-int/lit8 v16, v15, 0x1

    #@2e7
    .end local v15    # "level2":I
    .local v16, "level2":I
    aget-object v26, v25, v15

    #@2e9
    const/16 v27, 0x0

    #@2eb
    move-object/from16 v0, v27

    #@2ed
    move-object/from16 v1, v26

    #@2ef
    iput-object v0, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    #@2f1
    move/from16 v15, v16

    #@2f3
    .line 2367
    .end local v16    # "level2":I
    .restart local v15    # "level2":I
    :cond_21
    move-object/from16 p1, v9

    #@2f5
    .line 2368
    const/16 v22, 0x0

    #@2f7
    .line 2369
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@2fa
    move-result v18

    #@2fb
    .line 2372
    const/4 v4, -0x1

    #@2fc
    .line 2373
    goto/16 :goto_2

    #@2fe
    .line 2348
    :cond_22
    add-int/lit8 v20, v20, -0x1

    #@300
    .line 2349
    add-int/lit8 v26, v20, -0x1

    #@302
    move-object/from16 v0, p0

    #@304
    move/from16 v1, v26

    #@306
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@309
    move-result v3

    #@30a
    goto :goto_e

    #@30b
    .line 2393
    .end local v9    # "decomp2":Ljava/lang/String;
    :cond_23
    const v26, 0xd800

    #@30e
    move/from16 v0, v26

    #@310
    if-lt v3, v0, :cond_27

    #@312
    const v26, 0xd800

    #@315
    move/from16 v0, v26

    #@317
    if-lt v4, v0, :cond_27

    #@319
    const v26, 0x8000

    #@31c
    and-int v26, v26, p2

    #@31e
    if-eqz v26, :cond_27

    #@320
    .line 2396
    const v26, 0xdbff

    #@323
    move/from16 v0, v26

    #@325
    if-gt v3, v0, :cond_24

    #@327
    move/from16 v0, v20

    #@329
    move/from16 v1, v17

    #@32b
    if-eq v0, v1, :cond_24

    #@32d
    move-object/from16 v0, p0

    #@32f
    move/from16 v1, v20

    #@331
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@334
    move-result v26

    #@335
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@338
    move-result v26

    #@339
    if-nez v26, :cond_25

    #@33b
    .line 2397
    :cond_24
    int-to-char v0, v3

    #@33c
    move/from16 v26, v0

    #@33e
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@341
    move-result v26

    #@342
    if-eqz v26, :cond_28

    #@344
    add-int/lit8 v26, v20, -0x1

    #@346
    if-eqz v26, :cond_28

    #@348
    add-int/lit8 v26, v20, -0x2

    #@34a
    move-object/from16 v0, p0

    #@34c
    move/from16 v1, v26

    #@34e
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@351
    move-result v26

    #@352
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@355
    move-result v26

    #@356
    .line 2395
    if-eqz v26, :cond_28

    #@358
    .line 2406
    :cond_25
    :goto_f
    const v26, 0xdbff

    #@35b
    move/from16 v0, v26

    #@35d
    if-gt v4, v0, :cond_26

    #@35f
    move/from16 v0, v22

    #@361
    move/from16 v1, v18

    #@363
    if-eq v0, v1, :cond_26

    #@365
    move-object/from16 v0, p1

    #@367
    move/from16 v1, v22

    #@369
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@36c
    move-result v26

    #@36d
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@370
    move-result v26

    #@371
    if-nez v26, :cond_27

    #@373
    .line 2407
    :cond_26
    int-to-char v0, v4

    #@374
    move/from16 v26, v0

    #@376
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@379
    move-result v26

    #@37a
    if-eqz v26, :cond_29

    #@37c
    add-int/lit8 v26, v22, -0x1

    #@37e
    if-eqz v26, :cond_29

    #@380
    add-int/lit8 v26, v22, -0x2

    #@382
    move-object/from16 v0, p1

    #@384
    move/from16 v1, v26

    #@386
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@389
    move-result v26

    #@38a
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@38d
    move-result v26

    #@38e
    .line 2405
    if-eqz v26, :cond_29

    #@390
    .line 2416
    :cond_27
    :goto_10
    sub-int v26, v3, v4

    #@392
    return v26

    #@393
    .line 2402
    :cond_28
    add-int/lit16 v3, v3, -0x2800

    #@395
    goto :goto_f

    #@396
    .line 2412
    :cond_29
    add-int/lit16 v4, v4, -0x2800

    #@398
    goto :goto_10
.end method

.method public static compare(III)I
    .locals 3
    .param p0, "char32a"    # I
    .param p1, "char32b"    # I
    .param p2, "options"    # I

    #@0
    .prologue
    .line 1205
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const/high16 v2, 0x20000

    #@a
    or-int/2addr v2, p2

    #@b
    invoke-static {v0, v1, v2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public static compare(ILjava/lang/String;I)I
    .locals 1
    .param p0, "char32a"    # I
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 1217
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 1156
    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static compare([CII[CIII)I
    .locals 2
    .param p0, "s1"    # [C
    .param p1, "s1Start"    # I
    .param p2, "s1Limit"    # I
    .param p3, "s2"    # [C
    .param p4, "s2Start"    # I
    .param p5, "s2Limit"    # I
    .param p6, "options"    # I

    #@0
    .prologue
    .line 1097
    if-eqz p0, :cond_0

    #@2
    if-gez p1, :cond_1

    #@4
    .line 1101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1097
    :cond_1
    if-ltz p2, :cond_0

    #@c
    .line 1098
    if-eqz p3, :cond_0

    #@e
    if-ltz p4, :cond_0

    #@10
    if-ltz p5, :cond_0

    #@12
    .line 1099
    if-lt p2, p1, :cond_0

    #@14
    if-lt p5, p4, :cond_0

    #@16
    .line 1103
    sub-int v0, p2, p1

    #@18
    invoke-static {p0, p1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@1b
    move-result-object v0

    #@1c
    .line 1104
    sub-int v1, p5, p4

    #@1e
    invoke-static {p3, p4, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@21
    move-result-object v1

    #@22
    .line 1103
    invoke-static {v0, v1, p6}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public static compare([C[CI)I
    .locals 2
    .param p0, "s1"    # [C
    .param p1, "s2"    # [C
    .param p2, "options"    # I

    #@0
    .prologue
    .line 1193
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static compose([CII[CIIZI)I
    .locals 3
    .param p0, "src"    # [C
    .param p1, "srcStart"    # I
    .param p2, "srcLimit"    # I
    .param p3, "dest"    # [C
    .param p4, "destStart"    # I
    .param p5, "destLimit"    # I
    .param p6, "compat"    # Z
    .param p7, "options"    # I

    #@0
    .prologue
    .line 696
    sub-int v2, p2, p1

    #@2
    invoke-static {p0, p1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v1

    #@6
    .line 697
    .local v1, "srcBuffer":Ljava/nio/CharBuffer;
    new-instance v0, Landroid/icu/text/Normalizer$CharsAppendable;

    #@8
    invoke-direct {v0, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    #@b
    .line 698
    .local v0, "app":Landroid/icu/text/Normalizer$CharsAppendable;
    invoke-static {p6, p7}, Landroid/icu/text/Normalizer;->getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, v1, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    #@12
    .line 699
    invoke-virtual {v0}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    #@15
    move-result v2

    #@16
    return v2
.end method

.method public static compose([C[CZI)I
    .locals 8
    .param p0, "source"    # [C
    .param p1, "target"    # [C
    .param p2, "compat"    # Z
    .param p3, "options"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 671
    array-length v2, p0

    #@2
    array-length v5, p1

    #@3
    move-object v0, p0

    #@4
    move-object v3, p1

    #@5
    move v4, v1

    #@6
    move v6, p2

    #@7
    move v7, p3

    #@8
    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->compose([CII[CIIZI)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static compose(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "compat"    # Z

    #@0
    .prologue
    .line 637
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->compose(Ljava/lang/String;ZI)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static compose(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "compat"    # Z
    .param p2, "options"    # I

    #@0
    .prologue
    .line 652
    invoke-static {p1, p2}, Landroid/icu/text/Normalizer;->getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static concatenate([CII[CII[CIILandroid/icu/text/Normalizer$Mode;I)I
    .locals 5
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

    #@0
    .prologue
    .line 1268
    if-nez p6, :cond_0

    #@2
    .line 1269
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1273
    :cond_0
    if-ne p3, p6, :cond_1

    #@a
    if-ge p4, p8, :cond_1

    #@c
    if-ge p7, p5, :cond_1

    #@e
    .line 1274
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v4, "overlapping right and dst ranges"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 1278
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    sub-int v3, p2, p1

    #@1b
    add-int/2addr v3, p5

    #@1c
    sub-int/2addr v3, p4

    #@1d
    add-int/lit8 v3, v3, 0x10

    #@1f
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@22
    .line 1279
    .local v0, "destBuilder":Ljava/lang/StringBuilder;
    sub-int v3, p2, p1

    #@24
    invoke-virtual {v0, p0, p1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@27
    .line 1280
    sub-int v3, p5, p4

    #@29
    invoke-static {p3, p4, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@2c
    move-result-object v2

    #@2d
    .line 1281
    .local v2, "rightBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {p9, p10}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, v0, v2}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@34
    .line 1282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@37
    move-result v1

    #@38
    .line 1283
    .local v1, "destLength":I
    sub-int v3, p8, p7

    #@3a
    if-gt v1, v3, :cond_2

    #@3c
    .line 1284
    const/4 v3, 0x0

    #@3d
    invoke-virtual {v0, v3, v1, p6, p7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    #@40
    .line 1285
    return v1

    #@41
    .line 1287
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@43
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3
.end method

.method public static concatenate(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 4
    .param p0, "left"    # Ljava/lang/String;
    .param p1, "right"    # Ljava/lang/String;
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "options"    # I

    #@0
    .prologue
    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    add-int/2addr v2, v3

    #@b
    add-int/lit8 v2, v2, 0x10

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 1356
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0, p1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method public static concatenate([C[CLandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 4
    .param p0, "left"    # [C
    .param p1, "right"    # [C
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "options"    # I

    #@0
    .prologue
    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    array-length v2, p0

    #@3
    array-length v3, p1

    #@4
    add-int/2addr v2, v3

    #@5
    add-int/lit8 v2, v2, 0x10

    #@7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 1320
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@11
    move-result-object v1

    #@12
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v0, v2}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method private static final createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2015
    const/4 v0, 0x2

    #@2
    new-array v0, v0, [Landroid/icu/text/Normalizer$CmpEquivLevel;

    #@4
    .line 2016
    new-instance v1, Landroid/icu/text/Normalizer$CmpEquivLevel;

    #@6
    invoke-direct {v1, v3}, Landroid/icu/text/Normalizer$CmpEquivLevel;-><init>(Landroid/icu/text/Normalizer$CmpEquivLevel;)V

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    new-instance v1, Landroid/icu/text/Normalizer$CmpEquivLevel;

    #@e
    invoke-direct {v1, v3}, Landroid/icu/text/Normalizer$CmpEquivLevel;-><init>(Landroid/icu/text/Normalizer$CmpEquivLevel;)V

    #@11
    const/4 v2, 0x1

    #@12
    aput-object v1, v0, v2

    #@14
    .line 2015
    return-object v0
.end method

.method public static decompose([CII[CIIZI)I
    .locals 3
    .param p0, "src"    # [C
    .param p1, "srcStart"    # I
    .param p2, "srcLimit"    # I
    .param p3, "dest"    # [C
    .param p4, "destStart"    # I
    .param p5, "destLimit"    # I
    .param p6, "compat"    # Z
    .param p7, "options"    # I

    #@0
    .prologue
    .line 772
    sub-int v2, p2, p1

    #@2
    invoke-static {p0, p1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v1

    #@6
    .line 773
    .local v1, "srcBuffer":Ljava/nio/CharBuffer;
    new-instance v0, Landroid/icu/text/Normalizer$CharsAppendable;

    #@8
    invoke-direct {v0, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    #@b
    .line 774
    .local v0, "app":Landroid/icu/text/Normalizer$CharsAppendable;
    invoke-static {p6, p7}, Landroid/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, v1, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    #@12
    .line 775
    invoke-virtual {v0}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    #@15
    move-result v2

    #@16
    return v2
.end method

.method public static decompose([C[CZI)I
    .locals 8
    .param p0, "source"    # [C
    .param p1, "target"    # [C
    .param p2, "compat"    # Z
    .param p3, "options"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 747
    array-length v2, p0

    #@2
    array-length v5, p1

    #@3
    move-object v0, p0

    #@4
    move-object v3, p1

    #@5
    move v4, v1

    #@6
    move v6, p2

    #@7
    move v7, p3

    #@8
    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->decompose([CII[CIIZI)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static decompose(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "compat"    # Z

    #@0
    .prologue
    .line 713
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;ZI)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decompose(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "compat"    # Z
    .param p2, "options"    # I

    #@0
    .prologue
    .line 728
    invoke-static {p1, p2}, Landroid/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static final getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;
    .locals 1
    .param p0, "compat"    # Z
    .param p1, "options"    # I

    #@0
    .prologue
    .line 620
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    #@4
    :goto_0
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    :cond_0
    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    #@b
    goto :goto_0
.end method

.method private static final getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;
    .locals 1
    .param p0, "compat"    # Z
    .param p1, "options"    # I

    #@0
    .prologue
    .line 623
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    #@4
    :goto_0
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    :cond_0
    sget-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    #@b
    goto :goto_0
.end method

.method public static getFC_NFKC_Closure(I[C)I
    .locals 4
    .param p0, "c"    # I
    .param p1, "dest"    # [C

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1367
    invoke-static {p0}, Landroid/icu/text/Normalizer;->getFC_NFKC_Closure(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1368
    .local v0, "closure":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    .line 1369
    .local v1, "length":I
    if-eqz v1, :cond_0

    #@b
    if-eqz p1, :cond_0

    #@d
    array-length v2, p1

    #@e
    if-gt v1, v2, :cond_0

    #@10
    .line 1370
    invoke-virtual {v0, v3, v1, p1, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@13
    .line 1372
    :cond_0
    return v1
.end method

.method public static getFC_NFKC_Closure(I)Ljava/lang/String;
    .locals 9
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1387
    invoke-static {}, Landroid/icu/text/Normalizer$NFKCModeImpl;->-get0()Landroid/icu/text/Normalizer$ModeImpl;

    #@4
    move-result-object v7

    #@5
    invoke-static {v7}, Landroid/icu/text/Normalizer$ModeImpl;->-get0(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;

    #@8
    move-result-object v5

    #@9
    .line 1388
    .local v5, "nfkc":Landroid/icu/text/Normalizer2;
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@b
    .line 1390
    .local v0, "csp":Landroid/icu/impl/UCaseProps;
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 1391
    .local v1, "folded":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0, v1, v8}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    #@13
    move-result v2

    #@14
    .line 1392
    .local v2, "folded1Length":I
    if-gez v2, :cond_2

    #@16
    move-object v7, v5

    #@17
    .line 1393
    check-cast v7, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    #@19
    iget-object v6, v7, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@1b
    .line 1394
    .local v6, "nfkcImpl":Landroid/icu/impl/Normalizer2Impl;
    invoke-virtual {v6, p0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@1e
    move-result v7

    #@1f
    invoke-virtual {v6, v7}, Landroid/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_0

    #@25
    .line 1395
    const-string/jumbo v7, ""

    #@28
    return-object v7

    #@29
    .line 1397
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@2c
    .line 1403
    .end local v6    # "nfkcImpl":Landroid/icu/impl/Normalizer2Impl;
    :cond_1
    :goto_0
    invoke-virtual {v5, v1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 1405
    .local v3, "kc1":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v5, v7}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 1407
    .local v4, "kc2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_3

    #@3e
    .line 1408
    const-string/jumbo v7, ""

    #@41
    return-object v7

    #@42
    .line 1399
    .end local v3    # "kc1":Ljava/lang/String;
    .end local v4    # "kc2":Ljava/lang/String;
    :cond_2
    const/16 v7, 0x1f

    #@44
    if-le v2, v7, :cond_1

    #@46
    .line 1400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@49
    goto :goto_0

    #@4a
    .line 1410
    .restart local v3    # "kc1":Ljava/lang/String;
    .restart local v4    # "kc2":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method private static internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;
    .param p2, "options"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1861
    ushr-int/lit8 v3, p2, 0x14

    #@3
    .line 1862
    .local v3, "normOptions":I
    const/high16 v6, 0x80000

    #@5
    or-int/2addr p2, v6

    #@6
    .line 1885
    const/high16 v6, 0x20000

    #@8
    and-int/2addr v6, p2

    #@9
    if-eqz v6, :cond_0

    #@b
    and-int/lit8 v6, p2, 0x1

    #@d
    if-eqz v6, :cond_2

    #@f
    .line 1887
    :cond_0
    and-int/lit8 v6, p2, 0x1

    #@11
    if-eqz v6, :cond_3

    #@13
    .line 1888
    sget-object v6, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    #@15
    invoke-virtual {v6, v3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@18
    move-result-object v2

    #@19
    .line 1894
    .local v2, "n2":Landroid/icu/text/Normalizer2;
    :goto_0
    invoke-virtual {v2, p0}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    #@1c
    move-result v4

    #@1d
    .line 1895
    .local v4, "spanQCYes1":I
    invoke-virtual {v2, p1}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    #@20
    move-result v5

    #@21
    .line 1906
    .local v5, "spanQCYes2":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@24
    move-result v6

    #@25
    if-ge v4, v6, :cond_1

    #@27
    .line 1907
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@2c
    move-result v7

    #@2d
    add-int/lit8 v7, v7, 0x10

    #@2f
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@32
    invoke-virtual {v6, p0, v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 1908
    .local v0, "fcd1":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@39
    move-result v6

    #@3a
    invoke-interface {p0, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v2, v0, v6}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@41
    move-result-object p0

    #@42
    .line 1910
    .end local v0    # "fcd1":Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@45
    move-result v6

    #@46
    if-ge v5, v6, :cond_2

    #@48
    .line 1911
    new-instance v6, Ljava/lang/StringBuilder;

    #@4a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4d
    move-result v7

    #@4e
    add-int/lit8 v7, v7, 0x10

    #@50
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@53
    invoke-virtual {v6, p1, v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    .line 1912
    .local v1, "fcd2":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5a
    move-result v6

    #@5b
    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v2, v1, v6}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@62
    move-result-object p1

    #@63
    .line 1916
    .end local v1    # "fcd2":Ljava/lang/StringBuilder;
    .end local v2    # "n2":Landroid/icu/text/Normalizer2;
    .end local v4    # "spanQCYes1":I
    .end local v5    # "spanQCYes2":I
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    #@66
    move-result v6

    #@67
    return v6

    #@68
    .line 1890
    :cond_3
    sget-object v6, Landroid/icu/text/Normalizer;->FCD:Landroid/icu/text/Normalizer$Mode;

    #@6a
    invoke-virtual {v6, v3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@6d
    move-result-object v2

    #@6e
    .restart local v2    # "n2":Landroid/icu/text/Normalizer2;
    goto :goto_0
.end method

.method public static isNormalized(ILandroid/icu/text/Normalizer$Mode;I)Z
    .locals 1
    .param p0, "char32"    # I
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 1038
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 1023
    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isNormalized([CIILandroid/icu/text/Normalizer$Mode;I)Z
    .locals 2
    .param p0, "src"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p4, "options"    # I

    #@0
    .prologue
    .line 1001
    sub-int v1, p2, p1

    #@2
    invoke-static {p0, p1, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    .line 1002
    .local v0, "srcBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {p3, p4}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method private nextNormalize()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1814
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    #@4
    .line 1815
    iget v3, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    #@6
    iput v3, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@8
    .line 1816
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@a
    iget v4, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    #@c
    invoke-virtual {v3, v4}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    #@f
    .line 1818
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@11
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@14
    move-result v0

    #@15
    .line 1819
    .local v0, "c":I
    if-gez v0, :cond_0

    #@17
    .line 1820
    return v2

    #@18
    .line 1822
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 1823
    .local v1, "segment":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@23
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@26
    move-result v0

    #@27
    if-ltz v0, :cond_1

    #@29
    .line 1824
    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@2b
    invoke-virtual {v3, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_3

    #@31
    .line 1825
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@33
    const/4 v4, -0x1

    #@34
    invoke-virtual {v3, v4}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    #@37
    .line 1830
    :cond_1
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@39
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@3c
    move-result v3

    #@3d
    iput v3, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    #@3f
    .line 1831
    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@41
    iget-object v4, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@43
    invoke-virtual {v3, v1, v4}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@46
    .line 1832
    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_2

    #@4e
    const/4 v2, 0x1

    #@4f
    :cond_2
    return v2

    #@50
    .line 1828
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@53
    goto :goto_0
.end method

.method public static normalize([CII[CIILandroid/icu/text/Normalizer$Mode;I)I
    .locals 3
    .param p0, "src"    # [C
    .param p1, "srcStart"    # I
    .param p2, "srcLimit"    # I
    .param p3, "dest"    # [C
    .param p4, "destStart"    # I
    .param p5, "destLimit"    # I
    .param p6, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p7, "options"    # I

    #@0
    .prologue
    .line 855
    sub-int v2, p2, p1

    #@2
    invoke-static {p0, p1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v1

    #@6
    .line 856
    .local v1, "srcBuffer":Ljava/nio/CharBuffer;
    new-instance v0, Landroid/icu/text/Normalizer$CharsAppendable;

    #@8
    invoke-direct {v0, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    #@b
    .line 857
    .local v0, "app":Landroid/icu/text/Normalizer$CharsAppendable;
    invoke-virtual {p6, p7}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, v1, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    #@12
    .line 858
    invoke-virtual {v0}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    #@15
    move-result v2

    #@16
    return v2
.end method

.method public static normalize([C[CLandroid/icu/text/Normalizer$Mode;I)I
    .locals 8
    .param p0, "source"    # [C
    .param p1, "target"    # [C
    .param p2, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p3, "options"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 829
    array-length v2, p0

    #@2
    array-length v5, p1

    #@3
    move-object v0, p0

    #@4
    move-object v3, p1

    #@5
    move v4, v1

    #@6
    move-object v6, p2

    #@7
    move v7, p3

    #@8
    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->normalize([CII[CIILandroid/icu/text/Normalizer$Mode;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static normalize(ILandroid/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .locals 1
    .param p0, "char32"    # I
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;

    #@0
    .prologue
    .line 890
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->normalize(ILandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static normalize(ILandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 2
    .param p0, "char32"    # I
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 872
    sget-object v1, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    #@2
    if-ne p1, v1, :cond_1

    #@4
    if-nez p2, :cond_1

    #@6
    .line 873
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p0}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 874
    .local v0, "decomposition":Ljava/lang/String;
    if-nez v0, :cond_0

    #@10
    .line 875
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 877
    :cond_0
    return-object v0

    #@15
    .line 879
    .end local v0    # "decomposition":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v1, p1, p2}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public static normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;

    #@0
    .prologue
    .line 810
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 794
    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private previousNormalize()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1836
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    #@4
    .line 1837
    iget v3, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@6
    iput v3, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    #@8
    .line 1838
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@a
    iget v4, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@c
    invoke-virtual {v3, v4}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    #@f
    .line 1839
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 1841
    .local v1, "segment":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@16
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    #@19
    move-result v0

    #@1a
    .local v0, "c":I
    if-ltz v0, :cond_1

    #@1c
    .line 1842
    const v3, 0xffff

    #@1f
    if-gt v0, v3, :cond_3

    #@21
    .line 1843
    int-to-char v3, v0

    #@22
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@25
    .line 1847
    :goto_0
    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@27
    invoke-virtual {v3, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 1851
    :cond_1
    iget-object v3, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@2f
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@32
    move-result v3

    #@33
    iput v3, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@35
    .line 1852
    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@37
    iget-object v4, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@39
    invoke-virtual {v3, v1, v4}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@3c
    .line 1853
    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@41
    move-result v3

    #@42
    iput v3, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@44
    .line 1854
    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_2

    #@4c
    const/4 v2, 0x1

    #@4d
    :cond_2
    return v2

    #@4e
    .line 1845
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    #@55
    goto :goto_0
.end method

.method public static quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;

    #@0
    .prologue
    .line 904
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 928
    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static quickCheck([CIILandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 2
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p4, "options"    # I

    #@0
    .prologue
    .line 974
    sub-int v1, p2, p1

    #@2
    invoke-static {p0, p1, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    .line 975
    .local v0, "srcBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {p3, p4}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static quickCheck([CLandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 2
    .param p0, "source"    # [C
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;
    .param p2, "options"    # I

    #@0
    .prologue
    .line 945
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1, p2}, Landroid/icu/text/Normalizer;->quickCheck([CIILandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 599
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/Normalizer;

    #@6
    .line 600
    .local v0, "copy":Landroid/icu/text/Normalizer;
    iget-object v2, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@8
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/icu/text/UCharacterIterator;

    #@e
    iput-object v2, v0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@10
    .line 601
    iget-object v2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    #@12
    iput-object v2, v0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    #@14
    .line 602
    iget v2, p0, Landroid/icu/text/Normalizer;->options:I

    #@16
    iput v2, v0, Landroid/icu/text/Normalizer;->options:I

    #@18
    .line 603
    iget-object v2, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@1a
    iput-object v2, v0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@1c
    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@23
    iput-object v2, v0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@25
    .line 605
    iget v2, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@27
    iput v2, v0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@29
    .line 606
    iget v2, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@2b
    iput v2, v0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@2d
    .line 607
    iget v2, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    #@2f
    iput v2, v0, Landroid/icu/text/Normalizer;->nextIndex:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 608
    return-object v0

    #@32
    .line 610
    .end local v0    # "copy":Landroid/icu/text/Normalizer;
    :catch_0
    move-exception v1

    #@33
    .line 611
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@35
    invoke-direct {v2, v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@38
    throw v2
.end method

.method public current()I
    .locals 2

    #@0
    .prologue
    .line 1424
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@2
    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v1

    #@8
    if-lt v0, v1, :cond_0

    #@a
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->nextNormalize()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1425
    :cond_0
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@12
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 1427
    :cond_1
    const/4 v0, -0x1

    #@1a
    return v0
.end method

.method public endIndex()I
    .locals 1

    #@0
    .prologue
    .line 1612
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public first()I
    .locals 1

    #@0
    .prologue
    .line 1552
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    #@3
    .line 1553
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->next()I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getBeginIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1530
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getEndIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1543
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->endIndex()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getIndex()I
    .locals 2

    #@0
    .prologue
    .line 1586
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@2
    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1587
    iget v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@c
    return v0

    #@d
    .line 1589
    :cond_0
    iget v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    #@f
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 1717
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMode()Landroid/icu/text/Normalizer$Mode;
    .locals 1

    #@0
    .prologue
    .line 1655
    iget-object v0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    #@2
    return-object v0
.end method

.method public getOption(I)I
    .locals 2
    .param p1, "option"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1691
    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    #@3
    and-int/2addr v0, p1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1692
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 1694
    :cond_0
    return v1
.end method

.method public getText([C)I
    .locals 1
    .param p1, "fillIn"    # [C

    #@0
    .prologue
    .line 1708
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->getText([C)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1726
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public last()I
    .locals 1

    #@0
    .prologue
    .line 1564
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToLimit()V

    #@5
    .line 1565
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@7
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    #@d
    iput v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@f
    .line 1566
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    #@12
    .line 1567
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->previous()I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public next()I
    .locals 3

    #@0
    .prologue
    .line 1439
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@2
    iget-object v2, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v2

    #@8
    if-lt v1, v2, :cond_0

    #@a
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->nextNormalize()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1440
    :cond_0
    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@12
    iget v2, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@17
    move-result v0

    #@18
    .line 1441
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@1a
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@1d
    move-result v2

    #@1e
    add-int/2addr v1, v2

    #@1f
    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@21
    .line 1442
    return v0

    #@22
    .line 1444
    .end local v0    # "c":I
    :cond_1
    const/4 v1, -0x1

    #@23
    return v1
.end method

.method public previous()I
    .locals 3

    #@0
    .prologue
    .line 1457
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@2
    if-gtz v1, :cond_0

    #@4
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->previousNormalize()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1458
    :cond_0
    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    #@c
    iget v2, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    #@11
    move-result v0

    #@12
    .line 1459
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@14
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@17
    move-result v2

    #@18
    sub-int/2addr v1, v2

    #@19
    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    #@1b
    .line 1460
    return v0

    #@1c
    .line 1462
    .end local v0    # "c":I
    :cond_1
    const/4 v1, -0x1

    #@1d
    return v1
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1472
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@3
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    #@6
    .line 1473
    iput v1, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    #@8
    iput v1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@a
    .line 1474
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    #@d
    .line 1471
    return-void
.end method

.method public setIndex(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1516
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer;->setIndexOnly(I)V

    #@3
    .line 1517
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->current()I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public setIndexOnly(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1487
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    #@5
    .line 1488
    iput p1, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    #@7
    iput p1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    #@9
    .line 1489
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    #@c
    .line 1486
    return-void
.end method

.method public setMode(Landroid/icu/text/Normalizer$Mode;)V
    .locals 2
    .param p1, "newMode"    # Landroid/icu/text/Normalizer$Mode;

    #@0
    .prologue
    .line 1645
    iput-object p1, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    #@2
    .line 1646
    iget-object v0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    #@4
    iget v1, p0, Landroid/icu/text/Normalizer;->options:I

    #@6
    invoke-virtual {v0, v1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@c
    .line 1644
    return-void
.end method

.method public setOption(IZ)V
    .locals 2
    .param p1, "option"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 1676
    if-eqz p2, :cond_0

    #@2
    .line 1677
    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/icu/text/Normalizer;->options:I

    #@7
    .line 1681
    :goto_0
    iget-object v0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    #@9
    iget v1, p0, Landroid/icu/text/Normalizer;->options:I

    #@b
    invoke-virtual {v0, v1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    #@11
    .line 1675
    return-void

    #@12
    .line 1679
    :cond_0
    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    #@14
    not-int v1, p1

    #@15
    and-int/2addr v0, v1

    #@16
    iput v0, p0, Landroid/icu/text/Normalizer;->options:I

    #@18
    goto :goto_0
.end method

.method public setText(Landroid/icu/text/UCharacterIterator;)V
    .locals 4
    .param p1, "newText"    # Landroid/icu/text/UCharacterIterator;

    #@0
    .prologue
    .line 1797
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/UCharacterIterator;

    #@6
    .line 1798
    .local v1, "newIter":Landroid/icu/text/UCharacterIterator;
    if-nez v1, :cond_0

    #@8
    .line 1799
    new-instance v2, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v3, "Could not create a new UCharacterIterator"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1803
    .end local v1    # "newIter":Landroid/icu/text/UCharacterIterator;
    :catch_0
    move-exception v0

    #@12
    .line 1804
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@14
    const-string/jumbo v3, "Could not clone the UCharacterIterator"

    #@17
    invoke-direct {v2, v3, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v2

    #@1b
    .line 1801
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v1    # "newIter":Landroid/icu/text/UCharacterIterator;
    :cond_0
    :try_start_1
    iput-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@1d
    .line 1802
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    .line 1795
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1766
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 1767
    .local v0, "newIter":Landroid/icu/text/UCharacterIterator;
    if-nez v0, :cond_0

    #@6
    .line 1768
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Could not create a new UCharacterIterator"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1770
    :cond_0
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@11
    .line 1771
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    #@14
    .line 1765
    return-void
.end method

.method public setText(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "newText"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 1736
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 1737
    .local v0, "newIter":Landroid/icu/text/UCharacterIterator;
    if-nez v0, :cond_0

    #@6
    .line 1738
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Could not create a new UCharacterIterator"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1740
    :cond_0
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@11
    .line 1741
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    #@14
    .line 1735
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 3
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 1781
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 1782
    .local v0, "newIter":Landroid/icu/text/UCharacterIterator;
    if-nez v0, :cond_0

    #@6
    .line 1783
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Could not create a new UCharacterIterator"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1785
    :cond_0
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@11
    .line 1786
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    #@14
    .line 1780
    return-void
.end method

.method public setText([C)V
    .locals 3
    .param p1, "newText"    # [C

    #@0
    .prologue
    .line 1751
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance([C)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 1752
    .local v0, "newIter":Landroid/icu/text/UCharacterIterator;
    if-nez v0, :cond_0

    #@6
    .line 1753
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Could not create a new UCharacterIterator"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1755
    :cond_0
    iput-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    #@11
    .line 1756
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    #@14
    .line 1750
    return-void
.end method

.method public startIndex()I
    .locals 1

    #@0
    .prologue
    .line 1601
    const/4 v0, 0x0

    #@1
    return v0
.end method
