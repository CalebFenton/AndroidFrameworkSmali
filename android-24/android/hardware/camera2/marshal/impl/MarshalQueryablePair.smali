.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;
.super Ljava/lang/Object;
.source "MarshalQueryablePair.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<",
        "Landroid/util/Pair",
        "<TT1;TT2;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>;"
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
            "<",
            "Landroid/util/Pair",
            "<TT1;TT2;>;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<",
            "Landroid/util/Pair",
            "<TT1;TT2;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 150
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/util/Pair<TT1;TT2;>;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 2
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/util/Pair",
            "<TT1;TT2;>;>;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 155
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair<TT1;TT2;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/util/Pair<TT1;TT2;>;>;"
    const-class v0, Landroid/util/Pair;

    #@2
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method
