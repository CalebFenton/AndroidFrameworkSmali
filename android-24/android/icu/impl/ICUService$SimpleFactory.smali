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
.field protected id:Ljava/lang/String;

.field protected instance:Ljava/lang/Object;

.field protected visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/ICUService$SimpleFactory;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    #@4
    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    #@0
    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 288
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Instance or id is null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 291
    :cond_1
    iput-object p1, p0, Landroid/icu/impl/ICUService$SimpleFactory;->instance:Ljava/lang/Object;

    #@12
    .line 292
    iput-object p2, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    #@14
    .line 293
    iput-boolean p3, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    #@16
    .line 287
    return-void
.end method


# virtual methods
.method public create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "service"    # Landroid/icu/impl/ICUService;

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    #@2
    invoke-virtual {p1}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 302
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->instance:Ljava/lang/Object;

    #@e
    return-object v0

    #@f
    .line 304
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .end local p1    # "identifier":Ljava/lang/String;
    :goto_0
    return-object p1

    #@d
    .restart local p1    # "identifier":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    #@e
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 333
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ", id: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 334
    iget-object v1, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 335
    const-string/jumbo v1, ", visible: "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 336
    iget-boolean v1, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f
    .line 337
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
    .line 312
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    iget-boolean v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 313
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    #@6
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 311
    :goto_0
    return-void

    #@a
    .line 315
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    #@c
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    goto :goto_0
.end method
