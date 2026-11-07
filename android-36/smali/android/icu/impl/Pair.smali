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
.field public final blacklist first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final blacklist second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Landroid/icu/impl/Pair;, "Landroid/icu/impl/Pair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/icu/impl/Pair;->first:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Landroid/icu/impl/Pair;->second:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static blacklist of(Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(TF;TS;)",
            "Landroid/icu/impl/Pair<",
            "TF;TS;>;"
        }
    .end annotation

    .line 35
    .local p0, "first":Ljava/lang/Object;, "TF;"
    .local p1, "second":Ljava/lang/Object;, "TS;"
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    .line 38
    new-instance v0, Landroid/icu/impl/Pair;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 36
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pair.of requires non null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 43
    .local p0, "this":Landroid/icu/impl/Pair;, "Landroid/icu/impl/Pair<TF;TS;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 44
    return v0

    .line 46
    :cond_4
    instance-of v1, p1, Landroid/icu/impl/Pair;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 47
    return v2

    .line 49
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/Pair;

    .line 50
    .local v1, "rhs":Landroid/icu/impl/Pair;, "Landroid/icu/impl/Pair<**>;"
    iget-object v3, p0, Landroid/icu/impl/Pair;->first:Ljava/lang/Object;

    iget-object v4, v1, Landroid/icu/impl/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/icu/impl/Pair;->second:Ljava/lang/Object;

    iget-object v4, v1, Landroid/icu/impl/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 55
    .local p0, "this":Landroid/icu/impl/Pair;, "Landroid/icu/impl/Pair<TF;TS;>;"
    iget-object v0, p0, Landroid/icu/impl/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/icu/impl/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
