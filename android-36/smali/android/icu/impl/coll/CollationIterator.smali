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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field protected static final blacklist NO_CP_AND_CE32:J = -0xffffff40L


# instance fields
.field private blacklist ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

.field private blacklist cesIndex:I

.field protected final blacklist data:Landroid/icu/impl/coll/CollationData;

.field private blacklist isNumeric:Z

.field private blacklist numCpFwd:I

.field private blacklist skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

.field protected final blacklist trie:Landroid/icu/impl/Trie2_32;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;)V
    .registers 3
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    .line 188
    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    .line 192
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;Z)V
    .registers 4
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    .line 196
    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 198
    iput-boolean p2, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    .line 199
    new-instance v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    .line 200
    return-void
.end method

.method private final blacklist appendNumericCEs(IZ)V
    .registers 10
    .param p1, "ce32"    # I
    .param p2, "forward"    # Z

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .local v0, "digits":Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    const/16 v2, 0xc0

    const/4 v3, 0x1

    if-eqz p2, :cond_45

    .line 977
    :goto_c
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->digitFromCE32(I)C

    move-result v4

    .line 978
    .local v4, "digit":C
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 979
    iget v5, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-nez v5, :cond_18

    goto :goto_1e

    .line 980
    :cond_18
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v5

    .line 981
    .local v5, "c":I
    if-gez v5, :cond_20

    .line 1010
    .end local v4    # "digit":C
    .end local v5    # "c":I
    :goto_1e
    move v6, p1

    goto :goto_71

    .line 982
    .restart local v4    # "digit":C
    .restart local v5    # "c":I
    :cond_20
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v6, v5}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    .line 983
    if-ne p1, v2, :cond_30

    .line 984
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v6, v6, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v6, v5}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    .line 986
    :cond_30
    invoke-static {p1, v1}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 987
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 988
    move v6, p1

    goto :goto_71

    .line 990
    :cond_3b
    iget v6, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez v6, :cond_44

    iget v6, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    sub-int/2addr v6, v3

    iput v6, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 991
    .end local v4    # "digit":C
    .end local v5    # "c":I
    :cond_44
    goto :goto_c

    .line 994
    :cond_45
    :goto_45
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->digitFromCE32(I)C

    move-result v4

    .line 995
    .restart local v4    # "digit":C
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result v5

    .line 997
    .restart local v5    # "c":I
    if-gez v5, :cond_53

    goto :goto_6d

    .line 998
    :cond_53
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v6, v5}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    .line 999
    if-ne p1, v2, :cond_63

    .line 1000
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v6, v6, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v6, v5}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    .line 1002
    :cond_63
    invoke-static {p1, v1}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v6

    if-nez v6, :cond_9e

    .line 1003
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    .line 1004
    nop

    .line 1008
    .end local v4    # "digit":C
    .end local v5    # "c":I
    :goto_6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move v6, p1

    .line 1010
    .end local p1    # "ce32":I
    .local v6, "ce32":I
    :goto_71
    const/4 p1, 0x0

    .line 1013
    .local p1, "pos":I
    :cond_72
    :goto_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_82

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-nez v1, :cond_82

    add-int/lit8 p1, p1, 0x1

    goto :goto_72

    .line 1015
    :cond_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, p1

    .line 1016
    .local v1, "segmentLength":I
    const/16 v2, 0xfe

    if-le v1, v2, :cond_8d

    const/16 v1, 0xfe

    .line 1017
    :cond_8d
    add-int v2, p1, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationIterator;->appendNumericSegmentCEs(Ljava/lang/CharSequence;)V

    .line 1018
    add-int/2addr p1, v1

    .line 1019
    .end local v1    # "segmentLength":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt p1, v1, :cond_72

    .line 1020
    return-void

    .line 1006
    .end local v6    # "ce32":I
    .local p1, "ce32":I
    :cond_9e
    goto :goto_45
.end method

