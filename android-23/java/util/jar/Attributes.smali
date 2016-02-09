.class public Ljava/util/jar/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Attributes$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 187
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@a
    .line 186
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 210
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    #@8
    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@a
    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/Attributes;)V
    .locals 1
    .param p1, "attrib"    # Ljava/util/jar/Attributes;

    #@0
    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 199
    iget-object v0, p1, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@5
    check-cast v0, Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/Map;

    #@d
    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@f
    .line 198
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 216
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 359
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/jar/Attributes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 363
    .local v0, "clone":Ljava/util/jar/Attributes;
    iget-object v2, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@8
    check-cast v2, Ljava/util/HashMap;

    #@a
    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/util/Map;

    #@10
    iput-object v2, v0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@12
    .line 364
    return-object v0

    #@13
    .line 360
    .end local v0    # "clone":Ljava/util/jar/Attributes;
    :catch_0
    move-exception v1

    #@14
    .line 361
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@19
    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 389
    if-ne p0, p1, :cond_0

    #@2
    .line 390
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 392
    :cond_0
    instance-of v0, p1, Ljava/util/jar/Attributes;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 393
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@a
    check-cast p1, Ljava/util/jar/Attributes;

    #@c
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@e
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 395
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 420
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@2
    invoke-direct {v0, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/util/jar/Attributes$Name;

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    check-cast p1, Ljava/util/jar/Attributes$Name;

    #@4
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@6
    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 310
    .local p1, "attrib":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez p1, :cond_0

    #@2
    .line 311
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "attrib == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 314
    :cond_0
    instance-of v0, p1, Ljava/util/jar/Attributes;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 315
    new-instance v0, Ljava/lang/ClassCastException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " not an Attributes"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 318
    :cond_1
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@33
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@36
    .line 309
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    new-instance v1, Ljava/util/jar/Attributes$Name;

    #@4
    invoke-direct {v1, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@7
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
