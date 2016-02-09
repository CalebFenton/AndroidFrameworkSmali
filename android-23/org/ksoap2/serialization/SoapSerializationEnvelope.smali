.class public Lorg/ksoap2/serialization/SoapSerializationEnvelope;
.super Lorg/ksoap2/SoapEnvelope;
.source "SoapSerializationEnvelope.java"


# static fields
.field private static final ANY_TYPE_LABEL:Ljava/lang/String; = "anyType"

.field private static final ARRAY_MAPPING_NAME:Ljava/lang/String; = "Array"

.field private static final ARRAY_TYPE_LABEL:Ljava/lang/String; = "arrayType"

.field static final DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

.field private static final HREF_LABEL:Ljava/lang/String; = "href"

.field private static final ID_LABEL:Ljava/lang/String; = "id"

.field private static final ITEM_LABEL:Ljava/lang/String; = "item"

.field private static final NIL_LABEL:Ljava/lang/String; = "nil"

.field private static final NULL_LABEL:Ljava/lang/String; = "null"

.field protected static final QNAME_MARSHAL:I = 0x3

.field protected static final QNAME_NAMESPACE:I = 0x0

.field protected static final QNAME_TYPE:I = 0x1

.field private static final ROOT_LABEL:Ljava/lang/String; = "root"

.field private static final TYPE_LABEL:Ljava/lang/String; = "type"


# instance fields
.field protected addAdornments:Z

.field public avoidExceptionForUnknownProperty:Z

.field protected classToQName:Ljava/util/Hashtable;

.field public dotNet:Z

.field idMap:Ljava/util/Hashtable;

.field public implicitTypes:Z

.field multiRef:Ljava/util/Vector;

.field public properties:Ljava/util/Hashtable;