.method private final blacklist appendNumericSegmentCEs(Ljava/lang/CharSequence;)V
    .registers 14
    .param p1, "digits"    # Ljava/lang/CharSequence;

    .line 1027
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1028
    .local v0, "length":I
    nop

    .line 1029
    nop

    .line 1030
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-wide v1, v1, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    .line 1032
    .local v1, "numericPrimary":J
    const/4 v3, 0x7

    const/4 v4, 0x0

    if-gt v0, v3, :cond_85

    .line 1034
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1035
    .local v3, "value":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_13
    if-ge v5, v0, :cond_20

    .line 1036
    mul-int/lit8 v6, v3, 0xa

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int v3, v6, v7

    .line 1035
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1043
    .end local v5    # "i":I
    :cond_20
    const/4 v5, 0x2

    .line 1044
    .local v5, "firstByte":I
    const/16 v6, 0x4a

    .line 1045
    .local v6, "numBytes":I
    if-ge v3, v6, :cond_35

    .line 1047
    add-int v4, v5, v3

    shl-int/lit8 v4, v4, 0x10

    int-to-long v7, v4

    or-long/2addr v7, v1

    .line 1048
    .local v7, "primary":J
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v7, v8}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 1049
    return-void

    .line 1051
    .end local v7    # "primary":J
    :cond_35
    sub-int/2addr v3, v6

    .line 1052
    add-int/2addr v5, v6

    .line 1053
    const/16 v6, 0x28

    .line 1054
    mul-int/lit16 v7, v6, 0xfe

    if-ge v3, v7, :cond_56

    .line 1056
    div-int/lit16 v4, v3, 0xfe

    add-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x10

    int-to-long v7, v4

    or-long/2addr v7, v1

    rem-int/lit16 v4, v3, 0xfe

    add-int/lit8 v4, v4, 0x2

    shl-int/lit8 v4, v4, 0x8

    int-to-long v9, v4

    or-long/2addr v7, v9

    .line 1058
    .restart local v7    # "primary":J
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v7, v8}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 1059
    return-void

    .line 1061
    .end local v7    # "primary":J
    :cond_56
    mul-int/lit16 v7, v6, 0xfe

    sub-int/2addr v3, v7

    .line 1062
    add-int/2addr v5, v6

    .line 1063
    const/16 v6, 0x10

    .line 1064
    mul-int/lit16 v7, v6, 0xfe

    mul-int/lit16 v7, v7, 0xfe

    if-ge v3, v7, :cond_85

    .line 1066
    rem-int/lit16 v4, v3, 0xfe

    add-int/lit8 v4, v4, 0x2

    int-to-long v7, v4

    or-long/2addr v7, v1

    .line 1067
    .restart local v7    # "primary":J
    div-int/lit16 v3, v3, 0xfe

    .line 1068
    rem-int/lit16 v4, v3, 0xfe

    add-int/lit8 v4, v4, 0x2

    shl-int/lit8 v4, v4, 0x8

    int-to-long v9, v4

    or-long/2addr v7, v9

    .line 1069
    div-int/lit16 v3, v3, 0xfe

    .line 1070
    rem-int/lit16 v4, v3, 0xfe

    add-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x10

    int-to-long v9, v4

    or-long/2addr v7, v9

    .line 1071
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v7, v8}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 1072
    return-void

    .line 1076
    .end local v3    # "value":I
    .end local v5    # "firstByte":I
    .end local v6    # "numBytes":I
    .end local v7    # "primary":J
    :cond_85
    nop

    .line 1084
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    .line 1085
    .local v3, "numPairs":I
    add-int/lit16 v5, v3, 0x80

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    or-long/2addr v5, v1

    .line 1087
    .local v5, "primary":J
    :goto_90
    add-int/lit8 v7, v0, -0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-nez v7, :cond_a3

    add-int/lit8 v7, v0, -0x2

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-nez v7, :cond_a3

    .line 1088
    add-int/lit8 v0, v0, -0x2

    goto :goto_90

    .line 1093
    :cond_a3
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_ad

    .line 1095
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1096
    .local v4, "pair":I
    const/4 v7, 0x1

    .local v7, "pos":I
    goto :goto_ba

    .line 1098
    .end local v4    # "pair":I
    .end local v7    # "pos":I
    :cond_ad
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    const/4 v7, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/2addr v4, v7

    .line 1099
    .restart local v4    # "pair":I
    const/4 v7, 0x2

    .line 1101
    .restart local v7    # "pos":I
    :goto_ba
    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v8, v8, 0xb

    .line 1103
    .end local v4    # "pair":I
    .local v8, "pair":I
    const/16 v4, 0x8

    .line 1104
    .local v4, "shift":I
    :goto_c0
    if-ge v7, v0, :cond_ed

    .line 1105
    if-nez v4, :cond_d3

    .line 1108
    int-to-long v9, v8

    or-long/2addr v5, v9

    .line 1109
    iget-object v9, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v5, v6}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 1110
    move-wide v5, v1

    .line 1111
    const/16 v4, 0x10

    goto :goto_d9

    .line 1113
    :cond_d3
    shl-int v9, v8, v4

    int-to-long v9, v9

    or-long/2addr v5, v9

    .line 1114
    add-int/lit8 v4, v4, -0x8

    .line 1116
    :goto_d9
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v10, v7, 0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v8, v9, 0xb

    .line 1117
    add-int/lit8 v7, v7, 0x2

    goto :goto_c0

    .line 1119
    :cond_ed
    add-int/lit8 v9, v8, -0x1

    shl-int/2addr v9, v4

    int-to-long v9, v9

    or-long/2addr v5, v9

    .line 1120
    iget-object v9, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v5, v6}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 1121
    return-void
.end method

.method private final blacklist backwardNumSkipped(I)V
    .registers 3
    .param p1, "n"    # I

    .line 701
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 702
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->backwardNumCodePoints(I)I

    move-result p1

    .line 704
    :cond_12
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 705
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-ltz v0, :cond_1e

    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 706
    :cond_1e
    return-void
.end method

.method private final blacklist getCE32FromPrefix(Landroid/icu/impl/coll/CollationData;I)I
    .registers 9
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "ce32"    # I

    .line 671
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 672
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p2

    .line 673
    add-int/lit8 v0, v0, 0x2

    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, "lookBehind":I
    new-instance v2, Landroid/icu/util/CharsTrie;

    iget-object v3, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 678
    .local v2, "prefixes":Landroid/icu/util/CharsTrie;
    :goto_12
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result v3

    .line 679
    .local v3, "c":I
    if-gez v3, :cond_19

    goto :goto_2f

    .line 680
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 681
    invoke-virtual {v2, v3}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    .line 682
    .local v4, "match":Landroid/icu/util/BytesTrie$Result;
    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 683
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result p2

    .line 685
    :cond_29
    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v5

    if-nez v5, :cond_33

    .line 687
    .end local v3    # "c":I
    .end local v4    # "match":Landroid/icu/util/BytesTrie$Result;
    :goto_2f
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    .line 688
    return p2

    .line 686
    :cond_33
    goto :goto_12
.end method

