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
.field private next:Landroid/icu/util/StringTrieBuilder$Node;


# direct methods
.method public constructor <init>(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 0
    .param p1, "v"    # I
    .param p2, "nextNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    #@0
    .prologue
    .line 314
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    #@3
    .line 315
    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@5
    .line 316
    invoke-virtual {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    #@8
    .line 314
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 324
    if-ne p0, p1, :cond_0

    #@4
    .line 325
    return v1

    #@5
    .line 327
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_1

    #@b
    .line 328
    return v2

    #@c
    :cond_1
    move-object v0, p1

    #@d
    .line 330
    check-cast v0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    #@f
    .line 331
    .local v0, "o":Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@11
    iget-object v4, v0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@13
    if-ne v3, v4, :cond_2

    #@15
    :goto_0
    return v1

    #@16
    :cond_2
    move v1, v2

    #@17
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 320
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@2
    const v1, 0x4eeeeea

    #@5
    add-int/2addr v0, v1

    #@6
    mul-int/lit8 v0, v0, 0x25

    #@8
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@a
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1
    .param p1, "edgeNumber"    # I

    #@0
    .prologue
    .line 335
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 336
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@6
    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    #@9
    move-result p1

    #@a
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@c
    .line 338
    :cond_0
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 2
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    #@5
    .line 343
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@e
    .line 341
    return-void
.end method
