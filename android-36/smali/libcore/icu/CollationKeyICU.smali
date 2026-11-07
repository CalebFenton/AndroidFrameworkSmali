.class public final Llibcore/icu/CollationKeyICU;
.super Ljava/text/CollationKey;
.source "CollationKeyICU.java"


# instance fields
.field private final blacklist key:Landroid/icu/text/CollationKey;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/CollationKey;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/icu/text/CollationKey;

    .line 25
    invoke-direct {p0, p1}, Ljava/text/CollationKey;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    check-cast p1, Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/text/CollationKey;)I
    .registers 5
    .param p1, "other"    # Ljava/text/CollationKey;

    .line 32
    instance-of v0, p1, Llibcore/icu/CollationKeyICU;

    if-eqz v0, :cond_a

    .line 33
    move-object v0, p1

    check-cast v0, Llibcore/icu/CollationKeyICU;

    iget-object v0, v0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    .local v0, "otherKey":Landroid/icu/text/CollationKey;
    goto :goto_17

    .line 35
    .end local v0    # "otherKey":Landroid/icu/text/CollationKey;
    :cond_a
    new-instance v0, Landroid/icu/text/CollationKey;

    invoke-virtual {p1}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[B)V

    .line 39
    .restart local v0    # "otherKey":Landroid/icu/text/CollationKey;
    :goto_17
    iget-object v1, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    invoke-virtual {v1, v0}, Landroid/icu/text/CollationKey;->compareTo(Landroid/icu/text/CollationKey;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 45
    return v0

    .line 47
    :cond_4
    instance-of v1, p1, Ljava/text/CollationKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 48
    return v2

    .line 50
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/text/CollationKey;

    invoke-virtual {p0, v1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 66
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    invoke-virtual {v0}, Landroid/icu/text/CollationKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toByteArray()[B
    .registers 2

    .line 71
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->key:Landroid/icu/text/CollationKey;

    invoke-virtual {v0}, Landroid/icu/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
