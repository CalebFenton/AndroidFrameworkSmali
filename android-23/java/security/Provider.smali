.class public abstract Ljava/security/Provider;
.super Ljava/util/Properties;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Provider$Service;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3ba590b26fa1505bL


# instance fields
.field private transient aliasTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient changedProperties:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private transient lastAlgorithm:Ljava/lang/String;

.field private transient lastServiceName:Ljava/lang/String;

.field private transient lastServicesByType:Ljava/security/Provider$Service;

.field private transient lastServicesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient lastType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transient propertyAliasTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient propertyServiceTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient providerNumber:I

.field private transient returnedService:Ljava/security/Provider$Service;

.field private transient serviceTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private version:D

.field private transient versionString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # D
    .param p4, "info"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    #@3
    .line 56
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/Provider;->providerNumber:I

    #@6
    .line 104
    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@8
    .line 105
    iput-wide p2, p0, Ljava/security/Provider;->version:D

    #@a
    .line 106
    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    #@c
    .line 107
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    #@12
    .line 108
    invoke-direct {p0}, Ljava/security/Provider;->putProviderInfo()V

    #@15
    .line 103
    return-void
.end method

.method private checkAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "servAlg"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0x20

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {p0, v1}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 336
    .local v0, "attributeValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@1e
    .line 337
    const-string/jumbo v1, "KeySize"

    #@21
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 338
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a
    move-result v1

    #@2b
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2e
    move-result v2

    #@2f
    if-lt v1, v2, :cond_1

    #@31
    .line 339
    return v3

    #@32
    .line 342
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_1

    #@38
    .line 343
    return v3

    #@39
    .line 347
    :cond_1
    const/4 v1, 0x0

    #@3a
    return v1
.end method

