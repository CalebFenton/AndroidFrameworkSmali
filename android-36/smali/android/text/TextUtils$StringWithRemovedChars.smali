.class Landroid/text/TextUtils$StringWithRemovedChars;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringWithRemovedChars"
.end annotation


# instance fields
.field private final blacklist mOriginal:Ljava/lang/String;

.field private blacklist mRemovedChars:Ljava/util/BitSet;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "original"    # Ljava/lang/String;

    .line 2547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2548
    iput-object p1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    .line 2549
    return-void
.end method


# virtual methods
.method blacklist codePointAt(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 2613
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method blacklist length()I
    .registers 2

    .line 2606
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method blacklist removeAllCharAfter(I)V
    .registers 4
    .param p1, "firstRemoved"    # I

    .line 2578
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_11

    .line 2579
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    .line 2582
    :cond_11
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->set(II)V

    .line 2583
    return-void
.end method

.method blacklist removeAllCharBefore(I)V
    .registers 4
    .param p1, "firstNonRemoved"    # I

    .line 2567
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_11

    .line 2568
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    .line 2571
    :cond_11
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(II)V

    .line 2572
    return-void
.end method

.method blacklist removeRange(II)V
    .registers 5
    .param p1, "firstRemoved"    # I
    .param p2, "firstNonRemoved"    # I

    .line 2556
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_11

    .line 2557
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    .line 2560
    :cond_11
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(II)V

    .line 2561
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2588
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_7

    .line 2589
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    return-object v0

    .line 2592
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2593
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 2594
    iget-object v2, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2595
    iget-object v2, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2593
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2599
    .end local v1    # "i":I
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
