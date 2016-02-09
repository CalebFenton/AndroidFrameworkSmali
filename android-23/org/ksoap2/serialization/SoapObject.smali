.class public Lorg/ksoap2/serialization/SoapObject;
.super Lorg/ksoap2/serialization/AttributeContainer;
.source "SoapObject.java"

# interfaces
.implements Lorg/ksoap2/serialization/KvmSerializable;


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected properties:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, ""

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-direct {p0, v0, v1}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Lorg/ksoap2/serialization/AttributeContainer;-><init>()V

    #@3
    .line 55
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@a
    .line 79
    iput-object p1, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    #@c
    .line 80
    iput-object p2, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    #@e
    .line 78
    return-void
.end method

.method private propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 390
    if-eqz p1, :cond_1

    #@3
    .line 391
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 392
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    #@14
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 393
    new-instance v1, Ljava/lang/Integer;

    #@20
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    #@23
    return-object v1

    #@24
    .line 391
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 397
    .end local v0    # "i":I
    :cond_1
    return-object v2
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 511
    new-instance v0, Lorg/ksoap2/serialization/PropertyInfo;

    #@2
    invoke-direct {v0}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    #@5
    .line 512
    .local v0, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    iput-object p1, v0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@7
    .line 513
    if-nez p2, :cond_0

    #@9
    sget-object v1, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    #@b
    :goto_0
    iput-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@d
    .line 515
    iput-object p2, v0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    #@f
    .line 516
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    #@11
    iput-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@13
    .line 518
    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 513
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v1

    #@1c
    goto :goto_0
.end method

.method public addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 561
    return-object p0
.end method

.method public addPropertyIfValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 529
    if-eqz p2, :cond_0

    #@2
    .line 530
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 532
    :cond_0
    return-object p0
.end method

