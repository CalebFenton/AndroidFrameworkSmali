.class final Ljava/util/ResourceBundle$CacheKey;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private volatile expirationTime:J

.field private format:Ljava/lang/String;

.field private hashCodeCache:I

.field private volatile loadTime:J

.field private loaderRef:Ljava/util/ResourceBundle$LoaderReference;

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/util/ResourceBundle$CacheKey;)J
    .locals 2

    #@0
    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Ljava/util/ResourceBundle$CacheKey;)J
    .locals 2

    #@0
    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Ljava/util/ResourceBundle$CacheKey;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Ljava/util/ResourceBundle$CacheKey;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle$CacheKey;->setCause(Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 517
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    #@6
    .line 518
    iput-object p2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@8
    .line 519
    if-nez p3, :cond_0

    #@a
    .line 520
    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@c
    .line 524
    :goto_0
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    #@f
    .line 516
    return-void

    #@10
    .line 522
    :cond_0
    new-instance v0, Ljava/util/ResourceBundle$LoaderReference;

    #@12
    invoke-static {}, Ljava/util/ResourceBundle;->-get0()Ljava/lang/ref/ReferenceQueue;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, p3, v1, p0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    #@19
    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@1b
    goto :goto_0
.end method

.method private calculateHashCode()V
    .locals 3

    #@0
    .prologue
    .line 595
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v1

    #@6
    shl-int/lit8 v1, v1, 0x3

    #@8
    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    #@a
    .line 596
    iget v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    #@c
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@e
    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    #@11
    move-result v2

    #@12
    xor-int/2addr v1, v2

    #@13
    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    #@15
    .line 597
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    #@18
    move-result-object v0

    #@19
    .line 598
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    #@1b
    .line 599
    iget v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    #@1d
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    #@20
    move-result v2

    #@21
    xor-int/2addr v1, v2

    #@22
    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    #@24
    .line 594
    :cond_0
    return-void
.end method

.method private getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 640
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method private setCause(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 629
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    #@6
    .line 627
    :cond_0
    :goto_0
    return-void

    #@7
    .line 633
    :cond_1
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    #@9
    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 634
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    #@f
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 605
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    #@6
    .line 606
    .local v0, "clone":Ljava/util/ResourceBundle$CacheKey;
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 607
    new-instance v3, Ljava/util/ResourceBundle$LoaderReference;

    #@c
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@e
    invoke-virtual {v2}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/ClassLoader;

    #@14
    .line 608
    invoke-static {}, Ljava/util/ResourceBundle;->-get0()Ljava/lang/ref/ReferenceQueue;

    #@17
    move-result-object v4

    #@18
    .line 607
    invoke-direct {v3, v2, v4, v0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    #@1b
    iput-object v3, v0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@1d
    .line 611
    :cond_0
    const/4 v2, 0x0

    #@1e
    iput-object v2, v0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 612
    return-object v0

    #@21
    .line 613
    .end local v0    # "clone":Ljava/util/ResourceBundle$CacheKey;
    :catch_0
    move-exception v1

    #@22
    .line 615
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@24
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@27
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 556
    if-ne p0, p1, :cond_0

    #@4
    .line 557
    return v5

    #@5
    .line 560
    :cond_0
    :try_start_0
    move-object v0, p1

    #@6
    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    #@8
    move-object v4, v0

    #@9
    .line 562
    .local v4, "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    iget v7, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    #@b
    iget v8, v4, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    #@d
    if-eq v7, v8, :cond_1

    #@f
    .line 563
    return v6

    #@10
    .line 566
    :cond_1
    iget-object v7, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    #@12
    iget-object v8, v4, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v7

    #@18
    if-nez v7, :cond_2

    #@1a
    .line 567
    return v6

    #@1b
    .line 570
    :cond_2
    iget-object v7, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@1d
    iget-object v8, v4, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@1f
    invoke-virtual {v7, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v7

    #@23
    if-nez v7, :cond_3

    #@25
    .line 571
    return v6

    #@26
    .line 574
    :cond_3
    iget-object v7, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@28
    if-nez v7, :cond_5

    #@2a
    .line 575
    iget-object v7, v4, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@2c
    if-nez v7, :cond_4

    #@2e
    :goto_0
    return v5

    #@2f
    :cond_4
    move v5, v6

    #@30
    goto :goto_0

    #@31
    .line 577
    :cond_5
    iget-object v7, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@33
    invoke-virtual {v7}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Ljava/lang/ClassLoader;

    #@39
    .line 578
    .local v3, "loader":Ljava/lang/ClassLoader;
    iget-object v7, v4, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@3b
    if-eqz v7, :cond_7

    #@3d
    .line 582
    if-eqz v3, :cond_7

    #@3f
    .line 583
    iget-object v7, v4, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@41
    invoke-virtual {v7}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    #@44
    move-result-object v7

    #@45
    if-ne v3, v7, :cond_6

    #@47
    .line 578
    :goto_1
    return v5

    #@48
    :cond_6
    move v5, v6

    #@49
    .line 583
    goto :goto_1

    #@4a
    :cond_7
    move v5, v6

    #@4b
    .line 578
    goto :goto_1

    #@4c
    .line 584
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    :catch_0
    move-exception v2

    #@4d
    .line 587
    :goto_2
    return v6

    #@4e
    .line 585
    :catch_1
    move-exception v1

    #@4f
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_2
.end method

.method getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 620
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getLoader()Ljava/lang/ClassLoader;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 552
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    #@7
    invoke-virtual {v0}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/ClassLoader;

    #@d
    :cond_0
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 591
    iget v0, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    #@2
    return v0
.end method

.method setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 624
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    #@2
    .line 623
    return-void
.end method

.method setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 544
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 545
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@a
    .line 546
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    #@d
    .line 548
    :cond_0
    return-object p0
.end method

.method setName(Ljava/lang/String;)Ljava/util/ResourceBundle$CacheKey;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 533
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    #@a
    .line 534
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    #@d
    .line 536
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 644
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@2
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 645
    .local v0, "l":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 646
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@e
    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "__"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    #@26
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 652
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "CacheKey["

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    const-string/jumbo v2, ", lc="

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v2, ", ldr="

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 653
    const-string/jumbo v2, "(format="

    #@61
    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    .line 653
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    #@67
    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    .line 653
    const-string/jumbo v2, ")]"

    #@6e
    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    return-object v1

    #@77
    .line 649
    :cond_1
    const-string/jumbo v0, "\"\""

    #@7a
    goto :goto_0
.end method
