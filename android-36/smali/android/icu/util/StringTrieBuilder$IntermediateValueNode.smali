.class final Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntermediateValueNode"
.end annotation


# instance fields
.field private greylist-max-o next:Landroid/icu/util/StringTrieBuilder$Node;


# direct methods
.method public constructor greylist-max-o <init>(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .registers 3
    .param p1, "v"    # I
    .param p2, "nextNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    .line 317
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 318
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    .line 319
    invoke-virtual {p0, p1}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->setValue(I)V

    .line 320
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 327
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 328
    return v0

    .line 330
    :cond_4
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 331
    return v2

    .line 333
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    .line 334
    .local v1, "o":Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v4, v1, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne v3, v4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 323
    const v0, 0x4eeeeea

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->value:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public greylist-max-o markRightEdgesFirst(I)I
    .registers 3
    .param p1, "edgeNumber"    # I

    .line 338
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->offset:I

    if-nez v0, :cond_d

    .line 339
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result v0

    move p1, v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->offset:I

    .line 341
    :cond_d
    return p1
.end method

.method public greylist-max-o write(Landroid/icu/util/StringTrieBuilder;)V
    .registers 4
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 345
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 346
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->value:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->offset:I

    .line 347
    return-void
.end method
