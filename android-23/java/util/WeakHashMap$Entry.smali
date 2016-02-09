.class final Ljava/util/WeakHashMap$Entry;
.super Ljava/lang/ref/WeakReference;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$Entry$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TK;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field isNull:Z

.field next:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
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
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "object":Ljava/lang/Object;, "TV;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    const/4 v1, 0x0

    #@1
    .line 71
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@4
    .line 72
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    iput-boolean v0, p0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@9
    .line 73
    iget-boolean v0, p0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    :goto_1
    iput v1, p0, Ljava/util/WeakHashMap$Entry;->hash:I

    #@f
    .line 74
    iput-object p2, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@11
    .line 70
    return-void

    #@12
    :cond_0
    move v0, v1

    #@13
    .line 72
    goto :goto_0

    #@14
    .line 73
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@17
    move-result v1

    #@18
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 93
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 94
    return v2

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 96
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 97
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-super {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .line 98
    .local v1, "key":Ljava/lang/Object;
    if-nez v1, :cond_2

    #@f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    if-ne v1, v3, :cond_1

    #@15
    .line 100
    :goto_0
    iget-object v3, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@17
    if-nez v3, :cond_3

    #@19
    iget-object v3, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    if-ne v3, v4, :cond_1

    #@21
    const/4 v2, 0x1

    #@22
    .line 98
    :cond_1
    :goto_1
    return v2

    #@23
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_1

    #@2d
    goto :goto_0

    #@2e
    .line 100
    :cond_3
    iget-object v2, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@30
    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    goto :goto_1
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
    .line 78
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    invoke-super {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
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
    .line 82
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 106
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    iget v1, p0, Ljava/util/WeakHashMap$Entry;->hash:I

    #@2
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    add-int/2addr v0, v1

    #@8
    return v0

    #@9
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@e
    move-result v0

    #@f
    goto :goto_0
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
    .line 86
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@2
    .line 87
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@4
    .line 88
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 111
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
