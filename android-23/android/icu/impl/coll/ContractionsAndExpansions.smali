.class public final Landroid/icu/impl/coll/ContractionsAndExpansions;
.super Ljava/lang/Object;
.source "ContractionsAndExpansions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private addPrefixes:Z

.field private ces:[J

.field private checkTailored:I

.field private contractions:Landroid/icu/text/UnicodeSet;

.field private data:Landroid/icu/impl/coll/CollationData;

.field private expansions:Landroid/icu/text/UnicodeSet;

.field private ranges:Landroid/icu/text/UnicodeSet;

.field private sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

.field private suffix:Ljava/lang/String;

.field private tailored:Landroid/icu/text/UnicodeSet;

.field private unreversedPrefix:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

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
    sput-boolean v0, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    #@b
    .line 21
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V
    .locals 1
    .param p1, "con"    # Landroid/icu/text/UnicodeSet;
    .param p2, "exp"    # Landroid/icu/text/UnicodeSet;
    .param p3, "s"    # Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;
    .param p4, "prefixes"    # Z

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    #@6
    .line 29
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@8
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@b
    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    #@d
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@14
    .line 33
    const/16 v0, 0x1f

    #@16
    new-array v0, v0, [J

    #@18
    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    #@1a
    .line 41
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    #@1c
    .line 42
    iput-object p2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    #@1e
    .line 43
    iput-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@20
    .line 44
    iput-boolean p4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    #@22
    .line 40
    return-void
.end method

.method private enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I
    .param p4, "cne"    # Landroid/icu/impl/coll/ContractionsAndExpansions;

    #@0
    .prologue
    .line 72
    iget v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    #@2
    if-nez v2, :cond_1

    #@4
    .line 97
    :cond_0
    :goto_0
    invoke-direct {p4, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    #@7
    .line 71
    return-void

    #@8
    .line 75
    :cond_1
    iget v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    #@a
    if-gez v2, :cond_3

    #@c
    .line 77
    const/16 v2, 0xc0

    #@e
    if-ne p3, v2, :cond_2

    #@10
    .line 78
    return-void

    #@11
    .line 80
    :cond_2
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    #@13
    invoke-virtual {v2, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@16
    goto :goto_0

    #@17
    .line 83
    :cond_3
    if-ne p1, p2, :cond_4

    #@19
    .line 84
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    #@1b
    invoke-virtual {v2, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 85
    return-void

    #@22
    .line 87
    :cond_4
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    #@24
    invoke-virtual {v2, p1, p2}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_0

    #@2a
    .line 88
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    #@2c
    if-nez v2, :cond_5

    #@2e
    .line 89
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@30
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@33
    iput-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    #@35
    .line 91
    :cond_5
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    #@37
    invoke-virtual {v2, p1, p2}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    #@3a
    move-result-object v2

    #@3b
    iget-object v3, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    #@3d
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@40
    .line 92
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    #@42
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@45
    move-result v0

    #@46
    .line 93
    .local v0, "count":I
    const/4 v1, 0x0

    #@47
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    #@49
    .line 94
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    #@4b
    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@4e
    move-result v2

    #@4f
    iget-object v3, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    #@51
    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@54
    move-result v3

    #@55
    invoke-direct {p4, v2, v3, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    #@58
    .line 93
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_1
.end method

.method private handleCE32(III)V
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    #@0
    .prologue
    .line 112
    :goto_0
    and-int/lit16 v6, p3, 0xff

    #@2
    const/16 v7, 0xc0

    #@4
    if-ge v6, v7, :cond_1

    #@6
    .line 114
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@8
    if-eqz v6, :cond_0

    #@a
    .line 115
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@c
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    #@f
    move-result-wide v8

    #@10
    invoke-interface {v6, v8, v9}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    #@13
    .line 117
    :cond_0
    return-void

    #@14
    .line 119
    :cond_1
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@17
    move-result v6

    #@18
    packed-switch v6, :pswitch_data_0

    #@1b
    goto :goto_0

    #@1c
    .line 121
    :pswitch_0
    return-void

    #@1d
    .line 126
    :pswitch_1
    new-instance v6, Ljava/lang/AssertionError;

    #@1f
    .line 127
    const-string/jumbo v7, "Unexpected CE32 tag type %d for ce32=0x%08x"

    #@22
    const/4 v8, 0x2

    #@23
    new-array v8, v8, [Ljava/lang/Object;

    #@25
    .line 128
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@28
    move-result v9

    #@29
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v9

    #@2d
    const/4 v10, 0x0

    #@2e
    aput-object v9, v8, v10

    #@30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v9

    #@34
    const/4 v10, 0x1

    #@35
    aput-object v9, v8, v10

    #@37
    .line 127
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    .line 126
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3e
    throw v6

    #@3f
    .line 130
    :pswitch_2
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@41
    if-eqz v6, :cond_2

    #@43
    .line 131
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@45
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    #@48
    move-result-wide v8

    #@49
    invoke-interface {v6, v8, v9}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    #@4c
    .line 133
    :cond_2
    return-void

    #@4d
    .line 135
    :pswitch_3
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@4f
    if-eqz v6, :cond_3

    #@51
    .line 136
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@53
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    #@56
    move-result-wide v8

    #@57
    invoke-interface {v6, v8, v9}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    #@5a
    .line 138
    :cond_3
    return-void

    #@5b
    .line 140
    :pswitch_4
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@5d
    if-eqz v6, :cond_4

    #@5f
    .line 141
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    #@61
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    #@64
    move-result-wide v8

    #@65
    const/4 v7, 0x0

    #@66
    aput-wide v8, v6, v7

    #@68
    .line 142
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    #@6a
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    #@6d
    move-result-wide v8

    #@6e
    const/4 v7, 0x1

    #@6f
    aput-wide v8, v6, v7

    #@71
    .line 143
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@73
    iget-object v7, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    #@75
    const/4 v8, 0x0

    #@76
    const/4 v9, 0x2

    #@77
    invoke-interface {v6, v7, v8, v9}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    #@7a
    .line 147
    :cond_4
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@7c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@7f
    move-result v6

    #@80
    if-nez v6, :cond_5

    #@82
    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    #@85
    .line 150
    :cond_5
    return-void

    #@86
    .line 152
    :pswitch_5
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@88
    if-eqz v6, :cond_7

    #@8a
    .line 153
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@8d
    move-result v3

    #@8e
    .line 154
    .local v3, "idx":I
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@91
    move-result v5

    #@92
    .line 155
    .local v5, "length":I
    const/4 v2, 0x0

    #@93
    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_6

    #@95
    .line 156
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    #@97
    iget-object v7, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@99
    iget-object v7, v7, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@9b
    add-int v8, v3, v2

    #@9d
    aget v7, v7, v8

    #@9f
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@a2
    move-result-wide v8

    #@a3
    aput-wide v8, v6, v2

    #@a5
    .line 155
    add-int/lit8 v2, v2, 0x1

    #@a7
    goto :goto_1

    #@a8
    .line 158
    :cond_6
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@aa
    iget-object v7, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    #@ac
    const/4 v8, 0x0

    #@ad
    invoke-interface {v6, v7, v8, v5}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    #@b0
    .line 162
    .end local v2    # "i":I
    .end local v3    # "idx":I
    .end local v5    # "length":I
    :cond_7
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@b2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@b5
    move-result v6

    #@b6
    if-nez v6, :cond_8

    #@b8
    .line 163
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    #@bb
    .line 165
    :cond_8
    return-void

    #@bc
    .line 167
    :pswitch_6
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@be
    if-eqz v6, :cond_9

    #@c0
    .line 168
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@c3
    move-result v3

    #@c4
    .line 169
    .restart local v3    # "idx":I
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@c7
    move-result v5

    #@c8
    .line 170
    .restart local v5    # "length":I
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@ca
    iget-object v7, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@cc
    iget-object v7, v7, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@ce
    invoke-interface {v6, v7, v3, v5}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    #@d1
    .line 174
    .end local v3    # "idx":I
    .end local v5    # "length":I
    :cond_9
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@d3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@d6
    move-result v6

    #@d7
    if-nez v6, :cond_a

    #@d9
    .line 175
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    #@dc
    .line 177
    :cond_a
    return-void

    #@dd
    .line 179
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handlePrefixes(III)V

    #@e0
    .line 180
    return-void

    #@e1
    .line 182
    :pswitch_8
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleContractions(III)V

    #@e4
    .line 183
    return-void

    #@e5
    .line 186
    :pswitch_9
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@e7
    iget-object v6, v6, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@e9
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@ec
    move-result v7

    #@ed
    aget p3, v6, v7

    #@ef
    goto/16 :goto_0

    #@f1
    .line 189
    :pswitch_a
    sget-boolean v6, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    #@f3
    if-nez v6, :cond_c

    #@f5
    if-nez p1, :cond_b

    #@f7
    if-nez p2, :cond_b

    #@f9
    const/4 v6, 0x1

    #@fa
    :goto_2
    if-nez v6, :cond_c

    #@fc
    new-instance v6, Ljava/lang/AssertionError;

    #@fe
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@101
    throw v6

    #@102
    :cond_b
    const/4 v6, 0x0

    #@103
    goto :goto_2

    #@104
    .line 191
    :cond_c
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@106
    iget-object v6, v6, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@108
    const/4 v7, 0x0

    #@109
    aget p3, v6, v7

    #@10b
    goto/16 :goto_0

    #@10d
    .line 194
    :pswitch_b
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@10f
    if-eqz v6, :cond_f

    #@111
    .line 197
    new-instance v4, Landroid/icu/impl/coll/UTF16CollationIterator;

    #@113
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@115
    invoke-direct {v4, v6}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@118
    .line 198
    .local v4, "iter":Landroid/icu/impl/coll/UTF16CollationIterator;
    new-instance v1, Ljava/lang/StringBuilder;

    #@11a
    const/4 v6, 0x1

    #@11b
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@11e
    .line 199
    .local v1, "hangul":Ljava/lang/StringBuilder;
    move v0, p1

    #@11f
    .local v0, "c":I
    :goto_3
    if-gt v0, p2, :cond_f

    #@121
    .line 200
    const/4 v6, 0x0

    #@122
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@125
    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@128
    .line 202
    const/4 v6, 0x0

    #@129
    const/4 v7, 0x0

    #@12a
    invoke-virtual {v4, v6, v1, v7}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@12d
    .line 203
    invoke-virtual {v4}, Landroid/icu/impl/coll/UTF16CollationIterator;->fetchCEs()I

    #@130
    move-result v5

    #@131
    .line 205
    .restart local v5    # "length":I
    sget-boolean v6, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    #@133
    if-nez v6, :cond_e

    #@135
    const/4 v6, 0x2

    #@136
    if-lt v5, v6, :cond_d

    #@138
    add-int/lit8 v6, v5, -0x1

    #@13a
    invoke-virtual {v4, v6}, Landroid/icu/impl/coll/UTF16CollationIterator;->getCE(I)J

    #@13d
    move-result-wide v6

    #@13e
    const-wide v8, 0x101000100L

    #@143
    cmp-long v6, v6, v8

    #@145
    if-nez v6, :cond_d

    #@147
    const/4 v6, 0x1

    #@148
    :goto_4
    if-nez v6, :cond_e

    #@14a
    new-instance v6, Ljava/lang/AssertionError;

    #@14c
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@14f
    throw v6

    #@150
    :cond_d
    const/4 v6, 0x0

    #@151
    goto :goto_4

    #@152
    .line 206
    :cond_e
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    #@154
    invoke-virtual {v4}, Landroid/icu/impl/coll/UTF16CollationIterator;->getCEs()[J

    #@157
    move-result-object v7

    #@158
    add-int/lit8 v8, v5, -0x1

    #@15a
    const/4 v9, 0x0

    #@15b
    invoke-interface {v6, v7, v9, v8}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    #@15e
    .line 199
    add-int/lit8 v0, v0, 0x1

    #@160
    goto :goto_3

    #@161
    .line 211
    .end local v0    # "c":I
    .end local v1    # "hangul":Ljava/lang/StringBuilder;
    .end local v4    # "iter":Landroid/icu/impl/coll/UTF16CollationIterator;
    .end local v5    # "length":I
    :cond_f
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@166
    move-result v6

    #@167
    if-nez v6, :cond_10

    #@169
    .line 212
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    #@16c
    .line 214
    :cond_10
    return-void

    #@16d
    .line 217
    :pswitch_c
    return-void

    #@16e
    .line 220
    :pswitch_d
    return-void

    #@16f
    .line 119
    nop

    #@170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private handlePrefixes(III)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    #@0
    .prologue
    .line 226
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@3
    move-result v1

    #@4
    .line 227
    .local v1, "index":I
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@6
    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@9
    move-result p3

    #@a
    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    #@d
    .line 229
    iget-boolean v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    #@f
    if-nez v3, :cond_0

    #@11
    .line 230
    return-void

    #@12
    .line 232
    :cond_0
    new-instance v3, Landroid/icu/util/CharsTrie;

    #@14
    iget-object v4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@16
    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@18
    add-int/lit8 v5, v1, 0x2

    #@1a
    invoke-direct {v3, v4, v5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@1d
    invoke-virtual {v3}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    #@20
    move-result-object v2

    #@21
    .line 233
    .local v2, "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_0
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 234
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@2a
    move-result-object v0

    #@2b
    .line 235
    .local v0, "e":Landroid/icu/util/CharsTrie$Entry;
    iget-object v3, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@2d
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->setPrefix(Ljava/lang/CharSequence;)V

    #@30
    .line 238
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    #@32
    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    #@35
    .line 239
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    #@37
    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    #@3a
    .line 240
    iget v3, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@3c
    invoke-direct {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    #@3f
    goto :goto_0

    #@40
    .line 242
    .end local v0    # "e":Landroid/icu/util/CharsTrie$Entry;
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->resetPrefix()V

    #@43
    .line 225
    return-void
.end method

.method private resetPrefix()V
    .locals 2

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 301
    return-void
.end method

.method private setPrefix(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "pfx"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 298
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    #@f
    .line 296
    return-void
.end method


# virtual methods
.method addExpansions(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 272
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 273
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    #@12
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@15
    .line 270
    :cond_0
    :goto_0
    return-void

    #@16
    .line 276
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    #@18
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    #@1b
    goto :goto_0
.end method

.method addStrings(IILandroid/icu/text/UnicodeSet;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 281
    if-nez p3, :cond_0

    #@2
    .line 282
    return-void

    #@3
    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@a
    .line 286
    .local v0, "s":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@d
    .line 287
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 288
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 290
    :cond_2
    invoke-virtual {p3, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@19
    .line 291
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@22
    .line 292
    add-int/lit8 p1, p1, 0x1

    #@24
    if-le p1, p2, :cond_1

    #@26
    .line 280
    return-void
.end method

.method public forCodePoint(Landroid/icu/impl/coll/CollationData;I)V
    .locals 2
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I

    #@0
    .prologue
    .line 101
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@3
    move-result v0

    #@4
    .line 102
    .local v0, "ce32":I
    const/16 v1, 0xc0

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 103
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@a
    .line 104
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@d
    move-result v0

    #@e
    .line 106
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@10
    .line 107
    invoke-direct {p0, p2, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    #@13
    .line 100
    return-void
.end method

.method public forData(Landroid/icu/impl/coll/CollationData;)V
    .locals 5
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 49
    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 50
    const/4 v2, -0x1

    #@5
    iput v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    #@7
    .line 52
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@9
    .line 53
    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@b
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@d
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .line 55
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@1d
    .local v0, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 58
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1
    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@23
    if-nez v2, :cond_3

    #@25
    .line 59
    return-void

    #@26
    .line 56
    .restart local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_2
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@28
    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@2a
    iget v4, v0, Landroid/icu/impl/Trie2$Range;->value:I

    #@2c
    invoke-direct {p0, v2, v3, v4, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V

    #@2f
    goto :goto_0

    #@30
    .line 62
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_3
    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    #@32
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@35
    .line 63
    const/4 v2, 0x1

    #@36
    iput v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    #@38
    .line 64
    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@3a
    iput-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@3c
    .line 65
    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@3e
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@40
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v1

    #@44
    .line 66
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_4

    #@4a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@50
    .restart local v0    # "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@52
    if-eqz v2, :cond_5

    #@54
    .line 47
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_4
    return-void

    #@55
    .line 67
    .restart local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_5
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@57
    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@59
    iget v4, v0, Landroid/icu/impl/Trie2$Range;->value:I

    #@5b
    invoke-direct {p0, v2, v3, v4, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V

    #@5e
    goto :goto_1
.end method

.method handleContractions(III)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 246
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@5
    move-result v1

    #@6
    .line 247
    .local v1, "index":I
    and-int/lit16 v5, p3, 0x100

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 251
    sget-boolean v5, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    #@c
    if-nez v5, :cond_4

    #@e
    iget-object v5, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_0

    #@16
    :goto_0
    if-nez v4, :cond_4

    #@18
    new-instance v3, Ljava/lang/AssertionError;

    #@1a
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@1d
    throw v3

    #@1e
    :cond_0
    move v4, v3

    #@1f
    goto :goto_0

    #@20
    .line 253
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@22
    invoke-virtual {v5, v1}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@25
    move-result p3

    #@26
    .line 254
    sget-boolean v5, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    #@28
    if-nez v5, :cond_3

    #@2a
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    :goto_1
    if-nez v3, :cond_3

    #@32
    new-instance v3, Ljava/lang/AssertionError;

    #@34
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@37
    throw v3

    #@38
    :cond_2
    move v3, v4

    #@39
    goto :goto_1

    #@3a
    .line 255
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    #@3d
    .line 257
    :cond_4
    new-instance v3, Landroid/icu/util/CharsTrie;

    #@3f
    iget-object v4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    #@41
    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@43
    add-int/lit8 v5, v1, 0x2

    #@45
    invoke-direct {v3, v4, v5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@48
    invoke-virtual {v3}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    #@4b
    move-result-object v2

    #@4c
    .line 258
    .local v2, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_2
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_6

    #@52
    .line 259
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@55
    move-result-object v0

    #@56
    .line 260
    .local v0, "e":Landroid/icu/util/CharsTrie$Entry;
    iget-object v3, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@58
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    iput-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    #@5e
    .line 261
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    #@60
    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    #@63
    .line 262
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@68
    move-result v3

    #@69
    if-eqz v3, :cond_5

    #@6b
    .line 263
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    #@6d
    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    #@70
    .line 265
    :cond_5
    iget v3, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@72
    invoke-direct {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    #@75
    goto :goto_2

    #@76
    .line 267
    .end local v0    # "e":Landroid/icu/util/CharsTrie$Entry;
    :cond_6
    const/4 v3, 0x0

    #@77
    iput-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    #@79
    .line 245
    return-void
.end method
