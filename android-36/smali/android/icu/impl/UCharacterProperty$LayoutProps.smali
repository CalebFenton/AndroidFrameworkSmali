.class final Landroid/icu/impl/UCharacterProperty$LayoutProps;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutProps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DATA_FORMAT:I = 0x4c61796f

.field static final blacklist INSTANCE:Landroid/icu/impl/UCharacterProperty$LayoutProps;

.field private static final blacklist IS_ACCEPTABLE:Landroid/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;

.field private static final blacklist IX_INPC_TRIE_TOP:I = 0x1

.field private static final blacklist IX_INSC_TRIE_TOP:I = 0x2

.field private static final blacklist IX_MAX_VALUES:I = 0x9

.field private static final blacklist IX_VO_TRIE_TOP:I = 0x3

.field private static final blacklist MAX_INPC_SHIFT:I = 0x18

.field private static final blacklist MAX_INSC_SHIFT:I = 0x10

.field private static final blacklist MAX_VO_SHIFT:I = 0x8


# instance fields
.field blacklist inpcTrie:Landroid/icu/util/CodePointTrie;

.field blacklist inscTrie:Landroid/icu/util/CodePointTrie;

.field blacklist maxInpcValue:I

.field blacklist maxInscValue:I

.field blacklist maxVoValue:I

