.class Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayPeriodAllowedHoursSink"
.end annotation


# instance fields
.field greylist-max-o tempMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 432
    .local p1, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 433
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;->tempMap:Ljava/util/HashMap;

    .line 434
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/HashMap;Landroid/icu/text/DateTimePatternGenerator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 14
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 438
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 439
    .local v0, "timeData":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 440
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "regionOrLocale":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v3

    .line 442
    .local v3, "formatList":Landroid/icu/impl/UResource$Table;
    const/4 v4, 0x0

    .line 443
    .local v4, "allowed":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 444
    .local v5, "preferred":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_16
    invoke-interface {v3, v6, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 445
    const-string v7, "allowed"

    invoke-virtual {p1, v7}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 446
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getStringArrayOrStringAsArray()[Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    .line 447
    :cond_29
    const-string v7, "preferred"

    invoke-virtual {p1, v7}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 448
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    .line 444
    :cond_35
    :goto_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 453
    .end local v6    # "j":I
    :cond_38
    const/4 v6, 0x0

    .line 454
    .local v6, "list":[Ljava/lang/String;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_51

    array-length v9, v4

    if-lez v9, :cond_51

    .line 455
    array-length v9, v4

    add-int/2addr v9, v7

    new-array v6, v9, [Ljava/lang/String;

    .line 456
    if-eqz v5, :cond_48

    move-object v9, v5

    goto :goto_4a

    :cond_48
    aget-object v9, v4, v8

    :goto_4a
    aput-object v9, v6, v8

    .line 457
    array-length v9, v4

    invoke-static {v4, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_64

    .line 460
    :cond_51
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    .line 461
    if-eqz v5, :cond_58

    move-object v9, v5

    goto :goto_5e

    :cond_58
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgetLAST_RESORT_ALLOWED_HOUR_FORMAT()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    :goto_5e
    aput-object v9, v6, v8

    .line 462
    aget-object v8, v6, v8

    aput-object v8, v6, v7

    .line 464
    :goto_64
    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .end local v2    # "regionOrLocale":Ljava/lang/String;
    .end local v3    # "formatList":Landroid/icu/impl/UResource$Table;
    .end local v4    # "allowed":[Ljava/lang/String;
    .end local v5    # "preferred":Ljava/lang/String;
    .end local v6    # "list":[Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 466
    .end local v1    # "i":I
    :cond_6c
    return-void
.end method
