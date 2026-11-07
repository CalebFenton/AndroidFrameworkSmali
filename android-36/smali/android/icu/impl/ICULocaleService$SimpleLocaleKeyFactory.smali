.class public Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleLocaleKeyFactory"
.end annotation


# instance fields
.field private final blacklist id:Ljava/lang/String;

.field private final blacklist kind:I

.field private final blacklist obj:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I
    .param p4, "visible"    # Z

    .line 492
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "obj":Ljava/lang/Object;
    .end local p2    # "locale":Landroid/icu/util/ULocale;
    .end local p3    # "kind":I
    .end local p4    # "visible":Z
    .local v1, "obj":Ljava/lang/Object;
    .local v2, "locale":Landroid/icu/util/ULocale;
    .local v3, "kind":I
    .local v4, "visible":Z
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZLjava/lang/String;)V

    .line 493
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZLjava/lang/String;)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I
    .param p4, "visible"    # Z
    .param p5, "name"    # Ljava/lang/String;

    .line 496
    invoke-direct {p0, p4, p5}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(ZLjava/lang/String;)V

    .line 498
    iput-object p1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;

    .line 499
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    .line 500
    iput p3, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    .line 501
    return-void
.end method


# virtual methods
.method public blacklist create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "service"    # Landroid/icu/impl/ICUService;

    .line 508
    instance-of v0, p1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 509
    return-object v1

    .line 512
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICULocaleService$LocaleKey;

    .line 513
    .local v0, "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    iget v2, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    iget v2, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v3

    if-eq v2, v3, :cond_17

    .line 514
    return-object v1

    .line 516
    :cond_17
    iget-object v2, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 517
    return-object v1

    .line 520
    :cond_24
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;

    return-object v1
.end method

.method protected blacklist isSupportedID(Ljava/lang/String;)Z
    .registers 3
    .param p1, "idToCheck"    # Ljava/lang/String;

    .line 525
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, ", kind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateVisibleIDs(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    .line 530
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    iget-boolean v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->visible:Z

    if-eqz v0, :cond_a

    .line 531
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 533
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :goto_f
    return-void
.end method