.method protected static final blacklist isLeadSurrogate(I)Z
    .registers 3
    .param p0, "c"    # I

    .line 652
    and-int/lit16 v0, p0, -0x400

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static final blacklist isSurrogate(I)Z
    .registers 3
    .param p0, "c"    # I

    .line 647
    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected static final blacklist isTrailSurrogate(I)Z
    .registers 3
    .param p0, "c"    # I

    .line 657
    and-int/lit16 v0, p0, -0x400

    const v1, 0xdc00

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private final blacklist nextCE32FromContraction(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I
    .registers 16
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "contractionCE32"    # I
    .param p3, "trieChars"    # Ljava/lang/CharSequence;
    .param p4, "trieOffset"    # I
    .param p5, "ce32"    # I
    .param p6, "c"    # I

    .line 715
    const/4 v0, 0x1

    .line 717
    .local v0, "lookAhead":I
    const/4 v1, 0x1

    .line 721
    .local v1, "sinceMatch":I
    new-instance v2, Landroid/icu/util/CharsTrie;

    invoke-direct {v2, p3, p4}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    move-object v5, v2

    .line 722
    .local v5, "suffixes":Landroid/icu/util/CharsTrie;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v2, v5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    .line 723
    :cond_19
    invoke-virtual {v5, p6}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v2

    move v6, p5

    .line 726
    .end local p5    # "ce32":I
    .local v2, "match":Landroid/icu/util/BytesTrie$Result;
    .local v6, "ce32":I
    :goto_1e
    invoke-virtual {v2}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result p5

    if-eqz p5, :cond_4b

    .line 727
    invoke-virtual {v5}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result p5

    .line 728
    .end local v6    # "ce32":I
    .restart local p5    # "ce32":I
    invoke-virtual {v2}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v3

    move p6, v3

    if-gez v3, :cond_36

    goto :goto_4a

    .line 731
    :cond_36
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_47

    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v3, v5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    .line 732
    :cond_47
    const/4 v1, 0x1

    move v6, p5

    goto :goto_5b

    .line 729
    :cond_4a
    :goto_4a
    return p5

    .line 733
    .end local p5    # "ce32":I
    .restart local v6    # "ce32":I
    :cond_4b
    sget-object p5, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-eq v2, p5, :cond_62

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p5

    move v3, p5

    .local v3, "nextCp":I
    if-gez p5, :cond_57

    goto :goto_62

    .line 764
    :cond_57
    move p5, v3

    .line 765
    .end local p6    # "c":I
    .local p5, "c":I
    add-int/lit8 v1, v1, 0x1

    move p6, p5

    .line 767
    .end local v3    # "nextCp":I
    .end local p5    # "c":I
    .restart local p6    # "c":I
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    .line 768
    invoke-virtual {v5, p6}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v2

    goto :goto_1e

    .line 736
    :cond_62
    :goto_62
    and-int/lit16 p5, p2, 0x400

    if-eqz p5, :cond_97

    and-int/lit16 p5, p2, 0x100

    if-eqz p5, :cond_70

    if-ge v1, v0, :cond_6d

    goto :goto_70

    :cond_6d
    move-object v3, p0

    move-object v4, p1

    goto :goto_99

    .line 745
    :cond_70
    :goto_70
    const/4 p5, 0x1

    if-le v1, p5, :cond_81

    .line 748
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 749
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p6

    .line 750
    add-int/lit8 p5, v1, -0x1

    sub-int/2addr v0, p5

    .line 751
    const/4 v1, 0x1

    move v8, p6

    move v7, v0

    goto :goto_83

    .line 745
    :cond_81
    move v8, p6

    move v7, v0

    .line 753
    .end local v0    # "lookAhead":I
    .end local p6    # "c":I
    .local v7, "lookAhead":I
    .local v8, "c":I
    :goto_83
    invoke-virtual {p1, v8}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result p5

    const/16 p6, 0xff

    if-le p5, p6, :cond_92

    .line 754
    move-object v3, p0

    move-object v4, p1

    .end local p1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v4, "d":Landroid/icu/impl/coll/CollationData;
    invoke-direct/range {v3 .. v8}, Landroid/icu/impl/coll/CollationIterator;->nextCE32FromDiscontiguousContraction(Landroid/icu/impl/coll/CollationData;Landroid/icu/util/CharsTrie;III)I

    move-result p1

    return p1

    .line 753
    .end local v4    # "d":Landroid/icu/impl/coll/CollationData;
    .restart local p1    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_92
    move-object v3, p0

    move-object v4, p1

    .end local p1    # "d":Landroid/icu/impl/coll/CollationData;
    .restart local v4    # "d":Landroid/icu/impl/coll/CollationData;
    move v0, v7

    move p6, v8

    goto :goto_99

    .line 736
    .end local v4    # "d":Landroid/icu/impl/coll/CollationData;
    .end local v7    # "lookAhead":I
    .end local v8    # "c":I
    .restart local v0    # "lookAhead":I
    .restart local p1    # "d":Landroid/icu/impl/coll/CollationData;
    .restart local p6    # "c":I
    :cond_97
    move-object v3, p0

    move-object v4, p1

    .line 770
    .end local p1    # "d":Landroid/icu/impl/coll/CollationData;
    .restart local v4    # "d":Landroid/icu/impl/coll/CollationData;
    :goto_99
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 771
    return v6
.end method

.method private final blacklist nextCE32FromDiscontiguousContraction(Landroid/icu/impl/coll/CollationData;Landroid/icu/util/CharsTrie;III)I
    .registers 14
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "suffixes"    # Landroid/icu/util/CharsTrie;
    .param p3, "ce32"    # I
    .param p4, "lookAhead"    # I
    .param p5, "c"    # I

    .line 794
    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v0

    .line 795
    .local v0, "fcd16":I
    nop

    .line 796
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v1

    .line 797
    .local v1, "nextCp":I
    const/4 v2, 0x1

    if-gez v1, :cond_10

    .line 799
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 800
    return p3

    .line 802
    :cond_10
    add-int/2addr p4, v2

    .line 803
    and-int/lit16 v3, v0, 0xff

    .line 804
    .local v3, "prevCC":I
    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v0

    .line 805
    const/4 v4, 0x2

    const/16 v5, 0xff

    if-gt v0, v5, :cond_20

    .line 807
    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 808
    return p3

    .line 814
    :cond_20
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v6, :cond_33

    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_33

    .line 832
    :cond_2d
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v4, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Landroid/icu/util/CharsTrie;)V

    goto :goto_62

    .line 815
    :cond_33
    :goto_33
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-nez v6, :cond_3e

    .line 816
    new-instance v6, Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-direct {v6}, Landroid/icu/impl/coll/CollationIterator$SkippedState;-><init>()V

    iput-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    .line 818
    :cond_3e
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    .line 819
    if-le p4, v4, :cond_5d

    .line 821
    invoke-virtual {p0, p4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 822
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    .line 823
    const/4 v6, 0x3

    .local v6, "i":I
    :goto_4e
    if-ge v6, p4, :cond_5a

    .line 824
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    .line 823
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 827
    .end local v6    # "i":I
    :cond_5a
    invoke-virtual {p0, v4}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    .line 829
    :cond_5d
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v4, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    .line 835
    :goto_62
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v4, p5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->setFirstSkipped(I)V

    .line 837
    const/4 v4, 0x2

    .line 838
    .local v4, "sinceMatch":I
    move p5, v1

    .line 842
    :cond_69
    shr-int/lit8 v6, v0, 0x8

    if-ge v3, v6, :cond_8f

    invoke-virtual {p2, p5}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v6

    move-object v7, v6

    .local v7, "match":Landroid/icu/util/BytesTrie$Result;
    invoke-virtual {v6}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 845
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result p3

    .line 846
    const/4 v4, 0x0

    .line 847
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->recordMatch()V

    .line 848
    invoke-virtual {v7}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v6

    if-nez v6, :cond_89

    goto :goto_ac

    .line 849
    :cond_89
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v6, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    goto :goto_9b

    .line 852
    .end local v7    # "match":Landroid/icu/util/BytesTrie$Result;
    :cond_8f
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v6, p5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skip(I)V

    .line 853
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v6, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Landroid/icu/util/CharsTrie;)V

    .line 854
    and-int/lit16 v3, v0, 0xff

    .line 856
    :goto_9b
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v6

    move p5, v6

    if-gez v6, :cond_a3

    goto :goto_ac

    .line 857
    :cond_a3
    add-int/lit8 v4, v4, 0x1

    .line 858
    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v0

    .line 859
    if-gt v0, v5, :cond_69

    .line 861
    nop

    .line 864
    :goto_ac
    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 865
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v5

    .line 866
    .local v5, "isTopDiscontiguous":Z
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->replaceMatch()V

    .line 867
    if-eqz v5, :cond_f1

    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f1

    .line 872
    const/4 p5, -0x1

    .line 874
    :goto_c5
    invoke-virtual {p0, p1, p5, p3, v2}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    .line 877
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    move-result v6

    if-nez v6, :cond_d7

    .line 890
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    .line 891
    const/4 p3, 0x1

    goto :goto_f1

    .line 878
    :cond_d7
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->next()I

    move-result p5

    .line 879
    invoke-virtual {p0, p5}, Landroid/icu/impl/coll/CollationIterator;->getDataCE32(I)I

    move-result p3

    .line 880
    const/16 v6, 0xc0

    if-ne p3, v6, :cond_ee

    .line 881
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p1, v6, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 882
    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p3

    goto :goto_c5

    .line 884
    :cond_ee
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    goto :goto_c5

    .line 893
    :cond_f1
    :goto_f1
    return p3