.field protected qNameToClass:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    new-instance v0, Lorg/ksoap2/serialization/DM;

    #@2
    invoke-direct {v0}, Lorg/ksoap2/serialization/DM;-><init>()V

    #@5
    sput-object v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

    #@7
    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "version"    # I

    #@0
    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/ksoap2/SoapEnvelope;-><init>(I)V

    #@3
    .line 57
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    #@a
    .line 59
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    #@11
    .line 87
    new-instance v0, Ljava/util/Hashtable;

    #@13
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@16
    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    #@18
    .line 93
    new-instance v0, Ljava/util/Hashtable;

    #@1a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1d
    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    #@1f
    .line 98
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    #@22
    .line 103
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@24
    const-string/jumbo v1, "Array"

    #@27
    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->VECTOR_CLASS:Ljava/lang/Class;

    #@29
    invoke-virtual {p0, v0, v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    #@2c
    .line 104
    sget-object v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

    #@2e
    invoke-interface {v0, p0}, Lorg/ksoap2/serialization/Marshal;->register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V

    #@31
    .line 100
    return-void
.end method

.method private getIndex(Ljava/lang/String;II)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "dflt"    # I

    #@0
    .prologue
    .line 293
    if-nez p1, :cond_0

    #@2
    .line 294
    return p3

    #@3
    .line 296
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    sub-int/2addr v0, p2

    #@8
    const/4 v1, 0x3

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .end local p3    # "dflt":I
    :goto_0
    return p3

    #@c
    .restart local p3    # "dflt":I
    :cond_1
    add-int/lit8 v0, p2, 0x1

    #@e
    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v1

    #@12
    add-int/lit8 v1, v1, -0x1

    #@14
    .line 296
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b
    move-result p3

    #@1c
    goto :goto_0
.end method

.method private writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V
    .locals 3
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "type"    # Lorg/ksoap2/serialization/PropertyInfo;
    .param p4, "marshal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 698
    if-eqz p4, :cond_0

    #@2
    .line 699
    check-cast p4, Lorg/ksoap2/serialization/Marshal;

    #@4
    .end local p4    # "marshal":Ljava/lang/Object;
    invoke-interface {p4, p1, p2}, Lorg/ksoap2/serialization/Marshal;->writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V

    #@7
    .line 697
    .end local p2    # "element":Ljava/lang/Object;
    :goto_0
    return-void

    #@8
    .line 700
    .restart local p2    # "element":Ljava/lang/Object;
    .restart local p4    # "marshal":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lorg/ksoap2/serialization/SoapObject;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 701
    check-cast p2, Lorg/ksoap2/serialization/SoapObject;

    #@e
    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V

    #@11
    goto :goto_0

    #@12
    .line 702
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Lorg/ksoap2/serialization/KvmSerializable;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 703
    check-cast p2, Lorg/ksoap2/serialization/KvmSerializable;

    #@18
    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/KvmSerializable;)V

    #@1b
    goto :goto_0

    #@1c
    .line 704
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/util/Vector;

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 705
    check-cast p2, Ljava/util/Vector;

    #@22
    .end local p2    # "element":Ljava/lang/Object;
    iget-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    #@24
    invoke-virtual {p0, p1, p2, v0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeVectorBody(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V

    #@27
    goto :goto_0

    #@28
    .line 707
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "Cannot serialize: "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0
.end method


# virtual methods
.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 517
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    #@4
    .line 516
    return-void
.end method

.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/Class;
    .param p4, "marshal"    # Lorg/ksoap2/serialization/Marshal;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 505
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    #@3
    .line 506
    new-instance v2, Lorg/ksoap2/serialization/SoapPrimitive;

    #@5
    invoke-direct {v2, p1, p2, v4}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    if-nez p4, :cond_0

    #@a
    move-object v0, p3

    #@b
    .line 505
    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 508
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    #@10
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x4

    #@15
    new-array v2, v2, [Ljava/lang/Object;

    #@17
    .line 509
    const/4 v3, 0x0

    #@18
    aput-object p1, v2, v3

    #@1a
    const/4 v3, 0x1

    #@1b
    aput-object p2, v2, v3

    #@1d
    const/4 v3, 0x2

    #@1e
    aput-object v4, v2, v3

    #@20
    const/4 v3, 0x3

    #@21
    aput-object p4, v2, v3

    #@23
    .line 508
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 504
    return-void

    #@27
    :cond_0
    move-object v0, p4

    #@28
    .line 507
    goto :goto_0
.end method

.method public addTemplate(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "so"    # Lorg/ksoap2/serialization/SoapObject;

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    #@2
    new-instance v1, Lorg/ksoap2/serialization/SoapPrimitive;

    #@4
    iget-object v2, p1, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    #@6
    iget-object v3, p1, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    #@8
    const/4 v4, 0x0

    #@9
    invoke-direct {v1, v2, v3, v4}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 524
    return-void
.end method

.method public getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "instance"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    .line 470
    if-nez p1, :cond_1

    #@7
    .line 471
    instance-of v3, p2, Lorg/ksoap2/serialization/SoapObject;

    #@9
    if-nez v3, :cond_0

    #@b
    instance-of v3, p2, Lorg/ksoap2/serialization/SoapPrimitive;

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 472
    :cond_0
    move-object p1, p2

    #@10
    .line 477
    :cond_1
    :goto_0
    instance-of v3, p1, Lorg/ksoap2/serialization/SoapObject;

    #@12
    if-eqz v3, :cond_3

    #@14
    move-object v0, p1

    #@15
    .line 478
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    #@17
    .line 479
    .local v0, "so":Lorg/ksoap2/serialization/SoapObject;
    const/4 v3, 0x4

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    .line 480
    invoke-virtual {v0}, Lorg/ksoap2/serialization/SoapObject;->getNamespace()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    aput-object v4, v3, v6

    #@20
    invoke-virtual {v0}, Lorg/ksoap2/serialization/SoapObject;->getName()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    aput-object v4, v3, v7

    #@26
    aput-object v5, v3, v8

    #@28
    aput-object v5, v3, v9

    #@2a
    .line 479
    return-object v3

    #@2b
    .line 474
    .end local v0    # "so":Lorg/ksoap2/serialization/SoapObject;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2e
    move-result-object p1

    #@2f
    goto :goto_0

    #@30
    .line 483
    :cond_3
    instance-of v3, p1, Lorg/ksoap2/serialization/SoapPrimitive;

    #@32
    if-eqz v3, :cond_4

    #@34
    move-object v1, p1

    #@35
    .line 484
    check-cast v1, Lorg/ksoap2/serialization/SoapPrimitive;

    #@37
    .line 485
    .local v1, "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    const/4 v3, 0x4

    #@38
    new-array v3, v3, [Ljava/lang/Object;

    #@3a
    .line 486
    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapPrimitive;->getNamespace()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    aput-object v4, v3, v6

    #@40
    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapPrimitive;->getName()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    aput-object v4, v3, v7

    #@46
    aput-object v5, v3, v8

    #@48
    sget-object v4, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

    #@4a
    aput-object v4, v3, v9

    #@4c
    .line 485
    return-object v3

    #@4d
    .line 489
    .end local v1    # "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    :cond_4
    instance-of v3, p1, Ljava/lang/Class;

    #@4f
    if-eqz v3, :cond_5

    #@51
    sget-object v3, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    #@53
    if-eq p1, v3, :cond_5

    #@55
    .line 490
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    #@57
    check-cast p1, Ljava/lang/Class;

    #@59
    .end local p1    # "type":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, [Ljava/lang/Object;

    #@63
    .line 491
    .local v2, "tmp":[Ljava/lang/Object;
    if-eqz v2, :cond_5

    #@65
    .line 492
    return-object v2

    #@66
    .line 495
    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_5
    const/4 v3, 0x4

    #@67
    new-array v3, v3, [Ljava/lang/Object;

    #@69
    .line 496
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    #@6b
    aput-object v4, v3, v6

    #@6d
    const-string/jumbo v4, "anyType"

    #@70
    aput-object v4, v3, v7

    #@72
    aput-object v5, v3, v8

    #@74
    aput-object v5, v3, v9

    #@76
    .line 495
    return-object v3
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ksoap2/SoapFault;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 536
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    #@3
    instance-of v3, v3, Lorg/ksoap2/SoapFault;

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 537
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    #@9
    check-cast v3, Lorg/ksoap2/SoapFault;

    #@b
    throw v3

    #@c
    .line 539
    :cond_0
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    #@e
    check-cast v1, Lorg/ksoap2/serialization/KvmSerializable;

    #@10
    .line 541
    .local v1, "ks":Lorg/ksoap2/serialization/KvmSerializable;
    invoke-interface {v1}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 542
    const/4 v3, 0x0

    #@17
    return-object v3

    #@18
    .line 543
    :cond_1
    invoke-interface {v1}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    #@1b
    move-result v3

    #@1c
    const/4 v4, 0x1

    #@1d
    if-ne v3, v4, :cond_2

    #@1f
    .line 544
    invoke-interface {v1, v5}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    return-object v3

    #@24
    .line 546
    :cond_2
    new-instance v2, Ljava/util/Vector;

    #@26
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@29
    .line 547
    .local v2, "ret":Ljava/util/Vector;
    const/4 v0, 0x0

    #@2a
    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    #@2d
    move-result v3

    #@2e
    if-ge v0, v3, :cond_3

    #@30
    .line 548
    invoke-interface {v1, v0}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@37
    .line 547
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 550
    :cond_3
    return-object v2
.end method

.method public isAddAdornments()Z
    .locals 1

    #@0
    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    #@2
    return v0
.end method

.method public parseBody(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    .line 138
    iput-object v2, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    #@4
    .line 139
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@7
    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@a
    move-result v0

    #@b
    if-ne v0, v10, :cond_2

    #@d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->env:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, "Fault"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 140
    if-eqz v0, :cond_2

    #@26
    .line 143
    iget v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    #@28
    const/16 v1, 0x78

    #@2a
    if-ge v0, v1, :cond_1

    #@2c
    .line 144
    new-instance v7, Lorg/ksoap2/SoapFault;

    #@2e
    iget v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    #@30
    invoke-direct {v7, v0}, Lorg/ksoap2/SoapFault;-><init>(I)V

    #@33
    .line 148
    .local v7, "fault":Lorg/ksoap2/SoapFault;
    :goto_0
    invoke-virtual {v7, p1}, Lorg/ksoap2/SoapFault;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@36
    .line 149
    iput-object v7, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    #@38
    .line 136
    .end local v7    # "fault":Lorg/ksoap2/SoapFault;
    :cond_0
    return-void

    #@39
    .line 146
    :cond_1
    new-instance v7, Lorg/ksoap2/SoapFault12;

    #@3b
    iget v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    #@3d
    invoke-direct {v7, v0}, Lorg/ksoap2/SoapFault12;-><init>(I)V

    #@40
    .restart local v7    # "fault":Lorg/ksoap2/SoapFault;
    goto :goto_0

    #@41
    .line 151
    .end local v7    # "fault":Lorg/ksoap2/SoapFault;
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@44
    move-result v0

    #@45
    if-ne v0, v10, :cond_0

    #@47
    .line 152
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@49
    const-string/jumbo v1, "root"

    #@4c
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    .line 154
    .local v9, "rootAttr":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    .line 155
    sget-object v6, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    #@5a
    .line 154
    const/4 v3, -0x1

    #@5b
    move-object v0, p0

    #@5c
    move-object v1, p1

    #@5d
    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    #@60
    move-result-object v8

    #@61
    .line 156
    .local v8, "o":Ljava/lang/Object;
    const-string/jumbo v0, "1"

    #@64
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v0

    #@68
    if-nez v0, :cond_3

    #@6a
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    #@6c
    if-nez v0, :cond_4

    #@6e
    .line 157
    :cond_3
    iput-object v8, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    #@70
    .line 159
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@73
    goto :goto_1
.end method

.method public read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "owner"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "expected"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 349
    .local v6, "elementName":Ljava/lang/String;
    const-string/jumbo v16, "href"

    #@7
    const/16 v17, 0x0

    #@9
    move-object/from16 v0, p1

    #@b
    move-object/from16 v1, v17

    #@d
    move-object/from16 v2, v16

    #@f
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v9

    #@13
    .line 351
    .local v9, "href":Ljava/lang/String;
    if-eqz v9, :cond_4

    #@15
    .line 352
    if-nez p2, :cond_0

    #@17
    .line 353
    new-instance v16, Ljava/lang/RuntimeException;

    #@19
    const-string/jumbo v17, "href at root level?!?"

    #@1c
    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v16

    #@20
    .line 355
    :cond_0
    const/16 v16, 0x1

    #@22
    move/from16 v0, v16

    #@24
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object v9

    #@28
    .line 356
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    #@2c
    move-object/from16 v16, v0

    #@2e
    move-object/from16 v0, v16

    #@30
    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v13

    #@34
    .line 357
    .local v13, "obj":Ljava/lang/Object;
    if-eqz v13, :cond_1

    #@36
    instance-of v0, v13, Lorg/ksoap2/serialization/FwdRef;

    #@38
    move/from16 v16, v0

    #@3a
    if-eqz v16, :cond_2

    #@3c
    .line 358
    :cond_1
    new-instance v7, Lorg/ksoap2/serialization/FwdRef;

    #@3e
    invoke-direct {v7}, Lorg/ksoap2/serialization/FwdRef;-><init>()V

    #@41
    .line 359
    .local v7, "f":Lorg/ksoap2/serialization/FwdRef;
    check-cast v13, Lorg/ksoap2/serialization/FwdRef;

    #@43
    .end local v13    # "obj":Ljava/lang/Object;
    iput-object v13, v7, Lorg/ksoap2/serialization/FwdRef;->next:Lorg/ksoap2/serialization/FwdRef;

    #@45
    .line 360
    move-object/from16 v0, p2

    #@47
    iput-object v0, v7, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    #@49
    .line 361
    move/from16 v0, p3

    #@4b
    iput v0, v7, Lorg/ksoap2/serialization/FwdRef;->index:I

    #@4d
    .line 362
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    #@51
    move-object/from16 v16, v0

    #@53
    move-object/from16 v0, v16

    #@55
    invoke-virtual {v0, v9, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 363
    const/4 v13, 0x0

    #@59
    .line 365
    .end local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@5c
    .line 366
    const/16 v16, 0x3

    #@5e
    const/16 v17, 0x0

    #@60
    move-object/from16 v0, p1

    #@62
    move/from16 v1, v16

    #@64
    move-object/from16 v2, v17

    #@66
    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@69
    .line 423
    :cond_3
    :goto_0
    const/16 v16, 0x3

    #@6b
    const/16 v17, 0x0

    #@6d
    move-object/from16 v0, p1

    #@6f
    move/from16 v1, v16

    #@71
    move-object/from16 v2, v17

    #@73
    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@76
    .line 424
    return-object v13

    #@77
    .line 368
    :cond_4
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    #@7b
    move-object/from16 v16, v0

    #@7d
    const-string/jumbo v17, "nil"

    #@80
    move-object/from16 v0, p1

    #@82
    move-object/from16 v1, v16

    #@84
    move-object/from16 v2, v17

    #@86
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@89
    move-result-object v12

    #@8a
    .line 369
    .local v12, "nullAttr":Ljava/lang/String;
    const-string/jumbo v16, "id"

    #@8d
    const/16 v17, 0x0

    #@8f
    move-object/from16 v0, p1

    #@91
    move-object/from16 v1, v17

    #@93
    move-object/from16 v2, v16

    #@95
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@98
    move-result-object v10

    #@99
    .line 370
    .local v10, "id":Ljava/lang/String;
    if-nez v12, :cond_5

    #@9b
    .line 371
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    #@9f
    move-object/from16 v16, v0

    #@a1
    const-string/jumbo v17, "null"

    #@a4
    move-object/from16 v0, p1

    #@a6
    move-object/from16 v1, v16

    #@a8
    move-object/from16 v2, v17

    #@aa
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ad
    move-result-object v12

    #@ae
    .line 373
    :cond_5
    if-eqz v12, :cond_9

    #@b0
    invoke-static {v12}, Lorg/ksoap2/SoapEnvelope;->stringToBoolean(Ljava/lang/String;)Z

    #@b3
    move-result v16

    #@b4
    if-eqz v16, :cond_9

    #@b6
    .line 374
    const/4 v13, 0x0

    #@b7
    .line 375
    .restart local v13    # "obj":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@ba
    .line 376
    const/16 v16, 0x3

    #@bc
    const/16 v17, 0x0

    #@be
    move-object/from16 v0, p1

    #@c0
    move/from16 v1, v16

    #@c2
    move-object/from16 v2, v17

    #@c4
    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@c7
    .line 404
    .end local v13    # "obj":Ljava/lang/Object;
    :cond_6
    :goto_1
    if-eqz v10, :cond_3

    #@c9
    .line 405
    move-object/from16 v0, p0

    #@cb
    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    #@cd
    move-object/from16 v16, v0

    #@cf
    move-object/from16 v0, v16

    #@d1
    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    move-result-object v8

    #@d5
    .line 406
    .local v8, "hlp":Ljava/lang/Object;
    instance-of v0, v8, Lorg/ksoap2/serialization/FwdRef;

    #@d7
    move/from16 v16, v0

    #@d9
    if-eqz v16, :cond_10

    #@db
    move-object v7, v8

    #@dc
    .line 407
    check-cast v7, Lorg/ksoap2/serialization/FwdRef;

    #@de
    .line 409
    .restart local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_7
    iget-object v0, v7, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    #@e0
    move-object/from16 v16, v0

    #@e2
    move-object/from16 v0, v16

    #@e4
    instance-of v0, v0, Lorg/ksoap2/serialization/KvmSerializable;

    #@e6
    move/from16 v16, v0

    #@e8
    if-eqz v16, :cond_f

    #@ea
    .line 410
    iget-object v0, v7, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    #@ec
    move-object/from16 v16, v0

    #@ee
    check-cast v16, Lorg/ksoap2/serialization/KvmSerializable;

    #@f0
    iget v0, v7, Lorg/ksoap2/serialization/FwdRef;->index:I

    #@f2
    move/from16 v17, v0

    #@f4
    move-object/from16 v0, v16

    #@f6
    move/from16 v1, v17

    #@f8
    invoke-interface {v0, v1, v13}, Lorg/ksoap2/serialization/KvmSerializable;->setProperty(ILjava/lang/Object;)V

    #@fb
    .line 414
    :goto_2
    iget-object v7, v7, Lorg/ksoap2/serialization/FwdRef;->next:Lorg/ksoap2/serialization/FwdRef;

    #@fd
    .line 415
    if-nez v7, :cond_7

    #@ff
    .line 419
    .end local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_8
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    #@103
    move-object/from16 v16, v0

    #@105
    move-object/from16 v0, v16

    #@107
    invoke-virtual {v0, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    goto/16 :goto_0

    #@10c
    .line 378
    .end local v8    # "hlp":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    #@10e
    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    #@110
    move-object/from16 v16, v0

    #@112
    const-string/jumbo v17, "type"

    #@115
    move-object/from16 v0, p1

    #@117
    move-object/from16 v1, v16

    #@119
    move-object/from16 v2, v17

    #@11b
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11e
    move-result-object v15

    #@11f
    .line 379
    .local v15, "type":Ljava/lang/String;
    if-eqz v15, :cond_d

    #@121
    .line 380
    const/16 v16, 0x3a

    #@123
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    #@126
    move-result v5

    #@127
    .line 381
    .local v5, "cut":I
    add-int/lit8 v16, v5, 0x1

    #@129
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12c
    move-result-object p5

    #@12d
    .line 382
    const/16 v16, -0x1

    #@12f
    move/from16 v0, v16

    #@131
    if-ne v5, v0, :cond_c

    #@133
    const-string/jumbo v14, ""

    #@136
    .line 383
    .local v14, "prefix":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    #@138
    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@13b
    move-result-object p4

    #@13c
    .line 395
    .end local v5    # "cut":I
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_a
    :goto_4
    if-nez v15, :cond_b

    #@13e
    .line 396
    const/16 v16, 0x1

    #@140
    move/from16 v0, v16

    #@142
    move-object/from16 v1, p0

    #@144
    iput-boolean v0, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    #@146
    .line 398
    :cond_b
    move-object/from16 v0, p0

    #@148
    move-object/from16 v1, p1

    #@14a
    move-object/from16 v2, p4

    #@14c
    move-object/from16 v3, p5

    #@14e
    move-object/from16 v4, p6

    #@150
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    #@153
    move-result-object v13

    #@154
    .line 399
    .restart local v13    # "obj":Ljava/lang/Object;
    if-nez v13, :cond_6

    #@156
    .line 400
    move-object/from16 v0, p0

    #@158
    move-object/from16 v1, p1

    #@15a
    move-object/from16 v2, p4

    #@15c
    move-object/from16 v3, p5

    #@15e
    invoke-virtual {v0, v1, v2, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readUnknown(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@161
    move-result-object v13

    #@162
    goto/16 :goto_1

    #@164
    .line 382
    .end local v13    # "obj":Ljava/lang/Object;
    .restart local v5    # "cut":I
    :cond_c
    const/16 v16, 0x0

    #@166
    move/from16 v0, v16

    #@168
    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16b
    move-result-object v14

    #@16c
    .restart local v14    # "prefix":Ljava/lang/String;
    goto :goto_3

    #@16d
    .line 384
    .end local v5    # "cut":I
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_d
    if-nez p5, :cond_a

    #@16f
    if-nez p4, :cond_a

    #@171
    .line 385
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@175
    move-object/from16 v16, v0

    #@177
    const-string/jumbo v17, "arrayType"

    #@17a
    move-object/from16 v0, p1

    #@17c
    move-object/from16 v1, v16

    #@17e
    move-object/from16 v2, v17

    #@180
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@183
    move-result-object v16

    #@184
    if-eqz v16, :cond_e

    #@186
    .line 386
    move-object/from16 v0, p0

    #@188
    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@18a
    move-object/from16 p4, v0

    #@18c
    .line 387
    const-string/jumbo p5, "Array"

    #@18f
    goto :goto_4

    #@190
    .line 389
    :cond_e
    move-object/from16 v0, p6

    #@192
    iget-object v0, v0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@194
    move-object/from16 v16, v0

    #@196
    const/16 v17, 0x0

    #@198
    move-object/from16 v0, p0

    #@19a
    move-object/from16 v1, v16

    #@19c
    move-object/from16 v2, v17

    #@19e
    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    #@1a1
    move-result-object v11

    #@1a2
    .line 390
    .local v11, "names":[Ljava/lang/Object;
    const/16 v16, 0x0

    #@1a4
    aget-object p4, v11, v16

    #@1a6
    .end local p4    # "namespace":Ljava/lang/String;
    check-cast p4, Ljava/lang/String;

    #@1a8
    .line 391
    .restart local p4    # "namespace":Ljava/lang/String;
    const/16 v16, 0x1

    #@1aa
    aget-object p5, v11, v16

    #@1ac
    .end local p5    # "name":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    #@1ae
    .restart local p5    # "name":Ljava/lang/String;
    goto :goto_4

    #@1af
    .line 412
    .end local v11    # "names":[Ljava/lang/Object;
    .end local v15    # "type":Ljava/lang/String;
    .restart local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    .restart local v8    # "hlp":Ljava/lang/Object;
    :cond_f
    iget-object v0, v7, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    #@1b1
    move-object/from16 v16, v0

    #@1b3
    check-cast v16, Ljava/util/Vector;

    #@1b5
    iget v0, v7, Lorg/ksoap2/serialization/FwdRef;->index:I

    #@1b7
    move/from16 v17, v0

    #@1b9
    move-object/from16 v0, v16

    #@1bb
    move/from16 v1, v17

    #@1bd
    invoke-virtual {v0, v13, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@1c0
    goto/16 :goto_2

    #@1c2
    .line 416
    .end local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_10
    if-eqz v8, :cond_8

    #@1c4
    .line 417
    new-instance v16, Ljava/lang/RuntimeException;

    #@1c6
    const-string/jumbo v17, "double ID"

    #@1c9
    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1cc
    throw v16
.end method

.method public readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "expected"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 434
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    #@3
    new-instance v3, Lorg/ksoap2/serialization/SoapPrimitive;

    #@5
    invoke-direct {v3, p2, p3, v4}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    .line 435
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@e
    .line 436
    return-object v4

    #@f
    .line 438
    :cond_0
    instance-of v2, v1, Lorg/ksoap2/serialization/Marshal;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 439
    check-cast v1, Lorg/ksoap2/serialization/Marshal;

    #@15
    .end local v1    # "obj":Ljava/lang/Object;
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/ksoap2/serialization/Marshal;->readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 440
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 441
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    #@20
    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapObject;->newInstance()Lorg/ksoap2/serialization/SoapObject;

    #@23
    move-result-object v1

    #@24
    .line 452
    .restart local v1    # "obj":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Lorg/ksoap2/serialization/SoapObject;

    #@26
    if-eqz v2, :cond_4

    #@28
    move-object v2, v1

    #@29
    .line 453
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    #@2b
    invoke-virtual {p0, p1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/SoapObject;)V

    #@2e
    .line 461
    :goto_1
    return-object v1

    #@2f
    .line 442
    :cond_2
    const-class v2, Lorg/ksoap2/serialization/SoapObject;

    #@31
    if-ne v1, v2, :cond_3

    #@33
    .line 443
    new-instance v1, Lorg/ksoap2/serialization/SoapObject;

    #@35
    .end local v1    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p2, p3}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .restart local v1    # "obj":Ljava/lang/Object;
    goto :goto_0

    #@39
    .line 446
    :cond_3
    :try_start_0
    check-cast v1, Ljava/lang/Class;

    #@3b
    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    move-result-object v1

    #@3f
    .restart local v1    # "obj":Ljava/lang/Object;
    goto :goto_0

    #@40
    .line 447
    .end local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@41
    .line 448
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@43
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2

    #@4b
    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v2, v1, Lorg/ksoap2/serialization/KvmSerializable;

    #@4d
    if-eqz v2, :cond_5

    #@4f
    move-object v2, v1

    #@50
    .line 455
    check-cast v2, Lorg/ksoap2/serialization/KvmSerializable;

    #@52
    invoke-virtual {p0, p1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/KvmSerializable;)V

    #@55
    goto :goto_1

    #@56
    .line 456
    :cond_5
    instance-of v2, v1, Ljava/util/Vector;

    #@58
    if-eqz v2, :cond_6

    #@5a
    move-object v2, v1

    #@5b
    .line 457
    check-cast v2, Ljava/util/Vector;

    #@5d
    iget-object v3, p4, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    #@5f
    invoke-virtual {p0, p1, v2, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readVector(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V

    #@62
    goto :goto_1

    #@63
    .line 459
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    #@65
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v4, "no deserializer for "

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@80
    throw v2
.end method

.method protected readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/KvmSerializable;)V
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "obj"    # Lorg/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x3

    #@5
    if-eq v1, v2, :cond_8

    #@7
    .line 181
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a
    move-result-object v13

    #@b
    .line 182
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d
    iget-boolean v1, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    move-object/from16 v0, p2

    #@13
    instance-of v1, v0, Lorg/ksoap2/serialization/SoapObject;

    #@15
    if-eqz v1, :cond_1

    #@17
    move-object/from16 v1, p2

    #@19
    .line 213
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    #@1b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 214
    invoke-interface/range {p2 .. p2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    #@22
    move-result v11

    #@23
    move-object/from16 v2, p2

    #@25
    .line 215
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    #@27
    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapObject;->getNamespace()Ljava/lang/String;

    #@2a
    move-result-object v12

    #@2b
    sget-object v14, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    #@2d
    move-object/from16 v8, p0

    #@2f
    move-object/from16 v9, p1

    #@31
    move-object/from16 v10, p2

    #@33
    .line 214
    invoke-virtual/range {v8 .. v14}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    .line 213
    invoke-virtual {v1, v3, v2}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    #@3a
    goto :goto_0

    #@3b
    .line 183
    :cond_1
    new-instance v7, Lorg/ksoap2/serialization/PropertyInfo;

    #@3d
    invoke-direct {v7}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    #@40
    .line 184
    .local v7, "info":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-interface/range {p2 .. p2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    #@43
    move-result v15

    #@44
    .line 185
    .local v15, "propertyCount":I
    const/16 v16, 0x0

    #@46
    .line 187
    .local v16, "propertyFound":Z
    const/4 v4, 0x0

    #@47
    .local v4, "i":I
    :goto_1
    if-ge v4, v15, :cond_2

    #@49
    if-eqz v16, :cond_4

    #@4b
    .line 199
    :cond_2
    if-nez v16, :cond_0

    #@4d
    .line 200
    move-object/from16 v0, p0

    #@4f
    iget-boolean v1, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->avoidExceptionForUnknownProperty:Z

    #@51
    if-eqz v1, :cond_7

    #@53
    .line 202
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@56
    move-result v1

    #@57
    const/4 v2, 0x3

    #@58
    if-ne v1, v2, :cond_3

    #@5a
    .line 203
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_3

    #@64
    goto :goto_0

    #@65
    .line 188
    :cond_4
    invoke-virtual {v7}, Lorg/ksoap2/serialization/PropertyInfo;->clear()V

    #@68
    .line 189
    move-object/from16 v0, p0

    #@6a
    iget-object v1, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    #@6c
    move-object/from16 v0, p2

    #@6e
    invoke-interface {v0, v4, v1, v7}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V

    #@71
    .line 191
    iget-object v1, v7, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@73
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_6

    #@79
    iget-object v1, v7, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@7b
    if-nez v1, :cond_6

    #@7d
    .line 194
    :goto_2
    const/16 v16, 0x1

    #@7f
    .line 195
    const/4 v5, 0x0

    #@80
    const/4 v6, 0x0

    #@81
    move-object/from16 v1, p0

    #@83
    move-object/from16 v2, p1

    #@85
    move-object/from16 v3, p2

    #@87
    invoke-virtual/range {v1 .. v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    #@8a
    move-result-object v1

    #@8b
    move-object/from16 v0, p2

    #@8d
    invoke-interface {v0, v4, v1}, Lorg/ksoap2/serialization/KvmSerializable;->setProperty(ILjava/lang/Object;)V

    #@90
    .line 187
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@92
    goto :goto_1

    #@93
    .line 193
    :cond_6
    iget-object v1, v7, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@95
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v1

    #@99
    if-eqz v1, :cond_5

    #@9b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    iget-object v2, v7, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@a1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v1

    #@a5
    .line 191
    if-eqz v1, :cond_5

    #@a7
    goto :goto_2

    #@a8
    .line 207
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    #@aa
    new-instance v2, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v3, "Unknown Property: "

    #@b2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v2

    #@be
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c1
    throw v1

    #@c2
    .line 218
    .end local v4    # "i":I
    .end local v7    # "info":Lorg/ksoap2/serialization/PropertyInfo;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "propertyCount":I
    .end local v16    # "propertyFound":Z
    :cond_8
    const/4 v1, 0x3

    #@c3
    const/4 v2, 0x0

    #@c4
    const/4 v3, 0x0

    #@c5
    move-object/from16 v0, p1

    #@c7
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@ca
    .line 178
    return-void
.end method

.method protected readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    const/4 v1, 0x0

    #@1
    .local v1, "counter":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@4
    move-result v3

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 169
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 170
    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 171
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p2, v0, v2}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 168
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 173
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/KvmSerializable;)V

    #@18
    .line 166
    return-void
.end method

.method protected readUnknown(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "typeNamespace"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3
    move-result-object v15

    #@4
    .line 236
    .local v15, "name":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@7
    move-result-object v16

    #@8
    .line 239
    .local v16, "namespace":Ljava/lang/String;
    new-instance v13, Ljava/util/Vector;

    #@a
    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    #@d
    .line 240
    .local v13, "attributeInfoVector":Ljava/util/Vector;
    const/4 v11, 0x0

    #@e
    .local v11, "attributeCount":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@11
    move-result v4

    #@12
    if-ge v11, v4, :cond_0

    #@14
    .line 241
    new-instance v12, Lorg/ksoap2/serialization/AttributeInfo;

    #@16
    invoke-direct {v12}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    #@19
    .line 242
    .local v12, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    move-object/from16 v0, p1

    #@1b
    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v12, v4}, Lorg/ksoap2/serialization/AttributeInfo;->setName(Ljava/lang/String;)V

    #@22
    .line 243
    move-object/from16 v0, p1

    #@24
    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v12, v4}, Lorg/ksoap2/serialization/AttributeInfo;->setValue(Ljava/lang/Object;)V

    #@2b
    .line 244
    move-object/from16 v0, p1

    #@2d
    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v12, v4}, Lorg/ksoap2/serialization/AttributeInfo;->setNamespace(Ljava/lang/String;)V

    #@34
    .line 245
    move-object/from16 v0, p1

    #@36
    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v12, v4}, Lorg/ksoap2/serialization/AttributeInfo;->setType(Ljava/lang/Object;)V

    #@3d
    .line 246
    invoke-virtual {v13, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@40
    .line 240
    add-int/lit8 v11, v11, 0x1

    #@42
    goto :goto_0

    #@43
    .line 249
    .end local v12    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@46
    .line 250
    const/16 v17, 0x0

    #@48
    .line 251
    .local v17, "result":Ljava/lang/Object;
    const/16 v19, 0x0

    #@4a
    .line 252
    .local v19, "text":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@4d
    move-result v4

    #@4e
    const/4 v5, 0x4

    #@4f
    if-ne v4, v5, :cond_3

    #@51
    .line 253
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@54
    move-result-object v19

    #@55
    .line 254
    .local v19, "text":Ljava/lang/String;
    new-instance v18, Lorg/ksoap2/serialization/SoapPrimitive;

    #@57
    move-object/from16 v0, v18

    #@59
    move-object/from16 v1, p2

    #@5b
    move-object/from16 v2, p3

    #@5d
    move-object/from16 v3, v19

    #@5f
    invoke-direct {v0, v1, v2, v3}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@62
    .line 255
    .local v18, "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    move-object/from16 v17, v18

    #@64
    .line 257
    const/4 v14, 0x0

    #@65
    .local v14, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    #@68
    move-result v4

    #@69
    if-ge v14, v4, :cond_1

    #@6b
    .line 258
    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@6e
    move-result-object v4

    #@6f
    check-cast v4, Lorg/ksoap2/serialization/AttributeInfo;

    #@71
    move-object/from16 v0, v18

    #@73
    invoke-virtual {v0, v4}, Lorg/ksoap2/serialization/SoapPrimitive;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    #@76
    .line 257
    add-int/lit8 v14, v14, 0x1

    #@78
    goto :goto_1

    #@79
    .line 260
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7c
    .line 270
    .end local v14    # "i":I
    .end local v17    # "result":Ljava/lang/Object;
    .end local v18    # "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    .end local v19    # "text":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@7f
    move-result v4

    #@80
    const/4 v5, 0x2

    #@81
    if-ne v4, v5, :cond_8

    #@83
    .line 271
    if-eqz v19, :cond_5

    #@85
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_5

    #@8f
    .line 272
    new-instance v4, Ljava/lang/RuntimeException;

    #@91
    const-string/jumbo v5, "Malformed input: Mixed content"

    #@94
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@97
    throw v4

    #@98
    .line 261
    .restart local v17    # "result":Ljava/lang/Object;
    .local v19, "text":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@9b
    move-result v4

    #@9c
    const/4 v5, 0x3

    #@9d
    if-ne v4, v5, :cond_2

    #@9f
    .line 262
    new-instance v6, Lorg/ksoap2/serialization/SoapObject;

    #@a1
    move-object/from16 v0, p2

    #@a3
    move-object/from16 v1, p3

    #@a5
    invoke-direct {v6, v0, v1}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a8
    .line 264
    .local v6, "so":Lorg/ksoap2/serialization/SoapObject;
    const/4 v14, 0x0

    #@a9
    .restart local v14    # "i":I
    :goto_3
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    #@ac
    move-result v4

    #@ad
    if-ge v14, v4, :cond_4

    #@af
    .line 265
    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@b2
    move-result-object v4

    #@b3
    check-cast v4, Lorg/ksoap2/serialization/AttributeInfo;

    #@b5
    invoke-virtual {v6, v4}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    #@b8
    .line 264
    add-int/lit8 v14, v14, 0x1

    #@ba
    goto :goto_3

    #@bb
    .line 267
    :cond_4
    move-object/from16 v17, v6

    #@bd
    goto :goto_2

    #@be
    .line 274
    .end local v6    # "so":Lorg/ksoap2/serialization/SoapObject;
    .end local v14    # "i":I
    .end local v17    # "result":Ljava/lang/Object;
    .end local v19    # "text":Ljava/lang/String;
    :cond_5
    new-instance v6, Lorg/ksoap2/serialization/SoapObject;

    #@c0
    move-object/from16 v0, p2

    #@c2
    move-object/from16 v1, p3

    #@c4
    invoke-direct {v6, v0, v1}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c7
    .line 276
    .restart local v6    # "so":Lorg/ksoap2/serialization/SoapObject;
    const/4 v14, 0x0

    #@c8
    .restart local v14    # "i":I
    :goto_4
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    #@cb
    move-result v4

    #@cc
    if-ge v14, v4, :cond_6

    #@ce
    .line 277
    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d1
    move-result-object v4

    #@d2
    check-cast v4, Lorg/ksoap2/serialization/AttributeInfo;

    #@d4
    invoke-virtual {v6, v4}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    #@d7
    .line 276
    add-int/lit8 v14, v14, 0x1

    #@d9
    goto :goto_4

    #@da
    .line 280
    :cond_6
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@dd
    move-result v4

    #@de
    const/4 v5, 0x3

    #@df
    if-eq v4, v5, :cond_7

    #@e1
    .line 281
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e4
    move-result-object v20

    #@e5
    .line 282
    invoke-virtual {v6}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    #@e8
    move-result v7

    #@e9
    .line 283
    sget-object v10, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    #@eb
    .line 282
    const/4 v8, 0x0

    #@ec
    const/4 v9, 0x0

    #@ed
    move-object/from16 v4, p0

    #@ef
    move-object/from16 v5, p1

    #@f1
    invoke-virtual/range {v4 .. v10}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    #@f4
    move-result-object v4

    #@f5
    .line 281
    move-object/from16 v0, v20

    #@f7
    invoke-virtual {v6, v0, v4}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    #@fa
    .line 284
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@fd
    goto :goto_5

    #@fe
    .line 286
    :cond_7
    move-object/from16 v17, v6

    #@100
    .line 288
    .end local v6    # "so":Lorg/ksoap2/serialization/SoapObject;
    .end local v14    # "i":I
    :cond_8
    const/4 v4, 0x3

    #@101
    move-object/from16 v0, p1

    #@103
    move-object/from16 v1, v16

    #@105
    invoke-interface {v0, v4, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@108
    .line 289
    return-object v17
.end method

.method protected readVector(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "v"    # Ljava/util/Vector;
    .param p3, "elementType"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    const/4 v4, 0x0

    #@1
    .line 304
    .local v4, "namespace":Ljava/lang/String;
    const/4 v5, 0x0

    #@2
    .line 305
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    #@5
    move-result v11

    #@6
    .line 306
    .local v11, "size":I
    const/4 v9, 0x1

    #@7
    .line 307
    .local v9, "dynamic":Z
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@9
    const-string/jumbo v1, "arrayType"

    #@c
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v12

    #@10
    .line 308
    .local v12, "type":Ljava/lang/String;
    if-eqz v12, :cond_0

    #@12
    .line 309
    const/16 v0, 0x3a

    #@14
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v7

    #@18
    .line 310
    .local v7, "cut0":I
    const-string/jumbo v0, "["

    #@1b
    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@1e
    move-result v8

    #@1f
    .line 311
    .local v8, "cut1":I
    add-int/lit8 v0, v7, 0x1

    #@21
    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 312
    .local v5, "name":Ljava/lang/String;
    const/4 v0, -0x1

    #@26
    if-ne v7, v0, :cond_3

    #@28
    const-string/jumbo v10, ""

    #@2b
    .line 313
    .local v10, "prefix":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 314
    .local v4, "namespace":Ljava/lang/String;
    const/4 v0, -0x1

    #@30
    invoke-direct {p0, v12, v8, v0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    #@33
    move-result v11

    #@34
    .line 315
    const/4 v0, -0x1

    #@35
    if-eq v11, v0, :cond_0

    #@37
    .line 316
    invoke-virtual {p2, v11}, Ljava/util/Vector;->setSize(I)V

    #@3a
    .line 317
    const/4 v9, 0x0

    #@3b
    .line 320
    .end local v4    # "namespace":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "cut0":I
    .end local v8    # "cut1":I
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_0
    if-nez p3, :cond_1

    #@3d
    .line 321
    sget-object p3, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    #@3f
    .line 323
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@42
    .line 324
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@44
    const-string/jumbo v1, "offset"

    #@47
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    const/4 v1, 0x0

    #@4c
    const/4 v2, 0x0

    #@4d
    invoke-direct {p0, v0, v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    #@50
    move-result v3

    #@51
    .line 325
    .local v3, "position":I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@54
    move-result v0

    #@55
    const/4 v1, 0x3

    #@56
    if-eq v0, v1, :cond_4

    #@58
    .line 327
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@5a
    const-string/jumbo v1, "position"

    #@5d
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    const/4 v1, 0x0

    #@62
    invoke-direct {p0, v0, v1, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    #@65
    move-result v3

    #@66
    .line 328
    if-eqz v9, :cond_2

    #@68
    if-lt v3, v11, :cond_2

    #@6a
    .line 329
    add-int/lit8 v11, v3, 0x1

    #@6c
    .line 330
    invoke-virtual {p2, v11}, Ljava/util/Vector;->setSize(I)V

    #@6f
    :cond_2
    move-object v0, p0

    #@70
    move-object v1, p1

    #@71
    move-object v2, p2

    #@72
    move-object/from16 v6, p3

    #@74
    .line 333
    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    invoke-virtual {p2, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@7b
    .line 334
    add-int/lit8 v3, v3, 0x1

    #@7d
    .line 335
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@80
    goto :goto_1

    #@81
    .line 312
    .end local v3    # "position":I
    .local v4, "namespace":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "cut0":I
    .restart local v8    # "cut1":I
    :cond_3
    const/4 v0, 0x0

    #@82
    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@85
    move-result-object v10

    #@86
    .restart local v10    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@87
    .line 337
    .end local v4    # "namespace":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "cut0":I
    .end local v8    # "cut1":I
    .end local v10    # "prefix":Ljava/lang/String;
    .restart local v3    # "position":I
    :cond_4
    const/4 v0, 0x3

    #@88
    const/4 v1, 0x0

    #@89
    const/4 v2, 0x0

    #@8a
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@8d
    .line 302
    return-void
.end method

.method public setAddAdornments(Z)V
    .locals 0
    .param p1, "addAdornments"    # Z

    #@0
    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    #@2
    .line 119
    return-void
.end method

.method public setBodyOutEmpty(Z)V
    .locals 1
    .param p1, "emptyBody"    # Z

    #@0
    .prologue
    .line 131
    if-eqz p1, :cond_0

    #@2
    .line 132
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    #@5
    .line 130
    :cond_0
    return-void
.end method

.method public writeBody(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 563
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 564
    new-instance v1, Ljava/util/Vector;

    #@a
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@d
    iput-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    #@f
    .line 565
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    #@11
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    #@13
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@16
    .line 566
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    #@18
    invoke-virtual {p0, v4, v1}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 567
    .local v0, "qName":[Ljava/lang/Object;
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    #@1e
    if-eqz v1, :cond_3

    #@20
    const-string/jumbo v1, ""

    #@23
    move-object v2, v1

    #@24
    .line 568
    :goto_0
    aget-object v1, v0, v6

    #@26
    check-cast v1, Ljava/lang/String;

    #@28
    .line 567
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 569
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    #@2d
    if-eqz v1, :cond_0

    #@2f
    .line 570
    const-string/jumbo v2, "xmlns"

    #@32
    aget-object v1, v0, v5

    #@34
    check-cast v1, Ljava/lang/String;

    #@36
    invoke-interface {p1, v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39
    .line 572
    :cond_0
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 573
    const-string/jumbo v2, "id"

    #@40
    aget-object v1, v0, v3

    #@42
    if-nez v1, :cond_4

    #@44
    const-string/jumbo v1, "o0"

    #@47
    :goto_1
    invoke-interface {p1, v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 574
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@4c
    const-string/jumbo v2, "root"

    #@4f
    const-string/jumbo v3, "1"

    #@52
    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@55
    .line 576
    :cond_1
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    #@57
    const/4 v2, 0x3

    #@58
    aget-object v2, v0, v2

    #@5a
    invoke-direct {p0, p1, v1, v4, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V

    #@5d
    .line 577
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    #@5f
    if-eqz v1, :cond_5

    #@61
    const-string/jumbo v1, ""

    #@64
    move-object v2, v1

    #@65
    .line 578
    :goto_2
    aget-object v1, v0, v6

    #@67
    check-cast v1, Ljava/lang/String;

    #@69
    .line 577
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6c
    .line 560
    .end local v0    # "qName":[Ljava/lang/Object;
    :cond_2
    return-void

    #@6d
    .line 567
    .restart local v0    # "qName":[Ljava/lang/Object;
    :cond_3
    aget-object v1, v0, v5

    #@6f
    check-cast v1, Ljava/lang/String;

    #@71
    move-object v2, v1

    #@72
    goto :goto_0

    #@73
    .line 573
    :cond_4
    aget-object v1, v0, v3

    #@75
    check-cast v1, Ljava/lang/String;

    #@77
    goto :goto_1

    #@78
    .line 577
    :cond_5
    aget-object v1, v0, v5

    #@7a
    check-cast v1, Ljava/lang/String;

    #@7c
    move-object v2, v1

    #@7d
    goto :goto_2
.end method

.method public writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/KvmSerializable;)V
    .locals 18
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lorg/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 603
    invoke-interface/range {p2 .. p2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    #@3
    move-result v3

    #@4
    .line 604
    .local v3, "cnt":I
    new-instance v10, Lorg/ksoap2/serialization/PropertyInfo;

    #@6
    invoke-direct {v10}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    #@9
    .line 608
    .local v10, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_b

    #@c
    .line 610
    move-object/from16 v0, p2

    #@e
    invoke-interface {v0, v4}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    #@11
    move-result-object v9

    #@12
    .line 612
    .local v9, "prop":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@14
    iget-object v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    #@16
    move-object/from16 v0, p2

    #@18
    invoke-interface {v0, v4, v14, v10}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V

    #@1b
    .line 614
    instance-of v14, v9, Lorg/ksoap2/serialization/SoapObject;

    #@1d
    if-nez v14, :cond_1

    #@1f
    .line 616
    iget v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    #@21
    and-int/lit8 v14, v14, 0x1

    #@23
    if-nez v14, :cond_0

    #@25
    .line 617
    iget-object v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@27
    iget-object v15, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@29
    move-object/from16 v0, p1

    #@2b
    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e
    .line 618
    move-object/from16 v0, p2

    #@30
    invoke-interface {v0, v4}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    #@33
    move-result-object v14

    #@34
    move-object/from16 v0, p0

    #@36
    move-object/from16 v1, p1

    #@38
    invoke-virtual {v0, v1, v14, v10}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;)V

    #@3b
    .line 619
    iget-object v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@3d
    iget-object v15, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44
    .line 608
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@46
    goto :goto_0

    #@47
    :cond_1
    move-object v7, v9

    #@48
    .line 623
    check-cast v7, Lorg/ksoap2/serialization/SoapObject;

    #@4a
    .line 625
    .local v7, "nestedSoap":Lorg/ksoap2/serialization/SoapObject;
    const/4 v14, 0x0

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v14, v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    #@50
    move-result-object v11

    #@51
    .line 626
    .local v11, "qName":[Ljava/lang/Object;
    const/4 v14, 0x0

    #@52
    aget-object v6, v11, v14

    #@54
    check-cast v6, Ljava/lang/String;

    #@56
    .line 627
    .local v6, "namespace":Ljava/lang/String;
    const/4 v14, 0x1

    #@57
    aget-object v12, v11, v14

    #@59
    check-cast v12, Ljava/lang/String;

    #@5b
    .line 630
    .local v12, "type":Ljava/lang/String;
    iget-object v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@5d
    if-eqz v14, :cond_5

    #@5f
    iget-object v14, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@61
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@64
    move-result v14

    #@65
    if-lez v14, :cond_5

    #@67
    .line 631
    iget-object v5, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@69
    .line 637
    .local v5, "name":Ljava/lang/String;
    :goto_2
    const-string/jumbo v14, "DevInfo"

    #@6c
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v14

    #@70
    if-nez v14, :cond_2

    #@72
    const-string/jumbo v14, "DevDetail"

    #@75
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v14

    #@79
    if-nez v14, :cond_2

    #@7b
    .line 638
    const-string/jumbo v14, "PerProviderSubscription"

    #@7e
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v14

    #@82
    .line 637
    if-nez v14, :cond_2

    #@84
    .line 639
    const-string/jumbo v14, "MgmtTree"

    #@87
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v14

    #@8b
    .line 637
    if-eqz v14, :cond_7

    #@8d
    .line 641
    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@8f
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@92
    .line 642
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v13, Lorg/kxml2/io/KXmlSerializer;

    #@94
    invoke-direct {v13}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    #@97
    .line 643
    .local v13, "xw":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v14, "UTF-8"

    #@9a
    invoke-interface {v13, v2, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@9d
    .line 644
    move-object/from16 v0, p0

    #@9f
    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    #@a1
    if-eqz v14, :cond_6

    #@a3
    const-string/jumbo v14, ""

    #@a6
    :goto_3
    invoke-interface {v13, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a9
    .line 645
    move-object/from16 v0, p0

    #@ab
    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    #@ad
    if-nez v14, :cond_3

    #@af
    .line 646
    const/4 v14, 0x1

    #@b0
    move-object/from16 v0, p1

    #@b2
    invoke-interface {v0, v6, v14}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    #@b5
    move-result-object v8

    #@b6
    .line 647
    .local v8, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b8
    iget-object v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    #@ba
    const-string/jumbo v15, "type"

    #@bd
    new-instance v16, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    move-object/from16 v0, v16

    #@c4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v16

    #@c8
    const-string/jumbo v17, ":"

    #@cb
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v16

    #@cf
    move-object/from16 v0, v16

    #@d1
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v16

    #@d5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v16

    #@d9
    move-object/from16 v0, p1

    #@db
    move-object/from16 v1, v16

    #@dd
    invoke-interface {v0, v14, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e0
    .line 649
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v0, v13, v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V

    #@e5
    .line 650
    move-object/from16 v0, p0

    #@e7
    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    #@e9
    if-eqz v14, :cond_4

    #@eb
    const-string/jumbo v6, ""

    #@ee
    .end local v6    # "namespace":Ljava/lang/String;
    :cond_4
    invoke-interface {v13, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f1
    .line 651
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    #@f4
    .line 654
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    #@f7
    .line 655
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    #@fa
    move-result-object v14

    #@fb
    move-object/from16 v0, p1

    #@fd
    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    #@100
    goto/16 :goto_1

    #@102
    .line 633
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "name":Ljava/lang/String;
    .end local v13    # "xw":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "namespace":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x1

    #@103
    aget-object v5, v11, v14

    #@105
    check-cast v5, Ljava/lang/String;

    #@107
    .restart local v5    # "name":Ljava/lang/String;
    goto/16 :goto_2

    #@109
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "xw":Lorg/xmlpull/v1/XmlSerializer;
    :cond_6
    move-object v14, v6

    #@10a
    .line 644
    goto :goto_3

    #@10b
    .line 659
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "xw":Lorg/xmlpull/v1/XmlSerializer;
    :cond_7
    move-object/from16 v0, p0

    #@10d
    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    #@10f
    if-eqz v14, :cond_a

    #@111
    const-string/jumbo v14, ""

    #@114
    :goto_4
    move-object/from16 v0, p1

    #@116
    invoke-interface {v0, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@119
    .line 660
    move-object/from16 v0, p0

    #@11b
    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    #@11d
    if-nez v14, :cond_8

    #@11f
    .line 661
    const/4 v14, 0x1

    #@120
    move-object/from16 v0, p1

    #@122
    invoke-interface {v0, v6, v14}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    #@125
    move-result-object v8

    #@126
    .line 662
    .restart local v8    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@128
    iget-object v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    #@12a
    const-string/jumbo v15, "type"

    #@12d
    new-instance v16, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    move-object/from16 v0, v16

    #@134
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v16

    #@138
    const-string/jumbo v17, ":"

    #@13b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v16

    #@13f
    move-object/from16 v0, v16

    #@141
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v16

    #@145
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v16

    #@149
    move-object/from16 v0, p1

    #@14b
    move-object/from16 v1, v16

    #@14d
    invoke-interface {v0, v14, v15, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@150
    .line 664
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    #@152
    move-object/from16 v1, p1

    #@154
    invoke-virtual {v0, v1, v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V

    #@157
    .line 665
    move-object/from16 v0, p0

    #@159
    iget-boolean v14, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    #@15b
    if-eqz v14, :cond_9

    #@15d
    const-string/jumbo v6, ""

    #@160
    .end local v6    # "namespace":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    #@162
    invoke-interface {v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@165
    goto/16 :goto_1

    #@167
    .restart local v6    # "namespace":Ljava/lang/String;
    :cond_a
    move-object v14, v6

    #@168
    .line 659
    goto :goto_4

    #@169
    .line 602
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "namespace":Ljava/lang/String;
    .end local v7    # "nestedSoap":Lorg/ksoap2/serialization/SoapObject;
    .end local v9    # "prop":Ljava/lang/Object;
    .end local v11    # "qName":[Ljava/lang/Object;
    .end local v12    # "type":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V
    .locals 7
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 587
    move-object v3, p2

    #@1
    .line 588
    .local v3, "soapObject":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v3}, Lorg/ksoap2/serialization/SoapObject;->getAttributeCount()I

    #@4
    move-result v1

    #@5
    .line 589
    .local v1, "cnt":I
    const/4 v2, 0x0

    #@6
    .local v2, "counter":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@8
    .line 590
    new-instance v0, Lorg/ksoap2/serialization/AttributeInfo;

    #@a
    invoke-direct {v0}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    #@d
    .line 591
    .local v0, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v3, v2, v0}, Lorg/ksoap2/serialization/SoapObject;->getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V

    #@10
    .line 592
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getNamespace()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 589
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 596
    .end local v0    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/KvmSerializable;)V

    #@29
    .line 586
    return-void
.end method

.method protected writeProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 9
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "type"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x0

    #@3
    .line 673
    if-nez p2, :cond_0

    #@5
    .line 676
    return-void

    #@6
    .line 678
    :cond_0
    invoke-virtual {p0, v6, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    .line 679
    .local v2, "qName":[Ljava/lang/Object;
    iget-boolean v3, p3, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    #@c
    if-nez v3, :cond_1

    #@e
    aget-object v3, v2, v7

    #@10
    if-eqz v3, :cond_4

    #@12
    .line 680
    :cond_1
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    #@14
    invoke-virtual {v3, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    #@17
    move-result v0

    #@18
    .line 681
    .local v0, "i":I
    const/4 v3, -0x1

    #@19
    if-ne v0, v3, :cond_2

    #@1b
    .line 682
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    #@1d
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@20
    move-result v0

    #@21
    .line 683
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    #@23
    invoke-virtual {v3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@26
    .line 685
    :cond_2
    const-string/jumbo v4, "href"

    #@29
    aget-object v3, v2, v7

    #@2b
    if-nez v3, :cond_3

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "#o"

    #@35
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    :goto_0
    invoke-interface {p1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44
    .line 672
    .end local v0    # "i":I
    :goto_1
    return-void

    #@45
    .line 685
    .restart local v0    # "i":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "#"

    #@4d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    aget-object v5, v2, v7

    #@53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    goto :goto_0

    #@5c
    .line 687
    .end local v0    # "i":I
    :cond_4
    iget-boolean v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    #@5e
    if-eqz v3, :cond_5

    #@60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@63
    move-result-object v3

    #@64
    iget-object v4, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@66
    if-eq v3, v4, :cond_6

    #@68
    .line 688
    :cond_5
    const/4 v3, 0x0

    #@69
    aget-object v3, v2, v3

    #@6b
    check-cast v3, Ljava/lang/String;

    #@6d
    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    .line 689
    .local v1, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    #@73
    const-string/jumbo v4, "type"

    #@76
    new-instance v5, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    const-string/jumbo v6, ":"

    #@82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    aget-object v6, v2, v8

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@93
    .line 691
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x3

    #@94
    aget-object v3, v2, v3

    #@96
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V

    #@99
    goto :goto_1
.end method

.method protected writeVectorBody(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 11
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "vector"    # Ljava/util/Vector;
    .param p3, "elementType"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 713
    const-string/jumbo v4, "item"

    #@5
    .line 714
    .local v4, "itemsTagName":Ljava/lang/String;
    const/4 v3, 0x0

    #@6
    .line 716
    .local v3, "itemsNamespace":Ljava/lang/String;
    if-nez p3, :cond_2

    #@8
    .line 717
    sget-object p3, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    #@a
    .line 725
    .end local v3    # "itemsNamespace":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    #@d
    move-result v1

    #@e
    .line 726
    .local v1, "cnt":I
    iget-object v6, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    #@10
    invoke-virtual {p0, v6, v7}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .line 729
    .local v0, "arrType":[Ljava/lang/Object;
    iget-boolean v6, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    #@16
    if-nez v6, :cond_1

    #@18
    .line 730
    iget-object v7, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@1a
    const-string/jumbo v8, "arrayType"

    #@1d
    new-instance v9, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    aget-object v6, v0, v10

    #@24
    check-cast v6, Ljava/lang/String;

    #@26
    invoke-interface {p1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    .line 731
    const-string/jumbo v9, ":"

    #@31
    .line 730
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    .line 732
    const/4 v9, 0x1

    #@36
    aget-object v9, v0, v9

    #@38
    .line 730
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    .line 732
    const-string/jumbo v9, "["

    #@3f
    .line 730
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    .line 732
    const-string/jumbo v9, "]"

    #@4a
    .line 730
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-interface {p1, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@55
    .line 735
    :cond_1
    const/4 v5, 0x0

    #@56
    .line 736
    .local v5, "skipped":Z
    const/4 v2, 0x0

    #@57
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    #@59
    .line 737
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5c
    move-result-object v6

    #@5d
    if-nez v6, :cond_3

    #@5f
    .line 738
    const/4 v5, 0x1

    #@60
    .line 736
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@62
    goto :goto_1

    #@63
    .line 718
    .end local v0    # "arrType":[Ljava/lang/Object;
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    .end local v5    # "skipped":Z
    .restart local v3    # "itemsNamespace":Ljava/lang/String;
    :cond_2
    instance-of v6, p3, Lorg/ksoap2/serialization/PropertyInfo;

    #@65
    if-eqz v6, :cond_0

    #@67
    .line 719
    iget-object v6, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@69
    if-eqz v6, :cond_0

    #@6b
    .line 720
    iget-object v4, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    #@6d
    .line 721
    iget-object v3, p3, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    #@6f
    .local v3, "itemsNamespace":Ljava/lang/String;
    goto :goto_0

    #@70
    .line 740
    .end local v3    # "itemsNamespace":Ljava/lang/String;
    .restart local v0    # "arrType":[Ljava/lang/Object;
    .restart local v1    # "cnt":I
    .restart local v2    # "i":I
    .restart local v5    # "skipped":Z
    :cond_3
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@73
    .line 741
    if-eqz v5, :cond_4

    #@75
    .line 742
    iget-object v6, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    #@77
    const-string/jumbo v7, "position"

    #@7a
    new-instance v8, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v9, "["

    #@82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    const-string/jumbo v9, "]"

    #@8d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v8

    #@91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v8

    #@95
    invoke-interface {p1, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@98
    .line 743
    const/4 v5, 0x0

    #@99
    .line 745
    :cond_4
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {p0, p1, v6, p3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;)V

    #@a0
    .line 746
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a3
    goto :goto_2

    #@a4
    .line 712
    :cond_5
    return-void
.end method
