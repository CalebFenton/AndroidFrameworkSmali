.class public Landroid/icu/impl/UnicodeSetStringSpan;
.super Ljava/lang/Object;
.source "UnicodeSetStringSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;
    }
.end annotation


# static fields
.field public static final blacklist ALL:I = 0x7f

.field static final greylist-max-o ALL_CP_CONTAINED:S = 0xffs

.field public static final blacklist BACK:I = 0x10

.field public static final blacklist BACK_UTF16_CONTAINED:I = 0x12

.field public static final blacklist BACK_UTF16_NOT_CONTAINED:I = 0x11

.field public static final blacklist CONTAINED:I = 0x2

.field public static final blacklist FWD:I = 0x20

.field public static final blacklist FWD_UTF16_CONTAINED:I = 0x22

.field public static final blacklist FWD_UTF16_NOT_CONTAINED:I = 0x21

.field static final greylist-max-o LONG_SPAN:S = 0xfes

.field public static final blacklist NOT_CONTAINED:I = 0x1

.field public static final blacklist WITH_COUNT:I = 0x40


# instance fields
.field private greylist-max-o all:Z

.field private final greylist-max-o maxLength16:I

.field private greylist-max-o offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

.field private greylist-max-o someRelevant:Z

.field private greylist-max-o spanLengths:[S

.field private greylist-max-o spanNotSet:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o spanSet:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/UnicodeSetStringSpan;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "otherStringSpan"    # Landroid/icu/impl/UnicodeSetStringSpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/UnicodeSetStringSpan;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p2, "newParentSetStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    .line 224
    iput-object p2, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    .line 225
    iget v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    iput v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    .line 226
    iget-boolean v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    iput-boolean v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    .line 228
    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    iget-object v1, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 229
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    goto :goto_2d

    .line 231
    :cond_23
    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    .line 233
    :goto_2d
    new-instance v0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-direct {v0}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    .line 235
    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    .line 236
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V
    .registers 21
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 88
    .local p2, "setStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Landroid/icu/text/UnicodeSet;

    const v3, 0x10ffff

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v2, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    .line 95
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    .line 96
    const/16 v3, 0x7f

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1d

    move v3, v5

    goto :goto_1e

    :cond_1d
    move v3, v4

    :goto_1e
    iput-boolean v3, v0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    .line 97
    iget-object v3, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v6, p1

    invoke-virtual {v3, v6}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 98
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2f

    .line 101
    iget-object v3, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    iput-object v3, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    .line 103
    :cond_2f
    new-instance v3, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-direct {v3}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;-><init>()V

    iput-object v3, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    .line 112
    iget-object v3, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 115
    .local v3, "stringsLength":I
    const/4 v7, 0x0

    .line 116
    .local v7, "maxLength16":I
    iput-boolean v4, v0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    .line 117
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_40
    if-ge v8, v3, :cond_6b

    .line 118
    iget-object v9, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 119
    .local v9, "string":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 120
    .local v10, "length16":I
    if-nez v10, :cond_58

    .line 122
    iget-object v11, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    add-int/lit8 v3, v3, -0x1

    .line 124
    goto :goto_40

    .line 126
    :cond_58
    iget-object v11, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v12, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v11, v9, v12}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v11

    .line 127
    .local v11, "spanLength":I
    if-ge v11, v10, :cond_64

    .line 128
    iput-boolean v5, v0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    .line 130
    :cond_64
    if-le v10, v7, :cond_67

    .line 131
    move v7, v10

    .line 133
    :cond_67
    nop

    .end local v9    # "string":Ljava/lang/String;
    .end local v10    # "length16":I
    add-int/lit8 v8, v8, 0x1

    .line 134
    goto :goto_40

    .line 135
    .end local v11    # "spanLength":I
    :cond_6b
    iput v7, v0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    .line 136
    iget-boolean v5, v0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    if-nez v5, :cond_76

    and-int/lit8 v5, v1, 0x40

    if-nez v5, :cond_76

    .line 137
    return-void

    .line 142
    :cond_76
    iget-boolean v5, v0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v5, :cond_7f

    .line 143
    iget-object v5, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 150
    :cond_7f
    iget-boolean v5, v0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v5, :cond_86

    .line 152
    mul-int/lit8 v5, v3, 0x2

    .local v5, "allocSize":I
    goto :goto_87

    .line 154
    .end local v5    # "allocSize":I
    :cond_86
    move v5, v3

    .line 156
    .restart local v5    # "allocSize":I
    :goto_87
    new-array v9, v5, [S

    iput-object v9, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    .line 158
    iget-boolean v9, v0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v9, :cond_91

    .line 160
    move v9, v3

    .local v9, "spanBackLengthsOffset":I
    goto :goto_92

    .line 163
    .end local v9    # "spanBackLengthsOffset":I
    :cond_91
    const/4 v9, 0x0

    .line 168
    .restart local v9    # "spanBackLengthsOffset":I
    :goto_92
    const/4 v8, 0x0

    :goto_93
    if-ge v8, v3, :cond_111

    .line 169
    iget-object v10, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 170
    .local v10, "string":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 171
    .local v11, "length16":I
    iget-object v12, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v13, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v12, v10, v13}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v12

    .line 172
    .local v12, "spanLength":I
    if-ge v12, v11, :cond_f9

    .line 174
    and-int/lit8 v13, v1, 0x2

    if-eqz v13, :cond_d4

    .line 175
    and-int/lit8 v13, v1, 0x20

    if-eqz v13, :cond_bb

    .line 176
    iget-object v13, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    invoke-static {v12}, Landroid/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    move-result v14

    aput-short v14, v13, v8

    .line 178
    :cond_bb
    and-int/lit8 v13, v1, 0x10

    if-eqz v13, :cond_de

    .line 179
    iget-object v13, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v14, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 180
    invoke-virtual {v13, v10, v11, v14}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v13

    sub-int v12, v11, v13

    .line 181
    iget-object v13, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v14, v9, v8

    invoke-static {v12}, Landroid/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    move-result v15

    aput-short v15, v13, v14

    goto :goto_de

    .line 184
    :cond_d4
    iget-object v13, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    iget-object v14, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v15, v9, v8

    aput-short v4, v14, v15

    aput-short v4, v13, v8

    .line 188
    :cond_de
    :goto_de
    and-int/lit8 v13, v1, 0x1

    if-eqz v13, :cond_10e

    .line 192
    and-int/lit8 v13, v1, 0x20

    if-eqz v13, :cond_ed

    .line 193
    invoke-virtual {v10, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    .line 194
    .local v13, "c":I
    invoke-direct {v0, v13}, Landroid/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    .line 196
    .end local v13    # "c":I
    :cond_ed
    and-int/lit8 v13, v1, 0x10

    if-eqz v13, :cond_f8

    .line 197
    invoke-virtual {v10, v11}, Ljava/lang/String;->codePointBefore(I)I

    move-result v13

    .line 198
    .restart local v13    # "c":I
    invoke-direct {v0, v13}, Landroid/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    .line 200
    .end local v13    # "c":I
    :cond_f8
    goto :goto_10e

    .line 202
    :cond_f9
    iget-boolean v13, v0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    const/16 v14, 0xff

    if-eqz v13, :cond_10a

    .line 203
    iget-object v13, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    iget-object v15, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v16, v9, v8

    aput-short v14, v15, v16

    aput-short v14, v13, v8

    goto :goto_10e

    .line 206
    :cond_10a
    iget-object v13, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aput-short v14, v13, v8

    .line 168
    .end local v10    # "string":Ljava/lang/String;
    .end local v11    # "length16":I
    :cond_10e
    :goto_10e
    add-int/lit8 v8, v8, 0x1

    goto :goto_93

    .line 212
    .end local v12    # "spanLength":I
    :cond_111
    iget-boolean v4, v0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v4, :cond_11a

    .line 213
    iget-object v4, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 215
    :cond_11a
    return-void
.end method

.method private greylist-max-o addToSpanNotSet(I)V
    .registers 4
    .param p1, "c"    # I

    .line 258
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 259
    :cond_13
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 260
    return-void

    .line 262
    :cond_1c
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    .line 264
    :cond_24
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 265
    return-void
.end method

.method static greylist-max-o makeSpanLengthByte(I)S
    .registers 2
    .param p0, "spanLength"    # I

    .line 947
    const/16 v0, 0xfe

    if-ge p0, v0, :cond_5

    int-to-short v0, p0

    :cond_5
    return v0
.end method

.method private static greylist-max-o matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z
    .registers 7
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "t"    # Ljava/lang/String;
    .param p3, "length"    # I

    .line 952
    add-int v0, p1, p3

    .line 953
    .local v0, "end":I
    :goto_2
    add-int/lit8 v1, p3, -0x1

    .end local p3    # "length":I
    .local v1, "length":I
    if-lez p3, :cond_16

    .line 954
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq p3, v2, :cond_14

    .line 955
    const/4 p3, 0x0

    return p3

    .line 954
    :cond_14
    move p3, v1

    goto :goto_2

    .line 958
    :cond_16
    const/4 p3, 0x1

    return p3
.end method

.method static greylist-max-o matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    .registers 7
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "t"    # Ljava/lang/String;
    .param p4, "tlength"    # I

    .line 972
    invoke-static {p0, p1, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-lez p1, :cond_1e

    add-int/lit8 v0, p1, -0x1

    .line 973
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 974
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_1e
    add-int v0, p1, p4

    const/4 v1, 0x1

    if-ge v0, p2, :cond_3c

    add-int v0, p1, p4

    sub-int/2addr v0, v1

    .line 975
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3c

    add-int v0, p1, p4

    .line 976
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_3c
    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    .line 972
    :goto_3e
    return v1
.end method

.method private declared-synchronized greylist-max-o spanContainedAndCount(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I
    .registers 15
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "outCount"    # Landroid/icu/util/OutputInt;

    monitor-enter p0

    .line 611
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    .line 612
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 613
    .local v0, "stringsLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 614
    .local v1, "length":I
    move v2, p2

    .line 615
    .local v2, "pos":I
    sub-int v3, v1, p2

    .line 616
    .local v3, "rest":I
    const/4 v4, 0x0

    .line 617
    .local v4, "count":I
    :goto_16
    if-eqz v3, :cond_6a

    .line 619
    iget-object v5, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v5, p1, v2, v3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v5

    .line 620
    .local v5, "cpLength":I
    if-lez v5, :cond_27

    .line 621
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V

    .line 624
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_27
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_28
    if-ge v6, v0, :cond_52

    .line 625
    iget-object v7, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 626
    .local v7, "string":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 629
    .local v8, "length16":I
    if-gt v8, v3, :cond_4f

    iget-object v9, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->hasCountAtOffset(II)Z

    move-result v9

    if-nez v9, :cond_4f

    .line 630
    invoke-static {p1, v2, v1, v7, v8}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 631
    iget-object v9, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V

    .line 624
    .end local v7    # "string":Ljava/lang/String;
    .end local v8    # "length16":I
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 635
    .end local v6    # "i":I
    :cond_52
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v6}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 636
    iput v4, p3, Landroid/icu/util/OutputInt;->value:I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_6e

    .line 637
    monitor-exit p0

    return v2

    .line 640
    :cond_5e
    :try_start_5e
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v6, p3}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Landroid/icu/util/OutputInt;)I

    move-result v6

    .line 641
    .local v6, "minOffset":I
    iget v7, p3, Landroid/icu/util/OutputInt;->value:I

    move v4, v7

    .line 642
    add-int/2addr v2, v6

    .line 643
    sub-int/2addr v3, v6

    .line 644
    .end local v5    # "cpLength":I
    .end local v6    # "minOffset":I
    goto :goto_16

    .line 645
    :cond_6a
    iput v4, p3, Landroid/icu/util/OutputInt;->value:I
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_6e

    .line 646
    monitor-exit p0

    return v2

    .line 610
    .end local v0    # "stringsLength":I
    .end local v1    # "length":I
    .end local v2    # "pos":I
    .end local v3    # "rest":I
    .end local v4    # "count":I
    .end local p1    # "s":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "outCount":Landroid/icu/util/OutputInt;
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1
.end method

