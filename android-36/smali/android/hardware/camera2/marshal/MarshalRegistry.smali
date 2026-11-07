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
.field private static final blacklist sMarshalLock:Ljava/lang/Object;

.field private static final blacklist sMarshalerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<",
            "*>;",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist sRegisteredMarshalQueryables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static blacklist getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 9
    .param p1, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    .line 60
    .local p0, "typeToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    sget-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    new-instance v1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;-><init>(Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 69
    .local v1, "marshalToken":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    sget-object v2, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    .line 70
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/marshal/Marshaler;

    .line 72
    .local v2, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    if-nez v2, :cond_71

    .line 74
    sget-object v3, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_69

    .line 79
    sget-object v3, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/marshal/MarshalQueryable;

    .line 81
    .local v4, "potentialMarshaler":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<*>;"
    move-object v5, v4

    .line 84
    .local v5, "castedPotential":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<TT;>;"
    invoke-interface {v5, p0, p1}, Landroid/hardware/camera2/marshal/MarshalQueryable;->isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 85
    invoke-interface {v5, p0, p1}, Landroid/hardware/camera2/marshal/MarshalQueryable;->createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v3

    .line 86
    .end local v2    # "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    .local v3, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    move-object v2, v3

    goto :goto_3a

    .line 88
    .end local v3    # "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    .end local v4    # "potentialMarshaler":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<*>;"
    .end local v5    # "castedPotential":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<TT;>;"
    .restart local v2    # "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    :cond_39
    goto :goto_20

    .line 90
    :cond_3a
    :goto_3a
    if-eqz v2, :cond_42

    .line 99
    sget-object v3, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 91
    :cond_42
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find marshaler that matches the requested combination of type reference "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and native type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 95
    invoke-static {p1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->toStringNativeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "typeToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    .end local p1    # "nativeType":I
    throw v3

    .line 75
    .restart local p0    # "typeToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    .restart local p1    # "nativeType":I
    :cond_69
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "No available query marshalers registered"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "typeToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    .end local p1    # "nativeType":I
    throw v3

    .line 102
    .restart local p0    # "typeToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    .restart local p1    # "nativeType":I
    :cond_71
    :goto_71
    monitor-exit v0

    return-object v2

    .line 103
    .end local v1    # "marshalToken":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    .end local v2    # "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw v1
.end method

.method public static blacklist registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "queryable":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<TT;>;"
    sget-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 43
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
