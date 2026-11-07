.class public final Ljava/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final whitelist test-api NULLORDER:I = -0x1


# instance fields
.field private greylist-max-o icuIterator:Landroid/icu/text/CollationElementIterator;


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/text/CollationElementIterator;)V
    .registers 2
    .param p1, "iterator"    # Landroid/icu/text/CollationElementIterator;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    .line 140
    return-void
.end method

.method public static final whitelist test-api primaryOrder(I)I
    .registers 2
    .param p0, "order"    # I

    .line 205
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    return v0
.end method

.method public static final whitelist test-api secondaryOrder(I)S
    .registers 2
    .param p0, "order"    # I

    .line 215
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->secondaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static final whitelist test-api tertiaryOrder(I)S
    .registers 2
    .param p0, "order"    # I

    .line 225
    invoke-static {p0}, Landroid/icu/text/CollationElementIterator;->tertiaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public whitelist test-api getMaxExpansion(I)I
    .registers 3
    .param p1, "order"    # I

    .line 282
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getOffset()I
    .registers 2

    .line 267
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    return v0
.end method

.method public whitelist test-api next()I
    .registers 2

    .line 171
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    return v0
.end method

.method public whitelist test-api previous()I
    .registers 2

    .line 194
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->previous()I

    move-result v0

    return v0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 149
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->reset()V

    .line 150
    return-void
.end method

.method public whitelist test-api setOffset(I)V
    .registers 3
    .param p1, "newOffset"    # I

    .line 247
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 248
    return-void
.end method

.method public whitelist test-api setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public whitelist test-api setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .line 306
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 307
    return-void
.end method
