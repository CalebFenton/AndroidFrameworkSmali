.class public final Llibcore/icu/CollationElementIteratorICU;
.super Ljava/lang/Object;
.source "CollationElementIteratorICU.java"


# static fields
.field private static final PRIMARY_ORDER_MASK_:I = -0x10000

.field private static final PRIMARY_ORDER_SHIFT_:I = 0x10

.field private static final SECONDARY_ORDER_MASK_:I = 0xff00

.field private static final SECONDARY_ORDER_SHIFT_:I = 0x8

.field private static final TERTIARY_ORDER_MASK_:I = 0xff

.field private static final UNSIGNED_16_BIT_MASK_:I = 0xffff


# instance fields
.field private final address:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "address"    # J

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    iput-wide p1, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@5
    .line 154
    return-void
.end method

.method public static getInstance(JLjava/lang/String;)Llibcore/icu/CollationElementIteratorICU;
    .locals 4
    .param p0, "collatorAddress"    # J
    .param p2, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    invoke-static {p0, p1, p2}, Llibcore/icu/NativeCollation;->getCollationElementIterator(JLjava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    .line 151
    .local v0, "iteratorAddress":J
    new-instance v2, Llibcore/icu/CollationElementIteratorICU;

    #@6
    invoke-direct {v2, v0, v1}, Llibcore/icu/CollationElementIteratorICU;-><init>(J)V

    #@9
    return-object v2
.end method

.method public static primaryOrder(I)I
    .locals 2
    .param p0, "order"    # I

    #@0
    .prologue
    .line 125
    const/high16 v0, -0x10000

    #@2
    and-int/2addr v0, p0

    #@3
    shr-int/lit8 v0, v0, 0x10

    #@5
    .line 126
    const v1, 0xffff

    #@8
    .line 125
    and-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static secondaryOrder(I)I
    .locals 1
    .param p0, "order"    # I

    #@0
    .prologue
    .line 136
    const v0, 0xff00

    #@3
    and-int/2addr v0, p0

    #@4
    shr-int/lit8 v0, v0, 0x8

    #@6
    return v0
.end method

.method public static tertiaryOrder(I)I
    .locals 1
    .param p0, "order"    # I

    #@0
    .prologue
    .line 146
    and-int/lit16 v0, p0, 0xff

    #@2
    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->closeElements(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 169
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 165
    return-void

    #@9
    .line 168
    :catchall_0
    move-exception v0

    #@a
    .line 169
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 168
    throw v0
.end method

.method public getMaxExpansion(I)I
    .locals 2
    .param p1, "order"    # I

    #@0
    .prologue
    .line 81
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@2
    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->getMaxExpansion(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOffset()I
    .locals 2

    #@0
    .prologue
    .line 105
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->getOffset(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()I
    .locals 2

    #@0
    .prologue
    .line 57
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->next(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public previous()I
    .locals 2

    #@0
    .prologue
    .line 68
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->previous(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 46
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@2
    invoke-static {v0, v1}, Llibcore/icu/NativeCollation;->reset(J)V

    #@5
    .line 45
    return-void
.end method

.method public setOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 115
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@2
    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->setOffset(JI)V

    #@5
    .line 114
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@2
    invoke-static {v0, v1, p1}, Llibcore/icu/NativeCollation;->setText(JLjava/lang/String;)V

    #@5
    .line 89
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 3
    .param p1, "source"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 94
    iget-wide v0, p0, Llibcore/icu/CollationElementIteratorICU;->address:J

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-static {v0, v1, v2}, Llibcore/icu/NativeCollation;->setText(JLjava/lang/String;)V

    #@9
    .line 93
    return-void
.end method
