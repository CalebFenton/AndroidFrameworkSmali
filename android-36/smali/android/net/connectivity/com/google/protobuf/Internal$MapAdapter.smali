.class public Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;
.super Ljava/util/AbstractMap;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;,
        Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$SetAdapter;,
        Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$EntryAdapter;,
        Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$IteratorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "RealValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist realMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TRealValue;>;"
        }
    .end annotation
.end field

.field private final blacklist valueConverter:Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter<",
            "TRealValue;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Map;Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TRealValue;>;",
            "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter<",
            "TRealValue;TV;>;)V"
        }
    .end annotation

    .line 453
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>;"
    .local p1, "realMap":Ljava/util/Map;, "Ljava/util/Map<TK;TRealValue;>;"
    .local p2, "valueConverter":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter<TRealValue;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 454
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    .line 455
    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->valueConverter:Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;

    .line 456
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;)Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;

    .line 426
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->valueConverter:Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;

    return-object v0
.end method

.method public static blacklist newEnumConverter(Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;)Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap<",
            "TT;>;TT;)",
            "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    .line 436
    .local p0, "enumMap":Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;, "Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap<TT;>;"
    .local p1, "unrecognizedValue":Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;, "TT;"
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$1;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$1;-><init>(Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 478
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>;"
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$SetAdapter;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$SetAdapter;-><init>(Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;Ljava/util/Set;)V

    return-object v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 460
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    .local v0, "result":Ljava/lang/Object;, "TRealValue;"
    if-nez v0, :cond_a

    .line 462
    const/4 v1, 0x0

    return-object v1

    .line 464
    :cond_a
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->valueConverter:Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;

    invoke-interface {v1, v0}, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 469
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;, "Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->realMap:Ljava/util/Map;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->valueConverter:Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;

    invoke-interface {v1, p2}, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 470
    .local v0, "oldValue":Ljava/lang/Object;, "TRealValue;"
    if-nez v0, :cond_10

    .line 471
    const/4 v1, 0x0

    return-object v1

    .line 473
    :cond_10
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;->valueConverter:Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;

    invoke-interface {v1, v0}, Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
