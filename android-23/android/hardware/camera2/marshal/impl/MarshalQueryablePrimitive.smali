.class public final Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;
.super Ljava/lang/Object;
.source "MarshalQueryablePrimitive.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 4
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 164
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    #@5
    move-result-object v3

    #@6
    instance-of v3, v3, Ljava/lang/Class;

    #@8
    if-eqz v3, :cond_10

    #@a
    .line 165
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Class;

    #@10
    .line 167
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@12
    if-eq v0, v3, :cond_0

    #@14
    const-class v3, Ljava/lang/Byte;

    #@16
    if-ne v0, v3, :cond_2

    #@18
    .line 168
    :cond_0
    if-nez p2, :cond_1

    #@1a
    :goto_0
    return v1

    #@1b
    :cond_1
    move v1, v2

    #@1c
    goto :goto_0

    #@1d
    .line 169
    :cond_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1f
    if-eq v0, v3, :cond_3

    #@21
    const-class v3, Ljava/lang/Integer;

    #@23
    if-ne v0, v3, :cond_5

    #@25
    .line 170
    :cond_3
    if-ne p2, v1, :cond_4

    #@27
    :goto_1
    return v1

    #@28
    :cond_4
    move v1, v2

    #@29
    goto :goto_1

    #@2a
    .line 171
    :cond_5
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2c
    if-eq v0, v3, :cond_6

    #@2e
    const-class v3, Ljava/lang/Float;

    #@30
    if-ne v0, v3, :cond_8

    #@32
    .line 172
    :cond_6
    const/4 v3, 0x2

    #@33
    if-ne p2, v3, :cond_7

    #@35
    :goto_2
    return v1

    #@36
    :cond_7
    move v1, v2

    #@37
    goto :goto_2

    #@38
    .line 173
    :cond_8
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@3a
    if-eq v0, v3, :cond_9

    #@3c
    const-class v3, Ljava/lang/Long;

    #@3e
    if-ne v0, v3, :cond_b

    #@40
    .line 174
    :cond_9
    const/4 v3, 0x3

    #@41
    if-ne p2, v3, :cond_a

    #@43
    :goto_3
    return v1

    #@44
    :cond_a
    move v1, v2

    #@45
    goto :goto_3

    #@46
    .line 175
    :cond_b
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@48
    if-eq v0, v3, :cond_c

    #@4a
    const-class v3, Ljava/lang/Double;

    #@4c
    if-ne v0, v3, :cond_e

    #@4e
    .line 176
    :cond_c
    const/4 v3, 0x4

    #@4f
    if-ne p2, v3, :cond_d

    #@51
    :goto_4
    return v1

    #@52
    :cond_d
    move v1, v2

    #@53
    goto :goto_4

    #@54
    .line 177
    :cond_e
    const-class v3, Landroid/util/Rational;

    #@56
    if-ne v0, v3, :cond_10

    #@58
    .line 178
    const/4 v3, 0x5

    #@59
    if-ne p2, v3, :cond_f

    #@5b
    :goto_5
    return v1

    #@5c
    :cond_f
    move v1, v2

    #@5d
    goto :goto_5

    #@5e
    .line 181
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    return v2
.end method