.method private getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 784
    invoke-virtual {p0, p1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 785
    .local v2, "res":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@7
    .line 786
    return-object v2

    #@8
    .line 788
    :cond_0
    invoke-virtual {p0}, Ljava/security/Provider;->propertyNames()Ljava/util/Enumeration;

    #@b
    move-result-object v0

    #@c
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 789
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/String;

    #@18
    .line 790
    .local v1, "propertyName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 791
    invoke-virtual {p0, v1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    return-object v3

    #@23
    .line 794
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private static key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0x2e

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method private myPutAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 195
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 196
    new-instance v4, Ljava/util/LinkedHashMap;

    #@6
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    #@9
    iput-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@b
    .line 198
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v4

    #@f
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .line 201
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_4

    #@19
    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/util/Map$Entry;

    #@1f
    .line 203
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    .line 204
    .local v2, "key":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    #@25
    if-eqz v4, :cond_2

    #@27
    move-object v4, v2

    #@28
    check-cast v4, Ljava/lang/String;

    #@2a
    const-string/jumbo v5, "Provider."

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_1

    #@33
    .line 208
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    .line 209
    .local v3, "value":Ljava/lang/Object;
    invoke-super {p0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 210
    iget-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@3c
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    if-nez v4, :cond_3

    #@42
    .line 211
    invoke-direct {p0, v2}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    #@45
    .line 213
    :cond_3
    iget-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@47
    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    goto :goto_0

    #@4b
    .line 215
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    iget v4, p0, Ljava/security/Provider;->providerNumber:I

    #@4d
    const/4 v5, -0x1

    #@4e
    if-eq v4, v5, :cond_5

    #@50
    .line 217
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    #@53
    .line 194
    :cond_5
    return-void
.end method

.method private putProviderInfo()V
    .locals 2

    #@0
    .prologue
    .line 773
    const-string/jumbo v1, "Provider.id name"

    #@3
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@9
    :goto_0
    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 774
    const-string/jumbo v0, "Provider.id version"

    #@f
    iget-object v1, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    #@11
    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 775
    const-string/jumbo v1, "Provider.id info"

    #@17
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    #@19
    if-eqz v0, :cond_1

    #@1b
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    #@1d
    :goto_1
    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 776
    const-string/jumbo v0, "Provider.id className"

    #@23
    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 772
    return-void

    #@2f
    .line 773
    :cond_0
    const-string/jumbo v0, "null"

    #@32
    goto :goto_0

    #@33
    .line 775
    :cond_1
    const-string/jumbo v0, "null"

    #@36
    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1269
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1270
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    #@5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    #@b
    .line 1271
    const/4 v0, -0x1

    #@c
    iput v0, p0, Ljava/security/Provider;->providerNumber:I

    #@e
    .line 1268
    return-void
.end method

.method private removeFromPropertyServiceTable(Ljava/lang/Object;)V
    .locals 17
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 570
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    instance-of v15, v0, Ljava/lang/String;

    #@6
    if-eqz v15, :cond_0

    #@8
    move-object/from16 v9, p1

    #@a
    .line 573
    check-cast v9, Ljava/lang/String;

    #@c
    .line 574
    .local v9, "k":Ljava/lang/String;
    const-string/jumbo v15, "Provider."

    #@f
    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v15

    #@13
    if-eqz v15, :cond_1

    #@15
    .line 575
    return-void

    #@16
    .line 571
    .end local v9    # "k":Ljava/lang/String;
    :cond_0
    return-void

    #@17
    .line 579
    .restart local v9    # "k":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@18
    .line 580
    .local v1, "algorithm":Ljava/lang/String;
    const/4 v5, 0x0

    #@19
    .line 582
    .local v5, "attribute":Ljava/lang/String;
    const-string/jumbo v15, "Alg.Alias."

    #@1c
    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v15

    #@20
    if-eqz v15, :cond_5

    #@22
    .line 584
    const/16 v15, 0xa

    #@24
    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object v14

    #@28
    .line 585
    .local v14, "service_alias":Ljava/lang/String;
    const/16 v15, 0x2e

    #@2a
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    #@2d
    move-result v6

    #@2e
    .line 586
    .local v6, "i":I
    const/4 v15, 0x0

    #@2f
    invoke-virtual {v14, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@32
    move-result-object v13

    #@33
    .line 587
    .local v13, "serviceName":Ljava/lang/String;
    add-int/lit8 v15, v6, 0x1

    #@35
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 588
    .local v4, "aliasName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3b
    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@3d
    if-eqz v15, :cond_2

    #@3f
    .line 589
    move-object/from16 v0, p0

    #@41
    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@43
    invoke-static {v13, v4}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v16

    #@47
    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 591
    :cond_2
    move-object/from16 v0, p0

    #@4c
    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@4e
    if-eqz v15, :cond_4

    #@50
    .line 592
    move-object/from16 v0, p0

    #@52
    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@54
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@57
    move-result-object v15

    #@58
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v7

    #@5c
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v15

    #@60
    if-eqz v15, :cond_4

    #@62
    .line 594
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v11

    #@66
    check-cast v11, Ljava/security/Provider$Service;

    #@68
    .line 595
    .local v11, "s":Ljava/security/Provider$Service;
    invoke-static {v11}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@6b
    move-result-object v15

    #@6c
    invoke-interface {v15, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@6f
    move-result v15

    #@70
    if-eqz v15, :cond_3

    #@72
    .line 596
    invoke-static {v11}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@75
    move-result-object v15

    #@76
    invoke-interface {v15, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@79
    .line 597
    return-void

    #@7a
    .line 601
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    .end local v11    # "s":Ljava/security/Provider$Service;
    :cond_4
    return-void

    #@7b
    .line 603
    .end local v4    # "aliasName":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v14    # "service_alias":Ljava/lang/String;
    :cond_5
    const/16 v15, 0x2e

    #@7d
    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    #@80
    move-result v8

    #@81
    .line 604
    .local v8, "j":I
    const/4 v15, -0x1

    #@82
    if-ne v8, v15, :cond_6

    #@84
    .line 605
    return-void

    #@85
    .line 608
    :cond_6
    const/16 v15, 0x20

    #@87
    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    #@8a
    move-result v6

    #@8b
    .line 609
    .restart local v6    # "i":I
    const/4 v15, -0x1

    #@8c
    if-ne v6, v15, :cond_7

    #@8e
    .line 610
    const/4 v15, 0x0

    #@8f
    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@92
    move-result-object v13

    #@93
    .line 611
    .restart local v13    # "serviceName":Ljava/lang/String;
    add-int/lit8 v15, v8, 0x1

    #@95
    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 612
    .local v1, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9b
    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@9d
    if-eqz v15, :cond_8

    #@9f
    .line 613
    move-object/from16 v0, p0

    #@a1
    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@a3
    invoke-static {v13, v1}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a6
    move-result-object v16

    #@a7
    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    move-result-object v12

    #@ab
    check-cast v12, Ljava/security/Provider$Service;

    #@ad
    .line 614
    .local v12, "ser":Ljava/security/Provider$Service;
    if-eqz v12, :cond_8

    #@af
    move-object/from16 v0, p0

    #@b1
    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@b3
    if-eqz v15, :cond_8

    #@b5
    .line 615
    invoke-static {v12}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@b8
    move-result-object v15

    #@b9
    if-eqz v15, :cond_8

    #@bb
    .line 616
    invoke-static {v12}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@be
    move-result-object v15

    #@bf
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c2
    move-result-object v3

    #@c3
    .local v3, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c6
    move-result v15

    #@c7
    if-eqz v15, :cond_8

    #@c9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cc
    move-result-object v2

    #@cd
    check-cast v2, Ljava/lang/String;

    #@cf
    .line 617
    .local v2, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d1
    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@d3
    invoke-static {v13, v2}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d6
    move-result-object v16

    #@d7
    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    goto :goto_0

    #@db
    .line 624
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "alias$iterator":Ljava/util/Iterator;
    .end local v12    # "ser":Ljava/security/Provider$Service;
    .end local v13    # "serviceName":Ljava/lang/String;
    .local v1, "algorithm":Ljava/lang/String;
    :cond_7
    add-int/lit8 v15, v6, 0x1

    #@dd
    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e0
    move-result-object v5

    #@e1
    .line 625
    .local v5, "attribute":Ljava/lang/String;
    const/4 v15, 0x0

    #@e2
    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e5
    move-result-object v13

    #@e6
    .line 626
    .restart local v13    # "serviceName":Ljava/lang/String;
    add-int/lit8 v15, v8, 0x1

    #@e8
    invoke-virtual {v9, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@eb
    move-result-object v1

    #@ec
    .line 627
    .local v1, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ee
    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@f0
    if-eqz v15, :cond_8

    #@f2
    .line 628
    move-object/from16 v0, p0

    #@f4
    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@f6
    invoke-static {v13, v1}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f9
    move-result-object v16

    #@fa
    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    move-result-object v10

    #@fe
    .line 629
    .local v10, "o":Ljava/lang/Object;
    if-eqz v10, :cond_8

    #@100
    move-object v11, v10

    #@101
    .line 630
    check-cast v11, Ljava/security/Provider$Service;

    #@103
    .line 631
    .restart local v11    # "s":Ljava/security/Provider$Service;
    invoke-static {v11}, Ljava/security/Provider$Service;->-get2(Ljava/security/Provider$Service;)Ljava/util/Map;

    #@106
    move-result-object v15

    #@107
    invoke-interface {v15, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    .line 569
    .end local v5    # "attribute":Ljava/lang/String;
    .end local v10    # "o":Ljava/lang/Object;
    .end local v11    # "s":Ljava/security/Provider$Service;
    :cond_8
    return-void
.end method

.method private serviceInfoFromProperties(Ljava/security/Provider$Service;)V
    .locals 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    const-string/jumbo v4, "."

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-super {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 552
    invoke-static {p1}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@26
    move-result-object v3

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 553
    invoke-static {p1}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v2

    #@31
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_0

    #@37
    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "Alg.Alias."

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    const-string/jumbo v4, "."

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v3

    #@56
    check-cast v3, Ljava/lang/String;

    #@58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    invoke-super {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    goto :goto_0

    #@64
    .line 557
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get2(Ljava/security/Provider$Service;)Ljava/util/Map;

    #@67
    move-result-object v3

    #@68
    if-eqz v3, :cond_1

    #@6a
    .line 558
    invoke-static {p1}, Ljava/security/Provider$Service;->-get2(Ljava/security/Provider$Service;)Ljava/util/Map;

    #@6d
    move-result-object v3

    #@6e
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@71
    move-result-object v3

    #@72
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@75
    move-result-object v1

    #@76
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_1

    #@7c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    check-cast v0, Ljava/util/Map$Entry;

    #@82
    .line 559
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    const-string/jumbo v4, "."

    #@92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v3

    #@9e
    const-string/jumbo v4, " "

    #@a1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@a8
    move-result-object v3

    #@a9
    check-cast v3, Ljava/lang/String;

    #@ab
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-super {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    goto :goto_1

    #@b7
    .line 562
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    iget v3, p0, Ljava/security/Provider;->providerNumber:I

    #@b9
    const/4 v4, -0x1

    #@ba
    if-eq v3, v4, :cond_2

    #@bc
    .line 564
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    #@bf
    .line 550
    :cond_2
    return-void
.end method

.method private serviceInfoToProperties(Ljava/security/Provider$Service;)V
    .locals 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    const-string/jumbo v4, "."

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {p1}, Ljava/security/Provider$Service;->-get3(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 530
    invoke-static {p1}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@2a
    move-result-object v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 531
    invoke-static {p1}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v2

    #@35
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_0

    #@3b
    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Alg.Alias."

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    const-string/jumbo v4, "."

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Ljava/lang/String;

    #@5c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    goto :goto_0

    #@6c
    .line 535
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get2(Ljava/security/Provider$Service;)Ljava/util/Map;

    #@6f
    move-result-object v3

    #@70
    if-eqz v3, :cond_1

    #@72
    .line 536
    invoke-static {p1}, Ljava/security/Provider$Service;->-get2(Ljava/security/Provider$Service;)Ljava/util/Map;

    #@75
    move-result-object v3

    #@76
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@79
    move-result-object v3

    #@7a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object v1

    #@7e
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_1

    #@84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@87
    move-result-object v0

    #@88
    check-cast v0, Ljava/util/Map$Entry;

    #@8a
    .line 537
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v3

    #@97
    const-string/jumbo v4, "."

    #@9a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v3

    #@9e
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    const-string/jumbo v4, " "

    #@a9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@b0
    move-result-object v3

    #@b1
    check-cast v3, Ljava/lang/String;

    #@b3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v3

    #@bb
    .line 538
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@be
    move-result-object v4

    #@bf
    .line 537
    invoke-super {p0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    goto :goto_1

    #@c3
    .line 541
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    iget v3, p0, Ljava/security/Provider;->providerNumber:I

    #@c5
    const/4 v4, -0x1

    #@c6
    if-eq v3, v4, :cond_2

    #@c8
    .line 543
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    #@cb
    .line 528
    :cond_2
    return-void
.end method

.method private servicesChanged()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 762
    iput-object v0, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;

    #@3
    .line 763
    iput-object v0, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    #@5
    .line 764
    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    #@7
    .line 761
    return-void
.end method

.method private updatePropertyServiceTable()V
    .locals 32

    #@0
    .prologue
    .line 644
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@4
    if-eqz v3, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@a
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 645
    :cond_0
    return-void

    #@11
    .line 647
    :cond_1
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@15
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v26

    #@1d
    .local v26, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_f

    #@23
    .line 649
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v24

    #@27
    check-cast v24, Ljava/util/Map$Entry;

    #@29
    .line 650
    .local v24, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2c
    move-result-object v20

    #@2d
    .line 651
    .local v20, "_key":Ljava/lang/Object;
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@30
    move-result-object v21

    #@31
    .line 652
    .local v21, "_value":Ljava/lang/Object;
    if-eqz v20, :cond_2

    #@33
    if-eqz v21, :cond_2

    #@35
    move-object/from16 v0, v20

    #@37
    instance-of v3, v0, Ljava/lang/String;

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 653
    move-object/from16 v0, v21

    #@3d
    instance-of v3, v0, Ljava/lang/String;

    #@3f
    if-eqz v3, :cond_2

    #@41
    move-object/from16 v28, v20

    #@43
    .line 656
    check-cast v28, Ljava/lang/String;

    #@45
    .local v28, "key":Ljava/lang/String;
    move-object/from16 v12, v21

    #@47
    .line 657
    check-cast v12, Ljava/lang/String;

    #@49
    .line 658
    .local v12, "value":Ljava/lang/String;
    const-string/jumbo v3, "Provider"

    #@4c
    move-object/from16 v0, v28

    #@4e
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@51
    move-result v3

    #@52
    if-nez v3, :cond_2

    #@54
    .line 663
    const-string/jumbo v3, "Alg.Alias."

    #@57
    move-object/from16 v0, v28

    #@59
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_7

    #@5f
    .line 666
    const/16 v3, 0xa

    #@61
    move-object/from16 v0, v28

    #@63
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@66
    move-result-object v31

    #@67
    .line 667
    .local v31, "service_alias":Ljava/lang/String;
    const/16 v3, 0x2e

    #@69
    move-object/from16 v0, v31

    #@6b
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@6e
    move-result v25

    #@6f
    .line 668
    .local v25, "i":I
    const/4 v3, 0x0

    #@70
    move-object/from16 v0, v31

    #@72
    move/from16 v1, v25

    #@74
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    .line 669
    .local v4, "serviceName":Ljava/lang/String;
    add-int/lit8 v3, v25, 0x1

    #@7a
    move-object/from16 v0, v31

    #@7c
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7f
    move-result-object v22

    #@80
    .line 670
    .local v22, "aliasName":Ljava/lang/String;
    move-object v5, v12

    #@81
    .line 671
    .local v5, "algorithm":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v30

    #@85
    .line 672
    .local v30, "propertyServiceTableKey":Ljava/lang/String;
    const/16 v29, 0x0

    #@87
    .line 673
    .local v29, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@89
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@8b
    if-nez v3, :cond_4

    #@8d
    .line 674
    new-instance v3, Ljava/util/LinkedHashMap;

    #@8f
    const/16 v8, 0x80

    #@91
    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@94
    move-object/from16 v0, p0

    #@96
    iput-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@98
    .line 678
    .end local v29    # "o":Ljava/lang/Object;
    :goto_1
    if-eqz v29, :cond_5

    #@9a
    move-object/from16 v2, v29

    #@9c
    .line 679
    check-cast v2, Ljava/security/Provider$Service;

    #@9e
    .line 680
    .local v2, "s":Ljava/security/Provider$Service;
    move-object/from16 v0, v22

    #@a0
    invoke-virtual {v2, v0}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    #@a3
    .line 681
    move-object/from16 v0, p0

    #@a5
    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@a7
    if-nez v3, :cond_3

    #@a9
    .line 682
    new-instance v3, Ljava/util/LinkedHashMap;

    #@ab
    const/16 v8, 0x100

    #@ad
    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@b0
    move-object/from16 v0, p0

    #@b2
    iput-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@b4
    .line 684
    :cond_3
    move-object/from16 v0, p0

    #@b6
    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@b8
    move-object/from16 v0, v22

    #@ba
    invoke-static {v4, v0}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@bd
    move-result-object v8

    #@be
    invoke-virtual {v3, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c1
    goto/16 :goto_0

    #@c3
    .line 676
    .end local v2    # "s":Ljava/security/Provider$Service;
    .restart local v29    # "o":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    #@c5
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@c7
    move-object/from16 v0, v30

    #@c9
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@cc
    move-result-object v29

    #@cd
    goto :goto_1

    #@ce
    .line 686
    .end local v29    # "o":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    #@d0
    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@d2
    .line 687
    new-instance v8, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v8

    #@db
    const-string/jumbo v9, "."

    #@de
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v8

    #@e2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v8

    #@e6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v8

    #@ea
    .line 686
    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    move-result-object v6

    #@ee
    check-cast v6, Ljava/lang/String;

    #@f0
    .line 688
    .local v6, "className":Ljava/lang/String;
    if-eqz v6, :cond_2

    #@f2
    .line 689
    new-instance v7, Ljava/util/ArrayList;

    #@f4
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@f7
    .line 690
    .local v7, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    #@f9
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@fc
    .line 691
    new-instance v2, Ljava/security/Provider$Service;

    #@fe
    .line 692
    new-instance v8, Ljava/util/HashMap;

    #@100
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@103
    move-object/from16 v3, p0

    #@105
    .line 691
    invoke-direct/range {v2 .. v8}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    #@108
    .line 693
    .restart local v2    # "s":Ljava/security/Provider$Service;
    move-object/from16 v0, p0

    #@10a
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@10c
    move-object/from16 v0, v30

    #@10e
    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@111
    .line 694
    move-object/from16 v0, p0

    #@113
    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@115
    if-nez v3, :cond_6

    #@117
    .line 695
    new-instance v3, Ljava/util/LinkedHashMap;

    #@119
    const/16 v8, 0x100

    #@11b
    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@11e
    move-object/from16 v0, p0

    #@120
    iput-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@122
    .line 697
    :cond_6
    move-object/from16 v0, p0

    #@124
    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@126
    move-object/from16 v0, v22

    #@128
    invoke-static {v4, v0}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12b
    move-result-object v8

    #@12c
    invoke-virtual {v3, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12f
    goto/16 :goto_0

    #@131
    .line 702
    .end local v2    # "s":Ljava/security/Provider$Service;
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "aliasName":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v30    # "propertyServiceTableKey":Ljava/lang/String;
    .end local v31    # "service_alias":Ljava/lang/String;
    :cond_7
    const/16 v3, 0x2e

    #@133
    move-object/from16 v0, v28

    #@135
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@138
    move-result v27

    #@139
    .line 703
    .local v27, "j":I
    const/4 v3, -0x1

    #@13a
    move/from16 v0, v27

    #@13c
    if-eq v0, v3, :cond_2

    #@13e
    .line 706
    const/16 v3, 0x20

    #@140
    move-object/from16 v0, v28

    #@142
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@145
    move-result v25

    #@146
    .line 707
    .restart local v25    # "i":I
    const/4 v3, -0x1

    #@147
    move/from16 v0, v25

    #@149
    if-ne v0, v3, :cond_b

    #@14b
    .line 708
    const/4 v3, 0x0

    #@14c
    move-object/from16 v0, v28

    #@14e
    move/from16 v1, v27

    #@150
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@153
    move-result-object v4

    #@154
    .line 709
    .restart local v4    # "serviceName":Ljava/lang/String;
    add-int/lit8 v3, v27, 0x1

    #@156
    move-object/from16 v0, v28

    #@158
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15b
    move-result-object v5

    #@15c
    .line 710
    .restart local v5    # "algorithm":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15f
    move-result-object v30

    #@160
    .line 711
    .restart local v30    # "propertyServiceTableKey":Ljava/lang/String;
    const/16 v29, 0x0

    #@162
    .line 712
    .restart local v29    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@164
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@166
    if-eqz v3, :cond_8

    #@168
    .line 713
    move-object/from16 v0, p0

    #@16a
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@16c
    move-object/from16 v0, v30

    #@16e
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@171
    move-result-object v29

    #@172
    .line 715
    .end local v29    # "o":Ljava/lang/Object;
    :cond_8
    if-eqz v29, :cond_9

    #@174
    move-object/from16 v2, v29

    #@176
    .line 716
    check-cast v2, Ljava/security/Provider$Service;

    #@178
    .line 717
    .restart local v2    # "s":Ljava/security/Provider$Service;
    invoke-static {v2, v12}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    #@17b
    goto/16 :goto_0

    #@17d
    .line 719
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_9
    new-instance v2, Ljava/security/Provider$Service;

    #@17f
    .line 720
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@182
    move-result-object v13

    #@183
    .line 721
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@186
    move-result-object v14

    #@187
    move-object v8, v2

    #@188
    move-object/from16 v9, p0

    #@18a
    move-object v10, v4

    #@18b
    move-object v11, v5

    #@18c
    .line 719
    invoke-direct/range {v8 .. v14}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    #@18f
    .line 722
    .restart local v2    # "s":Ljava/security/Provider$Service;
    move-object/from16 v0, p0

    #@191
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@193
    if-nez v3, :cond_a

    #@195
    .line 723
    new-instance v3, Ljava/util/LinkedHashMap;

    #@197
    const/16 v8, 0x80

    #@199
    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@19c
    move-object/from16 v0, p0

    #@19e
    iput-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@1a0
    .line 725
    :cond_a
    move-object/from16 v0, p0

    #@1a2
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@1a4
    move-object/from16 v0, v30

    #@1a6
    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a9
    goto/16 :goto_0

    #@1ab
    .line 730
    .end local v2    # "s":Ljava/security/Provider$Service;
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v30    # "propertyServiceTableKey":Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    #@1ac
    move-object/from16 v0, v28

    #@1ae
    move/from16 v1, v27

    #@1b0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b3
    move-result-object v4

    #@1b4
    .line 731
    .restart local v4    # "serviceName":Ljava/lang/String;
    add-int/lit8 v3, v27, 0x1

    #@1b6
    move-object/from16 v0, v28

    #@1b8
    move/from16 v1, v25

    #@1ba
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1bd
    move-result-object v5

    #@1be
    .line 732
    .restart local v5    # "algorithm":Ljava/lang/String;
    add-int/lit8 v3, v25, 0x1

    #@1c0
    move-object/from16 v0, v28

    #@1c2
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1c5
    move-result-object v23

    #@1c6
    .line 733
    .local v23, "attribute":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c9
    move-result-object v30

    #@1ca
    .line 734
    .restart local v30    # "propertyServiceTableKey":Ljava/lang/String;
    const/16 v29, 0x0

    #@1cc
    .line 735
    .restart local v29    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@1ce
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@1d0
    if-eqz v3, :cond_c

    #@1d2
    .line 736
    move-object/from16 v0, p0

    #@1d4
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@1d6
    move-object/from16 v0, v30

    #@1d8
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1db
    move-result-object v29

    #@1dc
    .line 738
    .end local v29    # "o":Ljava/lang/Object;
    :cond_c
    if-eqz v29, :cond_d

    #@1de
    move-object/from16 v2, v29

    #@1e0
    .line 739
    check-cast v2, Ljava/security/Provider$Service;

    #@1e2
    .line 740
    .restart local v2    # "s":Ljava/security/Provider$Service;
    move-object/from16 v0, v23

    #@1e4
    invoke-virtual {v2, v0, v12}, Ljava/security/Provider$Service;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@1e7
    goto/16 :goto_0

    #@1e9
    .line 742
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_d
    move-object/from16 v0, p0

    #@1eb
    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@1ed
    .line 743
    new-instance v8, Ljava/lang/StringBuilder;

    #@1ef
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1f2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v8

    #@1f6
    const-string/jumbo v9, "."

    #@1f9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v8

    #@1fd
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v8

    #@201
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@204
    move-result-object v8

    #@205
    .line 742
    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@208
    move-result-object v6

    #@209
    check-cast v6, Ljava/lang/String;

    #@20b
    .line 744
    .restart local v6    # "className":Ljava/lang/String;
    if-eqz v6, :cond_2

    #@20d
    .line 745
    new-instance v19, Ljava/util/HashMap;

    #@20f
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    #@212
    .line 746
    .local v19, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v19

    #@214
    move-object/from16 v1, v23

    #@216
    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@219
    .line 747
    new-instance v2, Ljava/security/Provider$Service;

    #@21b
    .line 748
    new-instance v18, Ljava/util/ArrayList;

    #@21d
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@220
    move-object v13, v2

    #@221
    move-object/from16 v14, p0

    #@223
    move-object v15, v4

    #@224
    move-object/from16 v16, v5

    #@226
    move-object/from16 v17, v6

    #@228
    .line 747
    invoke-direct/range {v13 .. v19}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    #@22b
    .line 749
    .restart local v2    # "s":Ljava/security/Provider$Service;
    move-object/from16 v0, p0

    #@22d
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@22f
    if-nez v3, :cond_e

    #@231
    .line 750
    new-instance v3, Ljava/util/LinkedHashMap;

    #@233
    const/16 v8, 0x80

    #@235
    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@238
    move-object/from16 v0, p0

    #@23a
    iput-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@23c
    .line 752
    :cond_e
    move-object/from16 v0, p0

    #@23e
    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@240
    move-object/from16 v0, v30

    #@242
    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@245
    goto/16 :goto_0

    #@247
    .line 757
    .end local v2    # "s":Ljava/security/Provider$Service;
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v19    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "_key":Ljava/lang/Object;
    .end local v21    # "_value":Ljava/lang/Object;
    .end local v23    # "attribute":Ljava/lang/String;
    .end local v24    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v25    # "i":I
    .end local v27    # "j":I
    .end local v28    # "key":Ljava/lang/String;
    .end local v30    # "propertyServiceTableKey":Ljava/lang/String;
    :cond_f
    invoke-direct/range {p0 .. p0}, Ljava/security/Provider;->servicesChanged()V

    #@24a
    .line 758
    const/4 v3, 0x0

    #@24b
    move-object/from16 v0, p0

    #@24d
    iput-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@24f
    .line 638
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 155
    :try_start_0
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    #@4
    .line 156
    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 157
    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    #@d
    .line 159
    :cond_0
    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 160
    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@13
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    #@16
    .line 162
    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 163
    iget-object v0, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    #@1c
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    #@1f
    .line 165
    :cond_2
    iget-object v0, p0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 166
    iget-object v0, p0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@25
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    #@28
    .line 168
    :cond_3
    const/4 v0, 0x0

    #@29
    iput-object v0, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@2b
    .line 169
    invoke-direct {p0}, Ljava/security/Provider;->putProviderInfo()V

    #@2e
    .line 170
    iget v0, p0, Ljava/security/Provider;->providerNumber:I

    #@30
    const/4 v1, -0x1

    #@31
    if-eq v0, v1, :cond_4

    #@33
    .line 172
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    #@36
    .line 174
    :cond_4
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    monitor-exit p0

    #@3a
    .line 154
    return-void

    #@3b
    :catchall_0
    move-exception v0

    #@3c
    monitor-exit p0

    #@3d
    throw v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
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
    monitor-enter p0

    #@1
    .line 223
    :try_start_0
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getProviderNumber()I
    .locals 1

    #@0
    .prologue
    .line 367
    iget v0, p0, Ljava/security/Provider;->providerNumber:I

    #@2
    return v0
.end method

.method declared-synchronized getService(Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 375
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    #@5
    .line 376
    iget-object v2, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;

    #@7
    if-eqz v2, :cond_0

    #@9
    iget-object v2, p0, Ljava/security/Provider;->lastType:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 377
    iget-object v2, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    return-object v2

    #@15
    .line 380
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v0

    #@1d
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Ljava/security/Provider$Service;

    #@29
    .line 382
    .local v1, "service":Ljava/security/Provider$Service;
    invoke-static {v1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_1

    #@33
    .line 383
    iput-object p1, p0, Ljava/security/Provider;->lastType:Ljava/lang/String;

    #@35
    .line 384
    iput-object v1, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit p0

    #@38
    .line 385
    return-object v1

    #@39
    .end local v1    # "service":Ljava/security/Provider$Service;
    :cond_2
    monitor-exit p0

    #@3a
    .line 388
    return-object v3

    #@3b
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :catchall_0
    move-exception v2

    #@3c
    monitor-exit p0

    #@3d
    throw v2
.end method

.method public declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 409
    if-nez p1, :cond_0

    #@4
    .line 410
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v3, "type == null"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :catchall_0
    move-exception v2

    #@e
    monitor-exit p0

    #@f
    throw v2

    #@10
    .line 411
    :cond_0
    if-nez p2, :cond_1

    #@12
    .line 412
    :try_start_1
    new-instance v2, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v3, "algorithm == null"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 415
    :cond_1
    iget-object v2, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    iget-object v2, p0, Ljava/security/Provider;->lastAlgorithm:Ljava/lang/String;

    #@25
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 416
    iget-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    monitor-exit p0

    #@2e
    return-object v2

    #@2f
    .line 419
    :cond_2
    :try_start_2
    invoke-static {p1, p2}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 420
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    #@34
    .line 421
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@36
    if-eqz v2, :cond_3

    #@38
    .line 422
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@3a
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    .line 424
    .end local v1    # "o":Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_4

    #@40
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    #@42
    if-eqz v2, :cond_4

    #@44
    .line 425
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    #@46
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    .line 427
    :cond_4
    if-nez v1, :cond_5

    #@4c
    .line 428
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    #@4f
    .line 430
    :cond_5
    if-nez v1, :cond_6

    #@51
    iget-object v2, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@53
    if-eqz v2, :cond_6

    #@55
    .line 431
    iget-object v2, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@57
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    .line 433
    :cond_6
    if-nez v1, :cond_7

    #@5d
    iget-object v2, p0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@5f
    if-eqz v2, :cond_7

    #@61
    .line 434
    iget-object v2, p0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    #@63
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    move-result-object v1

    #@67
    .line 437
    :cond_7
    if-eqz v1, :cond_8

    #@69
    .line 438
    iput-object p1, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    #@6b
    .line 439
    iput-object p2, p0, Ljava/security/Provider;->lastAlgorithm:Ljava/lang/String;

    #@6d
    .line 440
    check-cast v1, Ljava/security/Provider$Service;

    #@6f
    iput-object v1, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;

    #@71
    .line 441
    iget-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@73
    monitor-exit p0

    #@74
    return-object v2

    #@75
    :cond_8
    monitor-exit p0

    #@76
    .line 443
    return-object v3
.end method

.method public declared-synchronized getServices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 454
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    #@4
    .line 455
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 456
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    .line 458
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 459
    new-instance v0, Ljava/util/LinkedHashSet;

    #@12
    iget-object v1, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@14
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    #@1b
    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    #@1d
    .line 463
    :goto_0
    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 464
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    #@23
    iget-object v1, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    #@25
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@28
    move-result-object v1

    #@29
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2c
    .line 466
    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    #@2e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    #@34
    .line 467
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit p0

    #@37
    return-object v0

    #@38
    .line 461
    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/LinkedHashSet;

    #@3a
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@3d
    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    goto :goto_0

    #@40
    :catchall_0
    move-exception v0

    #@41
    monitor-exit p0

    #@42
    throw v0
.end method

.method public getVersion()D
    .locals 2

    #@0
    .prologue
    .line 126
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    #@2
    return-wide v0
.end method

.method implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "serv"    # Ljava/lang/String;
    .param p2, "alg"    # Ljava/lang/String;
    .param p3, "attribute"    # Ljava/lang/String;
    .param p4, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v2

    #@9
    const-string/jumbo v3, "."

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 312
    .local v1, "servAlg":Ljava/lang/String;
    invoke-direct {p0, v1}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 313
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    #@1e
    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Alg.Alias."

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {p0, v2}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object p2

    #@36
    .line 315
    if-eqz p2, :cond_0

    #@38
    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    const-string/jumbo v3, "."

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    .line 317
    invoke-direct {p0, v1}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    .line 320
    :cond_0
    if-eqz v0, :cond_2

    #@56
    .line 321
    if-nez p3, :cond_1

    #@58
    .line 322
    const/4 v2, 0x1

    #@59
    return v2

    #@5a
    .line 324
    :cond_1
    invoke-direct {p0, v1, p3, p4}, Ljava/security/Provider;->checkAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@5d
    move-result v2

    #@5e
    return v2

    #@5f
    .line 326
    :cond_2
    const/4 v2, 0x0

    #@60
    return v2
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
    .line 228
    invoke-super {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 179
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    #@3
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@6
    .line 180
    .local v0, "tmp":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@9
    .line 181
    invoke-direct {p0, v0}, Ljava/security/Provider;->myPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 178
    return-void

    #@e
    .end local v0    # "tmp":Ljava/util/Properties;
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 249
    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object v0, p1

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    move-object v1, v0

    #@a
    const-string/jumbo v2, "Provider."

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    monitor-exit p0

    #@14
    .line 251
    return-object v3

    #@15
    .line 253
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/security/Provider;->providerNumber:I

    #@17
    const/4 v2, -0x1

    #@18
    if-eq v1, v2, :cond_1

    #@1a
    .line 255
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    #@1d
    .line 257
    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@1f
    if-eqz v1, :cond_2

    #@21
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@23
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    if-nez v1, :cond_2

    #@29
    .line 258
    invoke-direct {p0, p1}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    #@2c
    .line 260
    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@2e
    if-nez v1, :cond_3

    #@30
    .line 261
    new-instance v1, Ljava/util/LinkedHashMap;

    #@32
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@35
    iput-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@37
    .line 263
    :cond_3
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@39
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 264
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    move-result-object v1

    #@40
    monitor-exit p0

    #@41
    return-object v1

    #@42
    :catchall_0
    move-exception v1

    #@43
    monitor-exit p0

    #@44
    throw v1
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    monitor-enter p0

    #@1
    .line 191
    :try_start_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->myPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 190
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method protected declared-synchronized putService(Ljava/security/Provider$Service;)V
    .locals 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 478
    if-nez p1, :cond_0

    #@3
    .line 479
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "s == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v2

    #@d
    monitor-exit p0

    #@e
    throw v2

    #@f
    .line 481
    :cond_0
    :try_start_1
    const-string/jumbo v2, "Provider"

    #@12
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    monitor-exit p0

    #@1d
    .line 482
    return-void

    #@1e
    .line 484
    :cond_1
    :try_start_2
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V

    #@21
    .line 485
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@23
    if-nez v2, :cond_2

    #@25
    .line 486
    new-instance v2, Ljava/util/LinkedHashMap;

    #@27
    const/16 v3, 0x80

    #@29
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@2c
    iput-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@2e
    .line 488
    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@30
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v3, v4}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 489
    invoke-static {p1}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@42
    move-result-object v2

    #@43
    if-eqz v2, :cond_4

    #@45
    .line 490
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    #@47
    if-nez v2, :cond_3

    #@49
    .line 491
    new-instance v2, Ljava/util/LinkedHashMap;

    #@4b
    const/16 v3, 0x100

    #@4d
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@50
    iput-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    #@52
    .line 493
    :cond_3
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    #@55
    move-result-object v2

    #@56
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v1

    #@5a
    .local v1, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_4

    #@60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Ljava/lang/String;

    #@66
    .line 494
    .local v0, "alias":Ljava/lang/String;
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    #@68
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-static {v3, v0}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v2, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    goto :goto_0

    #@74
    .line 497
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "alias$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0, p1}, Ljava/security/Provider;->serviceInfoToProperties(Ljava/security/Provider$Service;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@77
    monitor-exit p0

    #@78
    .line 477
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 278
    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object v0, p1

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    move-object v1, v0

    #@a
    const-string/jumbo v2, "Provider."

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    monitor-exit p0

    #@14
    .line 280
    return-object v3

    #@15
    .line 282
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/security/Provider;->providerNumber:I

    #@17
    const/4 v2, -0x1

    #@18
    if-eq v1, v2, :cond_1

    #@1a
    .line 284
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    #@1d
    .line 286
    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@1f
    if-eqz v1, :cond_2

    #@21
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@23
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    if-nez v1, :cond_2

    #@29
    .line 287
    invoke-direct {p0, p1}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    #@2c
    .line 288
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@2e
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_2

    #@34
    .line 289
    const/4 v1, 0x0

    #@35
    iput-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    #@37
    .line 292
    :cond_2
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    move-result-object v1

    #@3b
    monitor-exit p0

    #@3c
    return-object v1

    #@3d
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit p0

    #@3f
    throw v1
.end method

.method protected declared-synchronized removeService(Ljava/security/Provider$Service;)V
    .locals 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 510
    if-nez p1, :cond_0

    #@3
    .line 511
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "s == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v2

    #@d
    monitor-exit p0

    #@e
    throw v2

    #@f
    .line 513
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V

    #@12
    .line 514
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 515
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    #@18
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v3, v4}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 517
    :cond_1
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    #@29
    if-eqz v2, :cond_2

    #@2b
    invoke-static {p1}, Ljava/security/Provider$Service;->-get1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@2e
    move-result-object v2

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 518
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    #@34
    move-result-object v2

    #@35
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v1

    #@39
    .local v1, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_2

    #@3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/lang/String;

    #@45
    .line 519
    .local v0, "alias":Ljava/lang/String;
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    #@47
    invoke-static {p1}, Ljava/security/Provider$Service;->-get4(Ljava/security/Provider$Service;)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v3, v0}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    goto :goto_0

    #@53
    .line 522
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "alias$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, p1}, Ljava/security/Provider;->serviceInfoFromProperties(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    monitor-exit p0

    #@57
    .line 509
    return-void
.end method

.method setProviderNumber(I)V
    .locals 0
    .param p1, "n"    # I

    #@0
    .prologue
    .line 357
    iput p1, p0, Ljava/security/Provider;->providerNumber:I

    #@2
    .line 356
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, " version "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-wide v2, p0, Ljava/security/Provider;->version:D

    #@14
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
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
    .line 233
    invoke-super {p0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
