.class public final Landroid/icu/impl/coll/CollationBuilder;
.super Landroid/icu/impl/coll/CollationRuleParser$Sink;
.source "CollationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationBuilder$BundleImporter;,
        Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_impl_coll_CollationRuleParser$PositionSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final COMPOSITES:Landroid/icu/text/UnicodeSet;

.field private static final DEBUG:Z = false

.field private static final HAS_BEFORE2:I = 0x40

.field private static final HAS_BEFORE3:I = 0x20

.field private static final IS_TAILORED:I = 0x8

.field private static final MAX_INDEX:I = 0xfffff


# instance fields
.field private base:Landroid/icu/impl/coll/CollationTailoring;

.field private baseData:Landroid/icu/impl/coll/CollationData;

.field private ces:[J

.field private cesLength:I

.field private dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

.field private fastLatinEnabled:Z

.field private fcd:Landroid/icu/text/Normalizer2;

.field private nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private nfd:Landroid/icu/text/Normalizer2;

.field private nodes:Landroid/icu/impl/coll/UVector64;

.field private optimizeSet:Landroid/icu/text/UnicodeSet;

.field private rootElements:Landroid/icu/impl/coll/CollationRootElements;

.field private rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

.field private variableTop:J


# direct methods
.method private static synthetic -getandroid_icu_impl_coll_CollationRuleParser$PositionSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/coll/CollationBuilder;->-android_icu_impl_coll_CollationRuleParser$PositionSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/coll/CollationBuilder;->-android_icu_impl_coll_CollationRuleParser$PositionSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/impl/coll/CollationRuleParser$Position;->values()[Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@10
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@19
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@22
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@2b
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@34
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@3d
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@46
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@4f
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@59
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@63
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@6d
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@77
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@81
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    #@89
    :goto_c
    :try_start_d
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@8b
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@8e
    move-result v1

    #@8f
    const/16 v2, 0xe

    #@91
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    #@93
    :goto_d
    sput-object v0, Landroid/icu/impl/coll/CollationBuilder;->-android_icu_impl_coll_CollationRuleParser$PositionSwitchesValues:[I

    #@95
    return-object v0

    #@96
    :catch_0
    move-exception v1

    #@97
    goto :goto_d

    #@98
    :catch_1
    move-exception v1

    #@99
    goto :goto_c

    #@9a
    :catch_2
    move-exception v1

    #@9b
    goto :goto_b

    #@9c
    :catch_3
    move-exception v1

    #@9d
    goto :goto_a

    #@9e
    :catch_4
    move-exception v1

    #@9f
    goto :goto_9

    #@a0
    :catch_5
    move-exception v1

    #@a1
    goto :goto_8

    #@a2
    :catch_6
    move-exception v1

    #@a3
    goto :goto_7

    #@a4
    :catch_7
    move-exception v1

    #@a5
    goto :goto_6

    #@a6
    :catch_8
    move-exception v1

    #@a7
    goto :goto_5

    #@a8
    :catch_9
    move-exception v1

    #@a9
    goto :goto_4

    #@aa
    :catch_a
    move-exception v1

    #@ab
    goto :goto_3

    #@ac
    :catch_b
    move-exception v1

    #@ad
    goto/16 :goto_2

    #@af
    :catch_c
    move-exception v1

    #@b0
    goto/16 :goto_1

    #@b2
    :catch_d
    move-exception v1

    #@b3
    goto/16 :goto_0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "ce32"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE32(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(J)Z
    .locals 2
    .param p0, "ce"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1
    .param p0, "tempCE32"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/impl/coll/CollationBuilder;->indexFromTempCE32(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(J)I
    .locals 2
    .param p0, "tempCE"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->indexFromTempCE(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationBuilder;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@b
    .line 1065
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@d
    const-string/jumbo v1, "[:NFD_QC=N:]"

    #@10
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@13
    sput-object v0, Landroid/icu/impl/coll/CollationBuilder;->COMPOSITES:Landroid/icu/text/UnicodeSet;

    #@15
    .line 1068
    sget-object v0, Landroid/icu/impl/coll/CollationBuilder;->COMPOSITES:Landroid/icu/text/UnicodeSet;

    #@17
    const v1, 0xac00

    #@1a
    const v2, 0xd7a3

    #@1d
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    #@20
    .line 27
    return-void

    #@21
    :cond_0
    const/4 v0, 0x1

    #@22
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationTailoring;)V
    .locals 2
    .param p1, "b"    # Landroid/icu/impl/coll/CollationTailoring;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser$Sink;-><init>()V

    #@3
    .line 1496
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@5
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    #@a
    .line 1498
    const/16 v0, 0x1f

    #@c
    new-array v0, v0, [J

    #@e
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@10
    .line 37
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@16
    .line 38
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getFCDNormalizer2()Landroid/icu/text/Normalizer2;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->fcd:Landroid/icu/text/Normalizer2;

    #@1c
    .line 39
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@1f
    move-result-object v0

    #@20
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@22
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@24
    .line 40
    iput-object p1, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    #@26
    .line 41
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@28
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@2a
    .line 42
    new-instance v0, Landroid/icu/impl/coll/CollationRootElements;

    #@2c
    iget-object v1, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@2e
    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@30
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRootElements;-><init>([J)V

    #@33
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@35
    .line 43
    const-wide/16 v0, 0x0

    #@37
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    #@39
    .line 44
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder;

    #@3b
    invoke-direct {v0}, Landroid/icu/impl/coll/CollationDataBuilder;-><init>()V

    #@3e
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@40
    .line 45
    const/4 v0, 0x1

    #@41
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationBuilder;->fastLatinEnabled:Z

    #@43
    .line 46
    const/4 v0, 0x0

    #@44
    iput v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@46
    .line 47
    new-instance v0, Landroid/icu/impl/coll/UVector32;

    #@48
    invoke-direct {v0}, Landroid/icu/impl/coll/UVector32;-><init>()V

    #@4b
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    #@4d
    .line 48
    new-instance v0, Landroid/icu/impl/coll/UVector64;

    #@4f
    invoke-direct {v0}, Landroid/icu/impl/coll/UVector64;-><init>()V

    #@52
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@54
    .line 49
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@56
    invoke-virtual {v0}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    #@59
    .line 50
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@5b
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@5d
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->initForTailoring(Landroid/icu/impl/coll/CollationData;)V

    #@60
    .line 36
    return-void
.end method

.method private addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .locals 4
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "newCEs"    # [J
    .param p4, "newCEsLength"    # I
    .param p5, "ce32"    # I

    #@0
    .prologue
    .line 1091
    const/16 v2, 0x1f

    #@2
    new-array v0, v2, [J

    #@4
    .line 1092
    .local v0, "oldCEs":[J
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v2, p1, p2, v0, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I

    #@a
    move-result v1

    #@b
    .line 1093
    .local v1, "oldCEsLength":I
    invoke-static {p3, p4, v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->sameCEs([JI[JI)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 1094
    const/4 v2, -0x1

    #@12
    if-ne p5, v2, :cond_0

    #@14
    .line 1095
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@16
    invoke-virtual {v2, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    #@19
    move-result p5

    #@1a
    .line 1097
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@1c
    invoke-virtual {v2, p1, p2, p5}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    #@1f
    .line 1099
    :cond_1
    return p5
.end method

.method private addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .locals 9
    .param p1, "nfdPrefix"    # Ljava/lang/CharSequence;
    .param p2, "nfdString"    # Ljava/lang/CharSequence;
    .param p3, "newCEs"    # [J
    .param p4, "newCEsLength"    # I
    .param p5, "ce32"    # I

    #@0
    .prologue
    .line 866
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_3

    #@6
    .line 867
    new-instance v8, Landroid/icu/text/CanonicalIterator;

    #@8
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-direct {v8, v0}, Landroid/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    #@f
    .line 868
    .local v8, "stringIter":Landroid/icu/text/CanonicalIterator;
    const-string/jumbo v1, ""

    #@12
    .line 870
    .local v1, "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Landroid/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 871
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_2

    #@18
    .line 892
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    return p5

    #@19
    .line 872
    .restart local v2    # "str":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_0

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_0

    #@25
    move-object v0, p0

    #@26
    move-object v3, p3

    #@27
    move v4, p4

    #@28
    move v5, p5

    #@29
    .line 873
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    #@2c
    move-result p5

    #@2d
    goto :goto_0

    #@2e
    .line 876
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    .end local v8    # "stringIter":Landroid/icu/text/CanonicalIterator;
    :cond_3
    new-instance v6, Landroid/icu/text/CanonicalIterator;

    #@30
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-direct {v6, v0}, Landroid/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    #@37
    .line 877
    .local v6, "prefixIter":Landroid/icu/text/CanonicalIterator;
    new-instance v8, Landroid/icu/text/CanonicalIterator;

    #@39
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-direct {v8, v0}, Landroid/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    #@40
    .line 879
    .restart local v8    # "stringIter":Landroid/icu/text/CanonicalIterator;
    :cond_4
    :goto_1
    invoke-virtual {v6}, Landroid/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 880
    .restart local v1    # "prefix":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@46
    .line 881
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationBuilder;->ignorePrefix(Ljava/lang/CharSequence;)Z

    #@49
    move-result v0

    #@4a
    if-nez v0, :cond_4

    #@4c
    .line 882
    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@4f
    move-result v7

    #@50
    .line 884
    .local v7, "samePrefix":Z
    :cond_5
    :goto_2
    invoke-virtual {v8}, Landroid/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    .line 885
    .restart local v2    # "str":Ljava/lang/String;
    if-nez v2, :cond_6

    #@56
    .line 889
    invoke-virtual {v8}, Landroid/icu/text/CanonicalIterator;->reset()V

    #@59
    goto :goto_1

    #@5a
    .line 886
    :cond_6
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    #@5d
    move-result v0

    #@5e
    if-nez v0, :cond_5

    #@60
    if-eqz v7, :cond_7

    #@62
    invoke-virtual {v2, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@65
    move-result v0

    #@66
    if-nez v0, :cond_5

    #@68
    :cond_7
    move-object v0, p0

    #@69
    move-object v3, p3

    #@6a
    move v4, p4

    #@6b
    move v5, p5

    #@6c
    .line 887
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    #@6f
    move-result p5

    #@70
    goto :goto_2
.end method

.method private addTailComposites(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 17
    .param p1, "nfdPrefix"    # Ljava/lang/CharSequence;
    .param p2, "nfdString"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 898
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v3

    #@4
    .line 900
    .local v3, "indexAfterLastStarter":I
    :goto_0
    if-nez v3, :cond_0

    #@6
    return-void

    #@7
    .line 901
    :cond_0
    move-object/from16 v0, p2

    #@9
    invoke-static {v0, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@c
    move-result v16

    #@d
    .line 902
    .local v16, "lastStarter":I
    move-object/from16 v0, p0

    #@f
    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@11
    move/from16 v0, v16

    #@13
    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 906
    invoke-static/range {v16 .. v16}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    return-void

    #@20
    .line 903
    :cond_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    #@23
    move-result v1

    #@24
    sub-int/2addr v3, v1

    #@25
    goto :goto_0

    #@26
    .line 911
    :cond_2
    new-instance v14, Landroid/icu/text/UnicodeSet;

    #@28
    invoke-direct {v14}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@2b
    .line 912
    .local v14, "composites":Landroid/icu/text/UnicodeSet;
    move-object/from16 v0, p0

    #@2d
    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@2f
    move/from16 v0, v16

    #@31
    invoke-virtual {v1, v0, v14}, Landroid/icu/impl/Normalizer2Impl;->getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_3

    #@37
    return-void

    #@38
    .line 914
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    .local v6, "newNFDString":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    .line 915
    .local v7, "newString":Ljava/lang/StringBuilder;
    const/16 v1, 0x1f

    #@44
    new-array v11, v1, [J

    #@46
    .line 916
    .local v11, "newCEs":[J
    new-instance v15, Landroid/icu/text/UnicodeSetIterator;

    #@48
    invoke-direct {v15, v14}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@4b
    .line 917
    .local v15, "iter":Landroid/icu/text/UnicodeSetIterator;
    :cond_4
    :goto_1
    invoke-virtual {v15}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_7

    #@51
    .line 918
    sget-boolean v1, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@53
    if-nez v1, :cond_6

    #@55
    iget v1, v15, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@57
    sget v2, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@59
    if-eq v1, v2, :cond_5

    #@5b
    const/4 v1, 0x1

    #@5c
    :goto_2
    if-nez v1, :cond_6

    #@5e
    new-instance v1, Ljava/lang/AssertionError;

    #@60
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@63
    throw v1

    #@64
    :cond_5
    const/4 v1, 0x0

    #@65
    goto :goto_2

    #@66
    .line 919
    :cond_6
    iget v4, v15, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@68
    .line 920
    .local v4, "composite":I
    move-object/from16 v0, p0

    #@6a
    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@6c
    invoke-virtual {v1, v4}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    .local v5, "decomp":Ljava/lang/String;
    move-object/from16 v1, p0

    #@72
    move-object/from16 v2, p2

    #@74
    .line 921
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/coll/CollationBuilder;->mergeCompositeIntoString(Ljava/lang/CharSequence;IILjava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_4

    #@7a
    .line 925
    move-object/from16 v0, p0

    #@7c
    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@7e
    const/4 v2, 0x0

    #@7f
    move-object/from16 v0, p1

    #@81
    invoke-virtual {v1, v0, v6, v11, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I

    #@84
    move-result v12

    #@85
    .line 926
    .local v12, "newCEsLength":I
    const/16 v1, 0x1f

    #@87
    if-gt v12, v1, :cond_4

    #@89
    .line 946
    const/4 v13, -0x1

    #@8a
    move-object/from16 v8, p0

    #@8c
    move-object/from16 v9, p1

    #@8e
    move-object v10, v7

    #@8f
    .line 945
    invoke-direct/range {v8 .. v13}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    #@92
    move-result v13

    #@93
    .line 947
    .local v13, "ce32":I
    const/4 v1, -0x1

    #@94
    if-eq v13, v1, :cond_4

    #@96
    move-object/from16 v8, p0

    #@98
    move-object/from16 v9, p1

    #@9a
    move-object v10, v6

    #@9b
    .line 949
    invoke-direct/range {v8 .. v13}, Landroid/icu/impl/coll/CollationBuilder;->addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    #@9e
    goto :goto_1

    #@9f
    .line 895
    .end local v4    # "composite":I
    .end local v5    # "decomp":Ljava/lang/String;
    .end local v12    # "newCEsLength":I
    .end local v13    # "ce32":I
    :cond_7
    return-void
.end method

.method private addWithClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .locals 0
    .param p1, "nfdPrefix"    # Ljava/lang/CharSequence;
    .param p2, "nfdString"    # Ljava/lang/CharSequence;
    .param p3, "newCEs"    # [J
    .param p4, "newCEsLength"    # I
    .param p5, "ce32"    # I

    #@0
    .prologue
    .line 856
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    #@3
    move-result p5

    #@4
    .line 857
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/coll/CollationBuilder;->addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    #@7
    move-result p5

    #@8
    .line 858
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->addTailComposites(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    #@b
    .line 859
    return p5
.end method

.method private static final alignWeightRight(I)I
    .locals 1
    .param p0, "w"    # I

    #@0
    .prologue
    .line 1115
    if-eqz p0, :cond_0

    #@2
    .line 1116
    :goto_0
    and-int/lit16 v0, p0, 0xff

    #@4
    if-nez v0, :cond_0

    #@6
    ushr-int/lit8 p0, p0, 0x8

    #@8
    goto :goto_0

    #@9
    .line 1118
    :cond_0
    return p0
.end method

.method private static final binarySearchForRootPrimaryNode([II[JJ)I
    .locals 9
    .param p0, "rootPrimaryIndexes"    # [I
    .param p1, "length"    # I
    .param p2, "nodes"    # [J
    .param p3, "p"    # J

    #@0
    .prologue
    .line 584
    if-nez p1, :cond_0

    #@2
    const/4 v7, -0x1

    #@3
    return v7

    #@4
    .line 585
    :cond_0
    const/4 v6, 0x0

    #@5
    .line 586
    .local v6, "start":I
    move v1, p1

    #@6
    .line 588
    .local v1, "limit":I
    :goto_0
    add-int v7, v6, v1

    #@8
    div-int/lit8 v0, v7, 0x2

    #@a
    .line 589
    .local v0, "i":I
    aget v7, p0, v0

    #@c
    aget-wide v2, p2, v7

    #@e
    .line 590
    .local v2, "node":J
    const/16 v7, 0x20

    #@10
    ushr-long v4, v2, v7

    #@12
    .line 591
    .local v4, "nodePrimary":J
    cmp-long v7, p3, v4

    #@14
    if-nez v7, :cond_1

    #@16
    .line 592
    return v0

    #@17
    .line 593
    :cond_1
    cmp-long v7, p3, v4

    #@19
    if-gez v7, :cond_3

    #@1b
    .line 594
    if-ne v0, v6, :cond_2

    #@1d
    .line 595
    not-int v7, v6

    #@1e
    return v7

    #@1f
    .line 597
    :cond_2
    move v1, v0

    #@20
    goto :goto_0

    #@21
    .line 599
    :cond_3
    if-ne v0, v6, :cond_4

    #@23
    .line 600
    add-int/lit8 v7, v6, 0x1

    #@25
    not-int v7, v7

    #@26
    return v7

    #@27
    .line 602
    :cond_4
    move v6, v0

    #@28
    goto :goto_0
.end method

.method private static ceStrength(J)I
    .locals 6
    .param p0, "ce"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 1409
    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromTempCE(J)I

    #@c
    move-result v0

    #@d
    .line 1408
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1410
    :cond_1
    const-wide/high16 v2, -0x100000000000000L

    #@10
    and-long/2addr v2, p0

    #@11
    cmp-long v1, v2, v4

    #@13
    if-nez v1, :cond_0

    #@15
    .line 1411
    long-to-int v0, p0

    #@16
    const/high16 v1, -0x1000000

    #@18
    and-int/2addr v0, v1

    #@19
    if-eqz v0, :cond_2

    #@1b
    const/4 v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1412
    :cond_2
    cmp-long v0, p0, v4

    #@1f
    if-eqz v0, :cond_3

    #@21
    const/4 v0, 0x2

    #@22
    goto :goto_0

    #@23
    .line 1413
    :cond_3
    const/16 v0, 0xf

    #@25
    goto :goto_0
.end method

.method private static changeNodeNextIndex(JI)J
    .locals 4
    .param p0, "node"    # J
    .param p2, "next"    # I

    #@0
    .prologue
    .line 1483
    const-wide/32 v0, -0xfffff01

    #@3
    and-long/2addr v0, p0

    #@4
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromNextIndex(I)J

    #@7
    move-result-wide v2

    #@8
    or-long/2addr v0, v2

    #@9
    return-wide v0
.end method

.method private static changeNodePreviousIndex(JI)J
    .locals 4
    .param p0, "node"    # J
    .param p2, "previous"    # I

    #@0
    .prologue
    .line 1480
    const-wide v0, -0xfffff0000001L

    #@5
    and-long/2addr v0, p0

    #@6
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromPreviousIndex(I)J

    #@9
    move-result-wide v2

    #@a
    or-long/2addr v0, v2

    #@b
    return-wide v0
.end method

.method private closeOverComposites()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1072
    const-string/jumbo v1, ""

    #@4
    .line 1073
    .local v1, "prefix":Ljava/lang/String;
    new-instance v6, Landroid/icu/text/UnicodeSetIterator;

    #@6
    sget-object v0, Landroid/icu/impl/coll/CollationBuilder;->COMPOSITES:Landroid/icu/text/UnicodeSet;

    #@8
    invoke-direct {v6, v0}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@b
    .line 1074
    .local v6, "iter":Landroid/icu/text/UnicodeSetIterator;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_3

    #@11
    .line 1075
    sget-boolean v0, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@13
    if-nez v0, :cond_2

    #@15
    iget v0, v6, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@17
    sget v3, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@19
    if-eq v0, v3, :cond_1

    #@1b
    const/4 v0, 0x1

    #@1c
    :goto_1
    if-nez v0, :cond_2

    #@1e
    new-instance v0, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v0

    #@24
    :cond_1
    move v0, v8

    #@25
    goto :goto_1

    #@26
    .line 1076
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@28
    iget v3, v6, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@2a
    invoke-virtual {v0, v3}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    .line 1077
    .local v7, "nfdString":Ljava/lang/String;
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@30
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@32
    invoke-virtual {v0, v7, v3, v8}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    #@35
    move-result v0

    #@36
    iput v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@38
    .line 1078
    iget v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@3a
    const/16 v3, 0x1f

    #@3c
    if-gt v0, v3, :cond_0

    #@3e
    .line 1084
    invoke-virtual {v6}, Landroid/icu/text/UnicodeSetIterator;->getString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 1085
    .local v2, "composite":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@44
    iget v4, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@46
    const/4 v5, -0x1

    #@47
    move-object v0, p0

    #@48
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    #@4b
    goto :goto_0

    #@4c
    .line 1071
    .end local v2    # "composite":Ljava/lang/String;
    .end local v7    # "nfdString":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static countTailoredNodes([JII)I
    .locals 4
    .param p0, "nodesArray"    # [J
    .param p1, "i"    # I
    .param p2, "strength"    # I

    #@0
    .prologue
    .line 1302
    const/4 v0, 0x0

    #@1
    .line 1304
    .local v0, "count":I
    :goto_0
    if-nez p1, :cond_1

    #@3
    .line 1316
    :cond_0
    return v0

    #@4
    .line 1305
    :cond_1
    aget-wide v2, p0, p1

    #@6
    .line 1306
    .local v2, "node":J
    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@9
    move-result v1

    #@a
    if-lt v1, p2, :cond_0

    #@c
    .line 1307
    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@f
    move-result v1

    #@10
    if-ne v1, p2, :cond_2

    #@12
    .line 1308
    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 1309
    add-int/lit8 v0, v0, 0x1

    #@1a
    .line 1314
    :cond_2
    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@1d
    move-result p1

    #@1e
    goto :goto_0
.end method

.method private equalSubSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Z
    .locals 6
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "leftStart"    # I
    .param p3, "right"    # Ljava/lang/CharSequence;
    .param p4, "rightStart"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1043
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v0

    #@5
    .line 1044
    .local v0, "leftLength":I
    sub-int v3, v0, p2

    #@7
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result v4

    #@b
    sub-int/2addr v4, p4

    #@c
    if-eq v3, v4, :cond_0

    #@e
    return v5

    #@f
    :cond_0
    move v2, p4

    #@10
    .end local p4    # "rightStart":I
    .local v2, "rightStart":I
    move v1, p2

    #@11
    .line 1045
    .end local p2    # "leftStart":I
    .local v1, "leftStart":I
    if-ge v1, v0, :cond_1

    #@13
    .line 1046
    add-int/lit8 p2, v1, 0x1

    #@15
    .end local v1    # "leftStart":I
    .restart local p2    # "leftStart":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@18
    move-result v3

    #@19
    add-int/lit8 p4, v2, 0x1

    #@1b
    .end local v2    # "rightStart":I
    .restart local p4    # "rightStart":I
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@1e
    move-result v4

    #@1f
    if-eq v3, v4, :cond_0

    #@21
    .line 1047
    return v5

    #@22
    .line 1050
    .end local p2    # "leftStart":I
    .end local p4    # "rightStart":I
    .restart local v1    # "leftStart":I
    .restart local v2    # "rightStart":I
    :cond_1
    const/4 v3, 0x1

    #@23
    return v3
.end method

.method private finalizeCEs()V
    .locals 3

    #@0
    .prologue
    .line 1346
    new-instance v1, Landroid/icu/impl/coll/CollationDataBuilder;

    #@2
    invoke-direct {v1}, Landroid/icu/impl/coll/CollationDataBuilder;-><init>()V

    #@5
    .line 1347
    .local v1, "newBuilder":Landroid/icu/impl/coll/CollationDataBuilder;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@7
    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->initForTailoring(Landroid/icu/impl/coll/CollationData;)V

    #@a
    .line 1348
    new-instance v0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;

    #@c
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@e
    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    #@11
    move-result-object v2

    #@12
    invoke-direct {v0, v2}, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;-><init>([J)V

    #@15
    .line 1349
    .local v0, "finalizer":Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@17
    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFrom(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V

    #@1a
    .line 1350
    iput-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@1c
    .line 1345
    return-void
.end method

.method private findCommonNode(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "strength"    # I

    #@0
    .prologue
    const/16 v5, 0x500

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 748
    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@6
    if-nez v2, :cond_1

    #@8
    if-gt v3, p2, :cond_0

    #@a
    const/4 v2, 0x2

    #@b
    if-gt p2, v2, :cond_0

    #@d
    move v2, v3

    #@e
    :goto_0
    if-nez v2, :cond_1

    #@10
    new-instance v2, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v2

    #@16
    :cond_0
    move v2, v4

    #@17
    goto :goto_0

    #@18
    .line 749
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@1a
    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@1d
    move-result-wide v0

    #@1e
    .line 750
    .local v0, "node":J
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@21
    move-result v2

    #@22
    if-lt v2, p2, :cond_2

    #@24
    .line 752
    return p1

    #@25
    .line 754
    :cond_2
    if-ne p2, v3, :cond_4

    #@27
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore2(J)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_5

    #@2d
    .line 758
    :cond_3
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@30
    move-result p1

    #@31
    .line 759
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@33
    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@36
    move-result-wide v0

    #@37
    .line 760
    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@39
    if-nez v2, :cond_9

    #@3b
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@3e
    move-result v2

    #@3f
    if-nez v2, :cond_7

    #@41
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@44
    move-result v2

    #@45
    if-ne v2, p2, :cond_7

    #@47
    .line 761
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@4a
    move-result v2

    #@4b
    if-ge v2, v5, :cond_6

    #@4d
    move v2, v3

    #@4e
    .line 760
    :goto_1
    if-nez v2, :cond_9

    #@50
    new-instance v2, Ljava/lang/AssertionError;

    #@52
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@55
    throw v2

    #@56
    .line 754
    :cond_4
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    #@59
    move-result v2

    #@5a
    if-nez v2, :cond_3

    #@5c
    .line 756
    :cond_5
    return p1

    #@5d
    :cond_6
    move v2, v4

    #@5e
    .line 761
    goto :goto_1

    #@5f
    :cond_7
    move v2, v4

    #@60
    .line 760
    goto :goto_1

    #@61
    .line 767
    :cond_8
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@64
    move-result v2

    #@65
    if-nez v2, :cond_9

    #@67
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@6a
    move-result v2

    #@6b
    if-le v2, p2, :cond_b

    #@6d
    .line 764
    :cond_9
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@70
    move-result p1

    #@71
    .line 765
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@73
    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@76
    move-result-wide v0

    #@77
    .line 766
    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@79
    if-nez v2, :cond_8

    #@7b
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@7e
    move-result v2

    #@7f
    if-lt v2, p2, :cond_a

    #@81
    move v2, v3

    #@82
    :goto_2
    if-nez v2, :cond_8

    #@84
    new-instance v2, Ljava/lang/AssertionError;

    #@86
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@89
    throw v2

    #@8a
    :cond_a
    move v2, v4

    #@8b
    goto :goto_2

    #@8c
    .line 768
    :cond_b
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@8f
    move-result v2

    #@90
    if-lt v2, v5, :cond_9

    #@92
    .line 769
    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@94
    if-nez v2, :cond_d

    #@96
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@99
    move-result v2

    #@9a
    if-ne v2, v5, :cond_c

    #@9c
    :goto_3
    if-nez v3, :cond_d

    #@9e
    new-instance v2, Ljava/lang/AssertionError;

    #@a0
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@a3
    throw v2

    #@a4
    :cond_c
    move v3, v4

    #@a5
    goto :goto_3

    #@a6
    .line 770
    :cond_d
    return p1
.end method

.method private findOrInsertNodeForCEs(I)I
    .locals 8
    .param p1, "strength"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 526
    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@4
    if-nez v2, :cond_2

    #@6
    if-ltz p1, :cond_0

    #@8
    const/4 v2, 0x3

    #@9
    if-gt p1, v2, :cond_0

    #@b
    move v2, v3

    #@c
    :goto_0
    if-nez v2, :cond_2

    #@e
    new-instance v2, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v2

    #@14
    :cond_0
    move v2, v4

    #@15
    goto :goto_0

    #@16
    .line 531
    .local v0, "ce":J
    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@18
    add-int/lit8 v2, v2, -0x1

    #@1a
    iput v2, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@1c
    .line 532
    .end local v0    # "ce":J
    :cond_2
    iget v2, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@1e
    if-nez v2, :cond_3

    #@20
    .line 533
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@22
    const-wide/16 v6, 0x0

    #@24
    aput-wide v6, v2, v4

    #@26
    const-wide/16 v0, 0x0

    #@28
    .line 534
    .restart local v0    # "ce":J
    iput v3, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@2a
    .line 542
    :goto_1
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_4

    #@30
    .line 545
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->indexFromTempCE(J)I

    #@33
    move-result v2

    #@34
    return v2

    #@35
    .line 537
    .end local v0    # "ce":J
    :cond_3
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@37
    iget v5, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@39
    add-int/lit8 v5, v5, -0x1

    #@3b
    aget-wide v0, v2, v5

    #@3d
    .line 539
    .restart local v0    # "ce":J
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    #@40
    move-result v2

    #@41
    if-gt v2, p1, :cond_1

    #@43
    goto :goto_1

    #@44
    .line 549
    :cond_4
    const/16 v2, 0x38

    #@46
    ushr-long v2, v0, v2

    #@48
    long-to-int v2, v2

    #@49
    const/16 v3, 0xfe

    #@4b
    if-ne v2, v3, :cond_5

    #@4d
    .line 550
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@4f
    .line 551
    const-string/jumbo v3, "tailoring relative to an unassigned code point not supported"

    #@52
    .line 550
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@55
    throw v2

    #@56
    .line 553
    :cond_5
    invoke-direct {p0, v0, v1, p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    #@59
    move-result v2

    #@5a
    return v2
.end method

.method private findOrInsertNodeForPrimary(J)I
    .locals 7
    .param p1, "p"    # J

    #@0
    .prologue
    .line 610
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    #@2
    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    #@8
    invoke-virtual {v3}, Landroid/icu/impl/coll/UVector32;->size()I

    #@b
    move-result v3

    #@c
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@e
    invoke-virtual {v4}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    #@11
    move-result-object v4

    #@12
    .line 609
    invoke-static {v2, v3, v4, p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->binarySearchForRootPrimaryNode([II[JJ)I

    #@15
    move-result v1

    #@16
    .line 611
    .local v1, "rootIndex":I
    if-ltz v1, :cond_0

    #@18
    .line 612
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    #@1a
    invoke-virtual {v2, v1}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    #@1d
    move-result v2

    #@1e
    return v2

    #@1f
    .line 615
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@21
    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->size()I

    #@24
    move-result v0

    #@25
    .line 616
    .local v0, "index":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@27
    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight32(J)J

    #@2a
    move-result-wide v4

    #@2b
    invoke-virtual {v2, v4, v5}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    #@2e
    .line 617
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    #@30
    not-int v3, v1

    #@31
    invoke-virtual {v2, v0, v3}, Landroid/icu/impl/coll/UVector32;->insertElementAt(II)V

    #@34
    .line 618
    return v0
.end method

.method private findOrInsertNodeForRootCE(JI)I
    .locals 9
    .param p1, "ce"    # J
    .param p3, "strength"    # I

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 557
    sget-boolean v4, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@5
    if-nez v4, :cond_1

    #@7
    const/16 v4, 0x38

    #@9
    ushr-long v4, p1, v4

    #@b
    long-to-int v4, v4

    #@c
    const/16 v5, 0xfe

    #@e
    if-eq v4, v5, :cond_0

    #@10
    move v4, v3

    #@11
    :goto_0
    if-nez v4, :cond_1

    #@13
    new-instance v2, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v2

    #@19
    :cond_0
    move v4, v2

    #@1a
    goto :goto_0

    #@1b
    .line 562
    :cond_1
    sget-boolean v4, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@1d
    if-nez v4, :cond_3

    #@1f
    const-wide/16 v4, 0xc0

    #@21
    and-long/2addr v4, p1

    #@22
    const-wide/16 v6, 0x0

    #@24
    cmp-long v4, v4, v6

    #@26
    if-nez v4, :cond_2

    #@28
    move v2, v3

    #@29
    :cond_2
    if-nez v2, :cond_3

    #@2b
    new-instance v2, Ljava/lang/AssertionError;

    #@2d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@30
    throw v2

    #@31
    .line 563
    :cond_3
    const/16 v2, 0x20

    #@33
    ushr-long v4, p1, v2

    #@35
    invoke-direct {p0, v4, v5}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForPrimary(J)I

    #@38
    move-result v0

    #@39
    .line 564
    .local v0, "index":I
    if-lt p3, v3, :cond_4

    #@3b
    .line 565
    long-to-int v1, p1

    #@3c
    .line 566
    .local v1, "lower32":I
    ushr-int/lit8 v2, v1, 0x10

    #@3e
    invoke-direct {p0, v0, v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    #@41
    move-result v0

    #@42
    .line 567
    if-lt p3, v8, :cond_4

    #@44
    .line 568
    and-int/lit16 v2, v1, 0x3f3f

    #@46
    invoke-direct {p0, v0, v2, v8}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    #@49
    move-result v0

    #@4a
    .line 572
    .end local v1    # "lower32":I
    :cond_4
    return v0
.end method

.method private findOrInsertWeakNode(III)I
    .locals 12
    .param p1, "index"    # I
    .param p2, "weight16"    # I
    .param p3, "level"    # I

    #@0
    .prologue
    .line 624
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v8, :cond_1

    #@4
    if-ltz p1, :cond_0

    #@6
    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@8
    invoke-virtual {v8}, Landroid/icu/impl/coll/UVector64;->size()I

    #@b
    move-result v8

    #@c
    if-ge p1, v8, :cond_0

    #@e
    const/4 v8, 0x1

    #@f
    :goto_0
    if-nez v8, :cond_1

    #@11
    new-instance v8, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v8

    #@17
    :cond_0
    const/4 v8, 0x0

    #@18
    goto :goto_0

    #@19
    .line 625
    :cond_1
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@1b
    if-nez v8, :cond_3

    #@1d
    const/4 v8, 0x1

    #@1e
    if-gt v8, p3, :cond_2

    #@20
    const/4 v8, 0x2

    #@21
    if-gt p3, v8, :cond_2

    #@23
    const/4 v8, 0x1

    #@24
    :goto_1
    if-nez v8, :cond_3

    #@26
    new-instance v8, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@2b
    throw v8

    #@2c
    :cond_2
    const/4 v8, 0x0

    #@2d
    goto :goto_1

    #@2e
    .line 627
    :cond_3
    const/16 v8, 0x500

    #@30
    if-ne p2, v8, :cond_4

    #@32
    .line 628
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    #@35
    move-result v8

    #@36
    return v8

    #@37
    .line 633
    :cond_4
    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@39
    invoke-virtual {v8, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@3c
    move-result-wide v6

    #@3d
    .line 634
    .local v6, "node":J
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@3f
    if-nez v8, :cond_6

    #@41
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@44
    move-result v8

    #@45
    if-ge v8, p3, :cond_5

    #@47
    const/4 v8, 0x1

    #@48
    :goto_2
    if-nez v8, :cond_6

    #@4a
    new-instance v8, Ljava/lang/AssertionError;

    #@4c
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@4f
    throw v8

    #@50
    :cond_5
    const/4 v8, 0x0

    #@51
    goto :goto_2

    #@52
    .line 635
    :cond_6
    if-eqz p2, :cond_a

    #@54
    const/16 v8, 0x500

    #@56
    if-ge p2, v8, :cond_a

    #@58
    .line 636
    const/4 v8, 0x1

    #@59
    if-ne p3, v8, :cond_8

    #@5b
    const/16 v2, 0x40

    #@5d
    .line 637
    .local v2, "hasThisLevelBefore":I
    :goto_3
    int-to-long v8, v2

    #@5e
    and-long/2addr v8, v6

    #@5f
    const-wide/16 v10, 0x0

    #@61
    cmp-long v8, v8, v10

    #@63
    if-nez v8, :cond_a

    #@65
    .line 640
    const/16 v8, 0x500

    #@67
    invoke-static {v8}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    #@6a
    move-result-wide v8

    #@6b
    invoke-static {p3}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    #@6e
    move-result-wide v10

    #@6f
    or-long v0, v8, v10

    #@71
    .line 641
    .local v0, "commonNode":J
    const/4 v8, 0x1

    #@72
    if-ne p3, v8, :cond_7

    #@74
    .line 644
    const-wide/16 v8, 0x20

    #@76
    and-long/2addr v8, v6

    #@77
    or-long/2addr v0, v8

    #@78
    .line 645
    const-wide/16 v8, -0x21

    #@7a
    and-long/2addr v6, v8

    #@7b
    .line 647
    :cond_7
    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@7d
    int-to-long v10, v2

    #@7e
    or-long/2addr v10, v6

    #@7f
    invoke-virtual {v8, v10, v11, p1}, Landroid/icu/impl/coll/UVector64;->setElementAt(JI)V

    #@82
    .line 649
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@85
    move-result v3

    #@86
    .line 650
    .local v3, "nextIndex":I
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    #@89
    move-result-wide v8

    #@8a
    invoke-static {p3}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    #@8d
    move-result-wide v10

    #@8e
    or-long v6, v8, v10

    #@90
    .line 651
    invoke-direct {p0, p1, v3, v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    #@93
    move-result p1

    #@94
    .line 653
    invoke-direct {p0, p1, v3, v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    #@97
    .line 655
    return p1

    #@98
    .line 636
    .end local v0    # "commonNode":J
    .end local v2    # "hasThisLevelBefore":I
    .end local v3    # "nextIndex":I
    :cond_8
    const/16 v2, 0x20

    #@9a
    .restart local v2    # "hasThisLevelBefore":I
    goto :goto_3

    #@9b
    .line 682
    .end local v2    # "hasThisLevelBefore":I
    .restart local v3    # "nextIndex":I
    .local v4, "nextStrength":I
    :cond_9
    move p1, v3

    #@9c
    .line 664
    .end local v3    # "nextIndex":I
    .end local v4    # "nextStrength":I
    :cond_a
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@9f
    move-result v3

    #@a0
    .restart local v3    # "nextIndex":I
    if-eqz v3, :cond_b

    #@a2
    .line 665
    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@a4
    invoke-virtual {v8, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@a7
    move-result-wide v6

    #@a8
    .line 666
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@ab
    move-result v4

    #@ac
    .line 667
    .restart local v4    # "nextStrength":I
    if-gt v4, p3, :cond_9

    #@ae
    .line 669
    if-ge v4, p3, :cond_c

    #@b0
    .line 684
    .end local v4    # "nextStrength":I
    :cond_b
    :goto_4
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    #@b3
    move-result-wide v8

    #@b4
    invoke-static {p3}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    #@b7
    move-result-wide v10

    #@b8
    or-long v6, v8, v10

    #@ba
    .line 685
    invoke-direct {p0, p1, v3, v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    #@bd
    move-result v8

    #@be
    return v8

    #@bf
    .line 671
    .restart local v4    # "nextStrength":I
    :cond_c
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@c2
    move-result v8

    #@c3
    if-nez v8, :cond_9

    #@c5
    .line 672
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@c8
    move-result v5

    #@c9
    .line 673
    .local v5, "nextWeight16":I
    if-ne v5, p2, :cond_d

    #@cb
    .line 675
    return v3

    #@cc
    .line 678
    :cond_d
    if-le v5, p2, :cond_9

    #@ce
    goto :goto_4
.end method

.method private getSpecialResetPosition(Ljava/lang/CharSequence;)J
    .locals 24
    .param p1, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 277
    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v19, :cond_1

    #@4
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v19

    #@8
    const/16 v20, 0x2

    #@a
    move/from16 v0, v19

    #@c
    move/from16 v1, v20

    #@e
    if-ne v0, v1, :cond_0

    #@10
    const/16 v19, 0x1

    #@12
    :goto_0
    if-nez v19, :cond_1

    #@14
    new-instance v19, Ljava/lang/AssertionError;

    #@16
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@19
    throw v19

    #@1a
    :cond_0
    const/16 v19, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 279
    :cond_1
    const/16 v18, 0x0

    #@1f
    .line 280
    .local v18, "strength":I
    const/4 v7, 0x0

    #@20
    .line 282
    .local v7, "isBoundary":Z
    sget-object v19, Landroid/icu/impl/coll/CollationRuleParser;->POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    #@22
    const/16 v20, 0x1

    #@24
    move-object/from16 v0, p1

    #@26
    move/from16 v1, v20

    #@28
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2b
    move-result v20

    #@2c
    move/from16 v0, v20

    #@2e
    add-int/lit16 v0, v0, -0x2800

    #@30
    move/from16 v20, v0

    #@32
    .line 281
    aget-object v17, v19, v20

    #@34
    .line 283
    .local v17, "pos":Landroid/icu/impl/coll/CollationRuleParser$Position;
    invoke-static {}, Landroid/icu/impl/coll/CollationBuilder;->-getandroid_icu_impl_coll_CollationRuleParser$PositionSwitchesValues()[I

    #@37
    move-result-object v19

    #@38
    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@3b
    move-result v20

    #@3c
    aget v19, v19, v20

    #@3e
    packed-switch v19, :pswitch_data_0

    #@41
    .line 368
    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@43
    if-nez v19, :cond_9

    #@45
    new-instance v19, Ljava/lang/AssertionError;

    #@47
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@4a
    throw v19

    #@4b
    .line 287
    :pswitch_0
    const-wide/16 v20, 0x0

    #@4d
    return-wide v20

    #@4e
    .line 289
    :pswitch_1
    const-wide/16 v20, 0x0

    #@50
    return-wide v20

    #@51
    .line 292
    :pswitch_2
    const-wide/16 v20, 0x0

    #@53
    const/16 v19, 0x2

    #@55
    move-object/from16 v0, p0

    #@57
    move-wide/from16 v1, v20

    #@59
    move/from16 v3, v19

    #@5b
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    #@5e
    move-result v6

    #@5f
    .line 293
    .local v6, "index":I
    move-object/from16 v0, p0

    #@61
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@63
    move-object/from16 v19, v0

    #@65
    move-object/from16 v0, v19

    #@67
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@6a
    move-result-wide v12

    #@6b
    .line 294
    .local v12, "node":J
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_4

    #@71
    .line 295
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@75
    move-object/from16 v19, v0

    #@77
    move-object/from16 v0, v19

    #@79
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@7c
    move-result-wide v12

    #@7d
    .line 296
    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@7f
    if-nez v19, :cond_3

    #@81
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@84
    move-result v19

    #@85
    const/16 v20, 0x2

    #@87
    move/from16 v0, v19

    #@89
    move/from16 v1, v20

    #@8b
    if-gt v0, v1, :cond_2

    #@8d
    const/16 v19, 0x1

    #@8f
    :goto_1
    if-nez v19, :cond_3

    #@91
    new-instance v19, Ljava/lang/AssertionError;

    #@93
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@96
    throw v19

    #@97
    :cond_2
    const/16 v19, 0x0

    #@99
    goto :goto_1

    #@9a
    .line 297
    :cond_3
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@9d
    move-result v19

    #@9e
    if-eqz v19, :cond_4

    #@a0
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@a3
    move-result v19

    #@a4
    const/16 v20, 0x2

    #@a6
    move/from16 v0, v19

    #@a8
    move/from16 v1, v20

    #@aa
    if-ne v0, v1, :cond_4

    #@ac
    .line 298
    const/16 v19, 0x2

    #@ae
    move/from16 v0, v19

    #@b0
    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    #@b3
    move-result-wide v20

    #@b4
    return-wide v20

    #@b5
    .line 301
    :cond_4
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@b9
    move-object/from16 v19, v0

    #@bb
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getFirstTertiaryCE()J

    #@be
    move-result-wide v20

    #@bf
    return-wide v20

    #@c0
    .line 305
    .end local v6    # "index":I
    .end local v12    # "node":J
    :pswitch_3
    move-object/from16 v0, p0

    #@c2
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@c4
    move-object/from16 v19, v0

    #@c6
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getLastTertiaryCE()J

    #@c9
    move-result-wide v4

    #@ca
    .line 306
    .local v4, "ce":J
    const/16 v18, 0x2

    #@cc
    .line 372
    :goto_2
    move-object/from16 v0, p0

    #@ce
    move/from16 v1, v18

    #@d0
    invoke-direct {v0, v4, v5, v1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    #@d3
    move-result v6

    #@d4
    .line 373
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@d8
    move-object/from16 v19, v0

    #@da
    move-object/from16 v0, v19

    #@dc
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@df
    move-result-wide v12

    #@e0
    .line 374
    .restart local v12    # "node":J
    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    #@e3
    move-result v19

    #@e4
    and-int/lit8 v19, v19, 0x1

    #@e6
    if-nez v19, :cond_14

    #@e8
    .line 376
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasAnyBefore(J)Z

    #@eb
    move-result v19

    #@ec
    if-nez v19, :cond_b

    #@ee
    if-eqz v7, :cond_b

    #@f0
    .line 381
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@f3
    move-result v6

    #@f4
    if-eqz v6, :cond_e

    #@f6
    .line 385
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@fa
    move-object/from16 v19, v0

    #@fc
    move-object/from16 v0, v19

    #@fe
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@101
    move-result-wide v12

    #@102
    .line 386
    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@104
    if-nez v19, :cond_a

    #@106
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@109
    move-result v19

    #@10a
    if-nez v19, :cond_a

    #@10c
    new-instance v19, Ljava/lang/AssertionError;

    #@10e
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@111
    throw v19

    #@112
    .line 310
    .end local v4    # "ce":J
    .end local v6    # "index":I
    .end local v12    # "node":J
    :pswitch_4
    const-wide/16 v20, 0x0

    #@114
    const/16 v19, 0x1

    #@116
    move-object/from16 v0, p0

    #@118
    move-wide/from16 v1, v20

    #@11a
    move/from16 v3, v19

    #@11c
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    #@11f
    move-result v6

    #@120
    .line 311
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@124
    move-object/from16 v19, v0

    #@126
    move-object/from16 v0, v19

    #@128
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@12b
    move-result-wide v12

    #@12c
    .line 312
    .restart local v12    # "node":J
    :cond_5
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@12f
    move-result v6

    #@130
    if-eqz v6, :cond_6

    #@132
    .line 313
    move-object/from16 v0, p0

    #@134
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@136
    move-object/from16 v19, v0

    #@138
    move-object/from16 v0, v19

    #@13a
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@13d
    move-result-wide v12

    #@13e
    .line 314
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@141
    move-result v18

    #@142
    .line 315
    const/16 v19, 0x1

    #@144
    move/from16 v0, v18

    #@146
    move/from16 v1, v19

    #@148
    if-ge v0, v1, :cond_7

    #@14a
    .line 328
    :cond_6
    move-object/from16 v0, p0

    #@14c
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@14e
    move-object/from16 v19, v0

    #@150
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecondaryCE()J

    #@153
    move-result-wide v4

    #@154
    .line 329
    .restart local v4    # "ce":J
    const/16 v18, 0x1

    #@156
    .line 330
    goto/16 :goto_2

    #@158
    .line 316
    .end local v4    # "ce":J
    :cond_7
    const/16 v19, 0x1

    #@15a
    move/from16 v0, v18

    #@15c
    move/from16 v1, v19

    #@15e
    if-ne v0, v1, :cond_5

    #@160
    .line 317
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@163
    move-result v19

    #@164
    if-eqz v19, :cond_6

    #@166
    .line 318
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    #@169
    move-result v19

    #@16a
    if-eqz v19, :cond_8

    #@16c
    .line 319
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@170
    move-object/from16 v19, v0

    #@172
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@175
    move-result v20

    #@176
    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@179
    move-result-wide v20

    #@17a
    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@17d
    move-result v6

    #@17e
    .line 320
    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@180
    if-nez v19, :cond_8

    #@182
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@186
    move-object/from16 v19, v0

    #@188
    move-object/from16 v0, v19

    #@18a
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@18d
    move-result-wide v20

    #@18e
    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@191
    move-result v19

    #@192
    if-nez v19, :cond_8

    #@194
    new-instance v19, Ljava/lang/AssertionError;

    #@196
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@199
    throw v19

    #@19a
    .line 322
    :cond_8
    const/16 v19, 0x1

    #@19c
    move/from16 v0, v19

    #@19e
    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    #@1a1
    move-result-wide v20

    #@1a2
    return-wide v20

    #@1a3
    .line 333
    .end local v6    # "index":I
    .end local v12    # "node":J
    :pswitch_5
    move-object/from16 v0, p0

    #@1a5
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@1a7
    move-object/from16 v19, v0

    #@1a9
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getLastSecondaryCE()J

    #@1ac
    move-result-wide v4

    #@1ad
    .line 334
    .restart local v4    # "ce":J
    const/16 v18, 0x1

    #@1af
    .line 335
    goto/16 :goto_2

    #@1b1
    .line 337
    .end local v4    # "ce":J
    :pswitch_6
    move-object/from16 v0, p0

    #@1b3
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@1b5
    move-object/from16 v19, v0

    #@1b7
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimaryCE()J

    #@1ba
    move-result-wide v4

    #@1bb
    .line 338
    .restart local v4    # "ce":J
    const/4 v7, 0x1

    #@1bc
    .line 339
    goto/16 :goto_2

    #@1be
    .line 341
    .end local v4    # "ce":J
    :pswitch_7
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@1c2
    move-object/from16 v19, v0

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    #@1c8
    move-wide/from16 v20, v0

    #@1ca
    const-wide/16 v22, 0x1

    #@1cc
    add-long v20, v20, v22

    #@1ce
    invoke-virtual/range {v19 .. v21}, Landroid/icu/impl/coll/CollationRootElements;->lastCEWithPrimaryBefore(J)J

    #@1d1
    move-result-wide v4

    #@1d2
    .restart local v4    # "ce":J
    goto/16 :goto_2

    #@1d4
    .line 344
    .end local v4    # "ce":J
    :pswitch_8
    move-object/from16 v0, p0

    #@1d6
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@1d8
    move-object/from16 v19, v0

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    #@1de
    move-wide/from16 v20, v0

    #@1e0
    const-wide/16 v22, 0x1

    #@1e2
    add-long v20, v20, v22

    #@1e4
    invoke-virtual/range {v19 .. v21}, Landroid/icu/impl/coll/CollationRootElements;->firstCEWithPrimaryAtLeast(J)J

    #@1e7
    move-result-wide v4

    #@1e8
    .line 345
    .restart local v4    # "ce":J
    const/4 v7, 0x1

    #@1e9
    .line 346
    goto/16 :goto_2

    #@1eb
    .line 351
    .end local v4    # "ce":J
    :pswitch_9
    move-object/from16 v0, p0

    #@1ed
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@1ef
    move-object/from16 v19, v0

    #@1f1
    .line 352
    move-object/from16 v0, p0

    #@1f3
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@1f5
    move-object/from16 v20, v0

    #@1f7
    const/16 v21, 0x11

    #@1f9
    invoke-virtual/range {v20 .. v21}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    #@1fc
    move-result-wide v20

    #@1fd
    .line 351
    invoke-virtual/range {v19 .. v21}, Landroid/icu/impl/coll/CollationRootElements;->firstCEWithPrimaryAtLeast(J)J

    #@200
    move-result-wide v4

    #@201
    .restart local v4    # "ce":J
    goto/16 :goto_2

    #@203
    .line 355
    .end local v4    # "ce":J
    :pswitch_a
    move-object/from16 v0, p0

    #@205
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@207
    move-object/from16 v19, v0

    #@209
    const/16 v20, 0x4e00

    #@20b
    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/CollationData;->getSingleCE(I)J

    #@20e
    move-result-wide v4

    #@20f
    .restart local v4    # "ce":J
    goto/16 :goto_2

    #@211
    .line 359
    .end local v4    # "ce":J
    :pswitch_b
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    #@213
    .line 360
    const-string/jumbo v20, "reset to [last implicit] not supported"

    #@216
    .line 359
    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@219
    throw v19

    #@21a
    .line 362
    :pswitch_c
    const-wide v20, 0xff020200L

    #@21f
    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@222
    move-result-wide v4

    #@223
    .line 363
    .restart local v4    # "ce":J
    const/4 v7, 0x1

    #@224
    .line 364
    goto/16 :goto_2

    #@226
    .line 366
    .end local v4    # "ce":J
    :pswitch_d
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@228
    const-string/jumbo v20, "LDML forbids tailoring to U+FFFF"

    #@22b
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22e
    throw v19

    #@22f
    .line 369
    :cond_9
    const-wide/16 v20, 0x0

    #@231
    return-wide v20

    #@232
    .line 387
    .restart local v4    # "ce":J
    .restart local v6    # "index":I
    .restart local v12    # "node":J
    :cond_a
    move/from16 v0, v18

    #@234
    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    #@237
    move-result-wide v4

    #@238
    .line 399
    :cond_b
    :goto_3
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasAnyBefore(J)Z

    #@23b
    move-result v19

    #@23c
    if-eqz v19, :cond_12

    #@23e
    .line 401
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore2(J)Z

    #@241
    move-result v19

    #@242
    if-eqz v19, :cond_c

    #@244
    .line 402
    move-object/from16 v0, p0

    #@246
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@248
    move-object/from16 v19, v0

    #@24a
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@24d
    move-result v20

    #@24e
    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@251
    move-result-wide v20

    #@252
    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@255
    move-result v6

    #@256
    .line 403
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@25a
    move-object/from16 v19, v0

    #@25c
    move-object/from16 v0, v19

    #@25e
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@261
    move-result-wide v12

    #@262
    .line 405
    :cond_c
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    #@265
    move-result v19

    #@266
    if-eqz v19, :cond_d

    #@268
    .line 406
    move-object/from16 v0, p0

    #@26a
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@26c
    move-object/from16 v19, v0

    #@26e
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@271
    move-result v20

    #@272
    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@275
    move-result-wide v20

    #@276
    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@279
    move-result v6

    #@27a
    .line 408
    :cond_d
    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@27c
    if-nez v19, :cond_11

    #@27e
    move-object/from16 v0, p0

    #@280
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@282
    move-object/from16 v19, v0

    #@284
    move-object/from16 v0, v19

    #@286
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@289
    move-result-wide v20

    #@28a
    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@28d
    move-result v19

    #@28e
    if-nez v19, :cond_11

    #@290
    new-instance v19, Ljava/lang/AssertionError;

    #@292
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@295
    throw v19

    #@296
    .line 389
    :cond_e
    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@298
    if-nez v19, :cond_10

    #@29a
    if-nez v18, :cond_f

    #@29c
    const/16 v19, 0x1

    #@29e
    :goto_4
    if-nez v19, :cond_10

    #@2a0
    new-instance v19, Ljava/lang/AssertionError;

    #@2a2
    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    #@2a5
    throw v19

    #@2a6
    :cond_f
    const/16 v19, 0x0

    #@2a8
    goto :goto_4

    #@2a9
    .line 390
    :cond_10
    const/16 v19, 0x20

    #@2ab
    ushr-long v14, v4, v19

    #@2ad
    .line 391
    .local v14, "p":J
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@2b1
    move-object/from16 v19, v0

    #@2b3
    move-object/from16 v0, v19

    #@2b5
    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    #@2b8
    move-result v16

    #@2b9
    .line 392
    .local v16, "pIndex":I
    move-object/from16 v0, p0

    #@2bb
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@2bd
    move-object/from16 v19, v0

    #@2bf
    move-object/from16 v0, v19

    #@2c1
    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    #@2c4
    move-result v8

    #@2c5
    .line 393
    .local v8, "isCompressible":Z
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@2c9
    move-object/from16 v19, v0

    #@2cb
    move-object/from16 v0, v19

    #@2cd
    move/from16 v1, v16

    #@2cf
    invoke-virtual {v0, v14, v15, v1, v8}, Landroid/icu/impl/coll/CollationRootElements;->getPrimaryAfter(JIZ)J

    #@2d2
    move-result-wide v14

    #@2d3
    .line 394
    invoke-static {v14, v15}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@2d6
    move-result-wide v4

    #@2d7
    .line 395
    const/16 v19, 0x0

    #@2d9
    move-object/from16 v0, p0

    #@2db
    move/from16 v1, v19

    #@2dd
    invoke-direct {v0, v4, v5, v1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    #@2e0
    move-result v6

    #@2e1
    .line 396
    move-object/from16 v0, p0

    #@2e3
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@2e5
    move-object/from16 v19, v0

    #@2e7
    move-object/from16 v0, v19

    #@2e9
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@2ec
    move-result-wide v12

    #@2ed
    goto/16 :goto_3

    #@2ef
    .line 409
    .end local v8    # "isCompressible":Z
    .end local v14    # "p":J
    .end local v16    # "pIndex":I
    :cond_11
    move/from16 v0, v18

    #@2f1
    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    #@2f4
    move-result-wide v4

    #@2f5
    .line 430
    :cond_12
    :goto_5
    return-wide v4

    #@2f6
    .line 420
    .local v9, "nextIndex":I
    .local v10, "nextNode":J
    :cond_13
    move v6, v9

    #@2f7
    .line 421
    move-wide v12, v10

    #@2f8
    .line 416
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNode":J
    :cond_14
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@2fb
    move-result v9

    #@2fc
    .line 417
    .restart local v9    # "nextIndex":I
    if-nez v9, :cond_15

    #@2fe
    .line 426
    :goto_6
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@301
    move-result v19

    #@302
    if-eqz v19, :cond_12

    #@304
    .line 427
    move/from16 v0, v18

    #@306
    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    #@309
    move-result-wide v4

    #@30a
    goto :goto_5

    #@30b
    .line 418
    :cond_15
    move-object/from16 v0, p0

    #@30d
    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@30f
    move-object/from16 v19, v0

    #@311
    move-object/from16 v0, v19

    #@313
    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@316
    move-result-wide v10

    #@317
    .line 419
    .restart local v10    # "nextNode":J
    invoke-static {v10, v11}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@31a
    move-result v19

    #@31b
    move/from16 v0, v19

    #@31d
    move/from16 v1, v18

    #@31f
    if-ge v0, v1, :cond_13

    #@321
    goto :goto_6

    #@322
    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_c
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_1
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method

.method private getWeight16Before(IJI)I
    .locals 10
    .param p1, "index"    # I
    .param p2, "node"    # J
    .param p4, "level"    # I

    #@0
    .prologue
    const/16 v9, 0x100

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v5, 0x1

    #@4
    .line 235
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@6
    if-nez v7, :cond_1

    #@8
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@b
    move-result v7

    #@c
    if-lt v7, p4, :cond_0

    #@e
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_0

    #@14
    move v7, v6

    #@15
    :goto_0
    if-nez v7, :cond_1

    #@17
    new-instance v5, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v5

    #@1d
    :cond_0
    move v7, v5

    #@1e
    goto :goto_0

    #@1f
    .line 239
    :cond_1
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@22
    move-result v7

    #@23
    const/4 v8, 0x2

    #@24
    if-ne v7, v8, :cond_2

    #@26
    .line 240
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@29
    move-result v3

    #@2a
    .line 244
    .local v3, "t":I
    :goto_1
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@2d
    move-result v7

    #@2e
    if-le v7, v5, :cond_3

    #@30
    .line 245
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    #@33
    move-result p1

    #@34
    .line 246
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@36
    invoke-virtual {v7, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@39
    move-result-wide p2

    #@3a
    goto :goto_1

    #@3b
    .line 242
    .end local v3    # "t":I
    :cond_2
    const/16 v3, 0x500

    #@3d
    .restart local v3    # "t":I
    goto :goto_1

    #@3e
    .line 248
    :cond_3
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@41
    move-result v7

    #@42
    if-eqz v7, :cond_4

    #@44
    .line 249
    return v9

    #@45
    .line 252
    :cond_4
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@48
    move-result v7

    #@49
    if-ne v7, v5, :cond_5

    #@4b
    .line 253
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@4e
    move-result v2

    #@4f
    .line 257
    .local v2, "s":I
    :goto_2
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@52
    move-result v7

    #@53
    if-lez v7, :cond_6

    #@55
    .line 258
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    #@58
    move-result p1

    #@59
    .line 259
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@5b
    invoke-virtual {v7, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@5e
    move-result-wide p2

    #@5f
    goto :goto_2

    #@60
    .line 255
    .end local v2    # "s":I
    :cond_5
    const/16 v2, 0x500

    #@62
    .restart local v2    # "s":I
    goto :goto_2

    #@63
    .line 261
    :cond_6
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@66
    move-result v7

    #@67
    if-eqz v7, :cond_7

    #@69
    .line 262
    return v9

    #@6a
    .line 265
    :cond_7
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    #@6d
    move-result-wide v0

    #@6e
    .line 267
    .local v0, "p":J
    if-ne p4, v5, :cond_9

    #@70
    .line 268
    iget-object v5, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@72
    invoke-virtual {v5, v0, v1, v2}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBefore(JI)I

    #@75
    move-result v4

    #@76
    .line 273
    .local v4, "weight16":I
    :cond_8
    return v4

    #@77
    .line 270
    .end local v4    # "weight16":I
    :cond_9
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@79
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBefore(JII)I

    #@7c
    move-result v4

    #@7d
    .line 271
    .restart local v4    # "weight16":I
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@7f
    if-nez v7, :cond_8

    #@81
    and-int/lit16 v7, v4, -0x3f40

    #@83
    if-nez v7, :cond_a

    #@85
    :goto_3
    if-nez v5, :cond_8

    #@87
    new-instance v5, Ljava/lang/AssertionError;

    #@89
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@8c
    throw v5

    #@8d
    :cond_a
    move v5, v6

    #@8e
    goto :goto_3
.end method

.method private ignorePrefix(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1054
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isFCD(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method private ignoreString(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1059
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isFCD(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v0

    #@b
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangul(I)Z

    #@e
    move-result v0

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method private static indexFromTempCE(J)I
    .locals 4
    .param p0, "tempCE"    # J

    #@0
    .prologue
    .line 1380
    const-wide v0, 0x4040000006002000L    # 32.000000715313945

    #@5
    sub-long/2addr p0, v0

    #@6
    .line 1382
    const/16 v0, 0x2b

    #@8
    shr-long v0, p0, v0

    #@a
    long-to-int v0, v0

    #@b
    const v1, 0xfe000

    #@e
    and-int/2addr v0, v1

    #@f
    .line 1383
    const/16 v1, 0x2a

    #@11
    shr-long v2, p0, v1

    #@13
    long-to-int v1, v2

    #@14
    and-int/lit16 v1, v1, 0x1fc0

    #@16
    .line 1382
    or-int/2addr v0, v1

    #@17
    .line 1384
    const/16 v1, 0x18

    #@19
    shr-long v2, p0, v1

    #@1b
    long-to-int v1, v2

    #@1c
    and-int/lit8 v1, v1, 0x3f

    #@1e
    .line 1382
    or-int/2addr v0, v1

    #@1f
    .line 1381
    return v0
.end method

.method private static indexFromTempCE32(I)I
    .locals 2
    .param p0, "tempCE32"    # I

    #@0
    .prologue
    .line 1395
    const v0, 0x40400620    # 3.0003738f

    #@3
    sub-int/2addr p0, v0

    #@4
    .line 1397
    shr-int/lit8 v0, p0, 0xb

    #@6
    const v1, 0xfe000

    #@9
    and-int/2addr v0, v1

    #@a
    .line 1398
    shr-int/lit8 v1, p0, 0xa

    #@c
    and-int/lit16 v1, v1, 0x1fc0

    #@e
    .line 1397
    or-int/2addr v0, v1

    #@f
    .line 1399
    shr-int/lit8 v1, p0, 0x8

    #@11
    and-int/lit8 v1, v1, 0x3f

    #@13
    .line 1397
    or-int/2addr v0, v1

    #@14
    .line 1396
    return v0
.end method

.method private insertNodeBetween(IIJ)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "nextIndex"    # I
    .param p3, "node"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 722
    sget-boolean v3, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    invoke-static {p3, p4}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    move v3, v1

    #@d
    :goto_0
    if-nez v3, :cond_1

    #@f
    new-instance v1, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v1

    #@15
    :cond_0
    move v3, v2

    #@16
    goto :goto_0

    #@17
    .line 723
    :cond_1
    sget-boolean v3, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@19
    if-nez v3, :cond_3

    #@1b
    invoke-static {p3, p4}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_2

    #@21
    move v3, v1

    #@22
    :goto_1
    if-nez v3, :cond_3

    #@24
    new-instance v1, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v1

    #@2a
    :cond_2
    move v3, v2

    #@2b
    goto :goto_1

    #@2c
    .line 724
    :cond_3
    sget-boolean v3, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@2e
    if-nez v3, :cond_5

    #@30
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@32
    invoke-virtual {v3, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@35
    move-result-wide v4

    #@36
    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@39
    move-result v3

    #@3a
    if-ne v3, p2, :cond_4

    #@3c
    :goto_2
    if-nez v1, :cond_5

    #@3e
    new-instance v1, Ljava/lang/AssertionError;

    #@40
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@43
    throw v1

    #@44
    :cond_4
    move v1, v2

    #@45
    goto :goto_2

    #@46
    .line 726
    :cond_5
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@48
    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    #@4b
    move-result v0

    #@4c
    .line 727
    .local v0, "newIndex":I
    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromPreviousIndex(I)J

    #@4f
    move-result-wide v2

    #@50
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromNextIndex(I)J

    #@53
    move-result-wide v4

    #@54
    or-long/2addr v2, v4

    #@55
    or-long/2addr p3, v2

    #@56
    .line 728
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@58
    invoke-virtual {v1, p3, p4}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    #@5b
    .line 730
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@5d
    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@60
    move-result-wide p3

    #@61
    .line 731
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@63
    invoke-static {p3, p4, v0}, Landroid/icu/impl/coll/CollationBuilder;->changeNodeNextIndex(JI)J

    #@66
    move-result-wide v2

    #@67
    invoke-virtual {v1, v2, v3, p1}, Landroid/icu/impl/coll/UVector64;->setElementAt(JI)V

    #@6a
    .line 733
    if-eqz p2, :cond_6

    #@6c
    .line 734
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@6e
    invoke-virtual {v1, p2}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@71
    move-result-wide p3

    #@72
    .line 735
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@74
    invoke-static {p3, p4, v0}, Landroid/icu/impl/coll/CollationBuilder;->changeNodePreviousIndex(JI)J

    #@77
    move-result-wide v2

    #@78
    invoke-virtual {v1, v2, v3, p2}, Landroid/icu/impl/coll/UVector64;->setElementAt(JI)V

    #@7b
    .line 737
    :cond_6
    return v0
.end method

.method private insertTailoredNodeAfter(II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "strength"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 695
    sget-boolean v5, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@5
    if-nez v5, :cond_1

    #@7
    if-ltz p1, :cond_0

    #@9
    iget-object v5, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@b
    invoke-virtual {v5}, Landroid/icu/impl/coll/UVector64;->size()I

    #@e
    move-result v5

    #@f
    if-ge p1, v5, :cond_0

    #@11
    move v1, v4

    #@12
    :cond_0
    if-nez v1, :cond_1

    #@14
    new-instance v1, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@19
    throw v1

    #@1a
    .line 696
    :cond_1
    if-lt p2, v4, :cond_2

    #@1c
    .line 697
    invoke-direct {p0, p1, v4}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    #@1f
    move-result p1

    #@20
    .line 698
    if-lt p2, v6, :cond_2

    #@22
    .line 699
    invoke-direct {p0, p1, v6}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    #@25
    move-result p1

    #@26
    .line 704
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@28
    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@2b
    move-result-wide v2

    #@2c
    .line 706
    .local v2, "node":J
    :goto_0
    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@2f
    move-result v0

    #@30
    .local v0, "nextIndex":I
    if-eqz v0, :cond_3

    #@32
    .line 707
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@34
    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@37
    move-result-wide v2

    #@38
    .line 708
    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@3b
    move-result v1

    #@3c
    if-gt v1, p2, :cond_4

    #@3e
    .line 712
    :cond_3
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    #@41
    move-result-wide v4

    #@42
    const-wide/16 v6, 0x8

    #@44
    or-long v2, v6, v4

    #@46
    .line 713
    invoke-direct {p0, p1, v0, v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    #@49
    move-result v1

    #@4a
    return v1

    #@4b
    .line 710
    :cond_4
    move p1, v0

    #@4c
    goto :goto_0
.end method

.method private isFCD(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1062
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->fcd:Landroid/icu/text/Normalizer2;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static isTailoredNode(J)Z
    .locals 4
    .param p0, "node"    # J

    #@0
    .prologue
    .line 1476
    const-wide/16 v0, 0x8

    #@2
    and-long/2addr v0, p0

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static isTempCE(J)Z
    .locals 4
    .param p0, "ce"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1390
    long-to-int v2, p0

    #@2
    ushr-int/lit8 v0, v2, 0x18

    #@4
    .line 1391
    .local v0, "sec":I
    const/4 v2, 0x6

    #@5
    if-gt v2, v0, :cond_0

    #@7
    const/16 v2, 0x45

    #@9
    if-gt v0, v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    return v1
.end method

.method private static isTempCE32(I)Z
    .locals 3
    .param p0, "ce32"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1403
    and-int/lit16 v1, p0, 0xff

    #@3
    const/4 v2, 0x2

    #@4
    if-lt v1, v2, :cond_0

    #@6
    .line 1404
    shr-int/lit8 v1, p0, 0x8

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    const/4 v2, 0x6

    #@b
    if-gt v2, v1, :cond_0

    #@d
    shr-int/lit8 v1, p0, 0x8

    #@f
    and-int/lit16 v1, v1, 0xff

    #@11
    const/16 v2, 0x45

    #@13
    if-gt v1, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 1402
    :cond_0
    return v0
.end method

.method private makeTailoredCEs()V
    .locals 41

    #@0
    .prologue
    .line 1127
    new-instance v19, Landroid/icu/impl/coll/CollationWeights;

    #@2
    invoke-direct/range {v19 .. v19}, Landroid/icu/impl/coll/CollationWeights;-><init>()V

    #@5
    .line 1128
    .local v19, "primaries":Landroid/icu/impl/coll/CollationWeights;
    new-instance v13, Landroid/icu/impl/coll/CollationWeights;

    #@7
    invoke-direct {v13}, Landroid/icu/impl/coll/CollationWeights;-><init>()V

    #@a
    .line 1129
    .local v13, "secondaries":Landroid/icu/impl/coll/CollationWeights;
    new-instance v7, Landroid/icu/impl/coll/CollationWeights;

    #@c
    invoke-direct {v7}, Landroid/icu/impl/coll/CollationWeights;-><init>()V

    #@f
    .line 1130
    .local v7, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    move-object/from16 v0, p0

    #@11
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@13
    invoke-virtual {v8}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    #@16
    move-result-object v27

    #@17
    .line 1135
    .local v27, "nodesArray":[J
    const/16 v33, 0x0

    #@19
    .local v33, "rpi":I
    :goto_0
    move-object/from16 v0, p0

    #@1b
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    #@1d
    invoke-virtual {v8}, Landroid/icu/impl/coll/UVector32;->size()I

    #@20
    move-result v8

    #@21
    move/from16 v0, v33

    #@23
    if-ge v0, v8, :cond_28

    #@25
    .line 1136
    move-object/from16 v0, p0

    #@27
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    #@29
    move/from16 v0, v33

    #@2b
    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    #@2e
    move-result v6

    #@2f
    .line 1137
    .local v6, "i":I
    aget-wide v28, v27, v6

    #@31
    .line 1138
    .local v28, "node":J
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    #@34
    move-result-wide v20

    #@35
    .line 1139
    .local v20, "p":J
    const-wide/16 v8, 0x0

    #@37
    cmp-long v8, v20, v8

    #@39
    if-nez v8, :cond_1

    #@3b
    const/16 v34, 0x0

    #@3d
    .line 1140
    .local v34, "s":I
    :goto_1
    move/from16 v38, v34

    #@3f
    .line 1141
    .local v38, "t":I
    const/16 v32, 0x0

    #@41
    .line 1142
    .local v32, "q":I
    const/16 v31, 0x0

    #@43
    .line 1143
    .local v31, "pIsTailored":Z
    const/16 v35, 0x0

    #@45
    .line 1144
    .local v35, "sIsTailored":Z
    const/16 v39, 0x0

    #@47
    .line 1148
    .local v39, "tIsTailored":Z
    const-wide/16 v8, 0x0

    #@49
    cmp-long v8, v20, v8

    #@4b
    if-nez v8, :cond_2

    #@4d
    const/16 v30, 0x0

    #@4f
    .line 1149
    .local v30, "pIndex":I
    :goto_2
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@52
    move-result v26

    #@53
    .line 1150
    .local v26, "nextIndex":I
    :cond_0
    :goto_3
    if-eqz v26, :cond_27

    #@55
    .line 1151
    move/from16 v6, v26

    #@57
    .line 1152
    aget-wide v28, v27, v6

    #@59
    .line 1153
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@5c
    move-result v26

    #@5d
    .line 1154
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@60
    move-result v37

    #@61
    .line 1155
    .local v37, "strength":I
    const/4 v8, 0x3

    #@62
    move/from16 v0, v37

    #@64
    if-ne v0, v8, :cond_5

    #@66
    .line 1156
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@68
    if-nez v8, :cond_3

    #@6a
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@6d
    move-result v8

    #@6e
    if-nez v8, :cond_3

    #@70
    new-instance v8, Ljava/lang/AssertionError;

    #@72
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@75
    throw v8

    #@76
    .line 1139
    .end local v26    # "nextIndex":I
    .end local v30    # "pIndex":I
    .end local v31    # "pIsTailored":Z
    .end local v32    # "q":I
    .end local v34    # "s":I
    .end local v35    # "sIsTailored":Z
    .end local v37    # "strength":I
    .end local v38    # "t":I
    .end local v39    # "tIsTailored":Z
    :cond_1
    const/16 v34, 0x500

    #@78
    .restart local v34    # "s":I
    goto :goto_1

    #@79
    .line 1148
    .restart local v31    # "pIsTailored":Z
    .restart local v32    # "q":I
    .restart local v35    # "sIsTailored":Z
    .restart local v38    # "t":I
    .restart local v39    # "tIsTailored":Z
    :cond_2
    move-object/from16 v0, p0

    #@7b
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@7d
    move-wide/from16 v0, v20

    #@7f
    invoke-virtual {v8, v0, v1}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    #@82
    move-result v30

    #@83
    .restart local v30    # "pIndex":I
    goto :goto_2

    #@84
    .line 1160
    .restart local v26    # "nextIndex":I
    .restart local v37    # "strength":I
    :cond_3
    const/4 v8, 0x3

    #@85
    move/from16 v0, v32

    #@87
    if-ne v0, v8, :cond_4

    #@89
    .line 1162
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@8b
    const-string/jumbo v9, "quaternary tailoring gap too small"

    #@8e
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@91
    throw v8

    #@92
    .line 1164
    :cond_4
    add-int/lit8 v32, v32, 0x1

    #@94
    .line 1287
    :goto_4
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@97
    move-result v8

    #@98
    if-eqz v8, :cond_0

    #@9a
    .line 1288
    move-wide/from16 v0, v20

    #@9c
    move/from16 v2, v34

    #@9e
    move/from16 v3, v38

    #@a0
    move/from16 v4, v32

    #@a2
    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/impl/coll/Collation;->makeCE(JIII)J

    #@a5
    move-result-wide v8

    #@a6
    aput-wide v8, v27, v6

    #@a8
    goto :goto_3

    #@a9
    .line 1166
    :cond_5
    const/4 v8, 0x2

    #@aa
    move/from16 v0, v37

    #@ac
    if-ne v0, v8, :cond_14

    #@ae
    .line 1167
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@b1
    move-result v8

    #@b2
    if-eqz v8, :cond_12

    #@b4
    .line 1171
    if-nez v39, :cond_10

    #@b6
    .line 1174
    const/4 v8, 0x2

    #@b7
    .line 1173
    move-object/from16 v0, v27

    #@b9
    move/from16 v1, v26

    #@bb
    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    #@be
    move-result v8

    #@bf
    add-int/lit8 v12, v8, 0x1

    #@c1
    .line 1176
    .local v12, "tCount":I
    if-nez v38, :cond_7

    #@c3
    .line 1178
    move-object/from16 v0, p0

    #@c5
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@c7
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    #@ca
    move-result v8

    #@cb
    add-int/lit16 v0, v8, -0x100

    #@cd
    move/from16 v38, v0

    #@cf
    .line 1179
    move-object/from16 v0, p0

    #@d1
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@d3
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getFirstTertiaryCE()J

    #@d6
    move-result-wide v8

    #@d7
    long-to-int v8, v8

    #@d8
    and-int/lit16 v0, v8, 0x3f3f

    #@da
    move/from16 v40, v0

    #@dc
    .line 1190
    .local v40, "tLimit":I
    :goto_5
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@de
    if-nez v8, :cond_e

    #@e0
    const/16 v8, 0x4000

    #@e2
    move/from16 v0, v40

    #@e4
    if-eq v0, v8, :cond_6

    #@e6
    move/from16 v0, v40

    #@e8
    and-int/lit16 v8, v0, -0x3f40

    #@ea
    if-nez v8, :cond_d

    #@ec
    :cond_6
    const/4 v8, 0x1

    #@ed
    :goto_6
    if-nez v8, :cond_e

    #@ef
    new-instance v8, Ljava/lang/AssertionError;

    #@f1
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@f4
    throw v8

    #@f5
    .line 1180
    .end local v40    # "tLimit":I
    :cond_7
    if-nez v31, :cond_8

    #@f7
    if-eqz v35, :cond_9

    #@f9
    .line 1183
    :cond_8
    const/16 v8, 0x100

    #@fb
    move/from16 v0, v38

    #@fd
    if-ne v0, v8, :cond_a

    #@ff
    .line 1184
    const/16 v40, 0x500

    #@101
    .restart local v40    # "tLimit":I
    goto :goto_5

    #@102
    .line 1182
    .end local v40    # "tLimit":I
    :cond_9
    move-object/from16 v0, p0

    #@104
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@106
    move/from16 v0, v30

    #@108
    move/from16 v1, v34

    #@10a
    move/from16 v2, v38

    #@10c
    invoke-virtual {v8, v0, v1, v2}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryAfter(III)I

    #@10f
    move-result v40

    #@110
    .restart local v40    # "tLimit":I
    goto :goto_5

    #@111
    .line 1187
    .end local v40    # "tLimit":I
    :cond_a
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@113
    if-nez v8, :cond_c

    #@115
    const/16 v8, 0x500

    #@117
    move/from16 v0, v38

    #@119
    if-ne v0, v8, :cond_b

    #@11b
    const/4 v8, 0x1

    #@11c
    :goto_7
    if-nez v8, :cond_c

    #@11e
    new-instance v8, Ljava/lang/AssertionError;

    #@120
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@123
    throw v8

    #@124
    :cond_b
    const/4 v8, 0x0

    #@125
    goto :goto_7

    #@126
    .line 1188
    :cond_c
    move-object/from16 v0, p0

    #@128
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@12a
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    #@12d
    move-result v40

    #@12e
    .restart local v40    # "tLimit":I
    goto :goto_5

    #@12f
    .line 1190
    :cond_d
    const/4 v8, 0x0

    #@130
    goto :goto_6

    #@131
    .line 1191
    :cond_e
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationWeights;->initForTertiary()V

    #@134
    .line 1192
    move/from16 v0, v38

    #@136
    int-to-long v8, v0

    #@137
    move/from16 v0, v40

    #@139
    int-to-long v10, v0

    #@13a
    invoke-virtual/range {v7 .. v12}, Landroid/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    #@13d
    move-result v8

    #@13e
    if-nez v8, :cond_f

    #@140
    .line 1194
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@142
    const-string/jumbo v9, "tertiary tailoring gap too small"

    #@145
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@148
    throw v8

    #@149
    .line 1196
    :cond_f
    const/16 v39, 0x1

    #@14b
    .line 1198
    .end local v12    # "tCount":I
    .end local v40    # "tLimit":I
    :cond_10
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationWeights;->nextWeight()J

    #@14e
    move-result-wide v8

    #@14f
    long-to-int v0, v8

    #@150
    move/from16 v38, v0

    #@152
    .line 1199
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@154
    if-nez v8, :cond_13

    #@156
    const/4 v8, -0x1

    #@157
    move/from16 v0, v38

    #@159
    if-eq v0, v8, :cond_11

    #@15b
    const/4 v8, 0x1

    #@15c
    :goto_8
    if-nez v8, :cond_13

    #@15e
    new-instance v8, Ljava/lang/AssertionError;

    #@160
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@163
    throw v8

    #@164
    :cond_11
    const/4 v8, 0x0

    #@165
    goto :goto_8

    #@166
    .line 1201
    :cond_12
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@169
    move-result v38

    #@16a
    .line 1202
    const/16 v39, 0x0

    #@16c
    .line 1285
    :cond_13
    :goto_9
    const/16 v32, 0x0

    #@16e
    goto/16 :goto_4

    #@170
    .line 1208
    :cond_14
    const/4 v8, 0x1

    #@171
    move/from16 v0, v37

    #@173
    if-ne v0, v8, :cond_20

    #@175
    .line 1209
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@178
    move-result v8

    #@179
    if-eqz v8, :cond_1e

    #@17b
    .line 1213
    if-nez v35, :cond_1c

    #@17d
    .line 1216
    const/4 v8, 0x1

    #@17e
    .line 1215
    move-object/from16 v0, v27

    #@180
    move/from16 v1, v26

    #@182
    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    #@185
    move-result v8

    #@186
    add-int/lit8 v18, v8, 0x1

    #@188
    .line 1218
    .local v18, "sCount":I
    if-nez v34, :cond_16

    #@18a
    .line 1220
    move-object/from16 v0, p0

    #@18c
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@18e
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    #@191
    move-result v8

    #@192
    add-int/lit16 v0, v8, -0x100

    #@194
    move/from16 v34, v0

    #@196
    .line 1221
    move-object/from16 v0, p0

    #@198
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@19a
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecondaryCE()J

    #@19d
    move-result-wide v8

    #@19e
    const/16 v10, 0x10

    #@1a0
    shr-long/2addr v8, v10

    #@1a1
    long-to-int v0, v8

    #@1a2
    move/from16 v36, v0

    #@1a4
    .line 1232
    .local v36, "sLimit":I
    :goto_a
    const/16 v8, 0x500

    #@1a6
    move/from16 v0, v34

    #@1a8
    if-ne v0, v8, :cond_15

    #@1aa
    .line 1235
    move-object/from16 v0, p0

    #@1ac
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@1ae
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getLastCommonSecondary()I

    #@1b1
    move-result v34

    #@1b2
    .line 1237
    :cond_15
    invoke-virtual {v13}, Landroid/icu/impl/coll/CollationWeights;->initForSecondary()V

    #@1b5
    .line 1238
    move/from16 v0, v34

    #@1b7
    int-to-long v14, v0

    #@1b8
    move/from16 v0, v36

    #@1ba
    int-to-long v0, v0

    #@1bb
    move-wide/from16 v16, v0

    #@1bd
    invoke-virtual/range {v13 .. v18}, Landroid/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    #@1c0
    move-result v8

    #@1c1
    if-nez v8, :cond_1b

    #@1c3
    .line 1245
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@1c5
    const-string/jumbo v9, "secondary tailoring gap too small"

    #@1c8
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1cb
    throw v8

    #@1cc
    .line 1222
    .end local v36    # "sLimit":I
    :cond_16
    if-nez v31, :cond_17

    #@1ce
    .line 1224
    move-object/from16 v0, p0

    #@1d0
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@1d2
    move/from16 v0, v30

    #@1d4
    move/from16 v1, v34

    #@1d6
    invoke-virtual {v8, v0, v1}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryAfter(II)I

    #@1d9
    move-result v36

    #@1da
    .restart local v36    # "sLimit":I
    goto :goto_a

    #@1db
    .line 1225
    .end local v36    # "sLimit":I
    :cond_17
    const/16 v8, 0x100

    #@1dd
    move/from16 v0, v34

    #@1df
    if-ne v0, v8, :cond_18

    #@1e1
    .line 1226
    const/16 v36, 0x500

    #@1e3
    .restart local v36    # "sLimit":I
    goto :goto_a

    #@1e4
    .line 1229
    .end local v36    # "sLimit":I
    :cond_18
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@1e6
    if-nez v8, :cond_1a

    #@1e8
    const/16 v8, 0x500

    #@1ea
    move/from16 v0, v34

    #@1ec
    if-ne v0, v8, :cond_19

    #@1ee
    const/4 v8, 0x1

    #@1ef
    :goto_b
    if-nez v8, :cond_1a

    #@1f1
    new-instance v8, Ljava/lang/AssertionError;

    #@1f3
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@1f6
    throw v8

    #@1f7
    :cond_19
    const/4 v8, 0x0

    #@1f8
    goto :goto_b

    #@1f9
    .line 1230
    :cond_1a
    move-object/from16 v0, p0

    #@1fb
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@1fd
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    #@200
    move-result v36

    #@201
    .restart local v36    # "sLimit":I
    goto :goto_a

    #@202
    .line 1247
    :cond_1b
    const/16 v35, 0x1

    #@204
    .line 1249
    .end local v18    # "sCount":I
    .end local v36    # "sLimit":I
    :cond_1c
    invoke-virtual {v13}, Landroid/icu/impl/coll/CollationWeights;->nextWeight()J

    #@207
    move-result-wide v8

    #@208
    long-to-int v0, v8

    #@209
    move/from16 v34, v0

    #@20b
    .line 1250
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@20d
    if-nez v8, :cond_1f

    #@20f
    const/4 v8, -0x1

    #@210
    move/from16 v0, v34

    #@212
    if-eq v0, v8, :cond_1d

    #@214
    const/4 v8, 0x1

    #@215
    :goto_c
    if-nez v8, :cond_1f

    #@217
    new-instance v8, Ljava/lang/AssertionError;

    #@219
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@21c
    throw v8

    #@21d
    :cond_1d
    const/4 v8, 0x0

    #@21e
    goto :goto_c

    #@21f
    .line 1252
    :cond_1e
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@222
    move-result v34

    #@223
    .line 1253
    const/16 v35, 0x0

    #@225
    .line 1282
    :cond_1f
    :goto_d
    if-nez v34, :cond_26

    #@227
    const/16 v38, 0x0

    #@229
    .line 1283
    :goto_e
    const/16 v39, 0x0

    #@22b
    goto/16 :goto_9

    #@22d
    .line 1259
    :cond_20
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@22f
    if-nez v8, :cond_21

    #@231
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@234
    move-result v8

    #@235
    if-nez v8, :cond_21

    #@237
    new-instance v8, Ljava/lang/AssertionError;

    #@239
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@23c
    throw v8

    #@23d
    .line 1263
    :cond_21
    if-nez v31, :cond_23

    #@23f
    .line 1266
    const/4 v8, 0x0

    #@240
    .line 1265
    move-object/from16 v0, v27

    #@242
    move/from16 v1, v26

    #@244
    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    #@247
    move-result v8

    #@248
    add-int/lit8 v24, v8, 0x1

    #@24a
    .line 1267
    .local v24, "pCount":I
    move-object/from16 v0, p0

    #@24c
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@24e
    move-wide/from16 v0, v20

    #@250
    invoke-virtual {v8, v0, v1}, Landroid/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    #@253
    move-result v25

    #@254
    .line 1269
    .local v25, "isCompressible":Z
    move-object/from16 v0, p0

    #@256
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@258
    move-wide/from16 v0, v20

    #@25a
    move/from16 v2, v30

    #@25c
    move/from16 v3, v25

    #@25e
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationRootElements;->getPrimaryAfter(JIZ)J

    #@261
    move-result-wide v22

    #@262
    .line 1270
    .local v22, "pLimit":J
    move-object/from16 v0, v19

    #@264
    move/from16 v1, v25

    #@266
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationWeights;->initForPrimary(Z)V

    #@269
    .line 1271
    invoke-virtual/range {v19 .. v24}, Landroid/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    #@26c
    move-result v8

    #@26d
    if-nez v8, :cond_22

    #@26f
    .line 1273
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@271
    const-string/jumbo v9, "primary tailoring gap too small"

    #@274
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@277
    throw v8

    #@278
    .line 1275
    :cond_22
    const/16 v31, 0x1

    #@27a
    .line 1277
    .end local v22    # "pLimit":J
    .end local v24    # "pCount":I
    .end local v25    # "isCompressible":Z
    :cond_23
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationWeights;->nextWeight()J

    #@27d
    move-result-wide v20

    #@27e
    .line 1278
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@280
    if-nez v8, :cond_25

    #@282
    const-wide v8, 0xffffffffL

    #@287
    cmp-long v8, v20, v8

    #@289
    if-eqz v8, :cond_24

    #@28b
    const/4 v8, 0x1

    #@28c
    :goto_f
    if-nez v8, :cond_25

    #@28e
    new-instance v8, Ljava/lang/AssertionError;

    #@290
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@293
    throw v8

    #@294
    :cond_24
    const/4 v8, 0x0

    #@295
    goto :goto_f

    #@296
    .line 1279
    :cond_25
    const/16 v34, 0x500

    #@298
    .line 1280
    const/16 v35, 0x0

    #@29a
    goto :goto_d

    #@29b
    .line 1282
    :cond_26
    const/16 v38, 0x500

    #@29d
    goto :goto_e

    #@29e
    .line 1135
    .end local v37    # "strength":I
    :cond_27
    add-int/lit8 v33, v33, 0x1

    #@2a0
    goto/16 :goto_0

    #@2a2
    .line 1126
    .end local v6    # "i":I
    .end local v20    # "p":J
    .end local v26    # "nextIndex":I
    .end local v28    # "node":J
    .end local v30    # "pIndex":I
    .end local v31    # "pIsTailored":Z
    .end local v32    # "q":I
    .end local v34    # "s":I
    .end local v35    # "sIsTailored":Z
    .end local v38    # "t":I
    .end local v39    # "tIsTailored":Z
    :cond_28
    return-void
.end method

.method private mergeCompositeIntoString(Ljava/lang/CharSequence;IILjava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 9
    .param p1, "nfdString"    # Ljava/lang/CharSequence;
    .param p2, "indexAfterLastStarter"    # I
    .param p3, "composite"    # I
    .param p4, "decomp"    # Ljava/lang/CharSequence;
    .param p5, "newNFDString"    # Ljava/lang/StringBuilder;
    .param p6, "newString"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 957
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v7, :cond_1

    #@4
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@7
    move-result v7

    #@8
    .line 958
    const/4 v8, 0x0

    #@9
    invoke-static {p4, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@c
    move-result v8

    #@d
    .line 957
    if-ne v7, v8, :cond_0

    #@f
    const/4 v7, 0x1

    #@10
    :goto_0
    if-nez v7, :cond_1

    #@12
    new-instance v7, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v7

    #@18
    :cond_0
    const/4 v7, 0x0

    #@19
    goto :goto_0

    #@1a
    .line 959
    :cond_1
    const/4 v7, 0x0

    #@1b
    const/4 v8, 0x1

    #@1c
    invoke-static {p4, v7, v8}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    #@1f
    move-result v3

    #@20
    .line 960
    .local v3, "lastStarterLength":I
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    #@23
    move-result v7

    #@24
    if-ne v3, v7, :cond_2

    #@26
    .line 963
    const/4 v7, 0x0

    #@27
    return v7

    #@28
    .line 965
    :cond_2
    invoke-direct {p0, p1, p2, p4, v3}, Landroid/icu/impl/coll/CollationBuilder;->equalSubSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_3

    #@2e
    .line 967
    const/4 v7, 0x0

    #@2f
    return v7

    #@30
    .line 973
    :cond_3
    const/4 v7, 0x0

    #@31
    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@34
    .line 974
    const/4 v7, 0x0

    #@35
    invoke-virtual {p5, p1, v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@38
    .line 975
    const/4 v7, 0x0

    #@39
    invoke-virtual {p6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3c
    .line 976
    sub-int v7, p2, v3

    #@3e
    const/4 v8, 0x0

    #@3f
    invoke-virtual {p6, p1, v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@46
    .line 981
    move v6, p2

    #@47
    .line 982
    .local v6, "sourceIndex":I
    move v2, v3

    #@48
    .line 986
    .local v2, "decompIndex":I
    const/4 v5, -0x1

    #@49
    .line 989
    .local v5, "sourceChar":I
    const/4 v4, 0x0

    #@4a
    .line 990
    .local v4, "sourceCC":I
    const/4 v0, 0x0

    #@4b
    .line 992
    .local v0, "decompCC":I
    :goto_1
    if-gez v5, :cond_7

    #@4d
    .line 993
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@50
    move-result v7

    #@51
    if-lt v6, v7, :cond_5

    #@53
    .line 1025
    :cond_4
    if-ltz v5, :cond_e

    #@55
    .line 1026
    if-ge v4, v0, :cond_c

    #@57
    .line 1028
    const/4 v7, 0x0

    #@58
    return v7

    #@59
    .line 994
    :cond_5
    invoke-static {p1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@5c
    move-result v5

    #@5d
    .line 995
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@5f
    invoke-virtual {v7, v5}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    #@62
    move-result v4

    #@63
    .line 996
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@65
    if-nez v7, :cond_7

    #@67
    if-eqz v4, :cond_6

    #@69
    const/4 v7, 0x1

    #@6a
    :goto_2
    if-nez v7, :cond_7

    #@6c
    new-instance v7, Ljava/lang/AssertionError;

    #@6e
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@71
    throw v7

    #@72
    :cond_6
    const/4 v7, 0x0

    #@73
    goto :goto_2

    #@74
    .line 999
    :cond_7
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    #@77
    move-result v7

    #@78
    if-ge v2, v7, :cond_4

    #@7a
    .line 1000
    invoke-static {p4, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@7d
    move-result v1

    #@7e
    .line 1001
    .local v1, "decompChar":I
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@80
    invoke-virtual {v7, v1}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    #@83
    move-result v0

    #@84
    .line 1003
    if-nez v0, :cond_8

    #@86
    .line 1007
    const/4 v7, 0x0

    #@87
    return v7

    #@88
    .line 1008
    :cond_8
    if-ge v4, v0, :cond_9

    #@8a
    .line 1010
    const/4 v7, 0x0

    #@8b
    return v7

    #@8c
    .line 1011
    :cond_9
    if-ge v0, v4, :cond_a

    #@8e
    .line 1012
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@91
    .line 1013
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@94
    move-result v7

    #@95
    add-int/2addr v2, v7

    #@96
    goto :goto_1

    #@97
    .line 1014
    :cond_a
    if-eq v1, v5, :cond_b

    #@99
    .line 1016
    const/4 v7, 0x0

    #@9a
    return v7

    #@9b
    .line 1018
    :cond_b
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@9e
    .line 1019
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@a1
    move-result v7

    #@a2
    add-int/2addr v2, v7

    #@a3
    .line 1020
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@a6
    move-result v7

    #@a7
    add-int/2addr v6, v7

    #@a8
    .line 1021
    const/4 v5, -0x1

    #@a9
    goto :goto_1

    #@aa
    .line 1030
    .end local v1    # "decompChar":I
    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@ad
    move-result v7

    #@ae
    invoke-virtual {p5, p1, v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@b1
    .line 1031
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@b4
    move-result v7

    #@b5
    invoke-virtual {p6, p1, v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@b8
    .line 1035
    :cond_d
    :goto_3
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@ba
    if-nez v7, :cond_f

    #@bc
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@be
    invoke-virtual {v7, p5}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    #@c1
    move-result v7

    #@c2
    if-nez v7, :cond_f

    #@c4
    new-instance v7, Ljava/lang/AssertionError;

    #@c6
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@c9
    throw v7

    #@ca
    .line 1032
    :cond_e
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    #@cd
    move-result v7

    #@ce
    if-ge v2, v7, :cond_d

    #@d0
    .line 1033
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    #@d3
    move-result v7

    #@d4
    invoke-virtual {p5, p4, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@d7
    goto :goto_3

    #@d8
    .line 1036
    :cond_f
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@da
    if-nez v7, :cond_10

    #@dc
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->fcd:Landroid/icu/text/Normalizer2;

    #@de
    invoke-virtual {v7, p6}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    #@e1
    move-result v7

    #@e2
    if-nez v7, :cond_10

    #@e4
    new-instance v7, Ljava/lang/AssertionError;

    #@e6
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@e9
    throw v7

    #@ea
    .line 1037
    :cond_10
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@ec
    if-nez v7, :cond_11

    #@ee
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@f0
    invoke-virtual {v7, p6}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@f3
    move-result-object v7

    #@f4
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v8

    #@f8
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v7

    #@fc
    if-nez v7, :cond_11

    #@fe
    new-instance v7, Ljava/lang/AssertionError;

    #@100
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@103
    throw v7

    #@104
    .line 1038
    :cond_11
    const/4 v7, 0x1

    #@105
    return v7
.end method

.method private static nextIndexFromNode(J)I
    .locals 2
    .param p0, "node"    # J

    #@0
    .prologue
    .line 1460
    long-to-int v0, p0

    #@1
    shr-int/lit8 v0, v0, 0x8

    #@3
    const v1, 0xfffff

    #@6
    and-int/2addr v0, v1

    #@7
    return v0
.end method

.method private static nodeFromNextIndex(I)J
    .locals 2
    .param p0, "next"    # I

    #@0
    .prologue
    .line 1444
    shl-int/lit8 v0, p0, 0x8

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method private static nodeFromPreviousIndex(I)J
    .locals 3
    .param p0, "previous"    # I

    #@0
    .prologue
    .line 1441
    int-to-long v0, p0

    #@1
    const/16 v2, 0x1c

    #@3
    shl-long/2addr v0, v2

    #@4
    return-wide v0
.end method

.method private static nodeFromStrength(I)J
    .locals 2
    .param p0, "strength"    # I

    #@0
    .prologue
    .line 1447
    int-to-long v0, p0

    #@1
    return-wide v0
.end method

.method private static nodeFromWeight16(I)J
    .locals 3
    .param p0, "weight16"    # I

    #@0
    .prologue
    .line 1438
    int-to-long v0, p0

    #@1
    const/16 v2, 0x30

    #@3
    shl-long/2addr v0, v2

    #@4
    return-wide v0
.end method

.method private static nodeFromWeight32(J)J
    .locals 2
    .param p0, "weight32"    # J

    #@0
    .prologue
    .line 1435
    const/16 v0, 0x20

    #@2
    shl-long v0, p0, v0

    #@4
    return-wide v0
.end method

.method private static nodeHasAnyBefore(J)Z
    .locals 4
    .param p0, "node"    # J

    #@0
    .prologue
    .line 1473
    const-wide/16 v0, 0x60

    #@2
    and-long/2addr v0, p0

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static nodeHasBefore2(J)Z
    .locals 4
    .param p0, "node"    # J

    #@0
    .prologue
    .line 1467
    const-wide/16 v0, 0x40

    #@2
    and-long/2addr v0, p0

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static nodeHasBefore3(J)Z
    .locals 4
    .param p0, "node"    # J

    #@0
    .prologue
    .line 1470
    const-wide/16 v0, 0x20

    #@2
    and-long/2addr v0, p0

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static previousIndexFromNode(J)I
    .locals 2
    .param p0, "node"    # J

    #@0
    .prologue
    .line 1457
    const/16 v0, 0x1c

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    const v1, 0xfffff

    #@8
    and-int/2addr v0, v1

    #@9
    return v0
.end method

.method private static sameCEs([JI[JI)Z
    .locals 8
    .param p0, "ces1"    # [J
    .param p1, "ces1Length"    # I
    .param p2, "ces2"    # [J
    .param p3, "ces2Length"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1104
    if-eq p1, p3, :cond_0

    #@4
    .line 1105
    return v3

    #@5
    .line 1107
    :cond_0
    sget-boolean v1, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@7
    if-nez v1, :cond_2

    #@9
    const/16 v1, 0x1f

    #@b
    if-gt p1, v1, :cond_1

    #@d
    move v1, v2

    #@e
    :goto_0
    if-nez v1, :cond_2

    #@10
    new-instance v1, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v1

    #@16
    :cond_1
    move v1, v3

    #@17
    goto :goto_0

    #@18
    .line 1108
    :cond_2
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    #@1b
    .line 1109
    aget-wide v4, p0, v0

    #@1d
    aget-wide v6, p2, v0

    #@1f
    cmp-long v1, v4, v6

    #@21
    if-eqz v1, :cond_3

    #@23
    return v3

    #@24
    .line 1108
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_1

    #@27
    .line 1111
    :cond_4
    return v2
.end method

.method private setCaseBits(Ljava/lang/CharSequence;)V
    .locals 20
    .param p1, "nfdString"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 774
    const/4 v12, 0x0

    #@1
    .line 775
    .local v12, "numTailoredPrimaries":I
    const/4 v5, 0x0

    #@2
    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@4
    iget v15, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@6
    if-ge v5, v15, :cond_1

    #@8
    .line 776
    move-object/from16 v0, p0

    #@a
    iget-object v15, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@c
    aget-wide v16, v15, v5

    #@e
    invoke-static/range {v16 .. v17}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    #@11
    move-result v15

    #@12
    if-nez v15, :cond_0

    #@14
    add-int/lit8 v12, v12, 0x1

    #@16
    .line 775
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@18
    goto :goto_0

    #@19
    .line 781
    :cond_1
    sget-boolean v15, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@1b
    if-nez v15, :cond_3

    #@1d
    const/16 v15, 0x1f

    #@1f
    if-gt v12, v15, :cond_2

    #@21
    const/4 v15, 0x1

    #@22
    :goto_1
    if-nez v15, :cond_3

    #@24
    new-instance v15, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v15

    #@2a
    :cond_2
    const/4 v15, 0x0

    #@2b
    goto :goto_1

    #@2c
    .line 783
    :cond_3
    const-wide/16 v6, 0x0

    #@2e
    .line 784
    .local v6, "cases":J
    if-lez v12, :cond_d

    #@30
    .line 785
    move-object/from16 v13, p1

    #@32
    .line 786
    .local v13, "s":Ljava/lang/CharSequence;
    new-instance v2, Landroid/icu/impl/coll/UTF16CollationIterator;

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v15, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@38
    const/16 v16, 0x0

    #@3a
    const/16 v17, 0x0

    #@3c
    move/from16 v0, v16

    #@3e
    move/from16 v1, v17

    #@40
    invoke-direct {v2, v15, v0, v13, v1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    #@43
    .line 787
    .local v2, "baseCEs":Landroid/icu/impl/coll/UTF16CollationIterator;
    invoke-virtual {v2}, Landroid/icu/impl/coll/UTF16CollationIterator;->fetchCEs()I

    #@46
    move-result v15

    #@47
    add-int/lit8 v3, v15, -0x1

    #@49
    .line 788
    .local v3, "baseCEsLength":I
    sget-boolean v15, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@4b
    if-nez v15, :cond_5

    #@4d
    if-ltz v3, :cond_4

    #@4f
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/UTF16CollationIterator;->getCE(I)J

    #@52
    move-result-wide v16

    #@53
    const-wide v18, 0x101000100L

    #@58
    cmp-long v15, v16, v18

    #@5a
    if-nez v15, :cond_4

    #@5c
    const/4 v15, 0x1

    #@5d
    :goto_2
    if-nez v15, :cond_5

    #@5f
    new-instance v15, Ljava/lang/AssertionError;

    #@61
    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    #@64
    throw v15

    #@65
    :cond_4
    const/4 v15, 0x0

    #@66
    goto :goto_2

    #@67
    .line 790
    :cond_5
    const/4 v10, 0x0

    #@68
    .line 791
    .local v10, "lastCase":I
    const/4 v11, 0x0

    #@69
    .line 792
    .local v11, "numBasePrimaries":I
    const/4 v5, 0x0

    #@6a
    :goto_3
    if-ge v5, v3, :cond_c

    #@6c
    .line 793
    invoke-virtual {v2, v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->getCE(I)J

    #@6f
    move-result-wide v8

    #@70
    .line 794
    .local v8, "ce":J
    const/16 v15, 0x20

    #@72
    ushr-long v16, v8, v15

    #@74
    const-wide/16 v18, 0x0

    #@76
    cmp-long v15, v16, v18

    #@78
    if-eqz v15, :cond_9

    #@7a
    .line 795
    add-int/lit8 v11, v11, 0x1

    #@7c
    .line 796
    long-to-int v15, v8

    #@7d
    shr-int/lit8 v15, v15, 0xe

    #@7f
    and-int/lit8 v4, v15, 0x3

    #@81
    .line 797
    .local v4, "c":I
    sget-boolean v15, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@83
    if-nez v15, :cond_8

    #@85
    if-eqz v4, :cond_6

    #@87
    const/4 v15, 0x2

    #@88
    if-ne v4, v15, :cond_7

    #@8a
    :cond_6
    const/4 v15, 0x1

    #@8b
    :goto_4
    if-nez v15, :cond_8

    #@8d
    new-instance v15, Ljava/lang/AssertionError;

    #@8f
    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    #@92
    throw v15

    #@93
    :cond_7
    const/4 v15, 0x0

    #@94
    goto :goto_4

    #@95
    .line 798
    :cond_8
    if-ge v11, v12, :cond_a

    #@97
    .line 799
    int-to-long v0, v4

    #@98
    move-wide/from16 v16, v0

    #@9a
    add-int/lit8 v15, v11, -0x1

    #@9c
    mul-int/lit8 v15, v15, 0x2

    #@9e
    shl-long v16, v16, v15

    #@a0
    or-long v6, v6, v16

    #@a2
    .line 792
    .end local v4    # "c":I
    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    #@a4
    goto :goto_3

    #@a5
    .line 800
    .restart local v4    # "c":I
    :cond_a
    if-ne v11, v12, :cond_b

    #@a7
    .line 801
    move v10, v4

    #@a8
    goto :goto_5

    #@a9
    .line 802
    :cond_b
    if-eq v4, v10, :cond_9

    #@ab
    .line 805
    const/4 v10, 0x1

    #@ac
    .line 811
    .end local v4    # "c":I
    .end local v8    # "ce":J
    :cond_c
    if-lt v11, v12, :cond_d

    #@ae
    .line 812
    int-to-long v0, v10

    #@af
    move-wide/from16 v16, v0

    #@b1
    add-int/lit8 v15, v12, -0x1

    #@b3
    mul-int/lit8 v15, v15, 0x2

    #@b5
    shl-long v16, v16, v15

    #@b7
    or-long v6, v6, v16

    #@b9
    .line 816
    .end local v2    # "baseCEs":Landroid/icu/impl/coll/UTF16CollationIterator;
    .end local v3    # "baseCEsLength":I
    .end local v10    # "lastCase":I
    .end local v11    # "numBasePrimaries":I
    .end local v13    # "s":Ljava/lang/CharSequence;
    :cond_d
    const/4 v5, 0x0

    #@ba
    :goto_6
    move-object/from16 v0, p0

    #@bc
    iget v15, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@be
    if-ge v5, v15, :cond_10

    #@c0
    .line 817
    move-object/from16 v0, p0

    #@c2
    iget-object v15, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@c4
    aget-wide v16, v15, v5

    #@c6
    const-wide/32 v18, -0xc001

    #@c9
    and-long v8, v16, v18

    #@cb
    .line 818
    .restart local v8    # "ce":J
    invoke-static {v8, v9}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    #@ce
    move-result v14

    #@cf
    .line 819
    .local v14, "strength":I
    if-nez v14, :cond_f

    #@d1
    .line 820
    const-wide/16 v16, 0x3

    #@d3
    and-long v16, v16, v6

    #@d5
    const/16 v15, 0xe

    #@d7
    shl-long v16, v16, v15

    #@d9
    or-long v8, v8, v16

    #@db
    .line 821
    const/4 v15, 0x2

    #@dc
    ushr-long/2addr v6, v15

    #@dd
    .line 832
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    #@df
    iget-object v15, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@e1
    aput-wide v8, v15, v5

    #@e3
    .line 816
    add-int/lit8 v5, v5, 0x1

    #@e5
    goto :goto_6

    #@e6
    .line 822
    :cond_f
    const/4 v15, 0x2

    #@e7
    if-ne v14, v15, :cond_e

    #@e9
    .line 825
    const-wide/32 v16, 0x8000

    #@ec
    or-long v8, v8, v16

    #@ee
    goto :goto_7

    #@ef
    .line 773
    .end local v8    # "ce":J
    .end local v14    # "strength":I
    :cond_10
    return-void
.end method

.method private static strengthFromNode(J)I
    .locals 2
    .param p0, "node"    # J

    #@0
    .prologue
    .line 1463
    long-to-int v0, p0

    #@1
    and-int/lit8 v0, v0, 0x3

    #@3
    return v0
.end method

.method private static strengthFromTempCE(J)I
    .locals 2
    .param p0, "tempCE"    # J

    #@0
    .prologue
    .line 1387
    long-to-int v0, p0

    #@1
    shr-int/lit8 v0, v0, 0x8

    #@3
    and-int/lit8 v0, v0, 0x3

    #@5
    return v0
.end method

.method private static tempCEFromIndexAndStrength(II)J
    .locals 5
    .param p0, "index"    # I
    .param p1, "strength"    # I

    #@0
    .prologue
    .line 1371
    const v0, 0xfe000

    #@3
    and-int/2addr v0, p0

    #@4
    int-to-long v0, v0

    #@5
    const/16 v2, 0x2b

    #@7
    shl-long/2addr v0, v2

    #@8
    .line 1369
    const-wide v2, 0x4040000006002000L    # 32.000000715313945

    #@d
    add-long/2addr v0, v2

    #@e
    .line 1373
    and-int/lit16 v2, p0, 0x1fc0

    #@10
    int-to-long v2, v2

    #@11
    const/16 v4, 0x2a

    #@13
    shl-long/2addr v2, v4

    #@14
    .line 1369
    add-long/2addr v0, v2

    #@15
    .line 1375
    and-int/lit8 v2, p0, 0x3f

    #@17
    shl-int/lit8 v2, v2, 0x18

    #@19
    int-to-long v2, v2

    #@1a
    .line 1369
    add-long/2addr v0, v2

    #@1b
    .line 1377
    shl-int/lit8 v2, p1, 0x8

    #@1d
    int-to-long v2, v2

    #@1e
    .line 1369
    add-long/2addr v0, v2

    #@1f
    .line 1367
    return-wide v0
.end method

.method private static weight16FromNode(J)I
    .locals 2
    .param p0, "node"    # J

    #@0
    .prologue
    .line 1454
    const/16 v0, 0x30

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    const v1, 0xffff

    #@8
    and-int/2addr v0, v1

    #@9
    return v0
.end method

.method private static weight32FromNode(J)J
    .locals 2
    .param p0, "node"    # J

    #@0
    .prologue
    .line 1451
    const/16 v0, 0x20

    #@2
    ushr-long v0, p0, v0

    #@4
    return-wide v0
.end method


# virtual methods
.method addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 18
    .param p1, "strength"    # I
    .param p2, "prefix"    # Ljava/lang/CharSequence;
    .param p3, "str"    # Ljava/lang/CharSequence;
    .param p4, "extension"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 437
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_1

    #@6
    .line 438
    const-string/jumbo v15, ""

    #@9
    .line 442
    .local v15, "nfdPrefix":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@d
    move-object/from16 v0, p3

    #@f
    invoke-virtual {v2, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@12
    move-result-object v16

    #@13
    .line 447
    .local v16, "nfdString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@16
    move-result v14

    #@17
    .line 448
    .local v14, "nfdLength":I
    const/4 v2, 0x2

    #@18
    if-lt v14, v2, :cond_4

    #@1a
    .line 449
    const/4 v2, 0x0

    #@1b
    move-object/from16 v0, v16

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v8

    #@21
    .line 450
    .local v8, "c":C
    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoV(I)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_2

    #@2d
    .line 453
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@2f
    .line 454
    const-string/jumbo v3, "contractions starting with conjoining Jamo L or V not supported"

    #@32
    .line 453
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 440
    .end local v8    # "c":C
    .end local v14    # "nfdLength":I
    .end local v15    # "nfdPrefix":Ljava/lang/String;
    .end local v16    # "nfdString":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-virtual {v2, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@3f
    move-result-object v15

    #@40
    .restart local v15    # "nfdPrefix":Ljava/lang/String;
    goto :goto_0

    #@41
    .line 456
    .restart local v8    # "c":C
    .restart local v14    # "nfdLength":I
    .restart local v16    # "nfdString":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v14, -0x1

    #@43
    move-object/from16 v0, v16

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v8

    #@49
    .line 457
    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    #@4c
    move-result v2

    #@4d
    if-nez v2, :cond_3

    #@4f
    .line 458
    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoV(I)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_4

    #@55
    add-int/lit8 v2, v14, -0x2

    #@57
    move-object/from16 v0, v16

    #@59
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@5c
    move-result v2

    #@5d
    invoke-static {v2}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    #@60
    move-result v2

    #@61
    .line 457
    if-eqz v2, :cond_4

    #@63
    .line 462
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@65
    .line 463
    const-string/jumbo v3, "contractions ending with conjoining Jamo L or L+V not supported"

    #@68
    .line 462
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v2

    #@6c
    .line 473
    .end local v8    # "c":C
    :cond_4
    const/16 v2, 0xf

    #@6e
    move/from16 v0, p1

    #@70
    if-eq v0, v2, :cond_b

    #@72
    .line 475
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForCEs(I)I

    #@75
    move-result v12

    #@76
    .line 476
    .local v12, "index":I
    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@78
    if-nez v2, :cond_6

    #@7a
    move-object/from16 v0, p0

    #@7c
    iget v2, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@7e
    if-lez v2, :cond_5

    #@80
    const/4 v2, 0x1

    #@81
    :goto_1
    if-nez v2, :cond_6

    #@83
    new-instance v2, Ljava/lang/AssertionError;

    #@85
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@88
    throw v2

    #@89
    :cond_5
    const/4 v2, 0x0

    #@8a
    goto :goto_1

    #@8b
    .line 477
    :cond_6
    move-object/from16 v0, p0

    #@8d
    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@8f
    move-object/from16 v0, p0

    #@91
    iget v3, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@93
    add-int/lit8 v3, v3, -0x1

    #@95
    aget-wide v10, v2, v3

    #@97
    .line 478
    .local v10, "ce":J
    if-nez p1, :cond_7

    #@99
    invoke-static {v10, v11}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    #@9c
    move-result v2

    #@9d
    if-eqz v2, :cond_8

    #@9f
    .line 483
    :cond_7
    const/4 v2, 0x3

    #@a0
    move/from16 v0, p1

    #@a2
    if-ne v0, v2, :cond_9

    #@a4
    const-wide/16 v2, 0x0

    #@a6
    cmp-long v2, v10, v2

    #@a8
    if-nez v2, :cond_9

    #@aa
    .line 486
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@ac
    .line 487
    const-string/jumbo v3, "tailoring quaternary after tertiary ignorables not supported"

    #@af
    .line 486
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b2
    throw v2

    #@b3
    .line 478
    :cond_8
    const/16 v2, 0x20

    #@b5
    ushr-long v2, v10, v2

    #@b7
    const-wide/16 v4, 0x0

    #@b9
    cmp-long v2, v2, v4

    #@bb
    if-nez v2, :cond_7

    #@bd
    .line 480
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@bf
    .line 481
    const-string/jumbo v3, "tailoring primary after ignorables not supported"

    #@c2
    .line 480
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v2

    #@c6
    .line 490
    :cond_9
    move-object/from16 v0, p0

    #@c8
    move/from16 v1, p1

    #@ca
    invoke-direct {v0, v12, v1}, Landroid/icu/impl/coll/CollationBuilder;->insertTailoredNodeAfter(II)I

    #@cd
    move-result v12

    #@ce
    .line 493
    invoke-static {v10, v11}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    #@d1
    move-result v17

    #@d2
    .line 494
    .local v17, "tempStrength":I
    move/from16 v0, p1

    #@d4
    move/from16 v1, v17

    #@d6
    if-ge v0, v1, :cond_a

    #@d8
    move/from16 v17, p1

    #@da
    .line 495
    :cond_a
    move-object/from16 v0, p0

    #@dc
    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@de
    move-object/from16 v0, p0

    #@e0
    iget v3, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@e2
    add-int/lit8 v3, v3, -0x1

    #@e4
    move/from16 v0, v17

    #@e6
    invoke-static {v12, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    #@e9
    move-result-wide v4

    #@ea
    aput-wide v4, v2, v3

    #@ec
    .line 498
    .end local v10    # "ce":J
    .end local v12    # "index":I
    .end local v17    # "tempStrength":I
    :cond_b
    move-object/from16 v0, p0

    #@ee
    move-object/from16 v1, v16

    #@f0
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->setCaseBits(Ljava/lang/CharSequence;)V

    #@f3
    .line 500
    move-object/from16 v0, p0

    #@f5
    iget v9, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@f7
    .line 501
    .local v9, "cesLengthBeforeExtension":I
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    #@fa
    move-result v2

    #@fb
    if-eqz v2, :cond_c

    #@fd
    .line 502
    move-object/from16 v0, p0

    #@ff
    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@101
    move-object/from16 v0, p4

    #@103
    invoke-virtual {v2, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@106
    move-result-object v13

    #@107
    .line 503
    .local v13, "nfdExtension":Ljava/lang/String;
    move-object/from16 v0, p0

    #@109
    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@10f
    move-object/from16 v0, p0

    #@111
    iget v4, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@113
    invoke-virtual {v2, v13, v3, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    #@116
    move-result v2

    #@117
    move-object/from16 v0, p0

    #@119
    iput v2, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@11b
    .line 504
    move-object/from16 v0, p0

    #@11d
    iget v2, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@11f
    const/16 v3, 0x1f

    #@121
    if-le v2, v3, :cond_c

    #@123
    .line 505
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@125
    .line 506
    const-string/jumbo v3, "extension string adds too many collation elements (more than 31 total)"

    #@128
    .line 505
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12b
    throw v2

    #@12c
    .line 509
    .end local v13    # "nfdExtension":Ljava/lang/String;
    :cond_c
    const/4 v7, -0x1

    #@12d
    .line 510
    .local v7, "ce32":I
    move-object/from16 v0, p2

    #@12f
    invoke-virtual {v15, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@132
    move-result v2

    #@133
    if-eqz v2, :cond_e

    #@135
    move-object/from16 v0, v16

    #@137
    move-object/from16 v1, p3

    #@139
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@13c
    move-result v2

    #@13d
    if-eqz v2, :cond_e

    #@13f
    .line 517
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    #@141
    iget-object v5, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@143
    move-object/from16 v0, p0

    #@145
    iget v6, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@147
    move-object/from16 v2, p0

    #@149
    move-object v3, v15

    #@14a
    move-object/from16 v4, v16

    #@14c
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/CollationBuilder;->addWithClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    #@14f
    .line 518
    move-object/from16 v0, p0

    #@151
    iput v9, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@153
    .line 435
    return-void

    #@154
    .line 511
    :cond_e
    move-object/from16 v0, p0

    #@156
    move-object/from16 v1, p2

    #@158
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->ignorePrefix(Ljava/lang/CharSequence;)Z

    #@15b
    move-result v2

    #@15c
    if-nez v2, :cond_d

    #@15e
    move-object/from16 v0, p0

    #@160
    move-object/from16 v1, p3

    #@162
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    #@165
    move-result v2

    #@166
    if-nez v2, :cond_d

    #@168
    .line 515
    move-object/from16 v0, p0

    #@16a
    iget-object v5, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@16c
    move-object/from16 v0, p0

    #@16e
    iget v6, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@170
    move-object/from16 v2, p0

    #@172
    move-object/from16 v3, p2

    #@174
    move-object/from16 v4, p3

    #@176
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    #@179
    move-result v7

    #@17a
    goto :goto_2
.end method

.method addReset(ILjava/lang/CharSequence;)V
    .locals 18
    .param p1, "strength"    # I
    .param p2, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 106
    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v14, :cond_1

    #@4
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v14

    #@8
    if-eqz v14, :cond_0

    #@a
    const/4 v14, 0x1

    #@b
    :goto_0
    if-nez v14, :cond_1

    #@d
    new-instance v14, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v14

    #@13
    :cond_0
    const/4 v14, 0x0

    #@14
    goto :goto_0

    #@15
    .line 107
    :cond_1
    const/4 v14, 0x0

    #@16
    move-object/from16 v0, p2

    #@18
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v14

    #@1c
    const v15, 0xfffe

    #@1f
    if-ne v14, v15, :cond_3

    #@21
    .line 108
    move-object/from16 v0, p0

    #@23
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@25
    move-object/from16 v0, p0

    #@27
    move-object/from16 v1, p2

    #@29
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->getSpecialResetPosition(Ljava/lang/CharSequence;)J

    #@2c
    move-result-wide v16

    #@2d
    const/4 v15, 0x0

    #@2e
    aput-wide v16, v14, v15

    #@30
    .line 109
    const/4 v14, 0x1

    #@31
    move-object/from16 v0, p0

    #@33
    iput v14, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@35
    .line 110
    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@37
    if-nez v14, :cond_4

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@3d
    const/4 v15, 0x0

    #@3e
    aget-wide v14, v14, v15

    #@40
    const-wide/32 v16, 0xc0c0

    #@43
    and-long v14, v14, v16

    #@45
    const-wide/16 v16, 0x0

    #@47
    cmp-long v14, v14, v16

    #@49
    if-nez v14, :cond_2

    #@4b
    const/4 v14, 0x1

    #@4c
    :goto_1
    if-nez v14, :cond_4

    #@4e
    new-instance v14, Ljava/lang/AssertionError;

    #@50
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@53
    throw v14

    #@54
    :cond_2
    const/4 v14, 0x0

    #@55
    goto :goto_1

    #@56
    .line 113
    :cond_3
    move-object/from16 v0, p0

    #@58
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    #@5a
    move-object/from16 v0, p2

    #@5c
    invoke-virtual {v14, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    .line 114
    .local v5, "nfdString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@62
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@64
    move-object/from16 v0, p0

    #@66
    iget-object v15, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@68
    const/16 v16, 0x0

    #@6a
    move/from16 v0, v16

    #@6c
    invoke-virtual {v14, v5, v15, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    #@6f
    move-result v14

    #@70
    move-object/from16 v0, p0

    #@72
    iput v14, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@74
    .line 115
    move-object/from16 v0, p0

    #@76
    iget v14, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@78
    const/16 v15, 0x1f

    #@7a
    if-le v14, v15, :cond_4

    #@7c
    .line 116
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@7e
    .line 117
    const-string/jumbo v15, "reset position maps to too many collation elements (more than 31)"

    #@81
    .line 116
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@84
    throw v14

    #@85
    .line 120
    .end local v5    # "nfdString":Ljava/lang/String;
    :cond_4
    const/16 v14, 0xf

    #@87
    move/from16 v0, p1

    #@89
    if-ne v0, v14, :cond_5

    #@8b
    return-void

    #@8c
    .line 123
    :cond_5
    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@8e
    if-nez v14, :cond_7

    #@90
    if-ltz p1, :cond_6

    #@92
    const/4 v14, 0x2

    #@93
    move/from16 v0, p1

    #@95
    if-gt v0, v14, :cond_6

    #@97
    const/4 v14, 0x1

    #@98
    :goto_2
    if-nez v14, :cond_7

    #@9a
    new-instance v14, Ljava/lang/AssertionError;

    #@9c
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@9f
    throw v14

    #@a0
    :cond_6
    const/4 v14, 0x0

    #@a1
    goto :goto_2

    #@a2
    .line 124
    :cond_7
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForCEs(I)I

    #@a5
    move-result v3

    #@a6
    .line 126
    .local v3, "index":I
    move-object/from16 v0, p0

    #@a8
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@aa
    invoke-virtual {v14, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@ad
    move-result-wide v6

    #@ae
    .line 129
    .local v6, "node":J
    :goto_3
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@b1
    move-result v14

    #@b2
    move/from16 v0, p1

    #@b4
    if-le v14, v0, :cond_8

    #@b6
    .line 130
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    #@b9
    move-result v3

    #@ba
    .line 131
    move-object/from16 v0, p0

    #@bc
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@be
    invoke-virtual {v14, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@c1
    move-result-wide v6

    #@c2
    goto :goto_3

    #@c3
    .line 135
    :cond_8
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@c6
    move-result v14

    #@c7
    move/from16 v0, p1

    #@c9
    if-ne v14, v0, :cond_a

    #@cb
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@ce
    move-result v14

    #@cf
    if-eqz v14, :cond_a

    #@d1
    .line 137
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    #@d4
    move-result v3

    #@d5
    .line 227
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    #@d7
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@d9
    move-object/from16 v0, p0

    #@db
    iget v15, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@dd
    add-int/lit8 v15, v15, -0x1

    #@df
    move/from16 v0, p1

    #@e1
    invoke-static {v3, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    #@e4
    move-result-wide v16

    #@e5
    aput-wide v16, v14, v15

    #@e7
    .line 105
    return-void

    #@e8
    .line 138
    :cond_a
    if-nez p1, :cond_e

    #@ea
    .line 140
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    #@ed
    move-result-wide v8

    #@ee
    .line 141
    .local v8, "p":J
    const-wide/16 v14, 0x0

    #@f0
    cmp-long v14, v8, v14

    #@f2
    if-nez v14, :cond_b

    #@f4
    .line 142
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    #@f6
    .line 143
    const-string/jumbo v15, "reset primary-before ignorable not possible"

    #@f9
    .line 142
    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@fc
    throw v14

    #@fd
    .line 145
    :cond_b
    move-object/from16 v0, p0

    #@ff
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@101
    invoke-virtual {v14}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimary()J

    #@104
    move-result-wide v14

    #@105
    cmp-long v14, v8, v14

    #@107
    if-gtz v14, :cond_c

    #@109
    .line 147
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    #@10b
    .line 148
    const-string/jumbo v15, "reset primary-before first non-ignorable not supported"

    #@10e
    .line 147
    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@111
    throw v14

    #@112
    .line 150
    :cond_c
    const-wide v14, 0xff020200L

    #@117
    cmp-long v14, v8, v14

    #@119
    if-nez v14, :cond_d

    #@11b
    .line 152
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    #@11d
    .line 153
    const-string/jumbo v15, "reset primary-before [first trailing] not supported"

    #@120
    .line 152
    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@123
    throw v14

    #@124
    .line 155
    :cond_d
    move-object/from16 v0, p0

    #@126
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    #@128
    move-object/from16 v0, p0

    #@12a
    iget-object v15, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@12c
    invoke-virtual {v15, v8, v9}, Landroid/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    #@12f
    move-result v15

    #@130
    invoke-virtual {v14, v8, v9, v15}, Landroid/icu/impl/coll/CollationRootElements;->getPrimaryBefore(JZ)J

    #@133
    move-result-wide v8

    #@134
    .line 156
    move-object/from16 v0, p0

    #@136
    invoke-direct {v0, v8, v9}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForPrimary(J)I

    #@139
    move-result v3

    #@13a
    .line 160
    :goto_5
    move-object/from16 v0, p0

    #@13c
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@13e
    invoke-virtual {v14, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@141
    move-result-wide v6

    #@142
    .line 161
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    #@145
    move-result v4

    #@146
    .line 162
    .local v4, "nextIndex":I
    if-eqz v4, :cond_9

    #@148
    .line 163
    move v3, v4

    #@149
    goto :goto_5

    #@14a
    .line 167
    .end local v4    # "nextIndex":I
    .end local v8    # "p":J
    :cond_e
    const/4 v14, 0x1

    #@14b
    move-object/from16 v0, p0

    #@14d
    invoke-direct {v0, v3, v14}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    #@150
    move-result v3

    #@151
    .line 168
    const/4 v14, 0x2

    #@152
    move/from16 v0, p1

    #@154
    if-lt v0, v14, :cond_f

    #@156
    .line 169
    const/4 v14, 0x2

    #@157
    move-object/from16 v0, p0

    #@159
    invoke-direct {v0, v3, v14}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    #@15c
    move-result v3

    #@15d
    .line 173
    :cond_f
    move-object/from16 v0, p0

    #@15f
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@161
    invoke-virtual {v14, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@164
    move-result-wide v6

    #@165
    .line 174
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@168
    move-result v14

    #@169
    move/from16 v0, p1

    #@16b
    if-ne v14, v0, :cond_1b

    #@16d
    .line 176
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@170
    move-result v13

    #@171
    .line 177
    .local v13, "weight16":I
    if-nez v13, :cond_11

    #@173
    .line 178
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    #@175
    .line 179
    const/4 v14, 0x1

    #@176
    move/from16 v0, p1

    #@178
    if-ne v0, v14, :cond_10

    #@17a
    .line 180
    const-string/jumbo v14, "reset secondary-before secondary ignorable not possible"

    #@17d
    .line 178
    :goto_6
    invoke-direct {v15, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@180
    throw v15

    #@181
    .line 181
    :cond_10
    const-string/jumbo v14, "reset tertiary-before completely ignorable not possible"

    #@184
    goto :goto_6

    #@185
    .line 183
    :cond_11
    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@187
    if-nez v14, :cond_13

    #@189
    const/16 v14, 0x100

    #@18b
    if-le v13, v14, :cond_12

    #@18d
    const/4 v14, 0x1

    #@18e
    :goto_7
    if-nez v14, :cond_13

    #@190
    new-instance v14, Ljava/lang/AssertionError;

    #@192
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@195
    throw v14

    #@196
    :cond_12
    const/4 v14, 0x0

    #@197
    goto :goto_7

    #@198
    .line 187
    :cond_13
    move-object/from16 v0, p0

    #@19a
    move/from16 v1, p1

    #@19c
    invoke-direct {v0, v3, v6, v7, v1}, Landroid/icu/impl/coll/CollationBuilder;->getWeight16Before(IJI)I

    #@19f
    move-result v13

    #@1a0
    .line 190
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    #@1a3
    move-result v10

    #@1a4
    .line 191
    .local v10, "previousIndex":I
    move v2, v10

    #@1a5
    .line 192
    .local v2, "i":I
    :goto_8
    move-object/from16 v0, p0

    #@1a7
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    #@1a9
    invoke-virtual {v14, v2}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@1ac
    move-result-wide v6

    #@1ad
    .line 193
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    #@1b0
    move-result v11

    #@1b1
    .line 194
    .local v11, "previousStrength":I
    move/from16 v0, p1

    #@1b3
    if-ge v11, v0, :cond_17

    #@1b5
    .line 195
    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    #@1b7
    if-nez v14, :cond_16

    #@1b9
    const/16 v14, 0x500

    #@1bb
    if-ge v13, v14, :cond_14

    #@1bd
    if-ne v2, v10, :cond_15

    #@1bf
    :cond_14
    const/4 v14, 0x1

    #@1c0
    :goto_9
    if-nez v14, :cond_16

    #@1c2
    new-instance v14, Ljava/lang/AssertionError;

    #@1c4
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@1c7
    throw v14

    #@1c8
    :cond_15
    const/4 v14, 0x0

    #@1c9
    goto :goto_9

    #@1ca
    .line 200
    :cond_16
    const/16 v12, 0x500

    #@1cc
    .line 208
    .local v12, "previousWeight16":I
    :goto_a
    if-ne v12, v13, :cond_1a

    #@1ce
    .line 212
    move v3, v10

    #@1cf
    .line 225
    .end local v2    # "i":I
    .end local v10    # "previousIndex":I
    .end local v11    # "previousStrength":I
    .end local v12    # "previousWeight16":I
    :goto_b
    move-object/from16 v0, p0

    #@1d1
    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    iget v15, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    #@1d7
    add-int/lit8 v15, v15, -0x1

    #@1d9
    aget-wide v14, v14, v15

    #@1db
    invoke-static {v14, v15}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    #@1de
    move-result p1

    #@1df
    goto/16 :goto_4

    #@1e1
    .line 202
    .restart local v2    # "i":I
    .restart local v10    # "previousIndex":I
    .restart local v11    # "previousStrength":I
    :cond_17
    move/from16 v0, p1

    #@1e3
    if-ne v11, v0, :cond_18

    #@1e5
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    #@1e8
    move-result v14

    #@1e9
    if-eqz v14, :cond_19

    #@1eb
    .line 191
    :cond_18
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    #@1ee
    move-result v2

    #@1ef
    goto :goto_8

    #@1f0
    .line 203
    :cond_19
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    #@1f3
    move-result v12

    #@1f4
    .restart local v12    # "previousWeight16":I
    goto :goto_a

    #@1f5
    .line 215
    :cond_1a
    invoke-static {v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    #@1f8
    move-result-wide v14

    #@1f9
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    #@1fc
    move-result-wide v16

    #@1fd
    or-long v6, v14, v16

    #@1ff
    .line 216
    move-object/from16 v0, p0

    #@201
    invoke-direct {v0, v10, v3, v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    #@204
    move-result v3

    #@205
    goto :goto_b

    #@206
    .line 220
    .end local v2    # "i":I
    .end local v10    # "previousIndex":I
    .end local v11    # "previousStrength":I
    .end local v12    # "previousWeight16":I
    .end local v13    # "weight16":I
    :cond_1b
    move-object/from16 v0, p0

    #@208
    move/from16 v1, p1

    #@20a
    invoke-direct {v0, v3, v6, v7, v1}, Landroid/icu/impl/coll/CollationBuilder;->getWeight16Before(IJI)I

    #@20d
    move-result v13

    #@20e
    .line 221
    .restart local v13    # "weight16":I
    move-object/from16 v0, p0

    #@210
    move/from16 v1, p1

    #@212
    invoke-direct {v0, v3, v13, v1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    #@215
    move-result v3

    #@216
    goto :goto_b
.end method

.method optimize(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@5
    .line 844
    return-void
.end method

.method public parseAndBuild(Ljava/lang/String;)Landroid/icu/impl/coll/CollationTailoring;
    .locals 8
    .param p1, "ruleString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 54
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@4
    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    #@6
    if-nez v3, :cond_0

    #@8
    .line 56
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@a
    .line 57
    const-string/jumbo v4, "missing root elements data, tailoring not supported"

    #@d
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 59
    :cond_0
    new-instance v2, Landroid/icu/impl/coll/CollationTailoring;

    #@13
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    #@15
    iget-object v3, v3, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@17
    invoke-direct {v2, v3}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    #@1a
    .line 60
    .local v2, "tailoring":Landroid/icu/impl/coll/CollationTailoring;
    new-instance v1, Landroid/icu/impl/coll/CollationRuleParser;

    #@1c
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@1e
    invoke-direct {v1, v3}, Landroid/icu/impl/coll/CollationRuleParser;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@21
    .line 66
    .local v1, "parser":Landroid/icu/impl/coll/CollationRuleParser;
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    #@23
    iget-object v3, v3, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@25
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    #@2b
    iget-wide v4, v3, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@2d
    iput-wide v4, p0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    #@2f
    .line 67
    invoke-virtual {v1, p0}, Landroid/icu/impl/coll/CollationRuleParser;->setSink(Landroid/icu/impl/coll/CollationRuleParser$Sink;)V

    #@32
    .line 70
    new-instance v3, Landroid/icu/impl/coll/CollationBuilder$BundleImporter;

    #@34
    invoke-direct {v3}, Landroid/icu/impl/coll/CollationBuilder$BundleImporter;-><init>()V

    #@37
    invoke-virtual {v1, v3}, Landroid/icu/impl/coll/CollationRuleParser;->setImporter(Landroid/icu/impl/coll/CollationRuleParser$Importer;)V

    #@3a
    .line 71
    iget-object v3, v2, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@3c
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@42
    .line 72
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v1, p1, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;Landroid/icu/impl/coll/CollationSettings;)V

    #@45
    .line 73
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@47
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->hasMappings()Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_2

    #@4d
    .line 74
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationBuilder;->makeTailoredCEs()V

    #@50
    .line 75
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationBuilder;->closeOverComposites()V

    #@53
    .line 76
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationBuilder;->finalizeCEs()V

    #@56
    .line 78
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    #@58
    const/16 v4, 0x7f

    #@5a
    invoke-virtual {v3, v6, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@5d
    .line 79
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    #@5f
    const/16 v4, 0xc0

    #@61
    const/16 v5, 0xff

    #@63
    invoke-virtual {v3, v4, v5}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@66
    .line 82
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    #@68
    const v4, 0xac00

    #@6b
    const v5, 0xd7a3

    #@6e
    invoke-virtual {v3, v4, v5}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    #@71
    .line 83
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@73
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    #@75
    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->optimize(Landroid/icu/text/UnicodeSet;)V

    #@78
    .line 84
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    #@7b
    .line 85
    iget-boolean v3, p0, Landroid/icu/impl/coll/CollationBuilder;->fastLatinEnabled:Z

    #@7d
    if-eqz v3, :cond_1

    #@7f
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@81
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->enableFastLatin()V

    #@84
    .line 86
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@86
    iget-object v4, v2, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    #@88
    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->build(Landroid/icu/impl/coll/CollationData;)V

    #@8b
    .line 88
    iput-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@8d
    .line 93
    :goto_0
    iget-object v3, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@8f
    .line 94
    iget-object v4, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@91
    .line 92
    invoke-static {v3, v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    #@94
    move-result v3

    #@95
    iput v3, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    #@97
    .line 95
    iput-object p1, v2, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@99
    .line 99
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    #@9b
    iget v3, v3, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@9d
    invoke-virtual {v2, v3, v6}, Landroid/icu/impl/coll/CollationTailoring;->setVersion(II)V

    #@a0
    .line 100
    return-object v2

    #@a1
    .line 90
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    #@a3
    iput-object v3, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@a5
    goto :goto_0
.end method

.method suppressContractions(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 839
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->suppressContractions(Landroid/icu/text/UnicodeSet;)V

    #@5
    .line 838
    return-void
.end method
