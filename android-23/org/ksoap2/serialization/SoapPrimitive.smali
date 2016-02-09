.class public Lorg/ksoap2/serialization/SoapPrimitive;
.super Lorg/ksoap2/serialization/AttributeContainer;
.source "SoapPrimitive.java"


# instance fields
.field name:Ljava/lang/String;

.field namespace:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lorg/ksoap2/serialization/AttributeContainer;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    #@5
    .line 43
    iput-object p2, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    #@7
    .line 44
    iput-object p3, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    #@9
    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 48
    instance-of v3, p1, Lorg/ksoap2/serialization/SoapPrimitive;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 49
    return v2

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 51
    check-cast v0, Lorg/ksoap2/serialization/SoapPrimitive;

    #@9
    .line 52
    .local v0, "p":Lorg/ksoap2/serialization/SoapPrimitive;
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    #@b
    iget-object v4, v0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_4

    #@13
    .line 53
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    #@15
    if-nez v3, :cond_3

    #@17
    iget-object v3, v0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    #@19
    if-nez v3, :cond_4

    #@1b
    .line 54
    :cond_1
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    #@1d
    if-nez v3, :cond_6

    #@1f
    iget-object v3, v0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    #@21
    if-nez v3, :cond_5

    #@23
    const/4 v1, 0x1

    #@24
    .line 55
    :goto_0
    if-eqz v1, :cond_2

    #@26
    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/SoapPrimitive;->attributesAreEqual(Lorg/ksoap2/serialization/AttributeContainer;)Z

    #@29
    move-result v2

    #@2a
    :cond_2
    return v2

    #@2b
    .line 53
    :cond_3
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    #@2d
    iget-object v4, v0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    .line 52
    if-nez v3, :cond_1

    #@35
    :cond_4
    const/4 v1, 0x0

    #@36
    .local v1, "varsEqual":Z
    goto :goto_0

    #@37
    .line 54
    .end local v1    # "varsEqual":Z
    :cond_5
    const/4 v1, 0x0

    #@38
    .restart local v1    # "varsEqual":Z
    goto :goto_0

    #@39
    .end local v1    # "varsEqual":Z
    :cond_6
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    #@3b
    iget-object v4, v0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v1

    #@41
    .local v1, "varsEqual":Z
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v1

    #@6
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    xor-int/2addr v0, v1

    #@c
    return v0

    #@d
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->namespace:Ljava/lang/String;

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@12
    move-result v0

    #@13
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapPrimitive;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method
