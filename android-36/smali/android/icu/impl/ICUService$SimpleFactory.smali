.class public Landroid/icu/impl/ICUService$SimpleFactory;
.super Ljava/lang/Object;
.source "ICUService.java"

# interfaces
.implements Landroid/icu/impl/ICUService$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleFactory"
.end annotation


# instance fields
.field protected blacklist id:Ljava/lang/String;

.field protected blacklist instance:Ljava/lang/Object;

.field protected blacklist visible:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;

    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/ICUService$SimpleFactory;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 296
    iput-object p1, p0, Landroid/icu/impl/ICUService$SimpleFactory;->instance:Ljava/lang/Object;

    .line 297
    iput-object p2, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    .line 298
    iput-boolean p3, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    .line 299
    return-void

    .line 294
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Instance or id is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "service"    # Landroid/icu/impl/ICUService;

    .line 307
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 308
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->instance:Ljava/lang/Object;

    return-object v0

    .line 310
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 4
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 333
    iget-boolean v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, p1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v1, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, ", visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-boolean v1, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 346
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

    .line 319
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    iget-boolean v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    if-eqz v0, :cond_a

    .line 320
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 322
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :goto_f
    return-void
.end method
