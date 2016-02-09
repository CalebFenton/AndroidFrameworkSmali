.class public Landroid/icu/impl/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 19
    .local p0, "this":Landroid/icu/impl/Pair;, "Landroid/icu/impl/Pair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    iput-object p1, p0, Landroid/icu/impl/Pair;->first:Ljava/lang/Object;

    #@5
    .line 21
    iput-object p2, p0, Landroid/icu/impl/Pair;->second:Ljava/lang/Object;

    #@7
    .line 19
    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(TF;TS;)",
            "Landroid/icu/impl/Pair",
            "<TF;TS;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 31
    .local p0, "first":Ljava/lang/Object;, "TF;"
    .local p1, "second":Ljava/lang/Object;, "TS;"
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Pair.of requires non null values."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 34
    :cond_1
    new-instance v0, Landroid/icu/impl/Pair;

    #@f
    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@12
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Pair;, "Landroid/icu/impl/Pair<TF;TS;>;"
    const/4 v1, 0x0

    #@1
    .line 39
    if-ne p1, p0, :cond_0

    #@3
    .line 40
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 42
    :cond_0
    instance-of v2, p1, Landroid/icu/impl/Pair;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 43
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 45
    check-cast v0, Landroid/icu/impl/Pair;

    #@d
    .line 46
    .local v0, "rhs":Landroid/icu/impl/Pair;, "Lcom/ibm/icu/impl/Pair<**>;"
    iget-object v2, p0, Landroid/icu/impl/Pair;->first:Ljava/lang/Object;

    #@f
    iget-object v3, v0, Landroid/icu/impl/Pair;->first:Ljava/lang/Object;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v1, p0, Landroid/icu/impl/Pair;->second:Ljava/lang/Object;

    #@19
    iget-object v2, v0, Landroid/icu/impl/Pair;->second:Ljava/lang/Object;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 51
    .local p0, "this":Landroid/icu/impl/Pair;, "Landroid/icu/impl/Pair<TF;TS;>;"
    iget-object v0, p0, Landroid/icu/impl/Pair;->first:Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x25

    #@8
    iget-object v1, p0, Landroid/icu/impl/Pair;->second:Ljava/lang/Object;

    #@a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method