.method public addPropertyIfValue(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    #@0
    .prologue
    .line 571
    iget-object v0, p1, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 572
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@9
    .line 573
    return-object p0

    #@a
    .line 575
    :cond_0
    return-object p0
.end method

.method public addPropertyIfValue(Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 544
    if-eqz p2, :cond_0

    #@2
    .line 545
    invoke-virtual {p1, p2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    #@5
    .line 546
    invoke-virtual {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 548
    :cond_0
    return-object p0
.end method

.method public addSoapObject(Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "soapObject"    # Lorg/ksoap2/serialization/SoapObject;

    #@0
    .prologue
    .line 587
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 588
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 84
    instance-of v4, p1, Lorg/ksoap2/serialization/SoapObject;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 85
    return v6

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 88
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    #@9
    .line 90
    .local v1, "otherSoapObject":Lorg/ksoap2/serialization/SoapObject;
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    #@b
    iget-object v5, v1, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 91
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    #@15
    iget-object v5, v1, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 95
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@1f
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@22
    move-result v0

    #@23
    .line 96
    .local v0, "numProperties":I
    iget-object v4, v1, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@25
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@28
    move-result v4

    #@29
    if-eq v0, v4, :cond_2

    #@2b
    .line 97
    return v6

    #@2c
    .line 92
    .end local v0    # "numProperties":I
    :cond_1
    return v6

    #@2d
    .line 101
    .restart local v0    # "numProperties":I
    :cond_2
    const/4 v2, 0x0

    #@2e
    .local v2, "propIndex":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@30
    .line 102
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@32
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    .line 103
    .local v3, "thisProp":Ljava/lang/Object;
    invoke-virtual {v1, v3, v2}, Lorg/ksoap2/serialization/SoapObject;->isPropertyEqual(Ljava/lang/Object;I)Z

    #@39
    move-result v4

    #@3a
    if-nez v4, :cond_3

    #@3c
    .line 104
    return v6

    #@3d
    .line 101
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 108
    .end local v3    # "thisProp":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->attributesAreEqual(Lorg/ksoap2/serialization/AttributeContainer;)Z

    #@43
    move-result v4

    #@44
    return v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPrimitiveProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 303
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 304
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@6
    .line 305
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    #@12
    .line 306
    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    #@18
    if-eq v2, v3, :cond_0

    #@1a
    .line 307
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 309
    :cond_0
    new-instance v1, Lorg/ksoap2/serialization/PropertyInfo;

    #@21
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-direct {v1}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    #@24
    .line 310
    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    const-class v2, Ljava/lang/String;

    #@26
    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    #@29
    .line 311
    const-string/jumbo v2, ""

    #@2c
    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    #@2f
    .line 312
    invoke-virtual {v1, p1}, Lorg/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    #@32
    .line 313
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    return-object v2

    #@37
    .line 316
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "illegal property: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v2
.end method

.method public getPrimitivePropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 328
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 329
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@6
    .line 330
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    #@12
    .line 331
    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    #@18
    if-eq v2, v3, :cond_0

    #@1a
    .line 332
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 334
    :cond_0
    const-string/jumbo v2, ""

    #@26
    return-object v2

    #@27
    .line 337
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "illegal property: "

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2
.end method

.method public getPrimitivePropertySafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 350
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 351
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@6
    .line 352
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    #@12
    .line 353
    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    #@18
    if-eq v2, v3, :cond_0

    #@1a
    .line 354
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 356
    :cond_0
    new-instance v1, Lorg/ksoap2/serialization/PropertyInfo;

    #@25
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-direct {v1}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    #@28
    .line 357
    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    const-class v2, Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    #@2d
    .line 358
    const-string/jumbo v2, ""

    #@30
    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    #@33
    .line 359
    invoke-virtual {v1, p1}, Lorg/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    #@36
    .line 360
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    return-object v2

    #@3b
    .line 363
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    new-instance v2, Lorg/ksoap2/serialization/NullSoapObject;

    #@3d
    invoke-direct {v2}, Lorg/ksoap2/serialization/NullSoapObject;-><init>()V

    #@40
    return-object v2
.end method

.method public getPrimitivePropertySafelyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 376
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 377
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@6
    .line 378
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    #@12
    .line 379
    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    #@18
    if-eq v2, v3, :cond_0

    #@1a
    .line 380
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 382
    :cond_0
    const-string/jumbo v2, ""

    #@26
    return-object v2

    #@27
    .line 385
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    const-string/jumbo v2, ""

    #@2a
    return-object v2
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 150
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 151
    .local v0, "prop":Ljava/lang/Object;
    instance-of v1, v0, Lorg/ksoap2/serialization/PropertyInfo;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 152
    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    #@c
    .end local v0    # "prop":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 154
    .restart local v0    # "prop":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    #@13
    .end local v0    # "prop":Ljava/lang/Object;
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 177
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@6
    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 180
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "illegal property: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public getPropertyAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 165
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    #@8
    .line 166
    .local v0, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 192
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 193
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@6
    .line 194
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 196
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "illegal property: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
.end method

.method public getPropertyCount()I
    .locals 1

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    #@0
    .prologue
    .line 421
    invoke-virtual {p0, p1, p3}, Lorg/ksoap2/serialization/SoapObject;->getPropertyInfo(ILorg/ksoap2/serialization/PropertyInfo;)V

    #@3
    .line 420
    return-void
.end method

.method public getPropertyInfo(ILorg/ksoap2/serialization/PropertyInfo;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 434
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@4
    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    .line 435
    .local v0, "element":Ljava/lang/Object;
    instance-of v2, v0, Lorg/ksoap2/serialization/PropertyInfo;

    #@a
    if-eqz v2, :cond_0

    #@c
    move-object v1, v0

    #@d
    .line 436
    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    #@f
    .line 437
    .local v1, "p":Lorg/ksoap2/serialization/PropertyInfo;
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@11
    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@13
    .line 438
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@15
    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@17
    .line 439
    iget v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    #@19
    iput v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    #@1b
    .line 440
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@1d
    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@1f
    .line 441
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    #@21
    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    #@23
    .line 442
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    #@25
    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    #@27
    .line 443
    iget-boolean v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    #@29
    iput-boolean v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    #@2b
    .line 433
    .end local v1    # "p":Lorg/ksoap2/serialization/PropertyInfo;
    :goto_0
    return-void

    #@2c
    .line 446
    :cond_0
    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@2e
    .line 447
    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@30
    .line 448
    iput v4, p2, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    #@32
    .line 449
    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@34
    .line 450
    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    #@36
    .line 451
    iput-object v0, p2, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    #@38
    .line 452
    iput-boolean v4, p2, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    #@3a
    goto :goto_0
.end method

.method public getPropertySafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 218
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 219
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@6
    .line 220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 222
    :cond_0
    new-instance v1, Lorg/ksoap2/serialization/NullSoapObject;

    #@11
    invoke-direct {v1}, Lorg/ksoap2/serialization/NullSoapObject;-><init>()V

    #@14
    return-object v1
.end method

.method public getPropertySafely(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultThing"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 258
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 259
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@6
    .line 260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 262
    :cond_0
    return-object p2
.end method

.method public getPropertySafelyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v1

    #@4
    .line 235
    .local v1, "i":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    #@6
    .line 236
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 237
    .local v0, "foo":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@10
    .line 238
    const-string/jumbo v2, ""

    #@13
    return-object v2

    #@14
    .line 240
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 243
    .end local v0    # "foo":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v2, ""

    #@1c
    return-object v2
.end method

.method public getPropertySafelyAsString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultThing"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 279
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 280
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@6
    .line 281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 282
    .local v1, "property":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@10
    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 285
    :cond_0
    const-string/jumbo v2, ""

    #@18
    return-object v2

    #@19
    .line 288
    .end local v1    # "property":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_2

    #@1b
    .line 289
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 291
    :cond_2
    const-string/jumbo v2, ""

    #@23
    return-object v2
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 205
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 207
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public isPropertyEqual(Ljava/lang/Object;I)Z
    .locals 8
    .param p1, "otherProp"    # Ljava/lang/Object;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 119
    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    #@4
    move-result v6

    #@5
    if-lt p2, v6, :cond_0

    #@7
    .line 120
    return v5

    #@8
    .line 122
    :cond_0
    iget-object v6, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@a
    invoke-virtual {v6, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    .line 123
    .local v2, "thisProp":Ljava/lang/Object;
    instance-of v6, p1, Lorg/ksoap2/serialization/PropertyInfo;

    #@10
    if-eqz v6, :cond_2

    #@12
    .line 124
    instance-of v6, v2, Lorg/ksoap2/serialization/PropertyInfo;

    #@14
    .line 123
    if-eqz v6, :cond_2

    #@16
    move-object v0, p1

    #@17
    .line 126
    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    #@19
    .local v0, "otherPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    move-object v3, v2

    #@1a
    .line 127
    check-cast v3, Lorg/ksoap2/serialization/PropertyInfo;

    #@1c
    .line 128
    .local v3, "thisPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v3}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_1

    #@2a
    .line 129
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v3}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    .line 128
    :cond_1
    return v5

    #@37
    .line 130
    .end local v0    # "otherPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    .end local v3    # "thisPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_2
    instance-of v6, p1, Lorg/ksoap2/serialization/SoapObject;

    #@39
    if-eqz v6, :cond_3

    #@3b
    instance-of v6, v2, Lorg/ksoap2/serialization/SoapObject;

    #@3d
    if-eqz v6, :cond_3

    #@3f
    move-object v1, p1

    #@40
    .line 131
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    #@42
    .local v1, "otherPropSoap":Lorg/ksoap2/serialization/SoapObject;
    move-object v4, v2

    #@43
    .line 132
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    #@45
    .line 133
    .local v4, "thisPropSoap":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v1, v4}, Lorg/ksoap2/serialization/SoapObject;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v5

    #@49
    return v5

    #@4a
    .line 135
    .end local v1    # "otherPropSoap":Lorg/ksoap2/serialization/SoapObject;
    .end local v4    # "thisPropSoap":Lorg/ksoap2/serialization/SoapObject;
    :cond_3
    return v5
.end method

.method public newInstance()Lorg/ksoap2/serialization/SoapObject;
    .locals 10

    #@0
    .prologue
    .line 464
    new-instance v3, Lorg/ksoap2/serialization/SoapObject;

    #@2
    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    #@4
    iget-object v9, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    #@6
    invoke-direct {v3, v8, v9}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 465
    .local v3, "o":Lorg/ksoap2/serialization/SoapObject;
    const/4 v5, 0x0

    #@a
    .local v5, "propIndex":I
    :goto_0
    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@c
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@f
    move-result v8

    #@10
    if-ge v5, v8, :cond_2

    #@12
    .line 466
    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@14
    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    .line 467
    .local v4, "prop":Ljava/lang/Object;
    instance-of v8, v4, Lorg/ksoap2/serialization/PropertyInfo;

    #@1a
    if-eqz v8, :cond_1

    #@1c
    .line 468
    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@1e
    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lorg/ksoap2/serialization/PropertyInfo;

    #@24
    .line 469
    .local v6, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v6}, Lorg/ksoap2/serialization/PropertyInfo;->clone()Ljava/lang/Object;

    #@27
    move-result-object v7

    #@28
    check-cast v7, Lorg/ksoap2/serialization/PropertyInfo;

    #@2a
    .line 470
    .local v7, "propertyInfoClonned":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v3, v7}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    #@2d
    .line 465
    .end local v4    # "prop":Ljava/lang/Object;
    .end local v6    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    .end local v7    # "propertyInfoClonned":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 471
    .restart local v4    # "prop":Ljava/lang/Object;
    :cond_1
    instance-of v8, v4, Lorg/ksoap2/serialization/SoapObject;

    #@32
    if-eqz v8, :cond_0

    #@34
    .line 472
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    #@36
    .end local v4    # "prop":Ljava/lang/Object;
    invoke-virtual {v4}, Lorg/ksoap2/serialization/SoapObject;->newInstance()Lorg/ksoap2/serialization/SoapObject;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v3, v8}, Lorg/ksoap2/serialization/SoapObject;->addSoapObject(Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapObject;

    #@3d
    goto :goto_1

    #@3e
    .line 475
    :cond_2
    const/4 v0, 0x0

    #@3f
    .local v0, "attribIndex":I
    :goto_2
    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getAttributeCount()I

    #@42
    move-result v8

    #@43
    if-ge v0, v8, :cond_3

    #@45
    .line 476
    new-instance v2, Lorg/ksoap2/serialization/AttributeInfo;

    #@47
    invoke-direct {v2}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    #@4a
    .line 477
    .local v2, "newAI":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {p0, v0, v2}, Lorg/ksoap2/serialization/SoapObject;->getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V

    #@4d
    .line 478
    move-object v1, v2

    #@4e
    .line 480
    .local v1, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v3, v1}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    #@51
    .line 475
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_2

    #@54
    .line 482
    .end local v1    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    .end local v2    # "newAI":Lorg/ksoap2/serialization/AttributeInfo;
    :cond_3
    return-object v3
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 494
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 495
    .local v0, "prop":Ljava/lang/Object;
    instance-of v1, v0, Lorg/ksoap2/serialization/PropertyInfo;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 496
    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    #@c
    .end local v0    # "prop":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    #@f
    .line 493
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v4, ""

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v4, "{"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@22
    .line 598
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    #@26
    move-result v3

    #@27
    if-ge v1, v3, :cond_1

    #@29
    .line 599
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    #@2b
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    .line 600
    .local v2, "prop":Ljava/lang/Object;
    instance-of v3, v2, Lorg/ksoap2/serialization/PropertyInfo;

    #@31
    if-eqz v3, :cond_0

    #@33
    .line 601
    const-string/jumbo v3, ""

    #@36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    move-result-object v3

    #@3a
    .line 602
    check-cast v2, Lorg/ksoap2/serialization/PropertyInfo;

    #@3c
    .end local v2    # "prop":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    move-result-object v3

    #@44
    .line 603
    const-string/jumbo v4, "="

    #@47
    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    move-result-object v3

    #@4b
    .line 604
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    #@4e
    move-result-object v4

    #@4f
    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@52
    move-result-object v3

    #@53
    .line 605
    const-string/jumbo v4, "; "

    #@56
    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@59
    .line 598
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 607
    .restart local v2    # "prop":Ljava/lang/Object;
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    #@5e
    .end local v2    # "prop":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapObject;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    goto :goto_1

    #@66
    .line 610
    :cond_1
    const-string/jumbo v3, "}"

    #@69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6c
    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    return-object v3
.end method