.end method

.method private final blacklist nextCEFromCE32(Landroid/icu/impl/coll/CollationData;II)J
    .registers 7
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I
    .param p3, "ce32"    # I

    .line 665
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    .line 666
    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    .line 667
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private final blacklist nextSkippedCodePoint()I
    .registers 3

    .line 692
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->next()I

    move-result v0

    return v0

    .line 693
    :cond_13
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-nez v0, :cond_19

    const/4 v0, -0x1

    return v0

    .line 694
    :cond_19
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    .line 695
    .local v0, "c":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    if-ltz v0, :cond_30

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->incBeyond()V

    .line 696
    :cond_30
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez v1, :cond_3c

    if-ltz v0, :cond_3c

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 697
    :cond_3c
    return v0
.end method

.method private final blacklist previousCEUnsafe(ILandroid/icu/impl/coll/UVector32;)J
    .registers 8
    .param p1, "c"    # I
    .param p2, "offsets"    # Landroid/icu/impl/coll/UVector32;

    .line 915
    const/4 v0, 0x1

    .line 916
    .local v0, "numBackward":I
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result v1

    move p1, v1

    if-ltz v1, :cond_15

    .line 917
    add-int/lit8 v0, v0, 0x1

    .line 918
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-boolean v2, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    invoke-virtual {v1, p1, v2}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 919
    nop

    .line 925
    :cond_15
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 927
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 928
    nop

    .line 930
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v2

    .line 931
    .local v2, "offset":I
    :cond_1f
    iget v3, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez v3, :cond_49

    .line 934
    iget v3, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 936
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    .line 937
    nop

    .line 939
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v3, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v3, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 943
    nop

    .line 944
    invoke-virtual {p2, v2}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 947
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v2

    .line 948
    :goto_3b
    invoke-virtual {p2}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v3

    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v3, v4, :cond_1f

    .line 949
    invoke-virtual {p2, v2}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    goto :goto_3b

    .line 952
    :cond_49
    nop

    .line 954
    invoke-virtual {p2, v2}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 957
    const/4 v3, -0x1

    iput v3, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 958
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 960
    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 961
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v3

    return-wide v3
