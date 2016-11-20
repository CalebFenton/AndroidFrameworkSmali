.class public final Llibcore/icu/CollationKeyICU;
.super Ljava/text/CollationKey;
.source "CollationKeyICU.java"


# instance fields
.field private final key:Landroid/icu/text/CollationKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/CollationKey;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/icu/text/CollationKey;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/text/CollationKey;-><init>(Ljava/lang/String;)V

    #@3
    .line 26
    iput-object p2, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    #@5
    .line 24
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/text/CollationKey;)I
    .locals 3
    .param p1, "other"    # Ljava/text/CollationKey;

    #@0
    .prologue
    .line 32
    instance-of v1, p1, Llibcore/icu/CollationKeyICU;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 33
    check-cast p1, Llibcore/icu/CollationKeyICU;

    #@6
    .end local p1    # "other":Ljava/text/CollationKey;
    iget-object v0, p1, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    #@8
    .line 39
    .local v0, "otherKey":Landroid/icu/text/CollationKey;
    :goto_0
    iget-object v1, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    #@a
    invoke-virtual {v1, v0}, Landroid/icu/text/CollationKey;->compareTo(Landroid/icu/text/CollationKey;)I

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 35
    .end local v0    # "otherKey":Landroid/icu/text/CollationKey;
    .restart local p1    # "other":Ljava/text/CollationKey;
    :cond_0
    new-instance v0, Landroid/icu/text/CollationKey;

    #@11
    invoke-virtual {p1}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 36
    invoke-virtual {p1}, Ljava/text/CollationKey;->toByteArray()[B

    #@18
    move-result-object v2

    #@19
    .line 35
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[B)V

    #@1c
    .restart local v0    # "otherKey":Landroid/icu/text/CollationKey;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 44
    if-ne p1, p0, :cond_0

    #@4
    .line 45
    return v0

    #@5
    .line 47
    :cond_0
    instance-of v2, p1, Ljava/text/CollationKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 48
    return v1

    #@a
    .line 50
    :cond_1
    check-cast p1, Ljava/text/CollationKey;

    #@c
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_2

    #@12
    :goto_0
    return v0

    #@13
    :cond_2
    move v0, v1

    #@14
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/CollationKey;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toByteArray()[B
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/CollationKey;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
