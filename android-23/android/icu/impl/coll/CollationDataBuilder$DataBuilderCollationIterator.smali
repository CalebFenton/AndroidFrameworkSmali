.class final Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataBuilderCollationIterator"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final builder:Landroid/icu/impl/coll/CollationDataBuilder;

.field protected final builderData:Landroid/icu/impl/coll/CollationData;

.field protected final jamoCE32s:[I

.field protected pos:I

.field protected s:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->-assertionsDisabled:Z

    #@b
    .line 1200
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationData;)V
    .locals 5
    .param p1, "b"    # Landroid/icu/impl/coll/CollationDataBuilder;
    .param p2, "newData"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    const/16 v4, 0x43

    #@2
    .line 1202
    const/4 v2, 0x0

    #@3
    invoke-direct {p0, p2, v2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    #@6
    .line 1321
    new-array v2, v4, [I

    #@8
    iput-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    #@a
    .line 1203
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@c
    .line 1204
    iput-object p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    #@e
    .line 1205
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    #@10
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@12
    iget-object v3, v3, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@14
    iput-object v3, v2, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@16
    .line 1207
    const/4 v0, 0x0

    #@17
    .local v0, "j":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@19
    .line 1208
    invoke-static {v0}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    #@1c
    move-result v1

    #@1d
    .line 1209
    .local v1, "jamo":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    #@1f
    const/4 v3, 0x7

    #@20
    invoke-static {v3, v1}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    #@23
    move-result v3

    #@24
    or-int/lit16 v3, v3, 0x100

    #@26
    aput v3, v2, v0

    #@28
    .line 1207
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1212
    .end local v1    # "jamo":I
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    #@2d
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    #@2f
    iput-object v3, v2, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@31
    .line 1201
    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 3
    .param p1, "num"    # I

    #@0
    .prologue
    .line 1289
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    #@2
    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@4
    neg-int v2, p1

    #@5
    invoke-static {v0, v1, v2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@b
    .line 1288
    return-void
.end method

.method fetchCEs(Ljava/lang/CharSequence;I[JI)I
    .locals 8
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "ces"    # [J
    .param p4, "cesLength"    # I

    #@0
    .prologue
    .line 1217
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    #@2
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@4
    iget-object v7, v7, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@6
    invoke-virtual {v7}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    #@9
    move-result-object v7

    #@a
    iput-object v7, v6, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@c
    .line 1218
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    #@e
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@10
    iget-object v7, v7, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@12
    invoke-virtual {v7}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    #@15
    move-result-object v7

    #@16
    iput-object v7, v6, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@18
    .line 1219
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    #@1a
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@1c
    iget-object v7, v7, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v7

    #@22
    iput-object v7, v6, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@24
    .line 1221
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->reset()V

    #@27
    .line 1222
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    #@29
    .line 1223
    iput p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@2b
    .line 1224
    :cond_0
    iget v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@2d
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    #@2f
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    #@32
    move-result v7

    #@33
    if-ge v6, v7, :cond_4

    #@35
    .line 1226
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->clearCEs()V

    #@38
    .line 1227
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    #@3a
    iget v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@3c
    invoke-static {v6, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@3f
    move-result v0

    #@40
    .line 1228
    .local v0, "c":I
    iget v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@42
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@45
    move-result v7

    #@46
    add-int/2addr v6, v7

    #@47
    iput v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@49
    .line 1229
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@4b
    iget-object v6, v6, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@4d
    invoke-virtual {v6, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@50
    move-result v1

    #@51
    .line 1231
    .local v1, "ce32":I
    const/16 v6, 0xc0

    #@53
    if-ne v1, v6, :cond_3

    #@55
    .line 1232
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@57
    iget-object v4, v6, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@59
    .line 1233
    .local v4, "d":Landroid/icu/impl/coll/CollationData;
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@5b
    iget-object v6, v6, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@5d
    invoke-virtual {v6, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@60
    move-result v1

    #@61
    .line 1237
    :goto_0
    const/4 v6, 0x1

    #@62
    invoke-virtual {p0, v4, v0, v1, v6}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    #@65
    .line 1238
    const/4 v5, 0x0

    #@66
    .local v5, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->getCEsLength()I

    #@69
    move-result v6

    #@6a
    if-ge v5, v6, :cond_0

    #@6c
    .line 1239
    invoke-virtual {p0, v5}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->getCE(I)J

    #@6f
    move-result-wide v2

    #@70
    .line 1240
    .local v2, "ce":J
    const-wide/16 v6, 0x0

    #@72
    cmp-long v6, v2, v6

    #@74
    if-eqz v6, :cond_2

    #@76
    .line 1241
    const/16 v6, 0x1f

    #@78
    if-ge p4, v6, :cond_1

    #@7a
    .line 1242
    aput-wide v2, p3, p4

    #@7c
    .line 1244
    :cond_1
    add-int/lit8 p4, p4, 0x1

    #@7e
    .line 1238
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@80
    goto :goto_1

    #@81
    .line 1235
    .end local v2    # "ce":J
    .end local v4    # "d":Landroid/icu/impl/coll/CollationData;
    .end local v5    # "i":I
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    #@83
    .restart local v4    # "d":Landroid/icu/impl/coll/CollationData;
    goto :goto_0

    #@84
    .line 1248
    .end local v0    # "c":I
    .end local v1    # "ce32":I
    .end local v4    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_4
    return p4
.end method

.method protected forwardNumCodePoints(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 1284
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    #@2
    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@4
    invoke-static {v0, v1, p1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@a
    .line 1283
    return-void
.end method

.method protected getCE32FromBuilderData(I)I
    .locals 5
    .param p1, "ce32"    # I

    #@0
    .prologue
    .line 1299
    sget-boolean v3, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->-assertionsDisabled:Z

    #@2
    if-nez v3, :cond_0

    #@4
    const/4 v3, 0x7

    #@5
    invoke-static {p1, v3}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_0

    #@b
    new-instance v3, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v3

    #@11
    .line 1300
    :cond_0
    and-int/lit16 v3, p1, 0x100

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 1301
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@18
    move-result v2

    #@19
    .line 1302
    .local v2, "jamo":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@1b
    iget-object v3, v3, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@1d
    invoke-virtual {v3, v2}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@20
    move-result v3

    #@21
    return v3

    #@22
    .line 1304
    .end local v2    # "jamo":I
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@24
    invoke-virtual {v3, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@27
    move-result-object v0

    #@28
    .line 1305
    .local v0, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iget v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    #@2a
    const/4 v4, 0x1

    #@2b
    if-ne v3, v4, :cond_2

    #@2d
    .line 1308
    :try_start_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@2f
    invoke-virtual {v3, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    #@32
    move-result v3

    #@33
    iput v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 1313
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    #@37
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@39
    iget-object v4, v4, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    iput-object v4, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@41
    .line 1315
    :cond_2
    iget v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    #@43
    return v3

    #@44
    .line 1309
    :catch_0
    move-exception v1

    #@45
    .line 1310
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@47
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->clearContexts()V

    #@4a
    .line 1311
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@4c
    invoke-virtual {v3, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    #@4f
    move-result v3

    #@50
    iput v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    #@52
    goto :goto_0
.end method

.method protected getDataCE32(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1294
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    #@2
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@4
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 1259
    iget v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@2
    return v0
.end method

.method public nextCodePoint()I
    .locals 3

    #@0
    .prologue
    .line 1264
    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@2
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    #@4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v2

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 1265
    const/4 v1, -0x1

    #@b
    return v1

    #@c
    .line 1267
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    #@e
    iget v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@10
    invoke-static {v1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@13
    move-result v0

    #@14
    .line 1268
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@16
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@19
    move-result v2

    #@1a
    add-int/2addr v1, v2

    #@1b
    iput v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@1d
    .line 1269
    return v0
.end method

.method public previousCodePoint()I
    .locals 3

    #@0
    .prologue
    .line 1274
    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1275
    const/4 v1, -0x1

    #@5
    return v1

    #@6
    .line 1277
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    #@8
    iget v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@a
    invoke-static {v1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@d
    move-result v0

    #@e
    .line 1278
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@10
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@13
    move-result v2

    #@14
    sub-int/2addr v1, v2

    #@15
    iput v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@17
    .line 1279
    return v0
.end method

.method public resetToOffset(I)V
    .locals 0
    .param p1, "newOffset"    # I

    #@0
    .prologue
    .line 1253
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->reset()V

    #@3
    .line 1254
    iput p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    #@5
    .line 1252
    return-void
.end method
