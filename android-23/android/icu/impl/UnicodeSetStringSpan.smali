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
.field public static final ALL:I = 0x7f

.field static final ALL_CP_CONTAINED:S = 0xffs

.field public static final BACK:I = 0x10

.field public static final BACK_UTF16_CONTAINED:I = 0x12

.field public static final BACK_UTF16_NOT_CONTAINED:I = 0x11

.field public static final CONTAINED:I = 0x2

.field public static final FWD:I = 0x20

.field public static final FWD_UTF16_CONTAINED:I = 0x22

.field public static final FWD_UTF16_NOT_CONTAINED:I = 0x21

.field static final LONG_SPAN:S = 0xfes

.field public static final NOT_CONTAINED:I = 0x1

.field public static final WITH_COUNT:I = 0x40


# instance fields
.field private all:Z

.field private maxLength16:I

.field private offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

.field private someRelevant:Z

.field private spanLengths:[S

.field private spanNotSet:Landroid/icu/text/UnicodeSet;

.field private spanSet:Landroid/icu/text/UnicodeSet;

.field private strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/impl/UnicodeSetStringSpan;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "otherStringSpan"    # Landroid/icu/impl/UnicodeSetStringSpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/UnicodeSetStringSpan;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 206
    .local p2, "newParentSetStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 208
    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@5
    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@7
    .line 209
    iput-object p2, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@9
    .line 210
    iget v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    #@b
    iput v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    #@d
    .line 211
    iget-boolean v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    #@f
    iput-boolean v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    #@11
    .line 212
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    #@14
    .line 213
    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@16
    iget-object v1, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@18
    if-ne v0, v1, :cond_0

    #@1a
    .line 214
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@1c
    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@1e
    .line 218
    :goto_0
    new-instance v0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@20
    invoke-direct {v0}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;-><init>()V

    #@23
    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@25
    .line 220
    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@27
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, [S

    #@2d
    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@2f
    .line 207
    return-void

    #@30
    .line 216
    :cond_0
    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@32
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@38
    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@3a
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V
    .locals 12
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    .local p2, "setStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    new-instance v8, Landroid/icu/text/UnicodeSet;

    #@5
    const/4 v9, 0x0

    #@6
    const v10, 0x10ffff

    #@9
    invoke-direct {v8, v9, v10}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@c
    iput-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@e
    .line 89
    iput-object p2, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@10
    .line 90
    const/16 v8, 0x7f

    #@12
    if-ne p3, v8, :cond_3

    #@14
    const/4 v8, 0x1

    #@15
    :goto_0
    iput-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    #@17
    .line 91
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@19
    invoke-virtual {v8, p1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@1c
    .line 92
    and-int/lit8 v8, p3, 0x1

    #@1e
    if-eqz v8, :cond_0

    #@20
    .line 95
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@22
    iput-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@24
    .line 97
    :cond_0
    new-instance v8, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@26
    invoke-direct {v8}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;-><init>()V

    #@29
    iput-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@2b
    .line 106
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v7

    #@31
    .line 109
    .local v7, "stringsLength":I
    const/4 v8, 0x0

    #@32
    iput-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    #@34
    .line 110
    const/4 v2, 0x0

    #@35
    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_4

    #@37
    .line 111
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v6

    #@3d
    check-cast v6, Ljava/lang/String;

    #@3f
    .line 112
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@42
    move-result v3

    #@43
    .line 113
    .local v3, "length16":I
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@45
    sget-object v9, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@47
    invoke-virtual {v8, v6, v9}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    #@4a
    move-result v5

    #@4b
    .line 114
    .local v5, "spanLength":I
    if-ge v5, v3, :cond_1

    #@4d
    .line 115
    const/4 v8, 0x1

    #@4e
    iput-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    #@50
    .line 117
    :cond_1
    iget v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    #@52
    if-le v3, v8, :cond_2

    #@54
    .line 118
    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    #@56
    .line 110
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@58
    goto :goto_1

    #@59
    .line 90
    .end local v2    # "i":I
    .end local v3    # "length16":I
    .end local v5    # "spanLength":I
    .end local v6    # "string":Ljava/lang/String;
    .end local v7    # "stringsLength":I
    :cond_3
    const/4 v8, 0x0

    #@5a
    goto :goto_0

    #@5b
    .line 121
    .restart local v2    # "i":I
    .restart local v7    # "stringsLength":I
    :cond_4
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    #@5d
    if-nez v8, :cond_5

    #@5f
    and-int/lit8 v8, p3, 0x40

    #@61
    if-nez v8, :cond_5

    #@63
    .line 122
    return-void

    #@64
    .line 127
    :cond_5
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    #@66
    if-eqz v8, :cond_6

    #@68
    .line 128
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@6a
    invoke-virtual {v8}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@6d
    .line 135
    :cond_6
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    #@6f
    if-eqz v8, :cond_b

    #@71
    .line 137
    mul-int/lit8 v0, v7, 0x2

    #@73
    .line 141
    .local v0, "allocSize":I
    :goto_2
    new-array v8, v0, [S

    #@75
    iput-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@77
    .line 143
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    #@79
    if-eqz v8, :cond_c

    #@7b
    .line 145
    move v4, v7

    #@7c
    .line 153
    .local v4, "spanBackLengthsOffset":I
    :goto_3
    const/4 v2, 0x0

    #@7d
    :goto_4
    if-ge v2, v7, :cond_10

    #@7f
    .line 154
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@81
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@84
    move-result-object v6

    #@85
    check-cast v6, Ljava/lang/String;

    #@87
    .line 155
    .restart local v6    # "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@8a
    move-result v3

    #@8b
    .line 156
    .restart local v3    # "length16":I
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@8d
    sget-object v9, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@8f
    invoke-virtual {v8, v6, v9}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    #@92
    move-result v5

    #@93
    .line 157
    .restart local v5    # "spanLength":I
    if-ge v5, v3, :cond_e

    #@95
    .line 159
    and-int/lit8 v8, p3, 0x2

    #@97
    if-eqz v8, :cond_d

    #@99
    .line 160
    and-int/lit8 v8, p3, 0x20

    #@9b
    if-eqz v8, :cond_7

    #@9d
    .line 161
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@9f
    invoke-static {v5}, Landroid/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    #@a2
    move-result v9

    #@a3
    aput-short v9, v8, v2

    #@a5
    .line 163
    :cond_7
    and-int/lit8 v8, p3, 0x10

    #@a7
    if-eqz v8, :cond_8

    #@a9
    .line 165
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@ab
    sget-object v9, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@ad
    invoke-virtual {v8, v6, v3, v9}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@b0
    move-result v8

    #@b1
    .line 164
    sub-int v5, v3, v8

    #@b3
    .line 166
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@b5
    add-int v9, v4, v2

    #@b7
    invoke-static {v5}, Landroid/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    #@ba
    move-result v10

    #@bb
    aput-short v10, v8, v9

    #@bd
    .line 173
    :cond_8
    :goto_5
    and-int/lit8 v8, p3, 0x1

    #@bf
    if-eqz v8, :cond_a

    #@c1
    .line 177
    and-int/lit8 v8, p3, 0x20

    #@c3
    if-eqz v8, :cond_9

    #@c5
    .line 178
    const/4 v8, 0x0

    #@c6
    invoke-virtual {v6, v8}, Ljava/lang/String;->codePointAt(I)I

    #@c9
    move-result v1

    #@ca
    .line 179
    .local v1, "c":I
    invoke-direct {p0, v1}, Landroid/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    #@cd
    .line 181
    .end local v1    # "c":I
    :cond_9
    and-int/lit8 v8, p3, 0x10

    #@cf
    if-eqz v8, :cond_a

    #@d1
    .line 182
    invoke-virtual {v6, v3}, Ljava/lang/String;->codePointBefore(I)I

    #@d4
    move-result v1

    #@d5
    .line 183
    .restart local v1    # "c":I
    invoke-direct {p0, v1}, Landroid/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    #@d8
    .line 153
    .end local v1    # "c":I
    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    #@da
    goto :goto_4

    #@db
    .line 139
    .end local v0    # "allocSize":I
    .end local v3    # "length16":I
    .end local v4    # "spanBackLengthsOffset":I
    .end local v5    # "spanLength":I
    .end local v6    # "string":Ljava/lang/String;
    :cond_b
    move v0, v7

    #@dc
    .restart local v0    # "allocSize":I
    goto :goto_2

    #@dd
    .line 148
    :cond_c
    const/4 v4, 0x0

    #@de
    .restart local v4    # "spanBackLengthsOffset":I
    goto :goto_3

    #@df
    .line 169
    .restart local v3    # "length16":I
    .restart local v5    # "spanLength":I
    .restart local v6    # "string":Ljava/lang/String;
    :cond_d
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@e1
    iget-object v9, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@e3
    add-int v10, v4, v2

    #@e5
    const/4 v11, 0x0

    #@e6
    aput-short v11, v9, v10

    #@e8
    const/4 v9, 0x0

    #@e9
    aput-short v9, v8, v2

    #@eb
    goto :goto_5

    #@ec
    .line 187
    :cond_e
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    #@ee
    if-eqz v8, :cond_f

    #@f0
    .line 188
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@f2
    iget-object v9, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@f4
    add-int v10, v4, v2

    #@f6
    const/16 v11, 0xff

    #@f8
    aput-short v11, v9, v10

    #@fa
    const/16 v9, 0xff

    #@fc
    aput-short v9, v8, v2

    #@fe
    goto :goto_6

    #@ff
    .line 191
    :cond_f
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@101
    const/16 v9, 0xff

    #@103
    aput-short v9, v8, v2

    #@105
    goto :goto_6

    #@106
    .line 197
    .end local v3    # "length16":I
    .end local v5    # "spanLength":I
    .end local v6    # "string":Ljava/lang/String;
    :cond_10
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    #@108
    if-eqz v8, :cond_11

    #@10a
    .line 198
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@10c
    invoke-virtual {v8}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@10f
    .line 82
    :cond_11
    return-void
.end method

.method private addToSpanNotSet(I)V
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@6
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@8
    if-ne v0, v1, :cond_2

    #@a
    .line 244
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@c
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 245
    return-void

    #@13
    .line 247
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@15
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@1b
    .line 249
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@1d
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@20
    .line 242
    return-void
.end method

.method static makeSpanLengthByte(I)S
    .locals 1
    .param p0, "spanLength"    # I

    #@0
    .prologue
    const/16 v0, 0xfe

    #@2
    .line 932
    if-ge p0, v0, :cond_0

    #@4
    int-to-short v0, p0

    #@5
    :cond_0
    return v0
.end method

.method private static matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "t"    # Ljava/lang/String;
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 937
    add-int v0, p1, p3

    #@3
    .local v0, "end":I
    move v1, p3

    #@4
    .line 938
    .end local p3    # "length":I
    .local v1, "length":I
    :goto_0
    add-int/lit8 p3, v1, -0x1

    #@6
    .end local v1    # "length":I
    .restart local p3    # "length":I
    if-lez v1, :cond_1

    #@8
    .line 939
    add-int/lit8 v0, v0, -0x1

    #@a
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@d
    move-result v2

    #@e
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v3

    #@12
    if-eq v2, v3, :cond_0

    #@14
    .line 940
    return v4

    #@15
    :cond_0
    move v1, p3

    #@16
    .end local p3    # "length":I
    .restart local v1    # "length":I
    goto :goto_0

    #@17
    .line 943
    .end local v1    # "length":I
    .restart local p3    # "length":I
    :cond_1
    const/4 v2, 0x1

    #@18
    return v2
.end method

.method static matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "t"    # Ljava/lang/String;
    .param p4, "tlength"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 957
    invoke-static {p0, p1, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 958
    if-lez p1, :cond_1

    #@9
    add-int/lit8 v1, p1, -0x1

    #@b
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@e
    move-result v1

    #@f
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 959
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@18
    move-result v1

    #@19
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@1c
    move-result v1

    #@1d
    .line 958
    if-eqz v1, :cond_1

    #@1f
    .line 957
    :cond_0
    :goto_0
    return v0

    #@20
    .line 960
    :cond_1
    add-int v1, p1, p4

    #@22
    if-ge v1, p2, :cond_2

    #@24
    add-int v1, p1, p4

    #@26
    add-int/lit8 v1, v1, -0x1

    #@28
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2b
    move-result v1

    #@2c
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 961
    add-int v1, p1, p4

    #@34
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@37
    move-result v1

    #@38
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@3b
    move-result v1

    #@3c
    .line 960
    if-nez v1, :cond_0

    #@3e
    :cond_2
    const/4 v0, 0x1

    #@3f
    goto :goto_0
.end method

.method private declared-synchronized spanContainedAndCount(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I
    .locals 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "outCount"    # Landroid/icu/util/OutputInt;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 596
    :try_start_0
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@3
    iget v11, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    #@5
    invoke-virtual {v10, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    #@8
    .line 597
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v9

    #@e
    .line 598
    .local v9, "stringsLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@11
    move-result v3

    #@12
    .line 599
    .local v3, "length":I
    move v6, p2

    #@13
    .line 600
    .local v6, "pos":I
    sub-int v7, v3, p2

    #@15
    .line 601
    .local v7, "rest":I
    const/4 v0, 0x0

    #@16
    .line 602
    .local v0, "count":I
    :goto_0
    if-eqz v7, :cond_5

    #@18
    .line 604
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@1a
    invoke-static {v10, p1, v6, v7}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    #@1d
    move-result v1

    #@1e
    .line 605
    .local v1, "cpLength":I
    if-lez v1, :cond_0

    #@20
    .line 606
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@22
    add-int/lit8 v11, v0, 0x1

    #@24
    invoke-virtual {v10, v1, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V

    #@27
    .line 609
    :cond_0
    const/4 v2, 0x0

    #@28
    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_3

    #@2a
    .line 610
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v8

    #@30
    check-cast v8, Ljava/lang/String;

    #@32
    .line 611
    .local v8, "string":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@35
    move-result v4

    #@36
    .line 614
    .local v4, "length16":I
    if-gt v4, v7, :cond_1

    #@38
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@3a
    add-int/lit8 v11, v0, 0x1

    #@3c
    invoke-virtual {v10, v4, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->hasCountAtOffset(II)Z

    #@3f
    move-result v10

    #@40
    if-eqz v10, :cond_2

    #@42
    .line 609
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_1

    #@45
    .line 615
    :cond_2
    invoke-static {p1, v6, v3, v8, v4}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    #@48
    move-result v10

    #@49
    .line 614
    if-eqz v10, :cond_1

    #@4b
    .line 616
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@4d
    add-int/lit8 v11, v0, 0x1

    #@4f
    invoke-virtual {v10, v4, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    goto :goto_2

    #@53
    .end local v0    # "count":I
    .end local v1    # "cpLength":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "length16":I
    .end local v6    # "pos":I
    .end local v7    # "rest":I
    .end local v8    # "string":Ljava/lang/String;
    .end local v9    # "stringsLength":I
    :catchall_0
    move-exception v10

    #@54
    monitor-exit p0

    #@55
    throw v10

    #@56
    .line 620
    .restart local v0    # "count":I
    .restart local v1    # "cpLength":I
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    .restart local v6    # "pos":I
    .restart local v7    # "rest":I
    .restart local v9    # "stringsLength":I
    :cond_3
    :try_start_1
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@58
    invoke-virtual {v10}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    #@5b
    move-result v10

    #@5c
    if-eqz v10, :cond_4

    #@5e
    .line 621
    iput v0, p3, Landroid/icu/util/OutputInt;->value:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    monitor-exit p0

    #@61
    .line 622
    return v6

    #@62
    .line 625
    :cond_4
    :try_start_2
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@64
    invoke-virtual {v10, p3}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Landroid/icu/util/OutputInt;)I

    #@67
    move-result v5

    #@68
    .line 626
    .local v5, "minOffset":I
    iget v0, p3, Landroid/icu/util/OutputInt;->value:I

    #@6a
    .line 627
    add-int/2addr v6, v5

    #@6b
    .line 628
    sub-int/2addr v7, v5

    #@6c
    goto :goto_0

    #@6d
    .line 630
    .end local v1    # "cpLength":I
    .end local v2    # "i":I
    .end local v5    # "minOffset":I
    :cond_5
    iput v0, p3, Landroid/icu/util/OutputInt;->value:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6f
    monitor-exit p0

    #@70
    .line 631
    return v6
.end method

.method private spanNot(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I
    .locals 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "outCount"    # Landroid/icu/util/OutputInt;

    #@0
    .prologue
    .line 835
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v3

    #@4
    .line 836
    .local v3, "length":I
    move v5, p2

    #@5
    .local v5, "pos":I
    sub-int v6, v3, p2

    #@7
    .line 837
    .local v6, "rest":I
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v9

    #@d
    .line 838
    .local v9, "stringsLength":I
    const/4 v0, 0x0

    #@e
    .line 843
    .local v0, "count":I
    :cond_0
    if-nez p3, :cond_1

    #@10
    .line 844
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@12
    sget-object v11, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@14
    invoke-virtual {v10, p1, v5, v11}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@17
    move-result v7

    #@18
    .line 849
    .local v7, "spanLimit":I
    :goto_0
    if-ne v7, v3, :cond_2

    #@1a
    .line 850
    return v3

    #@1b
    .line 846
    .end local v7    # "spanLimit":I
    :cond_1
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@1d
    sget-object v11, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@1f
    invoke-virtual {v10, p1, v5, v11, p3}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    #@22
    move-result v7

    #@23
    .line 847
    .restart local v7    # "spanLimit":I
    iget v10, p3, Landroid/icu/util/OutputInt;->value:I

    #@25
    add-int/2addr v0, v10

    #@26
    iput v0, p3, Landroid/icu/util/OutputInt;->value:I

    #@28
    goto :goto_0

    #@29
    .line 852
    :cond_2
    move v5, v7

    #@2a
    .line 853
    sub-int v6, v3, v7

    #@2c
    .line 857
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@2e
    invoke-static {v10, p1, v5, v6}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    #@31
    move-result v1

    #@32
    .line 858
    .local v1, "cpLength":I
    if-lez v1, :cond_3

    #@34
    .line 859
    return v5

    #@35
    .line 863
    :cond_3
    const/4 v2, 0x0

    #@36
    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_6

    #@38
    .line 864
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@3a
    aget-short v10, v10, v2

    #@3c
    const/16 v11, 0xff

    #@3e
    if-ne v10, v11, :cond_5

    #@40
    .line 863
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_1

    #@43
    .line 867
    :cond_5
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v8

    #@49
    check-cast v8, Ljava/lang/String;

    #@4b
    .line 869
    .local v8, "string":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@4e
    move-result v4

    #@4f
    .line 870
    .local v4, "length16":I
    if-gt v4, v6, :cond_4

    #@51
    invoke-static {p1, v5, v3, v8, v4}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    #@54
    move-result v10

    #@55
    if-eqz v10, :cond_4

    #@57
    .line 871
    return v5

    #@58
    .line 878
    .end local v4    # "length16":I
    .end local v8    # "string":Ljava/lang/String;
    :cond_6
    sub-int/2addr v5, v1

    #@59
    .line 879
    add-int/2addr v6, v1

    #@5a
    .line 880
    add-int/lit8 v0, v0, 0x1

    #@5c
    .line 881
    if-nez v6, :cond_0

    #@5e
    .line 882
    if-eqz p3, :cond_7

    #@60
    .line 883
    iput v0, p3, Landroid/icu/util/OutputInt;->value:I

    #@62
    .line 885
    :cond_7
    return v3
.end method

.method private spanNotBack(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 889
    move v3, p2

    #@2
    .line 890
    .local v3, "pos":I
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v5

    #@8
    .line 894
    .local v5, "stringsLength":I
    :cond_0
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    #@a
    sget-object v7, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@c
    invoke-virtual {v6, p1, v3, v7}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@f
    move-result v3

    #@10
    .line 895
    if-nez v3, :cond_1

    #@12
    .line 896
    return v8

    #@13
    .line 901
    :cond_1
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@15
    invoke-static {v6, p1, v3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOneBack(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I

    #@18
    move-result v0

    #@19
    .line 902
    .local v0, "cpLength":I
    if-lez v0, :cond_2

    #@1b
    .line 903
    return v3

    #@1c
    .line 907
    :cond_2
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_5

    #@1f
    .line 911
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@21
    aget-short v6, v6, v1

    #@23
    const/16 v7, 0xff

    #@25
    if-ne v6, v7, :cond_4

    #@27
    .line 907
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 914
    :cond_4
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Ljava/lang/String;

    #@32
    .line 916
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@35
    move-result v2

    #@36
    .line 917
    .local v2, "length16":I
    if-gt v2, v3, :cond_3

    #@38
    sub-int v6, v3, v2

    #@3a
    invoke-static {p1, v6, p2, v4, v2}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_3

    #@40
    .line 918
    return v3

    #@41
    .line 925
    .end local v2    # "length16":I
    .end local v4    # "string":Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    #@42
    .line 926
    if-nez v3, :cond_0

    #@44
    .line 927
    return v8
.end method

.method static spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 969
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@4
    move-result v0

    #@5
    .line 970
    .local v0, "c":C
    const v4, 0xd800

    #@8
    if-lt v0, v4, :cond_1

    #@a
    const v4, 0xdbff

    #@d
    if-gt v0, v4, :cond_1

    #@f
    if-lt p3, v3, :cond_1

    #@11
    .line 971
    add-int/lit8 v4, p2, 0x1

    #@13
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@16
    move-result v1

    #@17
    .line 972
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 973
    invoke-static {v0, v1}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@20
    move-result v2

    #@21
    .line 974
    .local v2, "supplementary":I
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    :goto_0
    return v3

    #@28
    :cond_0
    const/4 v3, -0x2

    #@29
    goto :goto_0

    #@2a
    .line 977
    .end local v1    # "c2":C
    .end local v2    # "supplementary":I
    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_2

    #@30
    const/4 v3, 0x1

    #@31
    :goto_1
    return v3

    #@32
    :cond_2
    const/4 v3, -0x1

    #@33
    goto :goto_1
.end method

.method static spanOneBack(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 981
    add-int/lit8 v4, p2, -0x1

    #@3
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 982
    .local v0, "c":C
    const v4, 0xdc00

    #@a
    if-lt v0, v4, :cond_1

    #@c
    const v4, 0xdfff

    #@f
    if-gt v0, v4, :cond_1

    #@11
    if-lt p2, v3, :cond_1

    #@13
    .line 983
    add-int/lit8 v4, p2, -0x2

    #@15
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@18
    move-result v1

    #@19
    .line 984
    .local v1, "c2":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 985
    invoke-static {v1, v0}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@22
    move-result v2

    #@23
    .line 986
    .local v2, "supplementary":I
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_0

    #@29
    :goto_0
    return v3

    #@2a
    :cond_0
    const/4 v3, -0x2

    #@2b
    goto :goto_0

    #@2c
    .line 989
    .end local v1    # "c2":C
    .end local v2    # "supplementary":I
    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    const/4 v3, 0x1

    #@33
    :goto_1
    return v3

    #@34
    :cond_2
    const/4 v3, -0x1

    #@35
    goto :goto_1
.end method

.method private declared-synchronized spanWithStrings(Ljava/lang/CharSequence;IILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 19
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanLimit"    # I
    .param p4, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 383
    const/4 v5, 0x0

    #@2
    .line 384
    .local v5, "initSize":I
    :try_start_0
    sget-object v17, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@4
    move-object/from16 v0, p4

    #@6
    move-object/from16 v1, v17

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 386
    move-object/from16 v0, p0

    #@c
    iget v5, v0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    #@e
    .line 388
    :cond_0
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@12
    move-object/from16 v17, v0

    #@14
    move-object/from16 v0, v17

    #@16
    invoke-virtual {v0, v5}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    #@19
    .line 389
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@1c
    move-result v6

    #@1d
    .line 390
    .local v6, "length":I
    move/from16 v12, p3

    #@1f
    .local v12, "pos":I
    sub-int v13, v6, p3

    #@21
    .line 391
    .local v13, "rest":I
    sub-int v14, p3, p2

    #@23
    .line 392
    .local v14, "spanLength":I
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@27
    move-object/from16 v17, v0

    #@29
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v16

    #@2d
    .line 394
    .local v16, "stringsLength":I
    :goto_0
    sget-object v17, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2f
    move-object/from16 v0, p4

    #@31
    move-object/from16 v1, v17

    #@33
    if-ne v0, v1, :cond_7

    #@35
    .line 395
    const/4 v3, 0x0

    #@36
    .local v3, "i":I
    :goto_1
    move/from16 v0, v16

    #@38
    if-ge v3, v0, :cond_11

    #@3a
    .line 396
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@3e
    move-object/from16 v17, v0

    #@40
    aget-short v11, v17, v3

    #@42
    .line 397
    .local v11, "overlap":I
    const/16 v17, 0xff

    #@44
    move/from16 v0, v17

    #@46
    if-ne v11, v0, :cond_2

    #@48
    .line 395
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 400
    :cond_2
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@4f
    move-object/from16 v17, v0

    #@51
    move-object/from16 v0, v17

    #@53
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v15

    #@57
    check-cast v15, Ljava/lang/String;

    #@59
    .line 402
    .local v15, "string":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@5c
    move-result v7

    #@5d
    .line 405
    .local v7, "length16":I
    const/16 v17, 0xfe

    #@5f
    move/from16 v0, v17

    #@61
    if-lt v11, v0, :cond_3

    #@63
    .line 406
    move v11, v7

    #@64
    .line 408
    const/16 v17, -0x1

    #@66
    move/from16 v0, v17

    #@68
    invoke-virtual {v15, v11, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    #@6b
    move-result v11

    #@6c
    .line 411
    :cond_3
    if-le v11, v14, :cond_4

    #@6e
    .line 412
    move v11, v14

    #@6f
    .line 414
    :cond_4
    sub-int v4, v7, v11

    #@71
    .line 416
    .local v4, "inc":I
    :goto_2
    if-gt v4, v13, :cond_1

    #@73
    .line 420
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@77
    move-object/from16 v17, v0

    #@79
    move-object/from16 v0, v17

    #@7b
    invoke-virtual {v0, v4}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    #@7e
    move-result v17

    #@7f
    if-nez v17, :cond_6

    #@81
    sub-int v17, v12, v11

    #@83
    move-object/from16 v0, p1

    #@85
    move/from16 v1, v17

    #@87
    invoke-static {v0, v1, v6, v15, v7}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8a
    move-result v17

    #@8b
    if-eqz v17, :cond_6

    #@8d
    .line 421
    if-ne v4, v13, :cond_5

    #@8f
    monitor-exit p0

    #@90
    .line 422
    return v6

    #@91
    .line 424
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@95
    move-object/from16 v17, v0

    #@97
    move-object/from16 v0, v17

    #@99
    invoke-virtual {v0, v4}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    #@9c
    .line 426
    :cond_6
    if-eqz v11, :cond_1

    #@9e
    .line 429
    add-int/lit8 v11, v11, -0x1

    #@a0
    .line 430
    add-int/lit8 v4, v4, 0x1

    #@a2
    goto :goto_2

    #@a3
    .line 434
    .end local v3    # "i":I
    .end local v4    # "inc":I
    .end local v7    # "length16":I
    .end local v11    # "overlap":I
    .end local v15    # "string":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    #@a4
    .local v8, "maxInc":I
    const/4 v9, 0x0

    #@a5
    .line 435
    .local v9, "maxOverlap":I
    const/4 v3, 0x0

    #@a6
    .restart local v3    # "i":I
    :goto_3
    move/from16 v0, v16

    #@a8
    if-ge v3, v0, :cond_e

    #@aa
    .line 436
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@ae
    move-object/from16 v17, v0

    #@b0
    aget-short v11, v17, v3

    #@b2
    .line 440
    .restart local v11    # "overlap":I
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@b6
    move-object/from16 v17, v0

    #@b8
    move-object/from16 v0, v17

    #@ba
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bd
    move-result-object v15

    #@be
    check-cast v15, Ljava/lang/String;

    #@c0
    .line 442
    .restart local v15    # "string":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@c3
    move-result v7

    #@c4
    .line 445
    .restart local v7    # "length16":I
    const/16 v17, 0xfe

    #@c6
    move/from16 v0, v17

    #@c8
    if-lt v11, v0, :cond_8

    #@ca
    .line 446
    move v11, v7

    #@cb
    .line 450
    :cond_8
    if-le v11, v14, :cond_9

    #@cd
    .line 451
    move v11, v14

    #@ce
    .line 453
    :cond_9
    sub-int v4, v7, v11

    #@d0
    .line 455
    .restart local v4    # "inc":I
    :goto_4
    if-gt v4, v13, :cond_a

    #@d2
    if-ge v11, v9, :cond_b

    #@d4
    .line 435
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    #@d6
    goto :goto_3

    #@d7
    .line 459
    :cond_b
    if-gt v11, v9, :cond_c

    #@d9
    if-le v4, v8, :cond_d

    #@db
    .line 460
    :cond_c
    sub-int v17, v12, v11

    #@dd
    move-object/from16 v0, p1

    #@df
    move/from16 v1, v17

    #@e1
    invoke-static {v0, v1, v6, v15, v7}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e4
    move-result v17

    #@e5
    .line 459
    if-eqz v17, :cond_d

    #@e7
    .line 461
    move v8, v4

    #@e8
    .line 462
    move v9, v11

    #@e9
    .line 463
    goto :goto_5

    #@ea
    .line 465
    :cond_d
    add-int/lit8 v11, v11, -0x1

    #@ec
    .line 466
    add-int/lit8 v4, v4, 0x1

    #@ee
    goto :goto_4

    #@ef
    .line 470
    .end local v4    # "inc":I
    .end local v7    # "length16":I
    .end local v11    # "overlap":I
    .end local v15    # "string":Ljava/lang/String;
    :cond_e
    if-nez v8, :cond_f

    #@f1
    if-eqz v9, :cond_11

    #@f3
    .line 473
    :cond_f
    add-int/2addr v12, v8

    #@f4
    .line 474
    sub-int/2addr v13, v8

    #@f5
    .line 475
    if-nez v13, :cond_10

    #@f7
    monitor-exit p0

    #@f8
    .line 476
    return v6

    #@f9
    .line 478
    :cond_10
    const/4 v14, 0x0

    #@fa
    .line 479
    goto/16 :goto_0

    #@fc
    .line 484
    .end local v8    # "maxInc":I
    .end local v9    # "maxOverlap":I
    :cond_11
    if-nez v14, :cond_12

    #@fe
    if-nez v12, :cond_13

    #@100
    .line 490
    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@104
    move-object/from16 v17, v0

    #@106
    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@109
    move-result v17

    #@10a
    if-eqz v17, :cond_18

    #@10c
    monitor-exit p0

    #@10d
    .line 491
    return v12

    #@10e
    .line 496
    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@112
    move-object/from16 v17, v0

    #@114
    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    #@117
    move-result v17

    #@118
    if-eqz v17, :cond_16

    #@11a
    .line 499
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@11e
    move-object/from16 v17, v0

    #@120
    sget-object v18, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@122
    move-object/from16 v0, v17

    #@124
    move-object/from16 v1, p1

    #@126
    move-object/from16 v2, v18

    #@128
    invoke-virtual {v0, v1, v12, v2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@12b
    move-result p3

    #@12c
    .line 500
    sub-int v14, p3, v12

    #@12e
    .line 501
    if-eq v14, v13, :cond_14

    #@130
    .line 502
    if-nez v14, :cond_15

    #@132
    :cond_14
    monitor-exit p0

    #@133
    .line 504
    return p3

    #@134
    .line 506
    :cond_15
    add-int/2addr v12, v14

    #@135
    .line 507
    sub-int/2addr v13, v14

    #@136
    .line 508
    goto/16 :goto_0

    #@138
    .line 513
    :cond_16
    :try_start_4
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@13c
    move-object/from16 v17, v0

    #@13e
    move-object/from16 v0, v17

    #@140
    move-object/from16 v1, p1

    #@142
    invoke-static {v0, v1, v12, v13}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@145
    move-result v14

    #@146
    .line 514
    if-lez v14, :cond_18

    #@148
    .line 515
    if-ne v14, v13, :cond_17

    #@14a
    monitor-exit p0

    #@14b
    .line 516
    return v6

    #@14c
    .line 521
    :cond_17
    add-int/2addr v12, v14

    #@14d
    .line 522
    sub-int/2addr v13, v14

    #@14e
    .line 523
    :try_start_5
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@152
    move-object/from16 v17, v0

    #@154
    move-object/from16 v0, v17

    #@156
    invoke-virtual {v0, v14}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    #@159
    .line 524
    const/4 v14, 0x0

    #@15a
    .line 525
    goto/16 :goto_0

    #@15c
    .line 530
    :cond_18
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@160
    move-object/from16 v17, v0

    #@162
    const/16 v18, 0x0

    #@164
    invoke-virtual/range {v17 .. v18}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Landroid/icu/util/OutputInt;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@167
    move-result v10

    #@168
    .line 531
    .local v10, "minOffset":I
    add-int/2addr v12, v10

    #@169
    .line 532
    sub-int/2addr v13, v10

    #@16a
    .line 533
    const/4 v14, 0x0

    #@16b
    goto/16 :goto_0

    #@16d
    .end local v3    # "i":I
    .end local v6    # "length":I
    .end local v10    # "minOffset":I
    .end local v12    # "pos":I
    .end local v13    # "rest":I
    .end local v14    # "spanLength":I
    .end local v16    # "stringsLength":I
    :catchall_0
    move-exception v17

    #@16e
    monitor-exit p0

    #@16f
    throw v17
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public needsStringSpanUTF16()Z
    .locals 1

    #@0
    .prologue
    .line 230
    iget-boolean v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    #@2
    return v0
.end method

.method public span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    .line 364
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    if-ne p3, v1, :cond_0

    #@4
    .line 365
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, p2, v1}, Landroid/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 367
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@c
    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@e
    invoke-virtual {v1, p1, p2, v2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@11
    move-result v0

    #@12
    .line 368
    .local v0, "spanLimit":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@15
    move-result v1

    #@16
    if-ne v0, v1, :cond_1

    #@18
    .line 369
    return v0

    #@19
    .line 371
    :cond_1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanWithStrings(Ljava/lang/CharSequence;IILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method public spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;
    .param p4, "outCount"    # Landroid/icu/util/OutputInt;

    #@0
    .prologue
    .line 553
    sget-object v10, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    if-ne p3, v10, :cond_0

    #@4
    .line 554
    invoke-direct {p0, p1, p2, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I

    #@7
    move-result v10

    #@8
    return v10

    #@9
    .line 558
    :cond_0
    sget-object v10, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@b
    if-ne p3, v10, :cond_1

    #@d
    .line 559
    invoke-direct {p0, p1, p2, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanContainedAndCount(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I

    #@10
    move-result v10

    #@11
    return v10

    #@12
    .line 562
    :cond_1
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v9

    #@18
    .line 563
    .local v9, "stringsLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1b
    move-result v3

    #@1c
    .line 564
    .local v3, "length":I
    move v6, p2

    #@1d
    .line 565
    .local v6, "pos":I
    sub-int v7, v3, p2

    #@1f
    .line 566
    .local v7, "rest":I
    const/4 v0, 0x0

    #@20
    .line 567
    .local v0, "count":I
    :goto_0
    if-eqz v7, :cond_6

    #@22
    .line 569
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@24
    invoke-static {v10, p1, v6, v7}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    #@27
    move-result v1

    #@28
    .line 570
    .local v1, "cpLength":I
    if-lez v1, :cond_3

    #@2a
    move v5, v1

    #@2b
    .line 572
    .local v5, "maxInc":I
    :goto_1
    const/4 v2, 0x0

    #@2c
    .local v2, "i":I
    :goto_2
    if-ge v2, v9, :cond_4

    #@2e
    .line 573
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v8

    #@34
    check-cast v8, Ljava/lang/String;

    #@36
    .line 574
    .local v8, "string":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@39
    move-result v4

    #@3a
    .line 575
    .local v4, "length16":I
    if-ge v5, v4, :cond_2

    #@3c
    if-gt v4, v7, :cond_2

    #@3e
    .line 576
    invoke-static {p1, v6, v3, v8, v4}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    #@41
    move-result v10

    #@42
    .line 575
    if-eqz v10, :cond_2

    #@44
    .line 577
    move v5, v4

    #@45
    .line 572
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_2

    #@48
    .line 570
    .end local v2    # "i":I
    .end local v4    # "length16":I
    .end local v5    # "maxInc":I
    .end local v8    # "string":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    #@49
    .restart local v5    # "maxInc":I
    goto :goto_1

    #@4a
    .line 581
    .restart local v2    # "i":I
    :cond_4
    if-nez v5, :cond_5

    #@4c
    .line 582
    iput v0, p4, Landroid/icu/util/OutputInt;->value:I

    #@4e
    .line 583
    return v6

    #@4f
    .line 586
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@51
    .line 587
    add-int/2addr v6, v5

    #@52
    .line 588
    sub-int/2addr v7, v5

    #@53
    goto :goto_0

    #@54
    .line 590
    .end local v1    # "cpLength":I
    .end local v2    # "i":I
    .end local v5    # "maxInc":I
    :cond_6
    iput v0, p4, Landroid/icu/util/OutputInt;->value:I

    #@56
    .line 591
    return v6
.end method

.method public declared-synchronized spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 20
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 642
    :try_start_0
    sget-object v18, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@3
    move-object/from16 v0, p3

    #@5
    move-object/from16 v1, v18

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 643
    invoke-direct/range {p0 .. p2}, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotBack(Ljava/lang/CharSequence;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v18

    #@d
    monitor-exit p0

    #@e
    return v18

    #@f
    .line 645
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@13
    move-object/from16 v18, v0

    #@15
    sget-object v19, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@17
    move-object/from16 v0, v18

    #@19
    move-object/from16 v1, p1

    #@1b
    move/from16 v2, p2

    #@1d
    move-object/from16 v3, v19

    #@1f
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result v13

    #@23
    .line 646
    .local v13, "pos":I
    if-nez v13, :cond_1

    #@25
    .line 647
    const/16 v18, 0x0

    #@27
    monitor-exit p0

    #@28
    return v18

    #@29
    .line 649
    :cond_1
    sub-int v15, p2, v13

    #@2b
    .line 652
    .local v15, "spanLength":I
    const/4 v6, 0x0

    #@2c
    .line 653
    .local v6, "initSize":I
    :try_start_2
    sget-object v18, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2e
    move-object/from16 v0, p3

    #@30
    move-object/from16 v1, v18

    #@32
    if-ne v0, v1, :cond_2

    #@34
    .line 655
    move-object/from16 v0, p0

    #@36
    iget v6, v0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    #@38
    .line 657
    :cond_2
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@3c
    move-object/from16 v18, v0

    #@3e
    move-object/from16 v0, v18

    #@40
    invoke-virtual {v0, v6}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    #@43
    .line 658
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@47
    move-object/from16 v18, v0

    #@49
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v17

    #@4d
    .line 659
    .local v17, "stringsLength":I
    const/4 v14, 0x0

    #@4e
    .line 660
    .local v14, "spanBackLengthsOffset":I
    move-object/from16 v0, p0

    #@50
    iget-boolean v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    #@52
    move/from16 v18, v0

    #@54
    if-eqz v18, :cond_3

    #@56
    .line 661
    move/from16 v14, v17

    #@58
    .line 664
    :cond_3
    :goto_0
    sget-object v18, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@5a
    move-object/from16 v0, p3

    #@5c
    move-object/from16 v1, v18

    #@5e
    if-ne v0, v1, :cond_a

    #@60
    .line 665
    const/4 v5, 0x0

    #@61
    .local v5, "i":I
    :goto_1
    move/from16 v0, v17

    #@63
    if-ge v5, v0, :cond_14

    #@65
    .line 666
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@69
    move-object/from16 v18, v0

    #@6b
    add-int v19, v14, v5

    #@6d
    aget-short v12, v18, v19

    #@6f
    .line 667
    .local v12, "overlap":I
    const/16 v18, 0xff

    #@71
    move/from16 v0, v18

    #@73
    if-ne v12, v0, :cond_5

    #@75
    .line 665
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@77
    goto :goto_1

    #@78
    .line 670
    :cond_5
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@7c
    move-object/from16 v18, v0

    #@7e
    move-object/from16 v0, v18

    #@80
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@83
    move-result-object v16

    #@84
    check-cast v16, Ljava/lang/String;

    #@86
    .line 672
    .local v16, "string":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@89
    move-result v8

    #@8a
    .line 675
    .local v8, "length16":I
    const/16 v18, 0xfe

    #@8c
    move/from16 v0, v18

    #@8e
    if-lt v12, v0, :cond_6

    #@90
    .line 676
    move v12, v8

    #@91
    .line 678
    const/4 v7, 0x0

    #@92
    .line 679
    .local v7, "len1":I
    const/16 v18, 0x0

    #@94
    const/16 v19, 0x1

    #@96
    move-object/from16 v0, v16

    #@98
    move/from16 v1, v18

    #@9a
    move/from16 v2, v19

    #@9c
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    #@9f
    move-result v7

    #@a0
    .line 680
    sub-int/2addr v12, v7

    #@a1
    .line 682
    .end local v7    # "len1":I
    :cond_6
    if-le v12, v15, :cond_7

    #@a3
    .line 683
    move v12, v15

    #@a4
    .line 685
    :cond_7
    sub-int v4, v8, v12

    #@a6
    .line 687
    .local v4, "dec":I
    :goto_2
    if-gt v4, v13, :cond_4

    #@a8
    .line 691
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@ac
    move-object/from16 v18, v0

    #@ae
    move-object/from16 v0, v18

    #@b0
    invoke-virtual {v0, v4}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    #@b3
    move-result v18

    #@b4
    if-nez v18, :cond_9

    #@b6
    sub-int v18, v13, v4

    #@b8
    move-object/from16 v0, p1

    #@ba
    move/from16 v1, v18

    #@bc
    move/from16 v2, p2

    #@be
    move-object/from16 v3, v16

    #@c0
    invoke-static {v0, v1, v2, v3, v8}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c3
    move-result v18

    #@c4
    if-eqz v18, :cond_9

    #@c6
    .line 692
    if-ne v4, v13, :cond_8

    #@c8
    .line 693
    const/16 v18, 0x0

    #@ca
    monitor-exit p0

    #@cb
    return v18

    #@cc
    .line 695
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@d0
    move-object/from16 v18, v0

    #@d2
    move-object/from16 v0, v18

    #@d4
    invoke-virtual {v0, v4}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    #@d7
    .line 697
    :cond_9
    if-eqz v12, :cond_4

    #@d9
    .line 700
    add-int/lit8 v12, v12, -0x1

    #@db
    .line 701
    add-int/lit8 v4, v4, 0x1

    #@dd
    goto :goto_2

    #@de
    .line 705
    .end local v4    # "dec":I
    .end local v5    # "i":I
    .end local v8    # "length16":I
    .end local v12    # "overlap":I
    .end local v16    # "string":Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    #@df
    .local v9, "maxDec":I
    const/4 v10, 0x0

    #@e0
    .line 706
    .local v10, "maxOverlap":I
    const/4 v5, 0x0

    #@e1
    .restart local v5    # "i":I
    :goto_3
    move/from16 v0, v17

    #@e3
    if-ge v5, v0, :cond_11

    #@e5
    .line 707
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    #@e9
    move-object/from16 v18, v0

    #@eb
    add-int v19, v14, v5

    #@ed
    aget-short v12, v18, v19

    #@ef
    .line 711
    .restart local v12    # "overlap":I
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    #@f3
    move-object/from16 v18, v0

    #@f5
    move-object/from16 v0, v18

    #@f7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@fa
    move-result-object v16

    #@fb
    check-cast v16, Ljava/lang/String;

    #@fd
    .line 713
    .restart local v16    # "string":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@100
    move-result v8

    #@101
    .line 716
    .restart local v8    # "length16":I
    const/16 v18, 0xfe

    #@103
    move/from16 v0, v18

    #@105
    if-lt v12, v0, :cond_b

    #@107
    .line 717
    move v12, v8

    #@108
    .line 721
    :cond_b
    if-le v12, v15, :cond_c

    #@10a
    .line 722
    move v12, v15

    #@10b
    .line 724
    :cond_c
    sub-int v4, v8, v12

    #@10d
    .line 726
    .restart local v4    # "dec":I
    :goto_4
    if-gt v4, v13, :cond_d

    #@10f
    if-ge v12, v10, :cond_e

    #@111
    .line 706
    :cond_d
    :goto_5
    add-int/lit8 v5, v5, 0x1

    #@113
    goto :goto_3

    #@114
    .line 730
    :cond_e
    if-gt v12, v10, :cond_f

    #@116
    if-le v4, v9, :cond_10

    #@118
    .line 731
    :cond_f
    sub-int v18, v13, v4

    #@11a
    move-object/from16 v0, p1

    #@11c
    move/from16 v1, v18

    #@11e
    move/from16 v2, p2

    #@120
    move-object/from16 v3, v16

    #@122
    invoke-static {v0, v1, v2, v3, v8}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@125
    move-result v18

    #@126
    .line 730
    if-eqz v18, :cond_10

    #@128
    .line 732
    move v9, v4

    #@129
    .line 733
    move v10, v12

    #@12a
    .line 734
    goto :goto_5

    #@12b
    .line 736
    :cond_10
    add-int/lit8 v12, v12, -0x1

    #@12d
    .line 737
    add-int/lit8 v4, v4, 0x1

    #@12f
    goto :goto_4

    #@130
    .line 741
    .end local v4    # "dec":I
    .end local v8    # "length16":I
    .end local v12    # "overlap":I
    .end local v16    # "string":Ljava/lang/String;
    :cond_11
    if-nez v9, :cond_12

    #@132
    if-eqz v10, :cond_14

    #@134
    .line 744
    :cond_12
    sub-int/2addr v13, v9

    #@135
    .line 745
    if-nez v13, :cond_13

    #@137
    .line 746
    const/16 v18, 0x0

    #@139
    monitor-exit p0

    #@13a
    return v18

    #@13b
    .line 748
    :cond_13
    const/4 v15, 0x0

    #@13c
    goto/16 :goto_0

    #@13e
    .line 754
    .end local v9    # "maxDec":I
    .end local v10    # "maxOverlap":I
    :cond_14
    if-nez v15, :cond_15

    #@140
    move/from16 v0, p2

    #@142
    if-ne v13, v0, :cond_16

    #@144
    .line 760
    :cond_15
    :try_start_4
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@148
    move-object/from16 v18, v0

    #@14a
    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@14d
    move-result v18

    #@14e
    if-eqz v18, :cond_1a

    #@150
    monitor-exit p0

    #@151
    .line 761
    return v13

    #@152
    .line 766
    :cond_16
    :try_start_5
    move-object/from16 v0, p0

    #@154
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@156
    move-object/from16 v18, v0

    #@158
    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    #@15b
    move-result v18

    #@15c
    if-eqz v18, :cond_18

    #@15e
    .line 769
    move v11, v13

    #@15f
    .line 770
    .local v11, "oldPos":I
    move-object/from16 v0, p0

    #@161
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@163
    move-object/from16 v18, v0

    #@165
    sget-object v19, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@167
    move-object/from16 v0, v18

    #@169
    move-object/from16 v1, p1

    #@16b
    move-object/from16 v2, v19

    #@16d
    invoke-virtual {v0, v1, v11, v2}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@170
    move-result v13

    #@171
    .line 771
    sub-int v15, v11, v13

    #@173
    .line 772
    if-eqz v13, :cond_17

    #@175
    .line 773
    if-nez v15, :cond_3

    #@177
    :cond_17
    monitor-exit p0

    #@178
    .line 775
    return v13

    #@179
    .line 782
    .end local v11    # "oldPos":I
    :cond_18
    :try_start_6
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    #@17d
    move-object/from16 v18, v0

    #@17f
    move-object/from16 v0, v18

    #@181
    move-object/from16 v1, p1

    #@183
    invoke-static {v0, v1, v13}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOneBack(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@186
    move-result v15

    #@187
    .line 783
    if-lez v15, :cond_1a

    #@189
    .line 784
    if-ne v15, v13, :cond_19

    #@18b
    .line 785
    const/16 v18, 0x0

    #@18d
    monitor-exit p0

    #@18e
    return v18

    #@18f
    .line 790
    :cond_19
    sub-int/2addr v13, v15

    #@190
    .line 791
    :try_start_7
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@194
    move-object/from16 v18, v0

    #@196
    move-object/from16 v0, v18

    #@198
    invoke-virtual {v0, v15}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    #@19b
    .line 792
    const/4 v15, 0x0

    #@19c
    .line 793
    goto/16 :goto_0

    #@19e
    .line 798
    :cond_1a
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    #@1a2
    move-object/from16 v18, v0

    #@1a4
    const/16 v19, 0x0

    #@1a6
    invoke-virtual/range {v18 .. v19}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Landroid/icu/util/OutputInt;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1a9
    move-result v18

    #@1aa
    sub-int v13, v13, v18

    #@1ac
    .line 799
    const/4 v15, 0x0

    #@1ad
    goto/16 :goto_0

    #@1af
    .end local v5    # "i":I
    .end local v6    # "initSize":I
    .end local v13    # "pos":I
    .end local v14    # "spanBackLengthsOffset":I
    .end local v15    # "spanLength":I
    .end local v17    # "stringsLength":I
    :catchall_0
    move-exception v18

    #@1b0
    monitor-exit p0

    #@1b1
    throw v18
.end method
