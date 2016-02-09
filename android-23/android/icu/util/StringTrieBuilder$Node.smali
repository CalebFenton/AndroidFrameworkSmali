.class abstract Landroid/icu/util/StringTrieBuilder$Node;
.super Ljava/lang/Object;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Node"
.end annotation


# instance fields
.field protected offset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 180
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@6
    .line 179
    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 0
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "sValue"    # I

    #@0
    .prologue
    .line 197
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 188
    if-eq p0, p1, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/icu/util/StringTrieBuilder$Node;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public final getOffset()I
    .locals 1

    #@0
    .prologue
    .line 255
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@2
    return v0
.end method

.method public abstract hashCode()I
.end method

.method public markRightEdgesFirst(I)I
    .locals 1
    .param p1, "edgeNumber"    # I

    #@0
    .prologue
    .line 236
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 237
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@6
    .line 239
    :cond_0
    return p1
.end method

.method public register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 0
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    .line 207
    return-object p0
.end method

.method public abstract write(Landroid/icu/util/StringTrieBuilder;)V
.end method

.method public final writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V
    .locals 1
    .param p1, "firstRight"    # I
    .param p2, "lastRight"    # I
    .param p3, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    .line 251
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@2
    if-gez v0, :cond_1

    #@4
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@6
    if-lt v0, p2, :cond_0

    #@8
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@a
    if-ge p1, v0, :cond_1

    #@c
    .line 252
    :cond_0
    invoke-virtual {p0, p3}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    #@f
    .line 245
    :cond_1
    return-void
.end method
