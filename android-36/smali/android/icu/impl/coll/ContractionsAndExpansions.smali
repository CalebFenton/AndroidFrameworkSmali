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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist addPrefixes:Z

.field private blacklist ces:[J

.field private blacklist checkTailored:I

.field private blacklist contractions:Landroid/icu/text/UnicodeSet;

.field private blacklist data:Landroid/icu/impl/coll/CollationData;

.field private blacklist expansions:Landroid/icu/text/UnicodeSet;

.field private blacklist ranges:Landroid/icu/text/UnicodeSet;

.field private blacklist sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

.field private blacklist suffix:Ljava/lang/String;

.field private blacklist tailored:Landroid/icu/text/UnicodeSet;

.field private blacklist unreversedPrefix:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V
    .registers 6
    .param p1, "con"    # Landroid/icu/text/UnicodeSet;
    .param p2, "exp"    # Landroid/icu/text/UnicodeSet;
    .param p3, "s"    # Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;
    .param p4, "prefixes"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    .line 35
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    .line 39
    const/16 v0, 0x1f

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    .line 50
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    .line 51
    iput-object p2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    .line 52
    iput-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    .line 53
    iput-boolean p4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    .line 54
    return-void
.end method

.method private blacklist enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I
    .param p4, "cne"    # Landroid/icu/impl/coll/ContractionsAndExpansions;

    .line 81
    iget v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    if-nez v0, :cond_5

    goto :goto_58

    .line 84
    :cond_5
    iget v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    if-gez v0, :cond_14

    .line 86
    const/16 v0, 0xc0

    if-ne p3, v0, :cond_e

    .line 87
    return-void

    .line 89
    :cond_e
    iget-object v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_58

    .line 92
    :cond_14
    if-ne p1, p2, :cond_1f

    .line 93
    iget-object v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 94
    return-void

    .line 96
    :cond_1f
    iget-object v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 97
    iget-object v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    if-nez v0, :cond_32

    .line 98
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    .line 100
    :cond_32
    iget-object v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iget-object v1, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 101
    iget-object v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    .line 102
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    if-ge v1, v0, :cond_58

    .line 103
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v2

    iget-object v3, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    invoke-direct {p4, v2, v3, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 106
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_58
    :goto_58
    invoke-direct {p4, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 107
    return-void
.end method

.method private blacklist handleCE32(III)V
    .registers 12
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    .line 121
    nop

    :goto_1
    and-int/lit16 v0, p3, 0xff

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_15

    .line 123
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_14

    .line 124
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    .line 126
    :cond_14
    return-void

    .line 128
    :cond_15
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_134

    goto/16 :goto_131

    .line 229
    :pswitch_20
    return-void

    .line 226
    :pswitch_21
    return-void

    .line 203
    :pswitch_22
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_51

    .line 206
    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v0, v3}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    .line 207
    .local v0, "iter":Landroid/icu/impl/coll/UTF16CollationIterator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v3, "hangul":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "c":I
    :goto_33
    if-gt v1, p2, :cond_51

    .line 209
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 210
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, v2, v3, v2}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 212
    invoke-virtual {v0}, Landroid/icu/impl/coll/UTF16CollationIterator;->fetchCEs()I

    move-result v4

    .line 214
    .local v4, "length":I
    nop

    .line 215
    iget-object v5, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UTF16CollationIterator;->getCEs()[J

    move-result-object v6

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v5, v6, v2, v7}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 208
    .end local v4    # "length":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 220
    .end local v0    # "iter":Landroid/icu/impl/coll/UTF16CollationIterator;
    .end local v1    # "c":I
    .end local v3    # "hangul":Ljava/lang/StringBuilder;
    :cond_51
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_5c

    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    .line 223
    :cond_5c
    return-void

    .line 198
    :pswitch_5d
    nop

    .line 200
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    aget p3, v0, v2

    .line 201
    goto/16 :goto_131

    .line 195
    :pswitch_66
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v1

    aget p3, v0, v1

    .line 196
    goto/16 :goto_131

    .line 191
    :pswitch_72
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleContractions(III)V

    .line 192
    return-void

    .line 188
    :pswitch_76
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handlePrefixes(III)V

    .line 189
    return-void

    .line 176
    :pswitch_7a
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_8f

    .line 177
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 178
    .local v0, "idx":I
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v1

    .line 179
    .local v1, "length":I
    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-interface {v2, v3, v0, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 183
    .end local v0    # "idx":I
    .end local v1    # "length":I
    :cond_8f
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_9a

    .line 184
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    .line 186
    :cond_9a
    return-void

    .line 161
    :pswitch_9b
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_c4

    .line 162
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 163
    .restart local v0    # "idx":I
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v1

    .line 164
    .restart local v1    # "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a8
    if-ge v3, v1, :cond_bd

    .line 165
    iget-object v4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    iget-object v5, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v5, v5, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int v6, v0, v3

    aget v5, v5, v6

    invoke-static {v5}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 167
    .end local v3    # "i":I
    :cond_bd
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-interface {v3, v4, v2, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 171
    .end local v0    # "idx":I
    .end local v1    # "length":I
    :cond_c4
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_cf

    .line 172
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    .line 174
    :cond_cf
    return-void

    .line 149
    :pswitch_d0
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_ec

    .line 150
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 151
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 152
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 156
    :cond_ec
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_f7

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    .line 159
    :cond_f7
    return-void

    .line 135
    :pswitch_f8
    new-instance v0, Ljava/lang/AssertionError;

    .line 137
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 136
    const-string v2, "Unexpected CE32 tag type %d for ce32=0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 144
    :pswitch_114
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_121

    .line 145
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    .line 147
    :cond_121
    return-void

    .line 139
    :pswitch_122
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_12f

    .line 140
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    .line 142
    :cond_12f
    return-void

    .line 130
    :pswitch_130
    return-void

    .line 229
    :goto_131
    goto/16 :goto_1

    nop

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_130
        :pswitch_122
        :pswitch_114
        :pswitch_f8
        :pswitch_d0
        :pswitch_9b
        :pswitch_7a
        :pswitch_f8
        :pswitch_76
        :pswitch_72
        :pswitch_66
        :pswitch_5d
        :pswitch_22
        :pswitch_f8
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist handlePrefixes(III)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    .line 235
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 236
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    .line 237
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 238
    iget-boolean v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    if-nez v1, :cond_12

    .line 239
    return-void

    .line 241
    :cond_12
    new-instance v1, Landroid/icu/util/CharsTrie;

    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    invoke-direct {v1, v2, v3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v1

    .line 242
    .local v1, "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_21
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 243
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v2

    .line 244
    .local v2, "e":Landroid/icu/util/CharsTrie$Entry;
    iget-object v3, v2, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->setPrefix(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    .line 248
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    .line 249
    iget v3, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 250
    .end local v2    # "e":Landroid/icu/util/CharsTrie$Entry;
    goto :goto_21

    .line 251
    :cond_40
    invoke-direct {p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->resetPrefix()V

    .line 252
    return-void
.end method

.method private blacklist resetPrefix()V
    .registers 3

    .line 311
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 312
    return-void
.end method

.method private blacklist setPrefix(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "pfx"    # Ljava/lang/CharSequence;

    .line 306
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 307
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 308
    return-void
.end method


# virtual methods
.method blacklist addExpansions(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 280
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 281
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_1b

    .line 282
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_1b

    .line 285
    :cond_16
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    .line 287
    :cond_1b
    :goto_1b
    return-void
.end method

.method blacklist addStrings(IILandroid/icu/text/UnicodeSet;)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "set"    # Landroid/icu/text/UnicodeSet;

    .line 290
    if-nez p3, :cond_3

    .line 291
    return-void

    .line 293
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    .local v0, "s":Ljava/lang/StringBuilder;
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 297
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_16
    invoke-virtual {p3, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 300
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 301
    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_a

    .line 302
    return-void
.end method

.method public blacklist forCodePoint(Landroid/icu/impl/coll/CollationData;I)V
    .registers 5
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I

    .line 110
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    .line 111
    .local v0, "ce32":I
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_e

    .line 112
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 113
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    .line 115
    :cond_e
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    .line 116
    invoke-direct {p0, p2, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 117
    return-void
.end method

.method public blacklist forData(Landroid/icu/impl/coll/CollationData;)V
    .registers 7
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    .line 58
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v0, :cond_7

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    .line 61
    :cond_7
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    .line 62
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    .local v0, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    move-object v2, v1

    .local v2, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v1, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_2c

    .line 65
    iget v1, v2, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v2, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v4, v2, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v1, v3, v4, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V

    goto :goto_11

    .line 67
    .end local v2    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_2c
    iget-object v1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v1, :cond_31

    .line 68
    return-void

    .line 71
    :cond_31
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 72
    const/4 v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    .line 73
    iget-object v1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    .line 74
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 75
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    move-object v2, v1

    .restart local v2    # "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v1, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_60

    .line 76
    iget v1, v2, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v2, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v4, v2, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v1, v3, v4, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V

    goto :goto_45

    .line 78
    .end local v2    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_60
    return-void
.end method

.method blacklist handleContractions(III)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    .line 255
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 256
    .local v0, "index":I
    and-int/lit16 v1, p3, 0x100

    if-eqz v1, :cond_9

    .line 260
    goto :goto_13

    .line 262
    :cond_9
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    .line 263
    nop

    .line 264
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 266
    :goto_13
    new-instance v1, Landroid/icu/util/CharsTrie;

    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    invoke-direct {v1, v2, v3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v1

    .line 267
    .local v1, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_22
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 268
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v2

    .line 269
    .local v2, "e":Landroid/icu/util/CharsTrie$Entry;
    iget-object v3, v2, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    .line 270
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    .line 271
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_46

    .line 272
    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    .line 274
    :cond_46
    iget v3, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 275
    .end local v2    # "e":Landroid/icu/util/CharsTrie$Entry;
    goto :goto_22

    .line 276
    :cond_4c
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    .line 277
    return-void
.end method
