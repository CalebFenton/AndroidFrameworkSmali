.class final Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;
.super Landroid/icu/impl/UResource$Sink;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoneStringsLoader"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INITIAL_NUM_ZONES:I = 0x12c


# instance fields
.field private blacklist keyToLoader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/impl/UResource$Key;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sb:Ljava/lang/StringBuilder;

.field final synthetic blacklist this$0:Landroid/icu/impl/TimeZoneNamesImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 308
    const-class v0, Landroid/icu/impl/TimeZoneNamesImpl;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/impl/TimeZoneNamesImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 308
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 314
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x12c

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TimeZoneNamesImpl;Landroid/icu/impl/TimeZoneNamesImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl;)V

    return-void
.end method

.method private blacklist consumeNamesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 351
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    .line 352
    .local v0, "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    if-nez v0, :cond_51

    .line 353
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->isMetaZone(Landroid/icu/impl/UResource$Key;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 354
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "mzID":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v3}, Landroid/icu/impl/TimeZoneNamesImpl;->-$$Nest$fget_mzNamesMap(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 357
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-$$Nest$sfgetDUMMY_LOADER()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v0

    goto :goto_2c

    .line 359
    :cond_26
    new-instance v3, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    invoke-direct {v3, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V

    move-object v0, v3

    .line 361
    .end local v1    # "mzID":Ljava/lang/String;
    :goto_2c
    goto :goto_48

    .line 362
    :cond_2d
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "tzID":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v3}, Landroid/icu/impl/TimeZoneNamesImpl;->-$$Nest$fget_tzNamesMap(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 365
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-$$Nest$sfgetDUMMY_LOADER()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v0

    goto :goto_48

    .line 367
    :cond_42
    new-instance v3, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    invoke-direct {v3, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl-IA;)V

    move-object v0, v3

    .line 371
    .end local v1    # "tzID":Ljava/lang/String;
    :goto_48
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->createKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/impl/UResource$Key;

    move-result-object v1

    .line 372
    .local v1, "newKey":Landroid/icu/impl/UResource$Key;
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .end local v1    # "newKey":Landroid/icu/impl/UResource$Key;
    :cond_51
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-$$Nest$sfgetDUMMY_LOADER()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v1

    if-eq v0, v1, :cond_5a

    .line 377
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    .line 379
    :cond_5a
    return-void
.end method

.method private blacklist mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    .line 394
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 395
    const-string v0, "meta:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 396
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 398
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    .line 402
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 404
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v1

    .line 405
    .local v1, "c":C
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_17

    .line 406
    const/16 v1, 0x2f

    .line 408
    :cond_17
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 410
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist createKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/impl/UResource$Key;
    .registers 3
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    .line 382
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    move-result-object v0

    return-object v0
.end method

.method blacklist isMetaZone(Landroid/icu/impl/UResource$Key;)Z
    .registers 3
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    .line 386
    const-string v0, "meta:"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method blacklist load()V
    .registers 8

    .line 320
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v0}, Landroid/icu/impl/TimeZoneNamesImpl;->-$$Nest$fget_zoneStrings(Landroid/icu/impl/TimeZoneNamesImpl;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 321
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 322
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/impl/UResource$Key;Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    .line 323
    .local v2, "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-$$Nest$sfgetDUMMY_LOADER()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v3

    if-ne v2, v3, :cond_2e

    goto :goto_15

    .line 324
    :cond_2e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/UResource$Key;

    .line 326
    .local v3, "key":Landroid/icu/impl/UResource$Key;
    invoke-virtual {p0, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->isMetaZone(Landroid/icu/impl/UResource$Key;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 327
    invoke-direct {p0, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "mzID":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v5}, Landroid/icu/impl/TimeZoneNamesImpl;->-$$Nest$fget_mzNamesMap(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-$$Nest$mgetNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createMetaZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 329
    .end local v4    # "mzID":Ljava/lang/String;
    goto :goto_5d

    .line 330
    :cond_4c
    invoke-direct {p0, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "tzID":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v5}, Landroid/icu/impl/TimeZoneNamesImpl;->-$$Nest$fget_tzNamesMap(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-$$Nest$mgetNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createTimeZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 333
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/impl/UResource$Key;Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;>;"
    .end local v2    # "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .end local v3    # "key":Landroid/icu/impl/UResource$Key;
    .end local v4    # "tzID":Ljava/lang/String;
    :goto_5d
    goto :goto_15

    .line 334
    :cond_5e
    return-void
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 338
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 339
    .local v0, "timeZonesTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 340
    nop

    .line 341
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 342
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->consumeNamesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    .line 339
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 348
    .end local v1    # "j":I
    :cond_19
    return-void
.end method
