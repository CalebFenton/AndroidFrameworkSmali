.class public abstract Landroid/icu/impl/coll/CollationIterator;
.super Ljava/lang/Object;
.source "CollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationIterator$CEBuffer;,
        Landroid/icu/impl/coll/CollationIterator$SkippedState;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field protected static final NO_CP_AND_CE32:J = -0xffffff40L


# instance fields
.field private ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

.field private cesIndex:I

.field protected final data:Landroid/icu/impl/coll/CollationData;

.field private isNumeric:Z

.field private numCpFwd:I

.field private skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

.field protected final trie:Landroid/icu/impl/Trie2_32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationIterator;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@b
    .line 26
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 183
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@5
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    #@7
    .line 184
    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@9
    .line 185
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@c
    .line 186
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    #@f
    .line 187
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@12
    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;Z)V
    .locals 1
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z

    #@0
    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 191
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@5
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    #@7
    .line 192
    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@9
    .line 193
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@c
    .line 194
    iput-boolean p2, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    #@e
    .line 195
    new-instance v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@10
    invoke-direct {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    #@13
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@15
    .line 190
    return-void
.end method

.method private final appendNumericCEs(IZ)V
    .locals 9
    .param p1, "ce32"    # I
    .param p2, "forward"    # Z

    #@0
    .prologue
    const/16 v8, 0xc0

    #@2
    const/16 v7, 0xa

    #@4
    const/4 v6, 0x1

    #@5
    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 965
    .local v2, "digits":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_6

    #@c
    .line 967
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->digitFromCE32(I)C

    #@f
    move-result v1

    #@10
    .line 968
    .local v1, "digit":C
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 969
    iget v5, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@15
    if-nez v5, :cond_3

    #@17
    .line 1000
    :cond_1
    :goto_1
    const/4 v3, 0x0

    #@18
    .line 1003
    .local v3, "pos":I
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1b
    move-result v5

    #@1c
    add-int/lit8 v5, v5, -0x1

    #@1e
    if-ge v3, v5, :cond_9

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_9

    #@26
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_2

    #@29
    .line 970
    .end local v3    # "pos":I
    :cond_3
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    #@2c
    move-result v0

    #@2d
    .line 971
    .local v0, "c":I
    if-ltz v0, :cond_1

    #@2f
    .line 972
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@31
    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@34
    move-result p1

    #@35
    .line 973
    if-ne p1, v8, :cond_4

    #@37
    .line 974
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@39
    iget-object v5, v5, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@3b
    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@3e
    move-result p1

    #@3f
    .line 976
    :cond_4
    invoke-static {p1, v7}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    #@42
    move-result v5

    #@43
    if-nez v5, :cond_5

    #@45
    .line 977
    invoke-virtual {p0, v6}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    #@48
    goto :goto_1

    #@49
    .line 980
    :cond_5
    iget v5, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@4b
    if-lez v5, :cond_0

    #@4d
    iget v5, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@4f
    add-int/lit8 v5, v5, -0x1

    #@51
    iput v5, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@53
    goto :goto_0

    #@54
    .line 984
    .end local v0    # "c":I
    .end local v1    # "digit":C
    :cond_6
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->digitFromCE32(I)C

    #@57
    move-result v1

    #@58
    .line 985
    .restart local v1    # "digit":C
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5b
    .line 986
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    #@5e
    move-result v0

    #@5f
    .line 987
    .restart local v0    # "c":I
    if-gez v0, :cond_7

    #@61
    .line 998
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    #@64
    goto :goto_1

    #@65
    .line 988
    :cond_7
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@67
    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@6a
    move-result p1

    #@6b
    .line 989
    if-ne p1, v8, :cond_8

    #@6d
    .line 990
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@6f
    iget-object v5, v5, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@71
    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@74
    move-result p1

    #@75
    .line 992
    :cond_8
    invoke-static {p1, v7}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    #@78
    move-result v5

    #@79
    if-nez v5, :cond_6

    #@7b
    .line 993
    invoke-virtual {p0, v6}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    #@7e
    goto :goto_3

    #@7f
    .line 1005
    .end local v0    # "c":I
    .restart local v3    # "pos":I
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@82
    move-result v5

    #@83
    sub-int v4, v5, v3

    #@85
    .line 1006
    .local v4, "segmentLength":I
    const/16 v5, 0xfe

    #@87
    if-le v4, v5, :cond_a

    #@89
    const/16 v4, 0xfe

    #@8b
    .line 1007
    :cond_a
    add-int v5, v3, v4

    #@8d
    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    #@90
    move-result-object v5

    #@91
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationIterator;->appendNumericSegmentCEs(Ljava/lang/CharSequence;)V

    #@94
    .line 1008
    add-int/2addr v3, v4

    #@95
    .line 1009
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@98
    move-result v5

    #@99
    if-lt v3, v5, :cond_2

    #@9b
    .line 961
    return-void
.end method

.method private final appendNumericSegmentCEs(Ljava/lang/CharSequence;)V
    .locals 18
    .param p1, "digits"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1017
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v4

    #@4
    .line 1018
    .local v4, "length":I
    sget-boolean v14, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@6
    if-nez v14, :cond_1

    #@8
    const/4 v14, 0x1

    #@9
    if-gt v14, v4, :cond_0

    #@b
    const/16 v14, 0xfe

    #@d
    if-gt v4, v14, :cond_0

    #@f
    const/4 v14, 0x1

    #@10
    :goto_0
    if-nez v14, :cond_1

    #@12
    new-instance v14, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v14

    #@18
    :cond_0
    const/4 v14, 0x0

    #@19
    goto :goto_0

    #@1a
    .line 1019
    :cond_1
    sget-boolean v14, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@1c
    if-nez v14, :cond_4

    #@1e
    const/4 v14, 0x1

    #@1f
    if-eq v4, v14, :cond_2

    #@21
    const/4 v14, 0x0

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    #@27
    move-result v14

    #@28
    if-eqz v14, :cond_3

    #@2a
    :cond_2
    const/4 v14, 0x1

    #@2b
    :goto_1
    if-nez v14, :cond_4

    #@2d
    new-instance v14, Ljava/lang/AssertionError;

    #@2f
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@32
    throw v14

    #@33
    :cond_3
    const/4 v14, 0x0

    #@34
    goto :goto_1

    #@35
    .line 1020
    :cond_4
    move-object/from16 v0, p0

    #@37
    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@39
    iget-wide v6, v14, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    #@3b
    .line 1022
    .local v6, "numericPrimary":J
    const/4 v14, 0x7

    #@3c
    if-gt v4, v14, :cond_8

    #@3e
    .line 1024
    const/4 v14, 0x0

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    #@44
    move-result v13

    #@45
    .line 1025
    .local v13, "value":I
    const/4 v3, 0x1

    #@46
    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_5

    #@48
    .line 1026
    mul-int/lit8 v14, v13, 0xa

    #@4a
    move-object/from16 v0, p1

    #@4c
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@4f
    move-result v15

    #@50
    add-int v13, v14, v15

    #@52
    .line 1025
    add-int/lit8 v3, v3, 0x1

    #@54
    goto :goto_2

    #@55
    .line 1034
    :cond_5
    const/16 v14, 0x4a

    #@57
    .line 1035
    if-ge v13, v14, :cond_6

    #@59
    .line 1037
    add-int/lit8 v14, v13, 0x2

    #@5b
    shl-int/lit8 v14, v14, 0x10

    #@5d
    int-to-long v14, v14

    #@5e
    or-long v10, v6, v14

    #@60
    .line 1038
    .local v10, "primary":J
    move-object/from16 v0, p0

    #@62
    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@64
    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@67
    move-result-wide v16

    #@68
    move-wide/from16 v0, v16

    #@6a
    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@6d
    .line 1039
    return-void

    #@6e
    .line 1041
    .end local v10    # "primary":J
    :cond_6
    add-int/lit8 v13, v13, -0x4a

    #@70
    .line 1042
    const/16 v2, 0x4c

    #@72
    .line 1044
    .local v2, "firstByte":I
    const/16 v14, 0x27b0

    #@74
    if-ge v13, v14, :cond_7

    #@76
    .line 1047
    div-int/lit16 v14, v13, 0xfe

    #@78
    add-int/lit8 v14, v14, 0x4c

    #@7a
    shl-int/lit8 v14, v14, 0x10

    #@7c
    int-to-long v14, v14

    #@7d
    .line 1046
    or-long/2addr v14, v6

    #@7e
    .line 1047
    rem-int/lit16 v0, v13, 0xfe

    #@80
    move/from16 v16, v0

    #@82
    add-int/lit8 v16, v16, 0x2

    #@84
    shl-int/lit8 v16, v16, 0x8

    #@86
    move/from16 v0, v16

    #@88
    int-to-long v0, v0

    #@89
    move-wide/from16 v16, v0

    #@8b
    .line 1046
    or-long v10, v14, v16

    #@8d
    .line 1048
    .restart local v10    # "primary":J
    move-object/from16 v0, p0

    #@8f
    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@91
    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@94
    move-result-wide v16

    #@95
    move-wide/from16 v0, v16

    #@97
    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@9a
    .line 1049
    return-void

    #@9b
    .line 1051
    .end local v10    # "primary":J
    :cond_7
    add-int/lit16 v13, v13, -0x27b0

    #@9d
    .line 1052
    add-int/lit8 v2, v2, 0x28

    #@9f
    .line 1054
    const v14, 0xfc040

    #@a2
    if-ge v13, v14, :cond_8

    #@a4
    .line 1056
    rem-int/lit16 v14, v13, 0xfe

    #@a6
    add-int/lit8 v14, v14, 0x2

    #@a8
    int-to-long v14, v14

    #@a9
    or-long v10, v6, v14

    #@ab
    .line 1057
    .restart local v10    # "primary":J
    div-int/lit16 v13, v13, 0xfe

    #@ad
    .line 1058
    rem-int/lit16 v14, v13, 0xfe

    #@af
    add-int/lit8 v14, v14, 0x2

    #@b1
    shl-int/lit8 v14, v14, 0x8

    #@b3
    int-to-long v14, v14

    #@b4
    or-long/2addr v10, v14

    #@b5
    .line 1059
    div-int/lit16 v13, v13, 0xfe

    #@b7
    .line 1060
    rem-int/lit16 v14, v13, 0xfe

    #@b9
    add-int/lit8 v14, v14, 0x74

    #@bb
    shl-int/lit8 v14, v14, 0x10

    #@bd
    int-to-long v14, v14

    #@be
    or-long/2addr v10, v14

    #@bf
    .line 1061
    move-object/from16 v0, p0

    #@c1
    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@c3
    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@c6
    move-result-wide v16

    #@c7
    move-wide/from16 v0, v16

    #@c9
    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@cc
    .line 1062
    return-void

    #@cd
    .line 1066
    .end local v2    # "firstByte":I
    .end local v3    # "i":I
    .end local v10    # "primary":J
    .end local v13    # "value":I
    :cond_8
    sget-boolean v14, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@cf
    if-nez v14, :cond_a

    #@d1
    const/4 v14, 0x7

    #@d2
    if-lt v4, v14, :cond_9

    #@d4
    const/4 v14, 0x1

    #@d5
    :goto_3
    if-nez v14, :cond_a

    #@d7
    new-instance v14, Ljava/lang/AssertionError;

    #@d9
    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    #@dc
    throw v14

    #@dd
    :cond_9
    const/4 v14, 0x0

    #@de
    goto :goto_3

    #@df
    .line 1074
    :cond_a
    add-int/lit8 v14, v4, 0x1

    #@e1
    div-int/lit8 v5, v14, 0x2

    #@e3
    .line 1075
    .local v5, "numPairs":I
    add-int/lit16 v14, v5, 0x80

    #@e5
    shl-int/lit8 v14, v14, 0x10

    #@e7
    int-to-long v14, v14

    #@e8
    or-long v10, v6, v14

    #@ea
    .line 1077
    .restart local v10    # "primary":J
    :goto_4
    add-int/lit8 v14, v4, -0x1

    #@ec
    move-object/from16 v0, p1

    #@ee
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    #@f1
    move-result v14

    #@f2
    if-nez v14, :cond_b

    #@f4
    add-int/lit8 v14, v4, -0x2

    #@f6
    move-object/from16 v0, p1

    #@f8
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    #@fb
    move-result v14

    #@fc
    if-nez v14, :cond_b

    #@fe
    .line 1078
    add-int/lit8 v4, v4, -0x2

    #@100
    goto :goto_4

    #@101
    .line 1083
    :cond_b
    and-int/lit8 v14, v4, 0x1

    #@103
    if-eqz v14, :cond_c

    #@105
    .line 1085
    const/4 v14, 0x0

    #@106
    move-object/from16 v0, p1

    #@108
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    #@10b
    move-result v8

    #@10c
    .line 1086
    .local v8, "pair":I
    const/4 v9, 0x1

    #@10d
    .line 1091
    .local v9, "pos":I
    :goto_5
    mul-int/lit8 v14, v8, 0x2

    #@10f
    add-int/lit8 v8, v14, 0xb

    #@111
    .line 1093
    const/16 v12, 0x8

    #@113
    .line 1094
    .local v12, "shift":I
    :goto_6
    if-ge v9, v4, :cond_e

    #@115
    .line 1095
    if-nez v12, :cond_d

    #@117
    .line 1098
    int-to-long v14, v8

    #@118
    or-long/2addr v10, v14

    #@119
    .line 1099
    move-object/from16 v0, p0

    #@11b
    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@11d
    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@120
    move-result-wide v16

    #@121
    move-wide/from16 v0, v16

    #@123
    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@126
    .line 1100
    move-wide v10, v6

    #@127
    .line 1101
    const/16 v12, 0x10

    #@129
    .line 1106
    :goto_7
    move-object/from16 v0, p1

    #@12b
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@12e
    move-result v14

    #@12f
    mul-int/lit8 v14, v14, 0xa

    #@131
    add-int/lit8 v15, v9, 0x1

    #@133
    move-object/from16 v0, p1

    #@135
    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    #@138
    move-result v15

    #@139
    add-int/2addr v14, v15

    #@13a
    mul-int/lit8 v14, v14, 0x2

    #@13c
    add-int/lit8 v8, v14, 0xb

    #@13e
    .line 1107
    add-int/lit8 v9, v9, 0x2

    #@140
    goto :goto_6

    #@141
    .line 1088
    .end local v8    # "pair":I
    .end local v9    # "pos":I
    .end local v12    # "shift":I
    :cond_c
    const/4 v14, 0x0

    #@142
    move-object/from16 v0, p1

    #@144
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    #@147
    move-result v14

    #@148
    mul-int/lit8 v14, v14, 0xa

    #@14a
    const/4 v15, 0x1

    #@14b
    move-object/from16 v0, p1

    #@14d
    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    #@150
    move-result v15

    #@151
    add-int v8, v14, v15

    #@153
    .line 1089
    .restart local v8    # "pair":I
    const/4 v9, 0x2

    #@154
    .restart local v9    # "pos":I
    goto :goto_5

    #@155
    .line 1103
    .restart local v12    # "shift":I
    :cond_d
    shl-int v14, v8, v12

    #@157
    int-to-long v14, v14

    #@158
    or-long/2addr v10, v14

    #@159
    .line 1104
    add-int/lit8 v12, v12, -0x8

    #@15b
    goto :goto_7

    #@15c
    .line 1109
    :cond_e
    add-int/lit8 v14, v8, -0x1

    #@15e
    shl-int/2addr v14, v12

    #@15f
    int-to-long v14, v14

    #@160
    or-long/2addr v10, v14

    #@161
    .line 1110
    move-object/from16 v0, p0

    #@163
    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@165
    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@168
    move-result-wide v16

    #@169
    move-wide/from16 v0, v16

    #@16b
    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@16e
    .line 1016
    return-void
.end method

.method private final backwardNumSkipped(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@6
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 694
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    #@f
    .line 695
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@11
    if-ltz v0, :cond_1

    #@13
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@15
    add-int/2addr v0, p1

    #@16
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@18
    .line 690
    :cond_1
    return-void

    #@19
    .line 692
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@1b
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->backwardNumCodePoints(I)I

    #@1e
    move-result p1

    #@1f
    goto :goto_0
.end method

.method private final getCE32FromPrefix(Landroid/icu/impl/coll/CollationData;I)I
    .locals 6
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "ce32"    # I

    #@0
    .prologue
    .line 661
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@3
    move-result v1

    #@4
    .line 662
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@7
    move-result p2

    #@8
    .line 663
    add-int/lit8 v1, v1, 0x2

    #@a
    .line 665
    const/4 v2, 0x0

    #@b
    .line 666
    .local v2, "lookBehind":I
    new-instance v4, Landroid/icu/util/CharsTrie;

    #@d
    iget-object v5, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@f
    invoke-direct {v4, v5, v1}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@12
    .line 668
    .local v4, "prefixes":Landroid/icu/util/CharsTrie;
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    #@15
    move-result v0

    #@16
    .line 669
    .local v0, "c":I
    if-gez v0, :cond_1

    #@18
    .line 677
    :goto_0
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    #@1b
    .line 678
    return p2

    #@1c
    .line 670
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1e
    .line 671
    invoke-virtual {v4, v0}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    #@21
    move-result-object v3

    #@22
    .line 672
    .local v3, "match":Landroid/icu/util/BytesTrie$Result;
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_2

    #@28
    .line 673
    invoke-virtual {v4}, Landroid/icu/util/CharsTrie;->getValue()I

    #@2b
    move-result p2

    #@2c
    .line 675
    :cond_2
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    #@2f
    move-result v5

    #@30
    if-nez v5, :cond_0

    #@32
    goto :goto_0
.end method

.method protected static final isLeadSurrogate(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    .line 642
    and-int/lit16 v0, p0, -0x400

    #@2
    const v1, 0xd800

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

.method private static final isSurrogate(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    .line 637
    and-int/lit16 v0, p0, -0x800

    #@2
    const v1, 0xd800

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

.method protected static final isTrailSurrogate(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    .line 647
    and-int/lit16 v0, p0, -0x400

    #@2
    const v1, 0xdc00

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

.method private final nextCE32FromContraction(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I
    .locals 9
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "contractionCE32"    # I
    .param p3, "trieChars"    # Ljava/lang/CharSequence;
    .param p4, "trieOffset"    # I
    .param p5, "ce32"    # I
    .param p6, "c"    # I

    #@0
    .prologue
    .line 705
    const/4 v4, 0x1

    #@1
    .line 707
    .local v4, "lookAhead":I
    const/4 v8, 0x1

    #@2
    .line 711
    .local v8, "sinceMatch":I
    new-instance v2, Landroid/icu/util/CharsTrie;

    #@4
    invoke-direct {v2, p3, p4}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@7
    .line 712
    .local v2, "suffixes":Landroid/icu/util/CharsTrie;
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 713
    :cond_0
    :goto_0
    invoke-virtual {v2, p6}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    #@16
    move-result-object v6

    #@17
    .line 716
    .local v6, "match":Landroid/icu/util/BytesTrie$Result;
    :goto_1
    invoke-virtual {v6}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_6

    #@1d
    .line 717
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->getValue()I

    #@20
    move-result p5

    #@21
    .line 718
    invoke-virtual {v6}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    #@2a
    move-result p6

    #@2b
    if-gez p6, :cond_3

    #@2d
    .line 719
    :cond_1
    return p5

    #@2e
    .line 712
    .end local v6    # "match":Landroid/icu/util/BytesTrie$Result;
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@30
    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    #@33
    goto :goto_0

    #@34
    .line 721
    .restart local v6    # "match":Landroid/icu/util/BytesTrie$Result;
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@36
    if-eqz v0, :cond_4

    #@38
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@3a
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5

    #@40
    .line 722
    :cond_4
    :goto_2
    const/4 v8, 0x1

    #@41
    .line 757
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@43
    .line 758
    invoke-virtual {v2, p6}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    #@46
    move-result-object v6

    #@47
    goto :goto_1

    #@48
    .line 721
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@4a
    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    #@4d
    goto :goto_2

    #@4e
    .line 723
    :cond_6
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@50
    if-eq v6, v0, :cond_7

    #@52
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    #@55
    move-result v7

    #@56
    .local v7, "nextCp":I
    if-gez v7, :cond_a

    #@58
    .line 726
    .end local v7    # "nextCp":I
    :cond_7
    and-int/lit16 v0, p2, 0x400

    #@5a
    if-eqz v0, :cond_b

    #@5c
    .line 729
    and-int/lit16 v0, p2, 0x100

    #@5e
    if-eqz v0, :cond_8

    #@60
    .line 730
    if-ge v8, v4, :cond_b

    #@62
    .line 735
    :cond_8
    const/4 v0, 0x1

    #@63
    if-le v8, v0, :cond_9

    #@65
    .line 738
    invoke-direct {p0, v8}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    #@68
    .line 739
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    #@6b
    move-result p6

    #@6c
    .line 740
    add-int/lit8 v0, v8, -0x1

    #@6e
    sub-int/2addr v4, v0

    #@6f
    .line 741
    const/4 v8, 0x1

    #@70
    .line 743
    :cond_9
    invoke-virtual {p1, p6}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    #@73
    move-result v0

    #@74
    const/16 v1, 0xff

    #@76
    if-le v0, v1, :cond_b

    #@78
    move-object v0, p0

    #@79
    move-object v1, p1

    #@7a
    move v3, p5

    #@7b
    move v5, p6

    #@7c
    .line 744
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationIterator;->nextCE32FromDiscontiguousContraction(Landroid/icu/impl/coll/CollationData;Landroid/icu/util/CharsTrie;III)I

    #@7f
    move-result v0

    #@80
    return v0

    #@81
    .line 754
    .restart local v7    # "nextCp":I
    :cond_a
    move p6, v7

    #@82
    .line 755
    add-int/lit8 v8, v8, 0x1

    #@84
    goto :goto_3

    #@85
    .line 760
    .end local v7    # "nextCp":I
    :cond_b
    invoke-direct {p0, v8}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    #@88
    .line 761
    return p5
.end method

.method private final nextCE32FromDiscontiguousContraction(Landroid/icu/impl/coll/CollationData;Landroid/icu/util/CharsTrie;III)I
    .locals 8
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "suffixes"    # Landroid/icu/util/CharsTrie;
    .param p3, "ce32"    # I
    .param p4, "lookAhead"    # I
    .param p5, "c"    # I

    #@0
    .prologue
    .line 784
    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    #@3
    move-result v0

    #@4
    .line 785
    .local v0, "fcd16":I
    sget-boolean v7, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@6
    if-nez v7, :cond_1

    #@8
    const/16 v7, 0xff

    #@a
    if-le v0, v7, :cond_0

    #@c
    const/4 v7, 0x1

    #@d
    :goto_0
    if-nez v7, :cond_1

    #@f
    new-instance v7, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v7

    #@15
    :cond_0
    const/4 v7, 0x0

    #@16
    goto :goto_0

    #@17
    .line 786
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    #@1a
    move-result v4

    #@1b
    .line 787
    .local v4, "nextCp":I
    if-gez v4, :cond_2

    #@1d
    .line 789
    const/4 v7, 0x1

    #@1e
    invoke-direct {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    #@21
    .line 790
    return p3

    #@22
    .line 792
    :cond_2
    add-int/lit8 p4, p4, 0x1

    #@24
    .line 793
    and-int/lit16 v5, v0, 0xff

    #@26
    .line 794
    .local v5, "prevCC":I
    invoke-virtual {p1, v4}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    #@29
    move-result v0

    #@2a
    .line 795
    const/16 v7, 0xff

    #@2c
    if-gt v0, v7, :cond_3

    #@2e
    .line 797
    const/4 v7, 0x2

    #@2f
    invoke-direct {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    #@32
    .line 798
    return p3

    #@33
    .line 804
    :cond_3
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@35
    if-eqz v7, :cond_4

    #@37
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@39
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_b

    #@3f
    .line 805
    :cond_4
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@41
    if-nez v7, :cond_5

    #@43
    .line 806
    new-instance v7, Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@45
    invoke-direct {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;-><init>()V

    #@48
    iput-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@4a
    .line 808
    :cond_5
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    #@4d
    .line 809
    const/4 v7, 0x2

    #@4e
    if-le p4, v7, :cond_7

    #@50
    .line 811
    invoke-virtual {p0, p4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    #@53
    .line 812
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    #@56
    move-result v7

    #@57
    invoke-virtual {p2, v7}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    #@5a
    .line 813
    const/4 v1, 0x3

    #@5b
    .local v1, "i":I
    :goto_1
    if-ge v1, p4, :cond_6

    #@5d
    .line 814
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    #@60
    move-result v7

    #@61
    invoke-virtual {p2, v7}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    #@64
    .line 813
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_1

    #@67
    .line 817
    :cond_6
    const/4 v7, 0x2

    #@68
    invoke-virtual {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    #@6b
    .line 819
    .end local v1    # "i":I
    :cond_7
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@6d
    invoke-virtual {v7, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    #@70
    .line 825
    :goto_2
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@72
    invoke-virtual {v7, p5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->setFirstSkipped(I)V

    #@75
    .line 827
    const/4 v6, 0x2

    #@76
    .line 828
    .local v6, "sinceMatch":I
    move p5, v4

    #@77
    .line 832
    :cond_8
    shr-int/lit8 v7, v0, 0x8

    #@79
    if-ge v5, v7, :cond_d

    #@7b
    invoke-virtual {p2, p5}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    #@7e
    move-result-object v3

    #@7f
    .local v3, "match":Landroid/icu/util/BytesTrie$Result;
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    #@82
    move-result v7

    #@83
    if-eqz v7, :cond_d

    #@85
    .line 835
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie;->getValue()I

    #@88
    move-result p3

    #@89
    .line 836
    const/4 v6, 0x0

    #@8a
    .line 837
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@8c
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->recordMatch()V

    #@8f
    .line 838
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    #@92
    move-result v7

    #@93
    if-nez v7, :cond_c

    #@95
    .line 854
    .end local v3    # "match":Landroid/icu/util/BytesTrie$Result;
    :cond_9
    :goto_3
    invoke-direct {p0, v6}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    #@98
    .line 855
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@9a
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    #@9d
    move-result v2

    #@9e
    .line 856
    .local v2, "isTopDiscontiguous":Z
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@a0
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->replaceMatch()V

    #@a3
    .line 857
    if-eqz v2, :cond_a

    #@a5
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@a7
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    #@aa
    move-result v7

    #@ab
    if-eqz v7, :cond_e

    #@ad
    .line 883
    :cond_a
    :goto_4
    return p3

    #@ae
    .line 822
    .end local v2    # "isTopDiscontiguous":Z
    .end local v6    # "sinceMatch":I
    :cond_b
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@b0
    invoke-virtual {v7, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Landroid/icu/util/CharsTrie;)V

    #@b3
    goto :goto_2

    #@b4
    .line 839
    .restart local v3    # "match":Landroid/icu/util/BytesTrie$Result;
    .restart local v6    # "sinceMatch":I
    :cond_c
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@b6
    invoke-virtual {v7, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    #@b9
    .line 846
    .end local v3    # "match":Landroid/icu/util/BytesTrie$Result;
    :goto_5
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    #@bc
    move-result p5

    #@bd
    if-ltz p5, :cond_9

    #@bf
    .line 847
    add-int/lit8 v6, v6, 0x1

    #@c1
    .line 848
    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    #@c4
    move-result v0

    #@c5
    .line 849
    const/16 v7, 0xff

    #@c7
    if-gt v0, v7, :cond_8

    #@c9
    goto :goto_3

    #@ca
    .line 842
    :cond_d
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@cc
    invoke-virtual {v7, p5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skip(I)V

    #@cf
    .line 843
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@d1
    invoke-virtual {v7, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Landroid/icu/util/CharsTrie;)V

    #@d4
    .line 844
    and-int/lit16 v5, v0, 0xff

    #@d6
    goto :goto_5

    #@d7
    .line 862
    .restart local v2    # "isTopDiscontiguous":Z
    :cond_e
    const/4 p5, -0x1

    #@d8
    .line 864
    :goto_6
    const/4 v7, 0x1

    #@d9
    invoke-virtual {p0, p1, p5, p3, v7}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    #@dc
    .line 867
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@de
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    #@e1
    move-result v7

    #@e2
    if-nez v7, :cond_f

    #@e4
    .line 880
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@e6
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    #@e9
    .line 881
    const/4 p3, 0x1

    #@ea
    goto :goto_4

    #@eb
    .line 868
    :cond_f
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@ed
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->next()I

    #@f0
    move-result p5

    #@f1
    .line 869
    invoke-virtual {p0, p5}, Landroid/icu/impl/coll/CollationIterator;->getDataCE32(I)I

    #@f4
    move-result p3

    #@f5
    .line 870
    const/16 v7, 0xc0

    #@f7
    if-ne p3, v7, :cond_10

    #@f9
    .line 871
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@fb
    iget-object p1, v7, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@fd
    .line 872
    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@100
    move-result p3

    #@101
    goto :goto_6

    #@102
    .line 874
    :cond_10
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@104
    goto :goto_6
.end method

.method private final nextCEFromCE32(Landroid/icu/impl/coll/CollationData;II)J
    .locals 3
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I
    .param p3, "ce32"    # I

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@2
    iget v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@8
    .line 656
    const/4 v0, 0x1

    #@9
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    #@c
    .line 657
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@e
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@14
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    #@17
    move-result-wide v0

    #@18
    return-wide v0
.end method

.method private final nextSkippedCodePoint()I
    .locals 2

    #@0
    .prologue
    .line 682
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@6
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@e
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->next()I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 683
    :cond_0
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@15
    if-nez v1, :cond_1

    #@17
    const/4 v1, -0x1

    #@18
    return v1

    #@19
    .line 684
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    #@1c
    move-result v0

    #@1d
    .line 685
    .local v0, "c":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@1f
    if-eqz v1, :cond_2

    #@21
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@23
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 686
    :cond_2
    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@2b
    if-lez v1, :cond_3

    #@2d
    if-ltz v0, :cond_3

    #@2f
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@31
    add-int/lit8 v1, v1, -0x1

    #@33
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@35
    .line 687
    :cond_3
    return v0

    #@36
    .line 685
    :cond_4
    if-ltz v0, :cond_2

    #@38
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@3a
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->incBeyond()V

    #@3d
    goto :goto_0
.end method

.method private final previousCEUnsafe(ILandroid/icu/impl/coll/UVector32;)J
    .locals 8
    .param p1, "c"    # I
    .param p2, "offsets"    # Landroid/icu/impl/coll/UVector32;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 905
    const/4 v0, 0x1

    #@3
    .line 906
    .local v0, "numBackward":I
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    #@6
    move-result p1

    #@7
    if-ltz p1, :cond_1

    #@9
    .line 907
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 908
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@d
    iget-boolean v5, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    #@f
    invoke-virtual {v4, p1, v5}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_0

    #@15
    .line 915
    :cond_1
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@17
    .line 917
    iput v3, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@19
    .line 918
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@1b
    if-nez v4, :cond_3

    #@1d
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1f
    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@21
    if-nez v4, :cond_2

    #@23
    move v4, v2

    #@24
    :goto_0
    if-nez v4, :cond_3

    #@26
    new-instance v2, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2b
    throw v2

    #@2c
    :cond_2
    move v4, v3

    #@2d
    goto :goto_0

    #@2e
    .line 920
    :cond_3
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    #@31
    move-result v1

    #@32
    .line 921
    .local v1, "offset":I
    :cond_4
    iget v4, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@34
    if-lez v4, :cond_9

    #@36
    .line 924
    iget v4, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@38
    add-int/lit8 v4, v4, -0x1

    #@3a
    iput v4, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@3c
    .line 926
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@3f
    .line 927
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@41
    if-nez v4, :cond_6

    #@43
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@45
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@47
    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@49
    add-int/lit8 v5, v5, -0x1

    #@4b
    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    #@4e
    move-result-wide v4

    #@4f
    const-wide v6, 0x101000100L

    #@54
    cmp-long v4, v4, v6

    #@56
    if-eqz v4, :cond_5

    #@58
    move v4, v2

    #@59
    :goto_1
    if-nez v4, :cond_6

    #@5b
    new-instance v2, Ljava/lang/AssertionError;

    #@5d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@60
    throw v2

    #@61
    :cond_5
    move v4, v3

    #@62
    goto :goto_1

    #@63
    .line 929
    :cond_6
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@65
    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@67
    iput v4, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@69
    .line 933
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@6b
    if-nez v4, :cond_8

    #@6d
    invoke-virtual {p2}, Landroid/icu/impl/coll/UVector32;->size()I

    #@70
    move-result v4

    #@71
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@73
    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@75
    if-ge v4, v5, :cond_7

    #@77
    move v4, v2

    #@78
    :goto_2
    if-nez v4, :cond_8

    #@7a
    new-instance v2, Ljava/lang/AssertionError;

    #@7c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@7f
    throw v2

    #@80
    :cond_7
    move v4, v3

    #@81
    goto :goto_2

    #@82
    .line 934
    :cond_8
    invoke-virtual {p2, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@85
    .line 937
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    #@88
    move-result v1

    #@89
    .line 938
    :goto_3
    invoke-virtual {p2}, Landroid/icu/impl/coll/UVector32;->size()I

    #@8c
    move-result v4

    #@8d
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@8f
    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@91
    if-ge v4, v5, :cond_4

    #@93
    .line 939
    invoke-virtual {p2, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@96
    goto :goto_3

    #@97
    .line 942
    :cond_9
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@99
    if-nez v4, :cond_b

    #@9b
    invoke-virtual {p2}, Landroid/icu/impl/coll/UVector32;->size()I

    #@9e
    move-result v4

    #@9f
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@a1
    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@a3
    if-ne v4, v5, :cond_a

    #@a5
    :goto_4
    if-nez v2, :cond_b

    #@a7
    new-instance v2, Ljava/lang/AssertionError;

    #@a9
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@ac
    throw v2

    #@ad
    :cond_a
    move v2, v3

    #@ae
    goto :goto_4

    #@af
    .line 944
    :cond_b
    invoke-virtual {p2, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@b2
    .line 947
    const/4 v2, -0x1

    #@b3
    iput v2, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@b5
    .line 948
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    #@b8
    .line 950
    iput v3, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@ba
    .line 951
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@bc
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@be
    iget v4, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@c0
    add-int/lit8 v4, v4, -0x1

    #@c2
    iput v4, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@c4
    invoke-virtual {v2, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    #@c7
    move-result-wide v2

    #@c8
    return-wide v2
.end method


# virtual methods
.method protected final appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V
    .locals 18
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I
    .param p3, "ce32"    # I
    .param p4, "forward"    # Z

    #@0
    .prologue
    .line 452
    :cond_0
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_1b

    #@6
    .line 453
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@9
    move-result v4

    #@a
    packed-switch v4, :pswitch_data_0

    #@d
    goto :goto_0

    #@e
    .line 456
    :pswitch_0
    new-instance v4, Landroid/icu/util/ICUException;

    #@10
    const-string/jumbo v5, "internal program error: should be unreachable"

    #@13
    invoke-direct {v4, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@16
    throw v4

    #@17
    .line 458
    :pswitch_1
    move-object/from16 v0, p0

    #@19
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1b
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    #@1e
    move-result-wide v6

    #@1f
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@22
    .line 459
    return-void

    #@23
    .line 461
    :pswitch_2
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@27
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    #@2a
    move-result-wide v6

    #@2b
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@2e
    .line 462
    return-void

    #@2f
    .line 464
    :pswitch_3
    move-object/from16 v0, p0

    #@31
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@33
    const/4 v5, 0x2

    #@34
    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    #@37
    .line 465
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@3f
    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@41
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    #@44
    move-result-wide v6

    #@45
    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    #@48
    .line 466
    move-object/from16 v0, p0

    #@4a
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@50
    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@52
    add-int/lit8 v5, v5, 0x1

    #@54
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    #@57
    move-result-wide v6

    #@58
    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    #@5b
    .line 467
    move-object/from16 v0, p0

    #@5d
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@5f
    iget v5, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@61
    add-int/lit8 v5, v5, 0x2

    #@63
    iput v5, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@65
    .line 468
    return-void

    #@66
    .line 470
    :pswitch_4
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@69
    move-result v11

    #@6a
    .line 471
    .local v11, "index":I
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@6d
    move-result v14

    #@6e
    .line 472
    .local v14, "length":I
    move-object/from16 v0, p0

    #@70
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@72
    invoke-virtual {v4, v14}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    #@75
    .line 474
    :goto_1
    move-object/from16 v0, p0

    #@77
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@79
    move-object/from16 v0, p1

    #@7b
    iget-object v5, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@7d
    add-int/lit8 v12, v11, 0x1

    #@7f
    .end local v11    # "index":I
    .local v12, "index":I
    aget v5, v5, v11

    #@81
    invoke-static {v5}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@84
    move-result-wide v6

    #@85
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    #@88
    .line 475
    add-int/lit8 v14, v14, -0x1

    #@8a
    if-lez v14, :cond_1

    #@8c
    move v11, v12

    #@8d
    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto :goto_1

    #@8e
    .line 476
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :cond_1
    return-void

    #@8f
    .line 479
    .end local v12    # "index":I
    .end local v14    # "length":I
    :pswitch_5
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@92
    move-result v11

    #@93
    .line 480
    .restart local v11    # "index":I
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@96
    move-result v14

    #@97
    .line 481
    .restart local v14    # "length":I
    move-object/from16 v0, p0

    #@99
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@9b
    invoke-virtual {v4, v14}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    #@9e
    .line 483
    :goto_2
    move-object/from16 v0, p0

    #@a0
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@a2
    move-object/from16 v0, p1

    #@a4
    iget-object v5, v0, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@a6
    add-int/lit8 v12, v11, 0x1

    #@a8
    .end local v11    # "index":I
    .restart local v12    # "index":I
    aget-wide v6, v5, v11

    #@aa
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    #@ad
    .line 484
    add-int/lit8 v14, v14, -0x1

    #@af
    if-lez v14, :cond_2

    #@b1
    move v11, v12

    #@b2
    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto :goto_2

    #@b3
    .line 485
    .end local v11    # "index":I
    .restart local v12    # "index":I
    :cond_2
    return-void

    #@b4
    .line 488
    .end local v12    # "index":I
    .end local v14    # "length":I
    :pswitch_6
    move-object/from16 v0, p0

    #@b6
    move/from16 v1, p3

    #@b8
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE32FromBuilderData(I)I

    #@bb
    move-result p3

    #@bc
    .line 489
    const/16 v4, 0xc0

    #@be
    move/from16 v0, p3

    #@c0
    if-ne v0, v4, :cond_0

    #@c2
    .line 490
    move-object/from16 v0, p0

    #@c4
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@c6
    iget-object v0, v4, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@c8
    move-object/from16 p1, v0

    #@ca
    .line 491
    invoke-virtual/range {p1 .. p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@cd
    move-result p3

    #@ce
    goto/16 :goto_0

    #@d0
    .line 495
    :pswitch_7
    if-eqz p4, :cond_3

    #@d2
    const/4 v4, 0x1

    #@d3
    move-object/from16 v0, p0

    #@d5
    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    #@d8
    .line 496
    :cond_3
    move-object/from16 v0, p0

    #@da
    move-object/from16 v1, p1

    #@dc
    move/from16 v2, p3

    #@de
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->getCE32FromPrefix(Landroid/icu/impl/coll/CollationData;I)I

    #@e1
    move-result p3

    #@e2
    .line 497
    if-eqz p4, :cond_0

    #@e4
    const/4 v4, 0x1

    #@e5
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 500
    :pswitch_8
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@ef
    move-result v11

    #@f0
    .line 501
    .restart local v11    # "index":I
    move-object/from16 v0, p1

    #@f2
    invoke-virtual {v0, v11}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@f5
    move-result v9

    #@f6
    .line 502
    .local v9, "defaultCE32":I
    if-nez p4, :cond_4

    #@f8
    .line 505
    move/from16 p3, v9

    #@fa
    .line 506
    goto/16 :goto_0

    #@fc
    .line 509
    :cond_4
    move-object/from16 v0, p0

    #@fe
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@100
    if-nez v4, :cond_8

    #@102
    move-object/from16 v0, p0

    #@104
    iget v4, v0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@106
    if-gez v4, :cond_8

    #@108
    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    #@10b
    move-result v10

    #@10c
    .line 513
    .local v10, "nextCp":I
    if-gez v10, :cond_5

    #@10e
    .line 515
    move/from16 p3, v9

    #@110
    .line 516
    goto/16 :goto_0

    #@112
    .line 517
    :cond_5
    move/from16 v0, p3

    #@114
    and-int/lit16 v4, v0, 0x200

    #@116
    if-eqz v4, :cond_6

    #@118
    .line 518
    invoke-static {v10}, Landroid/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    #@11b
    move-result v4

    #@11c
    if-eqz v4, :cond_7

    #@11e
    .line 540
    :cond_6
    move-object/from16 v0, p1

    #@120
    iget-object v7, v0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@122
    add-int/lit8 v8, v11, 0x2

    #@124
    move-object/from16 v4, p0

    #@126
    move-object/from16 v5, p1

    #@128
    move/from16 v6, p3

    #@12a
    invoke-direct/range {v4 .. v10}, Landroid/icu/impl/coll/CollationIterator;->nextCE32FromContraction(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I

    #@12d
    move-result p3

    #@12e
    .line 541
    const/4 v4, 0x1

    #@12f
    move/from16 v0, p3

    #@131
    if-ne v0, v4, :cond_0

    #@133
    .line 544
    return-void

    #@134
    .line 521
    :cond_7
    const/4 v4, 0x1

    #@135
    move-object/from16 v0, p0

    #@137
    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    #@13a
    .line 522
    move/from16 p3, v9

    #@13c
    .line 523
    goto/16 :goto_0

    #@13e
    .line 526
    .end local v10    # "nextCp":I
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    #@141
    move-result v10

    #@142
    .line 527
    .restart local v10    # "nextCp":I
    if-gez v10, :cond_9

    #@144
    .line 529
    move/from16 p3, v9

    #@146
    .line 530
    goto/16 :goto_0

    #@148
    .line 531
    :cond_9
    move/from16 v0, p3

    #@14a
    and-int/lit16 v4, v0, 0x200

    #@14c
    if-eqz v4, :cond_6

    #@14e
    .line 532
    invoke-static {v10}, Landroid/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    #@151
    move-result v4

    #@152
    if-nez v4, :cond_6

    #@154
    .line 535
    const/4 v4, 0x1

    #@155
    move-object/from16 v0, p0

    #@157
    invoke-direct {v0, v4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    #@15a
    .line 536
    move/from16 p3, v9

    #@15c
    .line 537
    goto/16 :goto_0

    #@15e
    .line 549
    .end local v9    # "defaultCE32":I
    .end local v10    # "nextCp":I
    .end local v11    # "index":I
    :pswitch_9
    move-object/from16 v0, p0

    #@160
    iget-boolean v4, v0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    #@162
    if-eqz v4, :cond_a

    #@164
    .line 550
    move-object/from16 v0, p0

    #@166
    move/from16 v1, p3

    #@168
    move/from16 v2, p4

    #@16a
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->appendNumericCEs(IZ)V

    #@16d
    .line 551
    return-void

    #@16e
    .line 554
    :cond_a
    move-object/from16 v0, p1

    #@170
    iget-object v4, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@172
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@175
    move-result v5

    #@176
    aget p3, v4, v5

    #@178
    goto/16 :goto_0

    #@17a
    .line 558
    :pswitch_a
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@17c
    if-nez v4, :cond_c

    #@17e
    if-nez p2, :cond_b

    #@180
    const/4 v4, 0x1

    #@181
    :goto_3
    if-nez v4, :cond_c

    #@183
    new-instance v4, Ljava/lang/AssertionError;

    #@185
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@188
    throw v4

    #@189
    :cond_b
    const/4 v4, 0x0

    #@18a
    goto :goto_3

    #@18b
    .line 561
    :cond_c
    move-object/from16 v0, p1

    #@18d
    iget-object v4, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@18f
    const/4 v5, 0x0

    #@190
    aget p3, v4, v5

    #@192
    goto/16 :goto_0

    #@194
    .line 564
    :pswitch_b
    move-object/from16 v0, p1

    #@196
    iget-object v13, v0, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@198
    .line 565
    .local v13, "jamoCE32s":[I
    const v4, 0xac00

    #@19b
    sub-int p2, p2, v4

    #@19d
    .line 566
    rem-int/lit8 v15, p2, 0x1c

    #@19f
    .line 567
    .local v15, "t":I
    div-int/lit8 p2, p2, 0x1c

    #@1a1
    .line 568
    rem-int/lit8 v17, p2, 0x15

    #@1a3
    .line 569
    .local v17, "v":I
    div-int/lit8 p2, p2, 0x15

    #@1a5
    .line 570
    move/from16 v0, p3

    #@1a7
    and-int/lit16 v4, v0, 0x100

    #@1a9
    if-eqz v4, :cond_f

    #@1ab
    .line 573
    move-object/from16 v0, p0

    #@1ad
    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1af
    if-nez v15, :cond_e

    #@1b1
    const/4 v4, 0x2

    #@1b2
    :goto_4
    invoke-virtual {v5, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    #@1b5
    .line 574
    move-object/from16 v0, p0

    #@1b7
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1bd
    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@1bf
    aget v6, v13, p2

    #@1c1
    invoke-static {v6}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@1c4
    move-result-wide v6

    #@1c5
    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    #@1c8
    .line 575
    move-object/from16 v0, p0

    #@1ca
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1d0
    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@1d2
    add-int/lit8 v5, v5, 0x1

    #@1d4
    add-int/lit8 v6, v17, 0x13

    #@1d6
    aget v6, v13, v6

    #@1d8
    invoke-static {v6}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@1db
    move-result-wide v6

    #@1dc
    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    #@1df
    .line 576
    move-object/from16 v0, p0

    #@1e1
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1e3
    iget v5, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@1e5
    add-int/lit8 v5, v5, 0x2

    #@1e7
    iput v5, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@1e9
    .line 577
    if-eqz v15, :cond_d

    #@1eb
    .line 578
    move-object/from16 v0, p0

    #@1ed
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1ef
    add-int/lit8 v5, v15, 0x27

    #@1f1
    aget v5, v13, v5

    #@1f3
    invoke-static {v5}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@1f6
    move-result-wide v6

    #@1f7
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    #@1fa
    .line 580
    :cond_d
    return-void

    #@1fb
    .line 573
    :cond_e
    const/4 v4, 0x3

    #@1fc
    goto :goto_4

    #@1fd
    .line 584
    :cond_f
    aget v4, v13, p2

    #@1ff
    const/4 v5, -0x1

    #@200
    move-object/from16 v0, p0

    #@202
    move-object/from16 v1, p1

    #@204
    move/from16 v2, p4

    #@206
    invoke-virtual {v0, v1, v5, v4, v2}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    #@209
    .line 585
    add-int/lit8 v4, v17, 0x13

    #@20b
    aget v4, v13, v4

    #@20d
    const/4 v5, -0x1

    #@20e
    move-object/from16 v0, p0

    #@210
    move-object/from16 v1, p1

    #@212
    move/from16 v2, p4

    #@214
    invoke-virtual {v0, v1, v5, v4, v2}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    #@217
    .line 586
    if-nez v15, :cond_10

    #@219
    return-void

    #@21a
    .line 591
    :cond_10
    add-int/lit8 v4, v15, 0x27

    #@21c
    aget p3, v13, v4

    #@21e
    .line 592
    const/16 p2, -0x1

    #@220
    .line 593
    goto/16 :goto_0

    #@222
    .line 597
    .end local v13    # "jamoCE32s":[I
    .end local v15    # "t":I
    .end local v17    # "v":I
    :pswitch_c
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@224
    if-nez v4, :cond_11

    #@226
    if-nez p4, :cond_11

    #@228
    new-instance v4, Ljava/lang/AssertionError;

    #@22a
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@22d
    throw v4

    #@22e
    .line 598
    :cond_11
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@230
    if-nez v4, :cond_12

    #@232
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationIterator;->isLeadSurrogate(I)Z

    #@235
    move-result v4

    #@236
    if-nez v4, :cond_12

    #@238
    new-instance v4, Ljava/lang/AssertionError;

    #@23a
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@23d
    throw v4

    #@23e
    .line 600
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->handleGetTrailSurrogate()C

    #@241
    move-result v16

    #@242
    .local v16, "trail":C
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@245
    move-result v4

    #@246
    if-eqz v4, :cond_15

    #@248
    .line 601
    move/from16 v0, p2

    #@24a
    int-to-char v4, v0

    #@24b
    move/from16 v0, v16

    #@24d
    invoke-static {v4, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    #@250
    move-result p2

    #@251
    .line 602
    move/from16 v0, p3

    #@253
    and-int/lit16 v0, v0, 0x300

    #@255
    move/from16 p3, v0

    #@257
    .line 603
    if-nez p3, :cond_13

    #@259
    .line 604
    const/16 p3, -0x1

    #@25b
    goto/16 :goto_0

    #@25d
    .line 605
    :cond_13
    const/16 v4, 0x100

    #@25f
    move/from16 v0, p3

    #@261
    if-eq v0, v4, :cond_14

    #@263
    .line 606
    invoke-virtual/range {p1 .. p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    #@266
    move-result p3

    #@267
    const/16 v4, 0xc0

    #@269
    move/from16 v0, p3

    #@26b
    if-ne v0, v4, :cond_0

    #@26d
    .line 608
    :cond_14
    move-object/from16 v0, p1

    #@26f
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@271
    move-object/from16 p1, v0

    #@273
    .line 609
    invoke-virtual/range {p1 .. p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    #@276
    move-result p3

    #@277
    goto/16 :goto_0

    #@279
    .line 613
    :cond_15
    const/16 p3, -0x1

    #@27b
    goto/16 :goto_0

    #@27d
    .line 618
    .end local v16    # "trail":C
    :pswitch_d
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@27f
    if-nez v4, :cond_17

    #@281
    if-ltz p2, :cond_16

    #@283
    const/4 v4, 0x1

    #@284
    :goto_5
    if-nez v4, :cond_17

    #@286
    new-instance v4, Ljava/lang/AssertionError;

    #@288
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@28b
    throw v4

    #@28c
    :cond_16
    const/4 v4, 0x0

    #@28d
    goto :goto_5

    #@28e
    .line 619
    :cond_17
    move-object/from16 v0, p0

    #@290
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@292
    invoke-virtual/range {p1 .. p3}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    #@295
    move-result-wide v6

    #@296
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@299
    .line 620
    return-void

    #@29a
    .line 622
    :pswitch_e
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@29c
    if-nez v4, :cond_19

    #@29e
    if-ltz p2, :cond_18

    #@2a0
    const/4 v4, 0x1

    #@2a1
    :goto_6
    if-nez v4, :cond_19

    #@2a3
    new-instance v4, Ljava/lang/AssertionError;

    #@2a5
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@2a8
    throw v4

    #@2a9
    :cond_18
    const/4 v4, 0x0

    #@2aa
    goto :goto_6

    #@2ab
    .line 623
    :cond_19
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationIterator;->isSurrogate(I)Z

    #@2ae
    move-result v4

    #@2af
    if-eqz v4, :cond_1a

    #@2b1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->forbidSurrogateCodePoints()Z

    #@2b4
    move-result v4

    #@2b5
    if-eqz v4, :cond_1a

    #@2b7
    .line 624
    const p3, -0x2fafb

    #@2ba
    .line 625
    goto/16 :goto_0

    #@2bc
    .line 627
    :cond_1a
    move-object/from16 v0, p0

    #@2be
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@2c0
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    #@2c3
    move-result-wide v6

    #@2c4
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@2c7
    .line 628
    return-void

    #@2c8
    .line 632
    :cond_1b
    move-object/from16 v0, p0

    #@2ca
    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@2cc
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    #@2cf
    move-result-wide v6

    #@2d0
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    #@2d3
    .line 451
    return-void

    #@2d4
    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected abstract backwardNumCodePoints(I)V
.end method

.method final clearCEs()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 348
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@3
    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@5
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@7
    .line 347
    return-void
.end method

.method public final clearCEsIfNoneRemaining()V
    .locals 2

    #@0
    .prologue
    .line 352
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@4
    iget v1, v1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->clearCEs()V

    #@b
    .line 351
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 205
    if-nez p1, :cond_0

    #@3
    return v6

    #@4
    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    return v6

    #@13
    :cond_1
    move-object v1, p1

    #@14
    .line 207
    check-cast v1, Landroid/icu/impl/coll/CollationIterator;

    #@16
    .line 208
    .local v1, "o":Landroid/icu/impl/coll/CollationIterator;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@18
    iget v2, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@1a
    iget-object v3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@1c
    iget v3, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@1e
    if-ne v2, v3, :cond_2

    #@20
    .line 209
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@22
    iget v3, v1, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@24
    if-eq v2, v3, :cond_3

    #@26
    .line 212
    :cond_2
    return v6

    #@27
    .line 210
    :cond_3
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@29
    iget v3, v1, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    #@2b
    if-ne v2, v3, :cond_2

    #@2d
    .line 211
    iget-boolean v2, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    #@2f
    iget-boolean v3, v1, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    #@31
    if-ne v2, v3, :cond_2

    #@33
    .line 214
    const/4 v0, 0x0

    #@34
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@36
    iget v2, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@38
    if-ge v0, v2, :cond_5

    #@3a
    .line 215
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@3c
    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    #@3f
    move-result-wide v2

    #@40
    iget-object v4, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@42
    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    #@45
    move-result-wide v4

    #@46
    cmp-long v2, v2, v4

    #@48
    if-eqz v2, :cond_4

    #@4a
    return v6

    #@4b
    .line 214
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 217
    :cond_5
    const/4 v2, 0x1

    #@4f
    return v2
.end method

.method public final fetchCEs()I
    .locals 4

    #@0
    .prologue
    .line 280
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@3
    move-result-wide v0

    #@4
    const-wide v2, 0x101000100L

    #@9
    cmp-long v0, v0, v2

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 282
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@f
    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@11
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@13
    goto :goto_0

    #@14
    .line 284
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@16
    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@18
    return v0
.end method

.method protected forbidSurrogateCodePoints()Z
    .locals 1

    #@0
    .prologue
    .line 430
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected abstract forwardNumCodePoints(I)V
.end method

.method public final getCE(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method protected getCE32FromBuilderData(I)I
    .locals 2
    .param p1, "ce32"    # I

    #@0
    .prologue
    .line 447
    new-instance v0, Landroid/icu/util/ICUException;

    #@2
    const-string/jumbo v1, "internal program error: should be unreachable"

    #@5
    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public final getCEs()[J
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->getCEs()[J

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getCEsLength()I
    .locals 1

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@2
    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@4
    return v0
.end method

.method protected getDataCE32(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public abstract getOffset()I
.end method

.method protected handleGetTrailSurrogate()C
    .locals 1

    #@0
    .prologue
    .line 413
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected handleNextCE32()J
    .locals 4

    #@0
    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    #@3
    move-result v0

    #@4
    .line 398
    .local v0, "c":I
    if-gez v0, :cond_0

    #@6
    const-wide v2, -0xffffff40L

    #@b
    return-wide v2

    #@c
    .line 399
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@e
    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->makeCodePointAndCE32Pair(II)J

    #@15
    move-result-wide v2

    #@16
    return-wide v2
.end method

.method protected makeCodePointAndCE32Pair(II)J
    .locals 6
    .param p1, "c"    # I
    .param p2, "ce32"    # I

    #@0
    .prologue
    .line 402
    int-to-long v0, p1

    #@1
    const/16 v2, 0x20

    #@3
    shl-long/2addr v0, v2

    #@4
    int-to-long v2, p2

    #@5
    const-wide v4, 0xffffffffL

    #@a
    and-long/2addr v2, v4

    #@b
    or-long/2addr v0, v2

    #@c
    return-wide v0
.end method

.method public final nextCE()J
    .locals 13

    #@0
    .prologue
    const/16 v12, 0x10

    #@2
    const/4 v6, 0x0

    #@3
    const/high16 v11, -0x10000

    #@5
    const/16 v9, 0xc0

    #@7
    const/16 v10, 0x20

    #@9
    .line 233
    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@b
    iget-object v8, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@d
    iget v8, v8, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@f
    if-ge v7, v8, :cond_0

    #@11
    .line 235
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@13
    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@15
    add-int/lit8 v8, v7, 0x1

    #@17
    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@19
    invoke-virtual {v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    #@1c
    move-result-wide v6

    #@1d
    return-wide v6

    #@1e
    .line 237
    :cond_0
    sget-boolean v7, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@20
    if-nez v7, :cond_2

    #@22
    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@24
    iget-object v8, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@26
    iget v8, v8, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@28
    if-ne v7, v8, :cond_1

    #@2a
    const/4 v6, 0x1

    #@2b
    :cond_1
    if-nez v6, :cond_2

    #@2d
    new-instance v6, Ljava/lang/AssertionError;

    #@2f
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@32
    throw v6

    #@33
    .line 238
    :cond_2
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@35
    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->incLength()V

    #@38
    .line 239
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->handleNextCE32()J

    #@3b
    move-result-wide v2

    #@3c
    .line 240
    .local v2, "cAndCE32":J
    shr-long v6, v2, v10

    #@3e
    long-to-int v0, v6

    #@3f
    .line 241
    .local v0, "c":I
    long-to-int v1, v2

    #@40
    .line 242
    .local v1, "ce32":I
    and-int/lit16 v5, v1, 0xff

    #@42
    .line 243
    .local v5, "t":I
    if-ge v5, v9, :cond_3

    #@44
    .line 246
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@46
    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@48
    add-int/lit8 v8, v7, 0x1

    #@4a
    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@4c
    .line 247
    and-int v8, v1, v11

    #@4e
    int-to-long v8, v8

    #@4f
    shl-long/2addr v8, v10

    #@50
    const v10, 0xff00

    #@53
    and-int/2addr v10, v1

    #@54
    int-to-long v10, v10

    #@55
    shl-long/2addr v10, v12

    #@56
    or-long/2addr v8, v10

    #@57
    shl-int/lit8 v10, v5, 0x8

    #@59
    int-to-long v10, v10

    #@5a
    or-long/2addr v8, v10

    #@5b
    .line 246
    invoke-virtual {v6, v7, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    #@5e
    move-result-wide v6

    #@5f
    return-wide v6

    #@60
    .line 252
    :cond_3
    if-ne v5, v9, :cond_5

    #@62
    .line 253
    if-gez v0, :cond_4

    #@64
    .line 254
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@66
    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@68
    add-int/lit8 v8, v7, 0x1

    #@6a
    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@6c
    const-wide v8, 0x101000100L

    #@71
    invoke-virtual {v6, v7, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    #@74
    move-result-wide v6

    #@75
    return-wide v6

    #@76
    .line 256
    :cond_4
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@78
    iget-object v4, v6, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@7a
    .line 257
    .local v4, "d":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@7d
    move-result v1

    #@7e
    .line 258
    and-int/lit16 v5, v1, 0xff

    #@80
    .line 259
    if-ge v5, v9, :cond_6

    #@82
    .line 261
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@84
    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@86
    add-int/lit8 v8, v7, 0x1

    #@88
    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@8a
    .line 262
    and-int v8, v1, v11

    #@8c
    int-to-long v8, v8

    #@8d
    shl-long/2addr v8, v10

    #@8e
    const v10, 0xff00

    #@91
    and-int/2addr v10, v1

    #@92
    int-to-long v10, v10

    #@93
    shl-long/2addr v10, v12

    #@94
    or-long/2addr v8, v10

    #@95
    shl-int/lit8 v10, v5, 0x8

    #@97
    int-to-long v10, v10

    #@98
    or-long/2addr v8, v10

    #@99
    .line 261
    invoke-virtual {v6, v7, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    #@9c
    move-result-wide v6

    #@9d
    return-wide v6

    #@9e
    .line 265
    .end local v4    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_5
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@a0
    .line 267
    .restart local v4    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_6
    const/16 v6, 0xc1

    #@a2
    if-ne v5, v6, :cond_7

    #@a4
    .line 269
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@a6
    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@a8
    add-int/lit8 v8, v7, 0x1

    #@aa
    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@ac
    .line 270
    sub-int v8, v1, v5

    #@ae
    int-to-long v8, v8

    #@af
    shl-long/2addr v8, v10

    #@b0
    const-wide/32 v10, 0x5000500

    #@b3
    or-long/2addr v8, v10

    #@b4
    .line 269
    invoke-virtual {v6, v7, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    #@b7
    move-result-wide v6

    #@b8
    return-wide v6

    #@b9
    .line 272
    :cond_7
    invoke-direct {p0, v4, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->nextCEFromCE32(Landroid/icu/impl/coll/CollationData;II)J

    #@bc
    move-result-wide v6

    #@bd
    return-wide v6
.end method

.method public abstract nextCodePoint()I
.end method

.method public final previousCE(Landroid/icu/impl/coll/UVector32;)J
    .locals 7
    .param p1, "offsets"    # Landroid/icu/impl/coll/UVector32;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 299
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@3
    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@5
    if-lez v4, :cond_0

    #@7
    .line 301
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@9
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@b
    iget v6, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@d
    add-int/lit8 v6, v6, -0x1

    #@f
    iput v6, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@11
    invoke-virtual {v4, v6}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    #@14
    move-result-wide v4

    #@15
    return-wide v4

    #@16
    .line 303
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/coll/UVector32;->removeAllElements()V

    #@19
    .line 304
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    #@1c
    move-result v3

    #@1d
    .line 305
    .local v3, "limitOffset":I
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    #@20
    move-result v0

    #@21
    .line 306
    .local v0, "c":I
    if-gez v0, :cond_1

    #@23
    const-wide v4, 0x101000100L

    #@28
    return-wide v4

    #@29
    .line 307
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@2b
    iget-boolean v5, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    #@2d
    invoke-virtual {v4, v0, v5}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_2

    #@33
    .line 308
    invoke-direct {p0, v0, p1}, Landroid/icu/impl/coll/CollationIterator;->previousCEUnsafe(ILandroid/icu/impl/coll/UVector32;)J

    #@36
    move-result-wide v4

    #@37
    return-wide v4

    #@38
    .line 312
    :cond_2
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@3a
    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@3d
    move-result v1

    #@3e
    .line 314
    .local v1, "ce32":I
    const/16 v4, 0xc0

    #@40
    if-ne v1, v4, :cond_3

    #@42
    .line 315
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@44
    iget-object v2, v4, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@46
    .line 316
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@49
    move-result v1

    #@4a
    .line 320
    :goto_0
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->isSimpleOrLongCE32(I)Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_4

    #@50
    .line 321
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@53
    move-result-wide v4

    #@54
    return-wide v4

    #@55
    .line 318
    .end local v2    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_3
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    #@57
    .restart local v2    # "d":Landroid/icu/impl/coll/CollationData;
    goto :goto_0

    #@58
    .line 323
    :cond_4
    invoke-virtual {p0, v2, v0, v1, v6}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    #@5b
    .line 324
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@5d
    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@5f
    const/4 v5, 0x1

    #@60
    if-le v4, v5, :cond_5

    #@62
    .line 325
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    #@65
    move-result v4

    #@66
    invoke-virtual {p1, v4}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@69
    .line 328
    :goto_1
    invoke-virtual {p1}, Landroid/icu/impl/coll/UVector32;->size()I

    #@6c
    move-result v4

    #@6d
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@6f
    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@71
    if-gt v4, v5, :cond_5

    #@73
    .line 329
    invoke-virtual {p1, v3}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@76
    goto :goto_1

    #@77
    .line 332
    :cond_5
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@79
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@7b
    iget v6, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@7d
    add-int/lit8 v6, v6, -0x1

    #@7f
    iput v6, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@81
    invoke-virtual {v4, v6}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    #@84
    move-result-wide v4

    #@85
    return-wide v4
.end method

.method public abstract previousCodePoint()I
.end method

.method protected final reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 368
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@3
    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    #@5
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@7
    .line 369
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    #@10
    .line 367
    :cond_0
    return-void
.end method

.method protected final reset(Z)V
    .locals 1
    .param p1, "numeric"    # Z

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 380
    new-instance v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@6
    invoke-direct {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@b
    .line 382
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->reset()V

    #@e
    .line 383
    iput-boolean p1, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    #@10
    .line 378
    return-void
.end method

.method public abstract resetToOffset(I)V
.end method

.method final setCurrentCE(J)V
    .locals 3
    .param p1, "ce"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 291
    sget-boolean v1, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    if-nez v0, :cond_1

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v0

    #@12
    .line 292
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    #@14
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    invoke-virtual {v0, v1, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    #@1b
    .line 290
    return-void
.end method
