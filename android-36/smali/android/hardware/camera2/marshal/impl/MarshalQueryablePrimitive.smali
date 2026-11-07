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
        "Landroid/hardware/camera2/marshal/MarshalQueryable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 4
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    .line 159
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public blacklist isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .registers 7
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 164
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 165
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 167
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_59

    const-class v2, Ljava/lang/Byte;

    if-ne v0, v2, :cond_19

    goto :goto_59

    .line 169
    :cond_19
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_55

    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_22

    goto :goto_55

    .line 171
    :cond_22
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_2b

    goto :goto_50

    .line 173
    :cond_2b
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_4b

    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_34

    goto :goto_4b

    .line 175
    :cond_34
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_46

    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_3d

    goto :goto_46

    .line 177
    :cond_3d
    const-class v2, Landroid/util/Rational;

    if-ne v0, v2, :cond_5d

    .line 178
    const/4 v2, 0x5

    if-ne p2, v2, :cond_45

    move v1, v3

    :cond_45
    return v1

    .line 176
    :cond_46
    :goto_46
    const/4 v2, 0x4

    if-ne p2, v2, :cond_4a

    move v1, v3

    :cond_4a
    return v1

    .line 174
    :cond_4b
    :goto_4b
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4f

    move v1, v3

    :cond_4f
    return v1

    .line 172
    :cond_50
    :goto_50
    const/4 v2, 0x2

    if-ne p2, v2, :cond_54

    move v1, v3

    :cond_54
    return v1

    .line 170
    :cond_55
    :goto_55
    if-ne p2, v3, :cond_58

    move v1, v3

    :cond_58
    return v1

    .line 168
    :cond_59
    :goto_59
    if-nez p2, :cond_5c

    move v1, v3

    :cond_5c
    return v1

    .line 181
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5d
    return v1
.end method
