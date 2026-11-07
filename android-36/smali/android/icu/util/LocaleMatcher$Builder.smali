.class public final Landroid/icu/util/LocaleMatcher$Builder;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist defaultLocale:Landroid/icu/util/ULocale;

.field private blacklist demotion:Landroid/icu/util/LocaleMatcher$Demotion;

.field private blacklist direction:Landroid/icu/util/LocaleMatcher$Direction;

.field private blacklist favor:Landroid/icu/util/LocaleMatcher$FavorSubtag;

.field private blacklist maxDistanceDesired:Landroid/icu/util/ULocale;

.field private blacklist maxDistanceSupported:Landroid/icu/util/ULocale;

.field private blacklist supportedLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist thresholdDistance:I

.field private blacklist withDefault:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdefaultLocale(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/ULocale;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$Builder;->defaultLocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdemotion(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/LocaleMatcher$Demotion;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$Builder;->demotion:Landroid/icu/util/LocaleMatcher$Demotion;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdirection(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/LocaleMatcher$Direction;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$Builder;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfavor(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/LocaleMatcher$FavorSubtag;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$Builder;->favor:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmaxDistanceDesired(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/ULocale;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$Builder;->maxDistanceDesired:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmaxDistanceSupported(Landroid/icu/util/LocaleMatcher$Builder;)Landroid/icu/util/ULocale;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$Builder;->maxDistanceSupported:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsupportedLocales(Landroid/icu/util/LocaleMatcher$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetthresholdDistance(Landroid/icu/util/LocaleMatcher$Builder;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/LocaleMatcher$Builder;->thresholdDistance:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwithDefault(Landroid/icu/util/LocaleMatcher$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/icu/util/LocaleMatcher$Builder;->withDefault:Z

    return p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->thresholdDistance:I

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->withDefault:Z

    .line 353
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/LocaleMatcher-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addSupportedLocale(Ljava/util/Locale;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 419
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/LocaleMatcher$Builder;->addSupportedULocale(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist addSupportedULocale(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 404
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    if-nez v0, :cond_b

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    .line 407
    :cond_b
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    return-object p0
.end method

.method public blacklist build()Landroid/icu/util/LocaleMatcher;
    .registers 3

    .line 581
    new-instance v0, Landroid/icu/util/LocaleMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocaleMatcher$Builder;Landroid/icu/util/LocaleMatcher-IA;)V

    return-object v0
.end method

.method public blacklist internalSetThresholdDistance(I)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 3
    .param p1, "thresholdDistance"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    const/16 v0, 0x64

    if-le p1, v0, :cond_6

    .line 568
    const/16 p1, 0x64

    .line 570
    :cond_6
    iput p1, p0, Landroid/icu/util/LocaleMatcher$Builder;->thresholdDistance:I

    .line 571
    return-object p0
.end method

.method public blacklist setDefaultLocale(Ljava/util/Locale;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 3
    .param p1, "defaultLocale"    # Ljava/util/Locale;

    .line 459
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->defaultLocale:Landroid/icu/util/ULocale;

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->withDefault:Z

    .line 461
    return-object p0
.end method

.method public blacklist setDefaultULocale(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 3
    .param p1, "defaultLocale"    # Landroid/icu/util/ULocale;

    .line 444
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$Builder;->defaultLocale:Landroid/icu/util/ULocale;

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->withDefault:Z

    .line 446
    return-object p0
.end method

.method public blacklist setDemotionPerDesiredLocale(Landroid/icu/util/LocaleMatcher$Demotion;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 2
    .param p1, "demotion"    # Landroid/icu/util/LocaleMatcher$Demotion;

    .line 485
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$Builder;->demotion:Landroid/icu/util/LocaleMatcher$Demotion;

    .line 486
    return-object p0
.end method

.method public blacklist setDirection(Landroid/icu/util/LocaleMatcher$Direction;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 2
    .param p1, "direction"    # Landroid/icu/util/LocaleMatcher$Direction;

    .line 497
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$Builder;->direction:Landroid/icu/util/LocaleMatcher$Direction;

    .line 498
    return-object p0
.end method

.method public blacklist setFavorSubtag(Landroid/icu/util/LocaleMatcher$FavorSubtag;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 2
    .param p1, "subtag"    # Landroid/icu/util/LocaleMatcher$FavorSubtag;

    .line 473
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$Builder;->favor:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    .line 474
    return-object p0
.end method

.method public blacklist setMaxDistance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 5
    .param p1, "desired"    # Landroid/icu/util/ULocale;
    .param p2, "supported"    # Landroid/icu/util/ULocale;

    .line 549
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 552
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$Builder;->maxDistanceDesired:Landroid/icu/util/ULocale;

    .line 553
    iput-object p2, p0, Landroid/icu/util/LocaleMatcher$Builder;->maxDistanceSupported:Landroid/icu/util/ULocale;

    .line 554
    return-object p0

    .line 550
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desired/supported locales must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMaxDistance(Ljava/util/Locale;Ljava/util/Locale;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 5
    .param p1, "desired"    # Ljava/util/Locale;
    .param p2, "supported"    # Ljava/util/Locale;

    .line 522
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 525
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/LocaleMatcher$Builder;->setMaxDistance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher$Builder;

    move-result-object v0

    return-object v0

    .line 523
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desired/supported locales must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setNoDefaultLocale()Landroid/icu/util/LocaleMatcher$Builder;
    .registers 2

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->defaultLocale:Landroid/icu/util/ULocale;

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->withDefault:Z

    .line 431
    return-object p0
.end method

.method public blacklist setSupportedLocales(Ljava/lang/String;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 3
    .param p1, "locales"    # Ljava/lang/String;

    .line 364
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList;->getULocales()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/LocaleMatcher$Builder;->setSupportedULocales(Ljava/util/Collection;)Landroid/icu/util/LocaleMatcher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setSupportedLocales(Ljava/util/Collection;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Landroid/icu/util/LocaleMatcher$Builder;"
        }
    .end annotation

    .line 389
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    .line 390
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 391
    .local v1, "locale":Ljava/util/Locale;
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v1    # "locale":Ljava/util/Locale;
    goto :goto_f

    .line 393
    :cond_25
    return-object p0
.end method

.method public blacklist setSupportedULocales(Ljava/util/Collection;)Landroid/icu/util/LocaleMatcher$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/LocaleMatcher$Builder;"
        }
    .end annotation

    .line 376
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/util/ULocale;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    .line 377
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{LocaleMatcher.Builder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 590
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    const/16 v2, 0x7d

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 591
    const-string v1, " supported={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    :cond_28
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$Builder;->defaultLocale:Landroid/icu/util/ULocale;

    if-eqz v1, :cond_37

    .line 594
    const-string v1, " default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/LocaleMatcher$Builder;->defaultLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 596
    :cond_37
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$Builder;->favor:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    if-eqz v1, :cond_46

    .line 597
    const-string v1, " distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/LocaleMatcher$Builder;->favor:Landroid/icu/util/LocaleMatcher$FavorSubtag;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 599
    :cond_46
    iget v1, p0, Landroid/icu/util/LocaleMatcher$Builder;->thresholdDistance:I

    if-ltz v1, :cond_5d

    .line 600
    iget v1, p0, Landroid/icu/util/LocaleMatcher$Builder;->thresholdDistance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, " threshold=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_5d
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$Builder;->demotion:Landroid/icu/util/LocaleMatcher$Demotion;

    if-eqz v1, :cond_6c

    .line 603
    const-string v1, " demotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/LocaleMatcher$Builder;->demotion:Landroid/icu/util/LocaleMatcher$Demotion;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    :cond_6c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
