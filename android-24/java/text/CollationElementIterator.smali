.class public final Ljava/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final NULLORDER:I = -0x1


# instance fields
.field private icuIterator:Landroid/icu/text/CollationElementIterator;


# direct methods
.method constructor <init>(Landroid/icu/text/CollationElementIterator;)V
    .locals 0
    .param p1, "iterator"    # Landroid/icu/text/CollationElementIterator;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    iput-object p1, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    #@5
    .line 113
    return-void
.end method

.method public static final primaryOrder(I)I
    .locals 1
    .param p0, "order"    # I

    #@0
    .prologue
    .line 170
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

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
    .line 180
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->secondaryOrder(I)I

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
    .line 190
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->tertiaryOrder(I)I

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
    .line 240
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()I
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public previous()I
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->previous()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->reset()V

    #@5
    .line 121
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "newOffset"    # I

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@5
    .line 226
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    #@5
    .line 249
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1
    .param p1, "source"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    #@5
    .line 259
    return-void
.end method