.method private greylist-max-o spanNot(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I
    .registers 15
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "outCount"    # Landroid/icu/util/OutputInt;

    .line 850
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 851
    .local v0, "length":I
    move v1, p2

    .local v1, "pos":I
    sub-int v2, v0, p2

    .line 852
    .local v2, "rest":I
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 853
    .local v3, "stringsLength":I
    const/4 v4, 0x0

    .line 858
    .local v4, "count":I
    :cond_e
    if-nez p3, :cond_19

    .line 859
    iget-object v5, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    sget-object v6, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v5, p1, v1, v6}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    .local v5, "spanLimit":I
    goto :goto_27

    .line 861
    .end local v5    # "spanLimit":I
    :cond_19
    iget-object v5, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    sget-object v6, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v5, p1, v1, v6, p3}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v5

    .line 862
    .restart local v5    # "spanLimit":I
    iget v6, p3, Landroid/icu/util/OutputInt;->value:I

    add-int/2addr v6, v4

    move v4, v6

    iput v6, p3, Landroid/icu/util/OutputInt;->value:I

    .line 864
    :goto_27
    if-ne v5, v0, :cond_2a

    .line 865
    return v0

    .line 867
    :cond_2a
    move v1, v5

    .line 868
    sub-int v2, v0, v5

    .line 872
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v6, p1, v1, v2}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v6

    .line 873
    .local v6, "cpLength":I
    if-lez v6, :cond_36

    .line 874
    return v1

    .line 878
    :cond_36
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_37
    if-ge v7, v3, :cond_5a

    .line 879
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v8, v8, v7

    const/16 v9, 0xff

    if-ne v8, v9, :cond_42

    .line 880
    goto :goto_57

    .line 882
    :cond_42
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 884
    .local v8, "string":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 885
    .local v9, "length16":I
    if-gt v9, v2, :cond_57

    invoke-static {p1, v1, v0, v8, v9}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_57

    .line 886
    return v1

    .line 878
    .end local v8    # "string":Ljava/lang/String;
    .end local v9    # "length16":I
    :cond_57
    :goto_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 893
    .end local v7    # "i":I
    :cond_5a
    sub-int/2addr v1, v6

    .line 894
    add-int/2addr v2, v6

    .line 895
    nop

    .end local v5    # "spanLimit":I
    .end local v6    # "cpLength":I
    add-int/lit8 v4, v4, 0x1

    .line 896
    if-nez v2, :cond_e

    .line 897
    if-eqz p3, :cond_65

    .line 898
    iput v4, p3, Landroid/icu/util/OutputInt;->value:I

    .line 900
    :cond_65
    return v0
