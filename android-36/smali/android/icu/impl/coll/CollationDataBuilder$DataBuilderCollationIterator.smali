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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field protected final blacklist builder:Landroid/icu/impl/coll/CollationDataBuilder;

.field protected final blacklist builderData:Landroid/icu/impl/coll/CollationData;

.field protected final blacklist jamoCE32s:[I

.field protected blacklist pos:I

.field protected blacklist s:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1234
    const-class v0, Landroid/icu/impl/coll/CollationDataBuilder;

    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationData;)V
    .registers 8
    .param p1, "b"    # Landroid/icu/impl/coll/CollationDataBuilder;
    .param p2, "newData"    # Landroid/icu/impl/coll/CollationData;

    .line 1236
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    .line 1356
    const/16 v0, 0x43

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    .line 1237
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    .line 1238
    iput-object p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    .line 1239
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v2, v1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 1241
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_17
    if-ge v1, v0, :cond_2b

    .line 1242
    invoke-static {v1}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v2

    .line 1243
    .local v2, "jamo":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    const/4 v4, 0x7

    invoke-static {v4, v2}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v4

    or-int/lit16 v4, v4, 0x100

    aput v4, v3, v1

    .line 1241
    .end local v2    # "jamo":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1246
    .end local v1    # "j":I
    :cond_2b
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    iput-object v1, v0, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 1247
    return-void
.end method


# virtual methods
.method protected blacklist backwardNumCodePoints(I)V
    .registers 5
    .param p1, "num"    # I

    .line 1323
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    neg-int v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    .line 1324
    return-void
.end method

.method blacklist fetchCEs(Ljava/lang/CharSequence;I[JI)I
    .registers 13
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "ces"    # [J
    .param p4, "cesLength"    # I

    .line 1251
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    .line 1252
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/coll/CollationData;->ces:[J

    .line 1253
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    .line 1255
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->reset()V

    .line 1256
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    .line 1257
    iput p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    .line 1258
    :goto_2b
    iget v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_85

    .line 1260
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->clearCEs()V

    .line 1261
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1262
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    .line 1263
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    .line 1265
    .local v1, "ce32":I
    const/16 v2, 0xc0

    if-ne v1, v2, :cond_62

    .line 1266
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    .line 1267
    .local v2, "d":Landroid/icu/impl/coll/CollationData;
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    goto :goto_64

    .line 1269
    .end local v2    # "d":Landroid/icu/impl/coll/CollationData;
    :cond_62
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    .line 1271
    .restart local v2    # "d":Landroid/icu/impl/coll/CollationData;
    :goto_64
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    .line 1272
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_69
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->getCEsLength()I

    move-result v4

    if-ge v3, v4, :cond_84

    .line 1273
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->getCE(I)J

    move-result-wide v4

    .line 1274
    .local v4, "ce":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_81

    .line 1275
    const/16 v6, 0x1f

    if-ge p4, v6, :cond_7f

    .line 1276
    aput-wide v4, p3, p4

    .line 1278
    :cond_7f
    add-int/lit8 p4, p4, 0x1

    .line 1272
    .end local v4    # "ce":J
    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 1281
    .end local v0    # "c":I
    .end local v1    # "ce32":I
    .end local v2    # "d":Landroid/icu/impl/coll/CollationData;
    .end local v3    # "i":I
    :cond_84
    goto :goto_2b

    .line 1282
    :cond_85
    return p4
.end method

.method protected blacklist forwardNumCodePoints(I)V
    .registers 4
    .param p1, "num"    # I

    .line 1318
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0, v1, p1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    .line 1319
    return-void
.end method

.method protected blacklist getCE32FromBuilderData(I)I
    .registers 5
    .param p1, "ce32"    # I

    .line 1333
    nop

    .line 1334
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_12

    .line 1335
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 1336
    .local v0, "jamo":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    return v1

    .line 1338
    .end local v0    # "jamo":I
    :cond_12
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    .line 1339
    .local v0, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iget v1, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    iget v1, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->era:I

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-static {v2}, Landroid/icu/impl/coll/CollationDataBuilder;->-$$Nest$fgetcontextsEra(Landroid/icu/impl/coll/CollationDataBuilder;)I

    move-result v2

    if-eq v1, v2, :cond_52

    .line 1342
    :cond_27
    :try_start_27
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v1

    iput v1, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I
    :try_end_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27 .. :try_end_2f} :catch_30

    .line 1346
    goto :goto_3e

    .line 1343
    :catch_30
    move-exception v1

    .line 1344
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationDataBuilder;->clearContexts()V

    .line 1345
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v2

    iput v2, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    .line 1347
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3e
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-static {v1}, Landroid/icu/impl/coll/CollationDataBuilder;->-$$Nest$fgetcontextsEra(Landroid/icu/impl/coll/CollationDataBuilder;)I

    move-result v1

    iput v1, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->era:I

    .line 1348
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    .line 1350
    :cond_52
    iget v1, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    return v1
.end method

.method protected blacklist getDataCE32(I)I
    .registers 3
    .param p1, "c"    # I

    .line 1328
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getOffset()I
    .registers 2

    .line 1293
    iget v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return v0
.end method

.method public blacklist nextCodePoint()I
    .registers 4

    .line 1298
    iget v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 1299
    const/4 v0, -0x1

    return v0

    .line 1301
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1302
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    .line 1303
    return v0
.end method

.method public blacklist previousCodePoint()I
    .registers 4

    .line 1308
    iget v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    if-nez v0, :cond_6

    .line 1309
    const/4 v0, -0x1

    return v0

    .line 1311
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1312
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    .line 1313
    return v0
.end method

.method public blacklist resetToOffset(I)V
    .registers 2
    .param p1, "newOffset"    # I

    .line 1287
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->reset()V

    .line 1288
    iput p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    .line 1289
    return-void
.end method
