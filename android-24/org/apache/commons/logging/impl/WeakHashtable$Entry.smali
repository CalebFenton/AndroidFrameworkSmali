.class final Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
.super Ljava/lang/Object;
.source "WeakHashtable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 355
    iput-object p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->key:Ljava/lang/Object;

    #@5
    .line 356
    iput-object p2, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->value:Ljava/lang/Object;

    #@7
    .line 354
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Entry;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 360
    const/4 v1, 0x0

    #@1
    .line 361
    .local v1, "result":Z
    if-eqz p1, :cond_1

    #@3
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 362
    check-cast v0, Ljava/util/Map$Entry;

    #@a
    .line 363
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    if-nez v2, :cond_2

    #@10
    .line 364
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    if-nez v2, :cond_3

    #@16
    .line 367
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    if-nez v2, :cond_5

    #@1c
    .line 368
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    if-nez v2, :cond_4

    #@22
    const/4 v1, 0x1

    #@23
    .line 371
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "result":Z
    :cond_1
    :goto_0
    return v1

    #@24
    .line 365
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    .restart local v1    # "result":Z
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    .line 363
    if-nez v2, :cond_0

    #@32
    :cond_3
    const/4 v1, 0x0

    #@33
    goto :goto_0

    #@34
    .line 368
    :cond_4
    const/4 v1, 0x0

    #@35
    goto :goto_0

    #@36
    .line 369
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    .local v1, "result":Z
    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->key:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 376
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_0

    #@7
    move v0, v1

    #@8
    .line 377
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    if-nez v2, :cond_1

    #@e
    .line 376
    :goto_1
    xor-int/2addr v0, v1

    #@f
    return v0

    #@10
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v0

    #@18
    goto :goto_0

    #@19
    .line 377
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@20
    move-result v1

    #@21
    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Entry.setValue is not supported."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
