.class public final Ljava/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final NULLORDER:I = -0x1


# instance fields
.field private icuIterator:Llibcore/icu/CollationElementIteratorICU;


# direct methods
.method constructor <init>(Llibcore/icu/CollationElementIteratorICU;)V
    .locals 0
    .param p1, "iterator"    # Llibcore/icu/CollationElementIteratorICU;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    #@5
    .line 64
    return-void
.end method

.method public static final primaryOrder(I)I
    .locals 1
    .param p0, "order"    # I

    #@0
    .prologue
    .line 129
    invoke-static {p0}, Llibcore/icu/CollationElementIteratorICU;->primaryOrder(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static final secondaryOrder(I)S
    .locals 1
    .param p0, "order"    # I

    #@0
    .prologue
    .line 153
    invoke-static {p0}, Llibcore/icu/CollationElementIteratorICU;->secondaryOrder(I)I

    #@3
    move-result v0

    #@4
    int-to-short v0, v0

    #@5
    return v0
.end method

.method public static final tertiaryOrder(I)S
    .locals 1
    .param p0, "order"    # I

    #@0
    .prologue
    .line 212
    invoke-static {p0}, Llibcore/icu/CollationElementIteratorICU;->tertiaryOrder(I)I

    #@3
    move-result v0

    #@4
    int-to-short v0, v0

    #@5
    return v0
.end method


# virtual methods
.method public getMaxExpansion(I)I
    .locals 1
    .param p1, "order"    # I

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->getMaxExpansion(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    #@2
    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->getOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    #@2
    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->next()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public previous()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    #@2
    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->previous()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    #@2
    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->reset()V

    #@5
    .line 141
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "newOffset"    # I

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->setOffset(I)V

    #@5
    .line 178
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->setText(Ljava/lang/String;)V

    #@5
    .line 200
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1
    .param p1, "source"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->setText(Ljava/text/CharacterIterator;)V

    #@5
    .line 189
    return-void
.end method
