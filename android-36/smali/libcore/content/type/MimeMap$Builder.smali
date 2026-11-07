.class public final Llibcore/content/type/MimeMap$Builder;
.super Ljava/lang/Object;
.source "MimeMap.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/content/type/MimeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/content/type/MimeMap$Builder$Element;
    }
.end annotation


# instance fields
.field private final blacklist extToMime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mimeToExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llibcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llibcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    .line 295
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "mimeToExt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "extToMime":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Llibcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Llibcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    .line 305
    return-void
.end method

.method private static blacklist maybePut(Ljava/util/Map;Llibcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyElement"    # Llibcore/content/type/MimeMap$Builder$Element;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Llibcore/content/type/MimeMap$Builder$Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 340
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p1, Llibcore/content/type/MimeMap$Builder$Element;->keepExisting:Z

    if-eqz v0, :cond_d

    .line 341
    iget-object v0, p1, Llibcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 343
    :cond_d
    iget-object v0, p1, Llibcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder;
    .registers 4
    .param p1, "mimeSpec"    # Ljava/lang/String;
    .param p2, "extensionSpec"    # Ljava/lang/String;

    .line 411
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Llibcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist test-api addMimeMapping(Ljava/lang/String;Ljava/util/List;)Llibcore/content/type/MimeMap$Builder;
    .registers 10
    .param p1, "mimeSpec"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Llibcore/content/type/MimeMap$Builder;"
        }
    .end annotation

    .line 391
    .local p2, "extensionSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Llibcore/content/type/MimeMap$Builder$Element;->ofMimeSpec(Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder$Element;

    move-result-object v0

    .line 392
    .local v0, "mimeElement":Llibcore/content/type/MimeMap$Builder$Element;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 393
    return-object p0

    .line 395
    :cond_b
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Llibcore/content/type/MimeMap$Builder$Element;->ofExtensionSpec(Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder$Element;

    move-result-object v1

    .line 396
    .local v1, "firstExtensionElement":Llibcore/content/type/MimeMap$Builder$Element;
    iget-object v2, p0, Llibcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    iget-object v3, v1, Llibcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Llibcore/content/type/MimeMap$Builder;->maybePut(Ljava/util/Map;Llibcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    iget-object v2, p0, Llibcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    iget-object v3, v0, Llibcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Llibcore/content/type/MimeMap$Builder;->maybePut(Ljava/util/Map;Llibcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 399
    .local v3, "spec":Ljava/lang/String;
    invoke-static {v3}, Llibcore/content/type/MimeMap$Builder$Element;->ofExtensionSpec(Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder$Element;

    move-result-object v4

    .line 400
    .local v4, "element":Llibcore/content/type/MimeMap$Builder$Element;
    iget-object v5, p0, Llibcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    iget-object v6, v0, Llibcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Llibcore/content/type/MimeMap$Builder;->maybePut(Ljava/util/Map;Llibcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .end local v3    # "spec":Ljava/lang/String;
    .end local v4    # "element":Llibcore/content/type/MimeMap$Builder$Element;
    goto :goto_31

    .line 402
    :cond_49
    return-object p0
.end method

.method public blacklist test-api build()Llibcore/content/type/MimeMap;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 423
    new-instance v0, Llibcore/content/type/MimeMap;

    iget-object v1, p0, Llibcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    iget-object v2, p0, Llibcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Llibcore/content/type/MimeMap;-><init>(Ljava/util/Map;Ljava/util/Map;Llibcore/content/type/MimeMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MimeMap.Builder["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
