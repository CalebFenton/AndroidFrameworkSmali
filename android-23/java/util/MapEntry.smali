.class Ljava/util/MapEntry;
.super Ljava/lang/Object;
.source "MapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/MapEntry$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 32
    .local p0, "this":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    .local p1, "theKey":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    #@5
    .line 32
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 36
    .local p0, "this":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    .local p1, "theKey":Ljava/lang/Object;, "TK;"
    .local p2, "theValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    #@5
    .line 38
    iput-object p2, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@7
    .line 36
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 44
    .local p0, "this":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 45
    :catch_0
    move-exception v0

    #@6
    .line 46
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 52
    if-ne p0, p1, :cond_0

    #@4
    .line 53
    return v1

    #@5
    .line 55
    :cond_0
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@7
    if-eqz v3, :cond_6

    #@9
    move-object v0, p1

    #@a
    .line 56
    check-cast v0, Ljava/util/Map$Entry;

    #@c
    .line 57
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    #@e
    if-nez v3, :cond_2

    #@10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    if-nez v3, :cond_3

    #@16
    .line 59
    :cond_1
    iget-object v3, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@18
    if-nez v3, :cond_5

    #@1a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    if-nez v3, :cond_4

    #@20
    .line 57
    :goto_0
    return v1

    #@21
    :cond_2
    iget-object v3, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    #@23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_1

    #@2d
    :cond_3
    move v1, v2

    #@2e
    goto :goto_0

    #@2f
    :cond_4
    move v1, v2

    #@30
    .line 59
    goto :goto_0

    #@31
    :cond_5
    iget-object v1, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@33
    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    goto :goto_0

    #@3c
    .line 62
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_6
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 66
    .local p0, "this":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p0, "this":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 75
    iget-object v0, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 76
    :goto_0
    iget-object v2, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 75
    :goto_1
    xor-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    iget-object v0, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v0

    #@12
    goto :goto_0

    #@13
    .line 76
    :cond_1
    iget-object v1, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v1

    #@19
    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    .local p0, "this":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@2
    .line 81
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@4
    .line 82
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 87
    .local p0, "this":Ljava/util/MapEntry;, "Ljava/util/MapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
