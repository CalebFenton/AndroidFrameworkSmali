.class public Landroid/hardware/camera2/marshal/MarshalRegistry;
.super Ljava/lang/Object;
.source "MarshalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;
    }
.end annotation


# static fields
.field private static sMarshalerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken",
            "<*>;",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sRegisteredMarshalQueryables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/marshal/MarshalQueryable",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 128
    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    #@7
    .line 131
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 130
    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    #@e
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0
.end method

.method public static getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 8
    .param p1, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p0, "typeToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    #@2
    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;-><init>(Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 66
    .local v1, "marshalToken":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    sget-object v5, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    #@7
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/hardware/camera2/marshal/Marshaler;

    #@d
    .line 68
    .local v2, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    sget-object v5, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    #@f
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_0

    #@15
    .line 69
    new-instance v5, Ljava/lang/AssertionError;

    #@17
    const-string/jumbo v6, "No available query marshalers registered"

    #@1a
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1d
    throw v5

    #@1e
    .line 72
    :cond_0
    if-nez v2, :cond_4

    #@20
    .line 74
    sget-object v5, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    #@22
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v4

    #@26
    .local v4, "potentialMarshaler$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_2

    #@2c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/hardware/camera2/marshal/MarshalQueryable;

    #@32
    .line 76
    .local v3, "potentialMarshaler":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<*>;"
    move-object v0, v3

    #@33
    .line 79
    .local v0, "castedPotential":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<TT;>;"
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/marshal/MarshalQueryable;->isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_1

    #@39
    .line 80
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/marshal/MarshalQueryable;->createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    #@3c
    move-result-object v2

    #@3d
    .line 85
    .end local v0    # "castedPotential":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<TT;>;"
    .end local v3    # "potentialMarshaler":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<*>;"
    :cond_2
    if-nez v2, :cond_3

    #@3f
    .line 86
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@41
    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v7, "Could not find marshaler that matches the requested combination of type reference "

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    .line 89
    const-string/jumbo v7, " and native type "

    #@54
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    .line 90
    invoke-static {p1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->toStringNativeType(I)Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    .line 86
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@67
    throw v5

    #@68
    .line 94
    :cond_3
    sget-object v5, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    #@6a
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    .line 97
    .end local v4    # "potentialMarshaler$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v2
.end method

.method public static registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    .local p0, "queryable":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<TT;>;"
    sget-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    #@2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 39
    return-void
.end method