.field blacklist voTrie:Landroid/icu/util/CodePointTrie;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 123
    const-class v0, Landroid/icu/impl/UCharacterProperty;

    .line 130
    new-instance v0, Landroid/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;-><init>(Landroid/icu/impl/UCharacterProperty-IA;)V

    sput-object v0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->IS_ACCEPTABLE:Landroid/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;

    .line 154
    new-instance v0, Landroid/icu/impl/UCharacterProperty$LayoutProps;

    invoke-direct {v0}, Landroid/icu/impl/UCharacterProperty$LayoutProps;-><init>()V

    sput-object v0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->INSTANCE:Landroid/icu/impl/UCharacterProperty$LayoutProps;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 12

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->inpcTrie:Landroid/icu/util/CodePointTrie;

    .line 157
    iput-object v0, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->inscTrie:Landroid/icu/util/CodePointTrie;

    .line 158
    iput-object v0, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->voTrie:Landroid/icu/util/CodePointTrie;

    .line 160
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->maxInpcValue:I

    .line 161
    iput v1, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->maxInscValue:I

    .line 162
    iput v1, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->maxVoValue:I

    .line 165
    const-string v2, "ulayout.icu"

    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 167
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    :try_start_17
    sget-object v3, Landroid/icu/impl/UCharacterProperty$LayoutProps;->IS_ACCEPTABLE:Landroid/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;

    const v4, 0x4c61796f    # 5.9106748E7f

    invoke-static {v2, v4, v3}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    .line 168
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 169
    .local v3, "startPos":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 170
    .local v4, "indexesLength":I
    const/16 v5, 0xc

    if-lt v4, v5, :cond_9f

    .line 174
    new-array v5, v4, [I

    .line 175
    .local v5, "inIndexes":[I
    aput v4, v5, v1

    .line 176
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_30
    if-ge v1, v4, :cond_3b

    .line 177
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 180
    .end local v1    # "i":I
    :cond_3b
    mul-int/lit8 v1, v4, 0x4

    .line 181
    .local v1, "offset":I
    const/4 v6, 0x1

    aget v6, v5, v6

    .line 182
    .local v6, "top":I
    sub-int v7, v6, v1

    .line 183
    .local v7, "trieSize":I
    const/16 v8, 0x10

    if-lt v7, v8, :cond_4c

    .line 184
    invoke-static {v0, v0, v2}, Landroid/icu/util/CodePointTrie;->fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;

    move-result-object v9

    iput-object v9, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->inpcTrie:Landroid/icu/util/CodePointTrie;

    .line 186
    :cond_4c
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    sub-int/2addr v9, v3

    .line 187
    .local v9, "pos":I
    nop

    .line 188
    sub-int v10, v6, v9

    invoke-static {v2, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 189
    move v1, v6

    .line 190
    const/4 v10, 0x2

    aget v10, v5, v10

    .line 191
    .end local v6    # "top":I
    .local v10, "top":I
    sub-int v6, v10, v1

    .line 192
    .end local v7    # "trieSize":I
    .local v6, "trieSize":I
    if-lt v6, v8, :cond_65

    .line 193
    invoke-static {v0, v0, v2}, Landroid/icu/util/CodePointTrie;->fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;

    move-result-object v7

    iput-object v7, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->inscTrie:Landroid/icu/util/CodePointTrie;

    .line 195
    :cond_65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v7, v3

    .line 196
    .end local v9    # "pos":I
    .local v7, "pos":I
    nop

    .line 197
    sub-int v9, v10, v7

    invoke-static {v2, v9}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 198
    move v1, v10

    .line 199
    const/4 v9, 0x3

    aget v9, v5, v9

    .line 200
    .end local v10    # "top":I
    .local v9, "top":I
    sub-int v6, v9, v1

    .line 201
    if-lt v6, v8, :cond_7e

    .line 202
    invoke-static {v0, v0, v2}, Landroid/icu/util/CodePointTrie;->fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->voTrie:Landroid/icu/util/CodePointTrie;

    .line 204
    :cond_7e
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v3

    .line 205
    .end local v7    # "pos":I
    .local v0, "pos":I
    nop

    .line 206
    sub-int v7, v9, v0

    invoke-static {v2, v7}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 208
    const/16 v7, 0x9

    aget v7, v5, v7

    .line 209
    .local v7, "maxValues":I
    ushr-int/lit8 v8, v7, 0x18

    iput v8, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->maxInpcValue:I

    .line 210
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->maxInscValue:I

    .line 211
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->maxVoValue:I

    .line 214
    .end local v0    # "pos":I
    .end local v1    # "offset":I
    .end local v3    # "startPos":I
    .end local v4    # "indexesLength":I
    .end local v5    # "inIndexes":[I
    .end local v6    # "trieSize":I
    .end local v7    # "maxValues":I
    .end local v9    # "top":I
    nop

    .line 215
    return-void

    .line 171
    .restart local v3    # "startPos":I
    .restart local v4    # "indexesLength":I
    :cond_9f
    new-instance v0, Landroid/icu/util/ICUUncheckedIOException;

    const-string v1, "Text layout properties data: not enough indexes"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytes":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/icu/impl/UCharacterProperty$LayoutProps;
    throw v0
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_a7} :catch_a7

    .line 212
    .end local v3    # "startPos":I
    .end local v4    # "indexesLength":I
    .restart local v2    # "bytes":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Landroid/icu/impl/UCharacterProperty$LayoutProps;
    :catch_a7
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist addPropertyStarts(ILandroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 8
    .param p1, "src"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    .line 219
    packed-switch p1, :pswitch_data_4a

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 227
    :pswitch_9
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->voTrie:Landroid/icu/util/CodePointTrie;

    .line 228
    .local v0, "trie":Landroid/icu/util/CodePointTrie;
    goto :goto_12

    .line 224
    .end local v0    # "trie":Landroid/icu/util/CodePointTrie;
    :pswitch_c
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->inscTrie:Landroid/icu/util/CodePointTrie;

    .line 225
    .restart local v0    # "trie":Landroid/icu/util/CodePointTrie;
    goto :goto_12

    .line 221
    .end local v0    # "trie":Landroid/icu/util/CodePointTrie;
    :pswitch_f
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$LayoutProps;->inpcTrie:Landroid/icu/util/CodePointTrie;

    .line 222
    .restart local v0    # "trie":Landroid/icu/util/CodePointTrie;
    nop

    .line 233
    :goto_12
    if-eqz v0, :cond_2c

    .line 240
    new-instance v1, Landroid/icu/util/CodePointMap$Range;

    invoke-direct {v1}, Landroid/icu/util/CodePointMap$Range;-><init>()V

    .line 241
    .local v1, "range":Landroid/icu/util/CodePointMap$Range;
    const/4 v2, 0x0

    .line 242
    .local v2, "start":I
    :goto_1a
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/icu/util/CodePointTrie;->getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 243
    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 244
    invoke-virtual {v1}, Landroid/icu/util/CodePointMap$Range;->getEnd()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto :goto_1a

    .line 246
    :cond_2b
    return-object p2

    .line 234
    .end local v1    # "range":Landroid/icu/util/CodePointMap$Range;
    .end local v2    # "start":I
    :cond_2c
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no data for one of the text layout properties; src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LayoutProps"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_4a
    .packed-switch 0xc
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method
