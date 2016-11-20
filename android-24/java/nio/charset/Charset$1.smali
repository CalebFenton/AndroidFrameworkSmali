.class final Ljava/nio/charset/Charset$1;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->providers()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation
.end field

.field next:Ljava/lang/Object;

.field sl:Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader",
            "<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 369
    const-class v0, Ljava/nio/charset/spi/CharsetProvider;

    #@5
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    #@8
    move-result-object v0

    #@9
    .line 368
    iput-object v0, p0, Ljava/nio/charset/Charset$1;->sl:Ljava/util/ServiceLoader;

    #@b
    .line 370
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->sl:Ljava/util/ServiceLoader;

    #@d
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    #@13
    .line 372
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;

    #@16
    .line 366
    return-void
.end method

.method private getNext()Z
    .locals 2

    #@0
    .prologue
    .line 375
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;

    #@2
    if-nez v1, :cond_2

    #@4
    .line 377
    :try_start_0
    iget-object v1, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    #@6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 378
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 379
    :cond_1
    iget-object v1, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    goto :goto_0

    #@17
    .line 380
    :catch_0
    move-exception v0

    #@18
    .line 381
    .local v0, "sce":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@1b
    move-result-object v1

    #@1c
    instance-of v1, v1, Ljava/lang/SecurityException;

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 385
    throw v0

    #@21
    .line 388
    .end local v0    # "sce":Ljava/util/ServiceConfigurationError;
    :cond_2
    const/4 v1, 0x1

    #@22
    return v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 392
    invoke-direct {p0}, Ljava/nio/charset/Charset$1;->getNext()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 396
    invoke-direct {p0}, Ljava/nio/charset/Charset$1;->getNext()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 397
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 398
    :cond_0
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;

    #@e
    .line 399
    .local v0, "n":Ljava/lang/Object;
    const/4 v1, 0x0

    #@f
    iput-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/lang/Object;

    #@11
    .line 400
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 404
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
