.class public abstract Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.super Ljava/lang/Object;
.source "ICULocaleService.java"

# interfaces
.implements Landroid/icu/impl/ICUService$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LocaleKeyFactory"
.end annotation


# static fields
.field public static final INVISIBLE:Z = false

.field public static final VISIBLE:Z = true


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final visible:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 1
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 353
    iput-boolean p1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    #@5
    .line 354
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    #@8
    .line 352
    return-void
.end method

.method protected constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 361
    iput-boolean p1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    #@5
    .line 362
    iput-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    #@7
    .line 360
    return-void
.end method


# virtual methods
.method public create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "service"    # Landroid/icu/impl/ICUService;

    #@0
    .prologue
    .line 371
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->handlesKey(Landroid/icu/impl/ICUService$Key;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    move-object v1, p1

    #@7
    .line 372
    check-cast v1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@9
    .line 373
    .local v1, "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    #@c
    move-result v0

    #@d
    .line 375
    .local v0, "kind":I
    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentLocale()Landroid/icu/util/ULocale;

    #@10
    move-result-object v2

    #@11
    .line 376
    .local v2, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v2, v0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    return-object v3

    #@16
    .line 381
    .end local v0    # "kind":I
    .end local v1    # "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    .end local v2    # "uloc":Landroid/icu/util/ULocale;
    :cond_0
    const/4 v3, 0x0

    #@17
    return-object v3
.end method

.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 413
    if-nez p2, :cond_0

    #@2
    .line 414
    return-object p1

    #@3
    .line 416
    :cond_0
    new-instance v0, Landroid/icu/util/ULocale;

    #@5
    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@8
    .line 417
    .local v0, "loc":Landroid/icu/util/ULocale;
    invoke-virtual {v0, p2}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method protected getSupportedIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 446
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 1
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "service"    # Landroid/icu/impl/ICUService;

    #@0
    .prologue
    .line 428
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected handlesKey(Landroid/icu/impl/ICUService$Key;)Z
    .locals 3
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;

    #@0
    .prologue
    .line 385
    if-eqz p1, :cond_0

    #@2
    .line 386
    invoke-virtual {p1}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 387
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    #@9
    move-result-object v1

    #@a
    .line 388
    .local v1, "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 390
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    #@10
    return v2
.end method

.method protected isSupportedID(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 454
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 455
    const-string/jumbo v1, ", name: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 456
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 458
    :cond_0
    const-string/jumbo v1, ", visible: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 459
    iget-boolean v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23
    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1
.end method

.method public updateVisibleIDs(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 397
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 398
    .local v0, "cache":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 399
    .local v1, "id":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 400
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    goto :goto_0

    #@1c
    .line 402
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    goto :goto_0

    #@20
    .line 396
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method
