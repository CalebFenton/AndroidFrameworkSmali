.class Ljava/lang/System$SystemEnvironment;
.super Ljava/util/AbstractMap;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1247
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 1248
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    #@9
    .line 1247
    return-void
.end method

.method private toNonNullString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1268
    if-nez p1, :cond_0

    #@2
    .line 1269
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "o == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1271
    :cond_0
    check-cast p1, Ljava/lang/String;

    #@d
    .end local p1    # "o":Ljava/lang/Object;
    return-object p1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1260
    iget-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    #@2
    invoke-direct {p0, p1}, Ljava/lang/System$SystemEnvironment;->toNonNullString(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1264
    iget-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    #@2
    invoke-direct {p0, p1}, Ljava/lang/System$SystemEnvironment;->toNonNullString(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1252
    iget-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1255
    invoke-virtual {p0, p1}, Ljava/lang/System$SystemEnvironment;->get(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1256
    iget-object v0, p0, Ljava/lang/System$SystemEnvironment;->map:Ljava/util/Map;

    #@2
    invoke-direct {p0, p1}, Ljava/lang/System$SystemEnvironment;->toNonNullString(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    return-object v0
.end method