.end method


# virtual methods
.method protected final blacklist appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V
    .registers 15
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I
    .param p3, "ce32"    # I
    .param p4, "forward"    # Z

    .line 462
    move-object v1, p1

    move v2, p3

    .end local p1    # "d":Landroid/icu/impl/coll/CollationData;
    .end local p3    # "ce32":I
    .local v1, "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :goto_2
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result p1

    if-eqz p1, :cond_236

    .line 463
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p1

    const/16 p3, 0xc0

    const/4 v0, -0x1

    const/4 v3, 0x2

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_244

    move p1, v2

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .local p1, "ce32":I
    goto/16 :goto_232

    .line 632
    .end local p1    # "ce32":I
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :pswitch_19
    nop

    .line 633
    invoke-static {p2}, Landroid/icu/impl/coll/CollationIterator;->isSurrogate(I)Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->forbidSurrogateCodePoints()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 634
    const p1, -0x2fafb

    .line 635
    .end local v2    # "ce32":I
    .restart local p1    # "ce32":I
    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 637
    .end local p1    # "ce32":I
    .restart local v2    # "ce32":I
    :cond_2d
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 638
    return-void

    .line 628
    :pswitch_37
    nop

    .line 629
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v1, p2, v2}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 630
    return-void

    .line 607
    :pswitch_42
    nop

    .line 608
    nop

    .line 610
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->handleGetTrailSurrogate()C

    move-result p1

    move v0, p1

    .local v0, "trail":C
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 611
    int-to-char p1, p2

    invoke-static {p1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    .line 612
    .end local p2    # "c":I
    .local p1, "c":I
    and-int/lit16 p2, v2, 0x300

    .line 613
    .end local v2    # "ce32":I
    .local p2, "ce32":I
    if-nez p2, :cond_60

    .line 614
    const/4 p2, -0x1

    move v2, p2

    move p2, p1

    move p1, v2

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 615
    :cond_60
    const/16 v2, 0x100

    if-eq p2, v2, :cond_73

    .line 616
    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    move-result v2

    move p2, v2

    if-ne v2, p3, :cond_6c

    goto :goto_73

    :cond_6c
    move v2, p2

    move p2, p1

    move p1, v2

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 618
    :cond_73
    :goto_73
    iget-object p3, v1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 619
    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local p3, "d":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {p3, p1}, Landroid/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    move-result p2

    move v1, p2

    move p2, p1

    move p1, v1

    move-object v1, p0

    move-object v2, p3

    goto/16 :goto_232

    .line 623
    .end local p1    # "c":I
    .end local p3    # "d":Landroid/icu/impl/coll/CollationData;
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .restart local v2    # "ce32":I
    .local p2, "c":I
    :cond_80
    const/4 p1, -0x1

    .line 625
    .end local v2    # "ce32":I
    .local p1, "ce32":I
    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 574
    .end local v0    # "trail":C
    .end local p1    # "ce32":I
    .restart local v2    # "ce32":I
    :pswitch_85
    iget-object p1, v1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 575
    .local p1, "jamoCE32s":[I
    const p3, 0xac00

    sub-int/2addr p2, p3

    .line 576
    rem-int/lit8 p3, p2, 0x1c

    .line 577
    .local p3, "t":I
    div-int/lit8 p2, p2, 0x1c

    .line 578
    rem-int/lit8 v4, p2, 0x15

    .line 579
    .local v4, "v":I
    div-int/lit8 p2, p2, 0x15

    .line 580
    and-int/lit16 v5, v2, 0x100

    if-eqz v5, :cond_d9

    .line 583
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    if-nez p3, :cond_9d

    move v5, v3

    goto :goto_9e

    :cond_9d
    const/4 v5, 0x3

    :goto_9e
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 584
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aget v6, p1, p2

    invoke-static {v6}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v8

    invoke-virtual {v0, v5, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 585
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v5, v7

    add-int/lit8 v6, v4, 0x13

    aget v6, p1, v6

    invoke-static {v6}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 586
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v5, v3

    iput v5, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    .line 587
    if-eqz p3, :cond_d8

    .line 588
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    add-int/lit8 v3, p3, 0x27

    aget v3, p1, v3

    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    .line 590
    :cond_d8
    return-void

    .line 594
    :cond_d9
    aget v3, p1, p2

    invoke-virtual {p0, v1, v0, v3, p4}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    .line 595
    add-int/lit8 v3, v4, 0x13

    aget v3, p1, v3

    invoke-virtual {p0, v1, v0, v3, p4}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    .line 596
    if-nez p3, :cond_e8

    return-void

    .line 601
    :cond_e8
    add-int/lit8 v0, p3, 0x27

    aget v0, p1, v0

    .line 602
    .end local v2    # "ce32":I
    .local v0, "ce32":I
    const/4 p2, -0x1

    .line 603
    move p1, v0

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 568
    .end local v0    # "ce32":I
    .end local v4    # "v":I
    .end local p1    # "jamoCE32s":[I
    .end local p3    # "t":I
    .restart local v2    # "ce32":I
    :pswitch_f2
    nop

    .line 571
    iget-object p1, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    const/4 p3, 0x0

    aget p1, p1, p3

    .line 572
    .end local v2    # "ce32":I
    .local p1, "ce32":I
    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 559
    .end local p1    # "ce32":I
    .restart local v2    # "ce32":I
    :pswitch_fc
    iget-boolean p1, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    if-eqz p1, :cond_104

    .line 560
    invoke-direct {p0, v2, p4}, Landroid/icu/impl/coll/CollationIterator;->appendNumericCEs(IZ)V

    .line 561
    return-void

    .line 564
    :cond_104
    iget-object p1, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    aget p1, p1, p3

    .line 565
    .end local v2    # "ce32":I
    .restart local p1    # "ce32":I
    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 510
    .end local p1    # "ce32":I
    .restart local v2    # "ce32":I
    :pswitch_110
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    .line 511
    .local p1, "index":I
    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v5

    .line 512
    .local v5, "defaultCE32":I
    if-nez p4, :cond_120

    .line 515
    move p3, v5

    .line 516
    .end local v2    # "ce32":I
    .local p3, "ce32":I
    move p1, p3

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 519
    .end local p3    # "ce32":I
    .restart local v2    # "ce32":I
    :cond_120
    iget-object p3, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-nez p3, :cond_147

    iget p3, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-gez p3, :cond_147

    .line 522
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result p3

    .line 523
    .local p3, "nextCp":I
    if-gez p3, :cond_134

    .line 525
    move v0, v5

    .line 526
    .end local v2    # "ce32":I
    .restart local v0    # "ce32":I
    move p1, v0

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 527
    .end local v0    # "ce32":I
    .restart local v2    # "ce32":I
    :cond_134
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_166

    .line 528
    invoke-static {p3}, Landroid/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    move-result v0

    if-nez v0, :cond_166

    .line 531
    invoke-virtual {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 532
    move v0, v5

    .line 533
    .end local v2    # "ce32":I
    .restart local v0    # "ce32":I
    move p1, v0

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 536
    .end local v0    # "ce32":I
    .end local p3    # "nextCp":I
    .restart local v2    # "ce32":I
    :cond_147
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p3

    .line 537
    .restart local p3    # "nextCp":I
    if-gez p3, :cond_153

    .line 539
    move v0, v5

    .line 540
    .end local v2    # "ce32":I
    .restart local v0    # "ce32":I
    move p1, v0

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 541
    .end local v0    # "ce32":I
    .restart local v2    # "ce32":I
    :cond_153
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_166

    .line 542
    invoke-static {p3}, Landroid/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    move-result v0

    if-nez v0, :cond_166

    .line 545
    invoke-direct {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 546
    move v0, v5

    .line 547
    .end local v2    # "ce32":I
    .restart local v0    # "ce32":I
    move p1, v0

    move-object v2, v1

    move-object v1, p0

    goto/16 :goto_232

    .line 550
    .end local v0    # "ce32":I
    .restart local v2    # "ce32":I
    :cond_166
    move v6, p3

    .end local p3    # "nextCp":I
    .local v6, "nextCp":I
    iget-object v3, v1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/coll/CollationIterator;->nextCE32FromContraction(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I

    move-result p3

    .line 551
    move-object v2, v1

    move-object v1, v0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .local p3, "ce32":I
    if-ne p3, v7, :cond_175

    .line 554
    return-void

    .line 551
    :cond_175
    move p1, p3

    goto/16 :goto_232

    .line 505
    .end local v5    # "defaultCE32":I
    .end local v6    # "nextCp":I
    .end local p1    # "index":I
    .end local p3    # "ce32":I
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :pswitch_178
    move p1, v2

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .local p1, "ce32":I
    if-eqz p4, :cond_180

    invoke-virtual {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 506
    :cond_180
    invoke-direct {p0, v2, p1}, Landroid/icu/impl/coll/CollationIterator;->getCE32FromPrefix(Landroid/icu/impl/coll/CollationData;I)I

    move-result p1

    .line 507
    if-eqz p4, :cond_232

    invoke-virtual {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    goto/16 :goto_232

    .line 498
    .end local p1    # "ce32":I
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :pswitch_18b
    move p1, v2

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .restart local p1    # "ce32":I
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->getCE32FromBuilderData(I)I

    move-result p1

    .line 499
    if-ne p1, p3, :cond_232

    .line 500
    iget-object p3, v1, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p3, p3, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 501
    .end local v2    # "d":Landroid/icu/impl/coll/CollationData;
    .local p3, "d":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {p3, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    move-object v2, p3

    goto/16 :goto_232

    .line 489
    .end local p1    # "ce32":I
    .end local p3    # "d":Landroid/icu/impl/coll/CollationData;
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :pswitch_19f
    move p1, v2

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .restart local p1    # "ce32":I
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    .line 490
    .local p3, "index":I
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v3

    .line 491
    .local v3, "length":I
    iget-object v4, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v4, v3}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 493
    :goto_1af
    iget-object v4, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v5, v2, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int/lit8 v6, p3, 0x1

    .end local p3    # "index":I
    .local v6, "index":I
    aget-wide v7, v5, p3

    invoke-virtual {v4, v7, v8}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    .line 494
    add-int/2addr v3, v0

    if-gtz v3, :cond_1be

    .line 495
    return-void

    .line 494
    :cond_1be
    move p3, v6

    goto :goto_1af

    .line 480
    .end local v3    # "length":I
    .end local v6    # "index":I
    .end local p1    # "ce32":I
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :pswitch_1c0
    move p1, v2

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .restart local p1    # "ce32":I
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    .line 481
    .restart local p3    # "index":I
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v3

    .line 482
    .restart local v3    # "length":I
    iget-object v4, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v4, v3}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 484
    :goto_1d0
    iget-object v4, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v5, v2, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int/lit8 v6, p3, 0x1

    .end local p3    # "index":I
    .restart local v6    # "index":I
    aget p3, v5, p3

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    .line 485
    add-int/2addr v3, v0

    if-gtz v3, :cond_1e3

    .line 486
    return-void

    .line 485
    :cond_1e3
    move p3, v6

    goto :goto_1d0

    .line 474
    .end local v3    # "length":I
    .end local v6    # "index":I
    .end local p1    # "ce32":I
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :pswitch_1e5
    move p1, v2

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .restart local p1    # "ce32":I
    iget-object p3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p3, v3}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 475
    iget-object p3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v0, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide v4

    invoke-virtual {p3, v0, v4, v5}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 476
    iget-object p3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v0, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v0, v7

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide v4

    invoke-virtual {p3, v0, v4, v5}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 477
    iget-object p3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, p3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v0, v3

    iput v0, p3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    .line 478
    return-void

    .line 471
    .end local p1    # "ce32":I
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :pswitch_210
    move p1, v2

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .restart local p1    # "ce32":I
    iget-object p3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 472
    return-void

    .line 468
    .end local p1    # "ce32":I
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :pswitch_21d
    move p1, v2

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .restart local p1    # "ce32":I
    iget-object p3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 469
    return-void

    .line 466
    .end local p1    # "ce32":I
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :pswitch_22a
    new-instance p3, Landroid/icu/util/ICUException;

    const-string v0, "internal program error: should be unreachable"

    invoke-direct {p3, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 638
    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .restart local p1    # "ce32":I
    :cond_232
    :goto_232
    move-object v1, v2

    move v2, p1

    goto/16 :goto_2

    .line 642
    .end local p1    # "ce32":I
    .restart local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "ce32":I
    :cond_236
    move p1, v2

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "d":Landroid/icu/impl/coll/CollationData;
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    .restart local p1    # "ce32":I
    iget-object p3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    .line 643
    return-void

    nop

    :pswitch_data_244
    .packed-switch 0x0
        :pswitch_22a
        :pswitch_21d
        :pswitch_210
        :pswitch_22a
        :pswitch_1e5
        :pswitch_1c0
        :pswitch_19f
        :pswitch_18b
        :pswitch_178
        :pswitch_110
        :pswitch_fc
        :pswitch_f2
        :pswitch_85
        :pswitch_42
        :pswitch_37
        :pswitch_19
    .end packed-switch
.end method

.method protected abstract blacklist backwardNumCodePoints(I)V
.end method

.method final blacklist clearCEs()V
    .registers 3

    .line 358
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 359
    return-void
.end method

.method public final blacklist clearCEsIfNoneRemaining()V
    .registers 3

    .line 362
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->clearCEs()V

    .line 363
    :cond_b
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 209
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 210
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 211
    :cond_13
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/coll/CollationIterator;

    .line 212
    .local v1, "o":Landroid/icu/impl/coll/CollationIterator;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v2, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iget-object v3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v3, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v2, v3, :cond_50

    iget v2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget v3, v1, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    if-ne v2, v3, :cond_50

    iget v2, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    iget v3, v1, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-ne v2, v3, :cond_50

    iget-boolean v2, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    iget-boolean v3, v1, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    if-eq v2, v3, :cond_33

    goto :goto_50

    .line 218
    :cond_33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v3, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v2, v3, :cond_4e

    .line 219
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v3, v2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v3

    iget-object v5, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v5, v2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4b

    return v0

    .line 218
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 221
    .end local v2    # "i":I
    :cond_4e
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_50
    :goto_50
    return v0
.end method

.method public final blacklist fetchCEs()I
    .registers 5

    .line 290
    nop

    :goto_1
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v0

    const-wide v2, 0x101000100L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 292
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    goto :goto_1

    .line 294
    :cond_15
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return v0
.end method

.method protected blacklist forbidSurrogateCodePoints()Z
    .registers 2

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract blacklist forwardNumCodePoints(I)V
.end method

.method public final blacklist getCE(I)J
    .registers 4
    .param p1, "i"    # I

    .line 350
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected blacklist getCE32FromBuilderData(I)I
    .registers 4
    .param p1, "ce32"    # I

    .line 457
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v1, "internal program error: should be unreachable"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist getCEs()[J
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->getCEs()[J

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getCEsLength()I
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return v0
.end method

.method protected blacklist getDataCE32(I)I
    .registers 3
    .param p1, "c"    # I

    .line 453
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    return v0
.end method

.method public abstract blacklist getOffset()I
.end method

.method protected blacklist handleGetTrailSurrogate()C
    .registers 2

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist handleNextCE32()J
    .registers 4

    .line 407
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    .line 408
    .local v0, "c":I
    if-gez v0, :cond_c

    const-wide v1, -0xffffff40L

    return-wide v1

    .line 409
    :cond_c
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist makeCodePointAndCE32Pair(II)J
    .registers 9
    .param p1, "c"    # I
    .param p2, "ce32"    # I

    .line 412
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final blacklist nextCE()J
    .registers 15

    .line 243
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v0, v1, :cond_15

    .line 245
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v0

    return-wide v0

    .line 247
    :cond_15
    nop

    .line 248
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->incLength()V

    .line 249
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->handleNextCE32()J

    move-result-wide v0

    .line 250
    .local v0, "cAndCE32":J
    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    .line 251
    .local v3, "c":I
    long-to-int v4, v0

    .line 252
    .local v4, "ce32":I
    and-int/lit16 v5, v4, 0xff

    .line 253
    .local v5, "t":I
    const/16 v6, 0x10

    const v7, 0xff00

    const/high16 v8, -0x10000

    const/16 v9, 0xc0

    if-ge v5, v9, :cond_4c

    .line 256
    iget-object v9, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v10, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    and-int/2addr v8, v4

    int-to-long v11, v8

    shl-long/2addr v11, v2

    and-int v2, v4, v7

    int-to-long v7, v2

    shl-long v6, v7, v6

    or-long/2addr v6, v11

    shl-int/lit8 v2, v5, 0x8

    int-to-long v11, v2

    or-long/2addr v6, v11

    invoke-virtual {v9, v10, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v6

    return-wide v6

    .line 262
    :cond_4c
    if-ne v5, v9, :cond_88

    .line 263
    if-gez v3, :cond_62

    .line 264
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v6, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    const-wide v7, 0x101000100L

    invoke-virtual {v2, v6, v7, v8}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v6

    return-wide v6

    .line 266
    :cond_62
    iget-object v10, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v10, v10, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 267
    .local v10, "d":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {v10, v3}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v4

    .line 268
    and-int/lit16 v5, v4, 0xff

    .line 269
    if-ge v5, v9, :cond_8a

    .line 271
    iget-object v9, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v11, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    and-int/2addr v8, v4

    int-to-long v12, v8

    shl-long/2addr v12, v2

    and-int v2, v4, v7

    int-to-long v7, v2

    shl-long v6, v7, v6

    or-long/2addr v6, v12

    shl-int/lit8 v2, v5, 0x8

    int-to-long v12, v2

    or-long/2addr v6, v12

    invoke-virtual {v9, v11, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v6

    return-wide v6

    .line 275
    .end local v10    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_88
    iget-object v10, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    .line 277
    .restart local v10    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_8a
    const/16 v6, 0xc1

    if-ne v5, v6, :cond_a3

    .line 279
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    sub-int v8, v4, v5

    int-to-long v8, v8

    shl-long/2addr v8, v2

    const-wide/32 v11, 0x5000500

    or-long/2addr v8, v11

    invoke-virtual {v6, v7, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v6

    return-wide v6

    .line 282
    :cond_a3
    invoke-direct {p0, v10, v3, v4}, Landroid/icu/impl/coll/CollationIterator;->nextCEFromCE32(Landroid/icu/impl/coll/CollationData;II)J

    move-result-wide v6

    return-wide v6
.end method

.method public abstract blacklist nextCodePoint()I
.end method

.method public final blacklist previousCE(Landroid/icu/impl/coll/UVector32;)J
    .registers 10
    .param p1, "offsets"    # Landroid/icu/impl/coll/UVector32;

    .line 309
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/4 v1, 0x1

    if-lez v0, :cond_15

    .line 311
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v3, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v0

    return-wide v0

    .line 313
    :cond_15
    invoke-virtual {p1}, Landroid/icu/impl/coll/UVector32;->removeAllElements()V

    .line 314
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v0

    .line 315
    .local v0, "limitOffset":I
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result v2

    .line 316
    .local v2, "c":I
    if-gez v2, :cond_28

    const-wide v3, 0x101000100L

    return-wide v3

    .line 317
    :cond_28
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-boolean v4, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    invoke-virtual {v3, v2, v4}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 318
    invoke-direct {p0, v2, p1}, Landroid/icu/impl/coll/CollationIterator;->previousCEUnsafe(ILandroid/icu/impl/coll/UVector32;)J

    move-result-wide v3

    return-wide v3

    .line 322
    :cond_37
    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    .line 324
    .local v3, "ce32":I
    const/16 v4, 0xc0

    if-ne v3, v4, :cond_4a

    .line 325
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 326
    .local v4, "d":Landroid/icu/impl/coll/CollationData;
    invoke-virtual {v4, v2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    goto :goto_4c

    .line 328
    .end local v4    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_4a
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    .line 330
    .restart local v4    # "d":Landroid/icu/impl/coll/CollationData;
    :goto_4c
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->isSimpleOrLongCE32(I)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 331
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v5

    return-wide v5

    .line 333
    :cond_57
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v3, v5}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    .line 334
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-le v5, v1, :cond_76

    .line 335
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 338
    :goto_68
    invoke-virtual {p1}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v5

    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v6, v6, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-gt v5, v6, :cond_76

    .line 339
    invoke-virtual {p1, v0}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    goto :goto_68

    .line 342
    :cond_76
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v7, v6, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    sub-int/2addr v7, v1

    iput v7, v6, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-virtual {v5, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v5

    return-wide v5
.end method

.method public abstract blacklist previousCodePoint()I
.end method

.method protected final blacklist reset()V
    .registers 3

    .line 378
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 379
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    .line 380
    :cond_10
    return-void
.end method

.method protected final blacklist reset(Z)V
    .registers 3
    .param p1, "numeric"    # Z

    .line 389
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    if-nez v0, :cond_b

    .line 390
    new-instance v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    .line 392
    :cond_b
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->reset()V

    .line 393
    iput-boolean p1, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    .line 394
    return-void
.end method

.method public abstract blacklist resetToOffset(I)V
.end method

.method final blacklist setCurrentCE(J)V
    .registers 5
    .param p1, "ce"    # J

    .line 301
    nop

    .line 302
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 303
    return-void
.end method
