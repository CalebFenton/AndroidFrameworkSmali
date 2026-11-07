.class Ljava/nio/charset/Charset$1;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/charset/Charset;->providers()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/charset/spi/CharsetProvider;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation
.end field

.field blacklist next:Ljava/nio/charset/spi/CharsetProvider;

.field blacklist sl:Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const-class v0, Ljava/nio/charset/spi/CharsetProvider;

    .line 361
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/Charset$1;->sl:Ljava/util/ServiceLoader;

    .line 362
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->sl:Ljava/util/ServiceLoader;

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;

    return-void
.end method

.method private blacklist getNext()Z
    .registers 3

    .line 366
    nop

    :goto_1
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;

    if-nez v0, :cond_25

    .line 368
    :try_start_5
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 369
    const/4 v0, 0x0

    return v0

    .line 370
    :cond_f
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/spi/CharsetProvider;

    iput-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;
    :try_end_19
    .catch Ljava/util/ServiceConfigurationError; {:try_start_5 .. :try_end_19} :catch_1a

    .line 377
    goto :goto_1

    .line 371
    :catch_1a
    move-exception v0

    .line 372
    .local v0, "sce":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v0}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_24

    .line 374
    goto :goto_1

    .line 376
    :cond_24
    throw v0

    .line 379
    .end local v0    # "sce":Ljava/util/ServiceConfigurationError;
    :cond_25
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 383
    invoke-direct {p0}, Ljava/nio/charset/Charset$1;->getNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 359
    invoke-virtual {p0}, Ljava/nio/charset/Charset$1;->next()Ljava/nio/charset/spi/CharsetProvider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/nio/charset/spi/CharsetProvider;
    .registers 3

    .line 387
    invoke-direct {p0}, Ljava/nio/charset/Charset$1;->getNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 389
    iget-object v0, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;

    .line 390
    .local v0, "n":Ljava/nio/charset/spi/CharsetProvider;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/charset/Charset$1;->next:Ljava/nio/charset/spi/CharsetProvider;

    .line 391
    return-object v0

    .line 388
    .end local v0    # "n":Ljava/nio/charset/spi/CharsetProvider;
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
