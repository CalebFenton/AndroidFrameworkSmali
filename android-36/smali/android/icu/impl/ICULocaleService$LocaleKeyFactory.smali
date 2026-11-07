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
.field public static final blacklist INVISIBLE:Z = false

.field public static final blacklist VISIBLE:Z = true


# instance fields
.field protected final blacklist name:Ljava/lang/String;

.field protected final blacklist visible:Z


# direct methods
.method protected constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-boolean p1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    .line 368
    return-void
.end method

.method protected constructor blacklist <init>(ZLjava/lang/String;)V
    .registers 3
    .param p1, "visible"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-boolean p1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    .line 375
    iput-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    .line 376
    return-void
.end method


# virtual methods
.method public blacklist create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "service"    # Landroid/icu/impl/ICUService;

    .line 385
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->handlesKey(Landroid/icu/impl/ICUService$Key;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 386
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICULocaleService$LocaleKey;

    .line 387
    .local v0, "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v1

    .line 389
    .local v1, "kind":I
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentLocale()Landroid/icu/util/ULocale;

    move-result-object v2

    .line 390
    .local v2, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v2, v1, p2}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 395
    .end local v0    # "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    .end local v1    # "kind":I
    .end local v2    # "uloc":Landroid/icu/util/ULocale;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 429
    if-nez p2, :cond_3

    .line 430
    return-object p1

    .line 432
    :cond_3
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "loc":Landroid/icu/util/ULocale;
    invoke-virtual {v0, p2}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getSupportedIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 462
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 5
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "service"    # Landroid/icu/impl/ICUService;

    .line 444
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist handlesKey(Landroid/icu/impl/ICUService$Key;)Z
    .registers 5
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;

    .line 399
    if-eqz p1, :cond_f

    .line 400
    invoke-virtual {p1}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v1

    .line 402
    .local v1, "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 404
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "supported":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist isSupportedID(Ljava/lang/String;)Z
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 453
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 472
    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_17
    const-string v1, ", visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-boolean v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateVisibleIDs(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v0

    .line 413
    .local v0, "cache":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    .local v2, "id":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    if-eqz v3, :cond_1c

    .line 415
    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 417
    :cond_1c
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .end local v2    # "id":Ljava/lang/String;
    :goto_1f
    goto :goto_8

    .line 420
    :cond_20
    return-void
.end method
