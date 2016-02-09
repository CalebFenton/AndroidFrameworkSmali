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
.field private final id:Ljava/lang/String;

.field private final kind:I

.field private final obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I
    .param p4, "visible"    # Z

    #@0
    .prologue
    .line 474
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZLjava/lang/String;)V

    #@9
    .line 473
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZLjava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I
    .param p4, "visible"    # Z
    .param p5, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 478
    invoke-direct {p0, p4, p5}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(ZLjava/lang/String;)V

    #@3
    .line 480
    iput-object p1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;

    #@5
    .line 481
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    #@b
    .line 482
    iput p3, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    #@d
    .line 477
    return-void
.end method


# virtual methods
.method public create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "service"    # Landroid/icu/impl/ICUService;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 489
    instance-of v1, p1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 490
    return-object v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 493
    check-cast v0, Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@9
    .line 494
    .local v0, "lkey":Landroid/icu/impl/ICULocaleService$LocaleKey;
    iget v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    #@b
    const/4 v2, -0x1

    #@c
    if-eq v1, v2, :cond_1

    #@e
    iget v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    #@10
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    #@13
    move-result v2

    #@14
    if-eq v1, v2, :cond_1

    #@16
    .line 495
    return-object v3

    #@17
    .line 497
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    #@19
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_2

    #@23
    .line 498
    return-object v3

    #@24
    .line 501
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;

    #@26
    return-object v1
.end method

.method protected isSupportedID(Ljava/lang/String;)Z
    .locals 1
    .param p1, "idToCheck"    # Ljava/lang/String;

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 518
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ", id: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 519
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 520
    const-string/jumbo v1, ", kind: "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 521
    iget v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    return-object v1
.end method

.method public updateVisibleIDs(Ljava/util/Map;)V
    .locals 1
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
    .line 509
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    iget-boolean v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->visible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 510
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    #@6
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 508
    :goto_0
    return-void

    #@a
    .line 512
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    #@c
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    goto :goto_0
.end method