.end method

.method private greylist-max-o spanNotBack(Ljava/lang/CharSequence;I)I
    .registers 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .line 904
    move v0, p2

    .line 905
    .local v0, "pos":I
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 909
    .local v1, "stringsLength":I
    :cond_7
    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v2, p1, v0, v3}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    .line 910
    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 911
    return v2

    .line 916
    :cond_13
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v3, p1, v0}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOneBack(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 917
    .local v3, "cpLength":I
    if-lez v3, :cond_1c

    .line 918
    return v0

    .line 922
    :cond_1c
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v1, :cond_42

    .line 926
    iget-object v5, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v5, v5, v4

    const/16 v6, 0xff

    if-ne v5, v6, :cond_28

    .line 927
    goto :goto_3f

    .line 929
    :cond_28
    iget-object v5, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 931
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 932
    .local v6, "length16":I
    if-gt v6, v0, :cond_3f

    sub-int v7, v0, v6

    invoke-static {p1, v7, p2, v5, v6}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 933
    return v0

    .line 922
    .end local v5    # "string":Ljava/lang/String;
    .end local v6    # "length16":I
    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 940
    :cond_42
    add-int/2addr v0, v3

    .line 941
    .end local v3    # "cpLength":I
    if-nez v0, :cond_7

    .line 942
    return v2
.end method

.method static greylist-max-o spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I
    .registers 9
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 984
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 985
    .local v0, "c":C
    const v1, 0xd800

    if-lt v0, v1, :cond_2a

    const v1, 0xdbff

    if-gt v0, v1, :cond_2a

    const/4 v1, 0x2

    if-lt p3, v1, :cond_2a

    .line 986
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 987
    .local v2, "c2":C
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 988
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 989
    .local v3, "supplementary":I
    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, -0x2

    :goto_29
    return v1

    .line 992
    .end local v2    # "c2":C
    .end local v3    # "supplementary":I
    :cond_2a
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, -0x1

    :goto_33
    return v1
.end method

.method static greylist-max-o spanOneBack(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I
    .registers 8
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .line 996
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 997
    .local v0, "c":C
    const v1, 0xdc00

    if-lt v0, v1, :cond_2c

    const v1, 0xdfff

    if-gt v0, v1, :cond_2c

    const/4 v1, 0x2

    if-lt p2, v1, :cond_2c

    .line 998
    add-int/lit8 v2, p2, -0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 999
    .local v2, "c2":C
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1000
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 1001
    .local v3, "supplementary":I
    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, -0x2

    :goto_2b
    return v1

    .line 1004
    .end local v2    # "c2":C
    .end local v3    # "supplementary":I
    :cond_2c
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, -0x1

    :goto_35
    return v1
.end method

.method private declared-synchronized greylist-max-o spanWithStrings(Ljava/lang/CharSequence;IILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .registers 23
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanLimit"    # I
    .param p4, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    monitor-enter p0

    .line 398
    const/4 v3, 0x0

    .line 399
    .local v3, "initSize":I
    :try_start_8
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v2, v4, :cond_f

    .line 401
    iget v4, v1, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    move v3, v4

    .line 403
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_f
    iget-object v4, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v4, v3}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    .line 404
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 405
    .local v4, "length":I
    move/from16 v5, p3

    .local v5, "pos":I
    sub-int v6, v4, p3

    .line 406
    .local v6, "rest":I
    sub-int v7, p3, p2

    .line 407
    .local v7, "spanLength":I
    iget-object v8, v1, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v7

    move v7, v6

    move v6, v5

    move/from16 v5, p3

    .line 409
    .end local p3    # "spanLimit":I
    .local v5, "spanLimit":I
    .local v6, "pos":I
    .local v7, "rest":I
    .local v8, "stringsLength":I
    .local v9, "spanLength":I
    :goto_29
    sget-object v10, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/16 v11, 0xfe

    if-ne v2, v10, :cond_80

    .line 410
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_30
    if-ge v10, v8, :cond_d5

    .line 411
    iget-object v12, v1, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v12, v12, v10

    .line 412
    .local v12, "overlap":I
    const/16 v13, 0xff

    if-ne v12, v13, :cond_3b

    .line 413
    goto :goto_74

    .line 415
    :cond_3b
    iget-object v13, v1, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 417
    .local v13, "string":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 420
    .local v14, "length16":I
    if-lt v12, v11, :cond_50

    .line 421
    move v12, v14

    .line 423
    const/4 v15, -0x1

    invoke-virtual {v13, v12, v15}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v15

    move v12, v15

    .line 426
    :cond_50
    if-le v12, v9, :cond_53

    .line 427
    move v12, v9

    .line 429
    :cond_53
    sub-int v15, v14, v12

    .line 431
    .local v15, "inc":I
    :goto_55
    if-le v15, v7, :cond_58

    .line 432
    goto :goto_74

    .line 435
    :cond_58
    iget-object v11, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v11, v15}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    move-result v11

    if-nez v11, :cond_71

    sub-int v11, v6, v12

    invoke-static {v0, v11, v4, v13, v14}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v11
    :try_end_66
    .catchall {:try_start_8 .. :try_end_66} :catchall_136

    if-eqz v11, :cond_71

    .line 436
    if-ne v15, v7, :cond_6c

    .line 437
    monitor-exit p0

    return v4

    .line 439
    .restart local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_6c
    :try_start_6c
    iget-object v11, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v11, v15}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    .line 441
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_71
    if-nez v12, :cond_79

    .line 442
    nop

    .line 410
    .end local v12    # "overlap":I
    .end local v13    # "string":Ljava/lang/String;
    .end local v14    # "length16":I
    .end local v15    # "inc":I
    :goto_74
    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0xfe

    goto :goto_30

    .line 444
    .restart local v12    # "overlap":I
    .restart local v13    # "string":Ljava/lang/String;
    .restart local v14    # "length16":I
    .restart local v15    # "inc":I
    :cond_79
    add-int/lit8 v12, v12, -0x1

    .line 445
    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0xfe

    goto :goto_55

    .line 449
    .end local v10    # "i":I
    .end local v12    # "overlap":I
    .end local v13    # "string":Ljava/lang/String;
    .end local v14    # "length16":I
    .end local v15    # "inc":I
    :cond_80
    const/4 v10, 0x0

    .local v10, "maxInc":I
    const/4 v11, 0x0

    .line 450
    .local v11, "maxOverlap":I
    const/4 v12, 0x0

    move/from16 v17, v11

    move v11, v10

    move v10, v12

    move/from16 v12, v17

    .local v10, "i":I
    .local v11, "maxInc":I
    .local v12, "maxOverlap":I
    :goto_89
    if-ge v10, v8, :cond_d0

    .line 451
    iget-object v13, v1, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v13, v13, v10

    .line 455
    .local v13, "overlap":I
    iget-object v14, v1, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 457
    .local v14, "string":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 460
    .local v15, "length16":I
    const/16 v2, 0xfe

    if-lt v13, v2, :cond_a0

    .line 461
    move v13, v15

    .line 465
    :cond_a0
    if-le v13, v9, :cond_a3

    .line 466
    move v13, v9

    .line 468
    :cond_a3
    sub-int v16, v15, v13

    move/from16 v2, v16

    .line 470
    .local v2, "inc":I
    :goto_a7
    if-gt v2, v7, :cond_c9

    if-ge v13, v12, :cond_ac

    .line 471
    goto :goto_cb

    .line 474
    :cond_ac
    if-gt v13, v12, :cond_b4

    if-le v2, v11, :cond_b1

    goto :goto_b4

    :cond_b1
    move/from16 v16, v2

    goto :goto_c4

    :cond_b4
    :goto_b4
    move/from16 v16, v2

    .end local v2    # "inc":I
    .local v16, "inc":I
    sub-int v2, v6, v13

    .line 475
    invoke-static {v0, v2, v4, v14, v15}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 476
    move/from16 v2, v16

    .line 477
    .end local v11    # "maxInc":I
    .local v2, "maxInc":I
    move v11, v13

    .line 478
    .end local v12    # "maxOverlap":I
    .local v11, "maxOverlap":I
    move v12, v11

    move v11, v2

    goto :goto_cb

    .line 480
    .end local v2    # "maxInc":I
    .local v11, "maxInc":I
    .restart local v12    # "maxOverlap":I
    :cond_c4
    :goto_c4
    add-int/lit8 v13, v13, -0x1

    .line 481
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "inc":I
    .local v2, "inc":I
    goto :goto_a7

    .line 470
    :cond_c9
    move/from16 v16, v2

    .line 450
    .end local v2    # "inc":I
    .end local v13    # "overlap":I
    .end local v14    # "string":Ljava/lang/String;
    .end local v15    # "length16":I
    :goto_cb
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p4

    goto :goto_89

    .line 485
    :cond_d0
    if-nez v11, :cond_12b

    if-eqz v12, :cond_d5

    goto :goto_12b

    .line 499
    .end local v11    # "maxInc":I
    .end local v12    # "maxOverlap":I
    :cond_d5
    if-nez v9, :cond_113

    if-nez v6, :cond_da

    goto :goto_113

    .line 511
    :cond_da
    iget-object v2, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v2}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 514
    iget-object v2, v1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v11, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v2, v0, v6, v11}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2
    :try_end_ea
    .catchall {:try_start_6c .. :try_end_ea} :catchall_136

    move v5, v2

    .line 515
    sub-int v9, v5, v6

    .line 516
    if-eq v9, v7, :cond_f8

    if-nez v9, :cond_f2

    goto :goto_f8

    .line 521
    :cond_f2
    add-int/2addr v6, v9

    .line 522
    sub-int/2addr v7, v9

    .line 523
    move-object/from16 v2, p4

    goto/16 :goto_29

    .line 519
    :cond_f8
    :goto_f8
    monitor-exit p0

    return v5

    .line 528
    :cond_fa
    :try_start_fa
    iget-object v2, v1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v2, v0, v6, v7}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v2
    :try_end_100
    .catchall {:try_start_fa .. :try_end_100} :catchall_136

    move v9, v2

    .line 529
    if-lez v9, :cond_11d

    .line 530
    if-ne v9, v7, :cond_107

    .line 531
    monitor-exit p0

    return v4

    .line 536
    .restart local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_107
    add-int/2addr v6, v9

    .line 537
    sub-int/2addr v7, v9

    .line 538
    :try_start_109
    iget-object v2, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v2, v9}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    .line 539
    const/4 v9, 0x0

    .line 540
    move-object/from16 v2, p4

    goto/16 :goto_29

    .line 505
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_113
    :goto_113
    iget-object v2, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v2}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v2
    :try_end_119
    .catchall {:try_start_109 .. :try_end_119} :catchall_136

    if-eqz v2, :cond_11d

    .line 506
    monitor-exit p0

    return v6

    .line 545
    .restart local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_11d
    :try_start_11d
    iget-object v2, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Landroid/icu/util/OutputInt;)I

    move-result v2
    :try_end_124
    .catchall {:try_start_11d .. :try_end_124} :catchall_136

    .line 546
    .local v2, "minOffset":I
    add-int/2addr v6, v2

    .line 547
    sub-int/2addr v7, v2

    .line 548
    const/4 v9, 0x0

    .line 549
    .end local v2    # "minOffset":I
    move-object/from16 v2, p4

    goto/16 :goto_29

    .line 488
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    .restart local v11    # "maxInc":I
    .restart local v12    # "maxOverlap":I
    :cond_12b
    :goto_12b
    add-int/2addr v6, v11

    .line 489
    sub-int/2addr v7, v11

    .line 490
    if-nez v7, :cond_131

    .line 491
    monitor-exit p0

    return v4

    .line 493
    .restart local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_131
    const/4 v9, 0x0

    .line 494
    move-object/from16 v2, p4

    goto/16 :goto_29

    .line 397
    .end local v3    # "initSize":I
    .end local v4    # "length":I
    .end local v5    # "spanLimit":I
    .end local v6    # "pos":I
    .end local v7    # "rest":I
    .end local v8    # "stringsLength":I
    .end local v9    # "spanLength":I
    .end local v10    # "i":I
    .end local v11    # "maxInc":I
    .end local v12    # "maxOverlap":I
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    .end local p1    # "s":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p4    # "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    :catchall_136
    move-exception v0

    :try_start_137
    monitor-exit p0
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    throw v0
.end method


# virtual methods
.method public blacklist contains(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 250
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public blacklist needsStringSpanUTF16()Z
    .registers 2

    .line 245
    iget-boolean v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    return v0
.end method

.method public blacklist span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 379
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_a

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I

    move-result v0

    return v0

    .line 382
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v0, p1, p2, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    .line 383
    .local v0, "spanLimit":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 384
    return v0

    .line 386
    :cond_19
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanWithStrings(Ljava/lang/CharSequence;IILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    return v1
.end method

.method public blacklist spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .registers 16
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;
    .param p4, "outCount"    # Landroid/icu/util/OutputInt;

    .line 568
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_9

    .line 569
    invoke-direct {p0, p1, p2, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I

    move-result v0

    return v0

    .line 573
    :cond_9
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_12

    .line 574
    invoke-direct {p0, p1, p2, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanContainedAndCount(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I

    move-result v0

    return v0

    .line 577
    :cond_12
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 578
    .local v0, "stringsLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 579
    .local v1, "length":I
    move v2, p2

    .line 580
    .local v2, "pos":I
    sub-int v3, v1, p2

    .line 581
    .local v3, "rest":I
    const/4 v4, 0x0

    .line 582
    .local v4, "count":I
    :goto_20
    if-eqz v3, :cond_54

    .line 584
    iget-object v5, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v5, p1, v2, v3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v5

    .line 585
    .local v5, "cpLength":I
    if-lez v5, :cond_2c

    move v6, v5

    goto :goto_2d

    :cond_2c
    const/4 v6, 0x0

    .line 587
    .local v6, "maxInc":I
    :goto_2d
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2e
    if-ge v7, v0, :cond_4a

    .line 588
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 589
    .local v8, "string":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 590
    .local v9, "length16":I
    if-ge v6, v9, :cond_47

    if-gt v9, v3, :cond_47

    .line 591
    invoke-static {p1, v2, v1, v8, v9}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 592
    move v6, v9

    .line 587
    .end local v8    # "string":Ljava/lang/String;
    .end local v9    # "length16":I
    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 596
    .end local v7    # "i":I
    :cond_4a
    if-nez v6, :cond_4f

    .line 597
    iput v4, p4, Landroid/icu/util/OutputInt;->value:I

    .line 598
    return v2

    .line 601
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    .line 602
    add-int/2addr v2, v6

    .line 603
    sub-int/2addr v3, v6

    .line 604
    .end local v5    # "cpLength":I
    .end local v6    # "maxInc":I
    goto :goto_20

    .line 605
    :cond_54
    iput v4, p4, Landroid/icu/util/OutputInt;->value:I

    .line 606
    return v2
.end method

.method public declared-synchronized blacklist spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .registers 23
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 657
    :try_start_9
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v3, v4, :cond_13

    .line 658
    invoke-direct/range {p0 .. p2}, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotBack(Ljava/lang/CharSequence;I)I

    move-result v4
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_152

    monitor-exit p0

    return v4

    .line 660
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_13
    :try_start_13
    iget-object v4, v1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v4, v0, v2, v5}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v4
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_152

    .line 661
    .local v4, "pos":I
    const/4 v5, 0x0

    if-nez v4, :cond_20

    .line 662
    monitor-exit p0

    return v5

    .line 664
    .restart local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_20
    sub-int v6, v2, v4

    .line 667
    .local v6, "spanLength":I
    const/4 v7, 0x0

    .line 668
    .local v7, "initSize":I
    :try_start_23
    sget-object v8, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v3, v8, :cond_2a

    .line 670
    iget v8, v1, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    move v7, v8

    .line 672
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_2a
    iget-object v8, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v8, v7}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    .line 673
    iget-object v8, v1, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 674
    .local v8, "stringsLength":I
    const/4 v9, 0x0

    .line 675
    .local v9, "spanBackLengthsOffset":I
    iget-boolean v10, v1, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v10, :cond_3b

    .line 676
    move v9, v8

    .line 679
    :cond_3b
    :goto_3b
    sget-object v10, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/16 v11, 0xfe

    if-ne v3, v10, :cond_97

    .line 680
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_42
    if-ge v10, v8, :cond_93

    .line 681
    iget-object v12, v1, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v13, v9, v10

    aget-short v12, v12, v13

    .line 682
    .local v12, "overlap":I
    const/16 v13, 0xff

    if-ne v12, v13, :cond_4f

    .line 683
    goto :goto_89

    .line 685
    :cond_4f
    iget-object v13, v1, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 687
    .local v13, "string":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 690
    .local v14, "length16":I
    if-lt v12, v11, :cond_65

    .line 691
    move v12, v14

    .line 693
    const/4 v15, 0x0

    .line 694
    .local v15, "len1":I
    const/4 v11, 0x1

    invoke-virtual {v13, v5, v11}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v11

    .line 695
    .end local v15    # "len1":I
    .local v11, "len1":I
    sub-int/2addr v12, v11

    .line 697
    .end local v11    # "len1":I
    :cond_65
    if-le v12, v6, :cond_68

    .line 698
    move v12, v6

    .line 700
    :cond_68
    sub-int v11, v14, v12

    .line 702
    .local v11, "dec":I
    :goto_6a
    if-le v11, v4, :cond_6d

    .line 703
    goto :goto_89

    .line 706
    :cond_6d
    iget-object v15, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v15, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    move-result v15

    if-nez v15, :cond_86

    sub-int v15, v4, v11

    invoke-static {v0, v15, v2, v13, v14}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v15
    :try_end_7b
    .catchall {:try_start_23 .. :try_end_7b} :catchall_152

    if-eqz v15, :cond_86

    .line 707
    if-ne v11, v4, :cond_81

    .line 708
    monitor-exit p0

    return v5

    .line 710
    .restart local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_81
    :try_start_81
    iget-object v15, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v15, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    .line 712
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_86
    if-nez v12, :cond_8e

    .line 713
    nop

    .line 680
    .end local v11    # "dec":I
    .end local v12    # "overlap":I
    .end local v13    # "string":Ljava/lang/String;
    .end local v14    # "length16":I
    :goto_89
    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0xfe

    goto :goto_42

    .line 715
    .restart local v11    # "dec":I
    .restart local v12    # "overlap":I
    .restart local v13    # "string":Ljava/lang/String;
    .restart local v14    # "length16":I
    :cond_8e
    add-int/lit8 v12, v12, -0x1

    .line 716
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    .line 680
    .end local v11    # "dec":I
    .end local v12    # "overlap":I
    .end local v13    # "string":Ljava/lang/String;
    .end local v14    # "length16":I
    :cond_93
    move/from16 v17, v5

    goto/16 :goto_ed

    .line 720
    .end local v10    # "i":I
    :cond_97
    const/4 v10, 0x0

    .local v10, "maxDec":I
    const/4 v11, 0x0

    .line 721
    .local v11, "maxOverlap":I
    const/4 v12, 0x0

    move/from16 v18, v11

    move v11, v10

    move v10, v12

    move/from16 v12, v18

    .local v10, "i":I
    .local v11, "maxDec":I
    .local v12, "maxOverlap":I
    :goto_a0
    if-ge v10, v8, :cond_e6

    .line 722
    iget-object v13, v1, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v14, v9, v10

    aget-short v13, v13, v14

    .line 726
    .local v13, "overlap":I
    iget-object v14, v1, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 728
    .local v14, "string":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 731
    .local v15, "length16":I
    move/from16 v17, v5

    const/16 v5, 0xfe

    if-lt v13, v5, :cond_bb

    .line 732
    move v13, v15

    .line 736
    :cond_bb
    if-le v13, v6, :cond_be

    .line 737
    move v13, v6

    .line 739
    :cond_be
    sub-int v16, v15, v13

    move/from16 v5, v16

    .line 741
    .local v5, "dec":I
    :goto_c2
    if-gt v5, v4, :cond_df

    if-ge v13, v12, :cond_c7

    .line 742
    goto :goto_df

    .line 745
    :cond_c7
    if-gt v13, v12, :cond_cb

    if-le v5, v11, :cond_d8

    :cond_cb
    sub-int v3, v4, v5

    .line 746
    invoke-static {v0, v3, v2, v14, v15}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 747
    move v3, v5

    .line 748
    .end local v11    # "maxDec":I
    .local v3, "maxDec":I
    move v11, v13

    .line 749
    .end local v12    # "maxOverlap":I
    .local v11, "maxOverlap":I
    move v12, v11

    move v11, v3

    goto :goto_df

    .line 751
    .end local v3    # "maxDec":I
    .local v11, "maxDec":I
    .restart local v12    # "maxOverlap":I
    :cond_d8
    add-int/lit8 v13, v13, -0x1

    .line 752
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p3

    goto :goto_c2

    .line 721
    .end local v5    # "dec":I
    .end local v13    # "overlap":I
    .end local v14    # "string":Ljava/lang/String;
    .end local v15    # "length16":I
    :cond_df
    :goto_df
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p3

    move/from16 v5, v17

    goto :goto_a0

    .line 756
    :cond_e6
    move/from16 v17, v5

    if-nez v11, :cond_146

    if-eqz v12, :cond_ed

    goto :goto_146

    .line 769
    .end local v11    # "maxDec":I
    .end local v12    # "maxOverlap":I
    :cond_ed
    :goto_ed
    if-nez v6, :cond_12d

    if-ne v4, v2, :cond_f2

    goto :goto_12d

    .line 781
    :cond_f2
    iget-object v3, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v3}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_113

    .line 784
    move v3, v4

    .line 785
    .local v3, "oldPos":I
    iget-object v5, v1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v11, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v5, v0, v3, v11}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5
    :try_end_103
    .catchall {:try_start_81 .. :try_end_103} :catchall_152

    move v4, v5

    .line 786
    sub-int v6, v3, v4

    .line 787
    if-eqz v4, :cond_111

    if-nez v6, :cond_10b

    goto :goto_111

    :cond_10b
    move-object/from16 v3, p3

    move/from16 v5, v17

    goto/16 :goto_3b

    .line 790
    :cond_111
    :goto_111
    monitor-exit p0

    return v4

    .line 797
    .end local v3    # "oldPos":I
    :cond_113
    :try_start_113
    iget-object v3, v1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v3, v0, v4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOneBack(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I

    move-result v3
    :try_end_119
    .catchall {:try_start_113 .. :try_end_119} :catchall_152

    move v6, v3

    .line 798
    if-lez v6, :cond_137

    .line 799
    if-ne v6, v4, :cond_120

    .line 800
    monitor-exit p0

    return v17

    .line 805
    .restart local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_120
    sub-int/2addr v4, v6

    .line 806
    :try_start_121
    iget-object v3, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v3, v6}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    .line 807
    const/4 v6, 0x0

    .line 808
    move-object/from16 v3, p3

    move/from16 v5, v17

    goto/16 :goto_3b

    .line 775
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_12d
    :goto_12d
    iget-object v3, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v3}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v3
    :try_end_133
    .catchall {:try_start_121 .. :try_end_133} :catchall_152

    if-eqz v3, :cond_137

    .line 776
    monitor-exit p0

    return v4

    .line 813
    .restart local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_137
    :try_start_137
    iget-object v3, v1, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Landroid/icu/util/OutputInt;)I

    move-result v3
    :try_end_13e
    .catchall {:try_start_137 .. :try_end_13e} :catchall_152

    sub-int/2addr v4, v3

    .line 814
    const/4 v6, 0x0

    move-object/from16 v3, p3

    move/from16 v5, v17

    goto/16 :goto_3b

    .line 759
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    .restart local v11    # "maxDec":I
    .restart local v12    # "maxOverlap":I
    :cond_146
    :goto_146
    sub-int/2addr v4, v11

    .line 760
    if-nez v4, :cond_14b

    .line 761
    monitor-exit p0

    return v17

    .line 763
    .restart local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_14b
    const/4 v6, 0x0

    .line 764
    move-object/from16 v3, p3

    move/from16 v5, v17

    goto/16 :goto_3b

    .line 656
    .end local v4    # "pos":I
    .end local v6    # "spanLength":I
    .end local v7    # "initSize":I
    .end local v8    # "stringsLength":I
    .end local v9    # "spanBackLengthsOffset":I
    .end local v10    # "i":I
    .end local v11    # "maxDec":I
    .end local v12    # "maxOverlap":I
    .end local p0    # "this":Landroid/icu/impl/UnicodeSetStringSpan;
    .end local p1    # "s":Ljava/lang/CharSequence;
    .end local p2    # "length":I
    .end local p3    # "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    :catchall_152
    move-exception v0

    :try_start_153
    monitor-exit p0
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    throw v0
.end method
