.class final Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RelDateTimeDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    }
.end annotation


# instance fields
.field greylist-max-o pastFutureIndex:I

.field greylist-max-o qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field greylist-max-o sb:Ljava/lang/StringBuilder;

.field greylist-max-o style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field greylist-max-o styleRelUnitPatterns:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 1459
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 1238
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    .line 1240
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->sb:Ljava/lang/StringBuilder;

    .line 1460
    return-void
.end method

.method private greylist-max-o handleAlias(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 11
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 1412
    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v0

    .line 1413
    .local v0, "sourceStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v1

    invoke-static {v0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1414
    .local v1, "limit":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->-$$Nest$smorNullFromString(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    move-result-object v2

    .line 1415
    .local v2, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    if-eqz v2, :cond_84

    .line 1418
    invoke-direct {p0, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v3

    .line 1419
    .local v3, "targetStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    if-eq v0, v3, :cond_65

    .line 1424
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-$$Nest$sfgetfallbackCache()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v4

    invoke-virtual {v0}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    if-nez v4, :cond_35

    .line 1425
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-$$Nest$sfgetfallbackCache()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v4

    invoke-virtual {v0}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aput-object v3, v4, v5

    goto :goto_41

    .line 1426
    :cond_35
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-$$Nest$sfgetfallbackCache()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v4

    invoke-virtual {v0}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    if-ne v4, v3, :cond_42

    .line 1430
    :goto_41
    return-void

    .line 1427
    :cond_42
    new-instance v4, Landroid/icu/util/ICUException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent style fallback for style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1420
    :cond_65
    new-instance v4, Landroid/icu/util/ICUException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid style fallback from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to itself"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1432
    .end local v3    # "targetStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_84
    return-void
.end method

.method private greylist-max-o handlePlainDirection(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1374
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 1375
    .local v0, "absUnit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    if-nez v0, :cond_7

    .line 1376
    return-void

    .line 1378
    :cond_7
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 1379
    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    .line 1380
    .local v1, "unitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;"
    if-nez v1, :cond_22

    .line 1381
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v1, v2

    .line 1382
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    :cond_22
    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    .line 1385
    .local v2, "dirMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    if-nez v2, :cond_35

    .line 1386
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v2, v3

    .line 1387
    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    :cond_35
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_46

    .line 1390
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    :cond_46
    return-void
.end method

.method private greylist-max-o styleFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .registers 4
    .param p1, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1261
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, "s":Ljava/lang/String;
    const-string v1, "-short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1263
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v1

    .line 1264
    :cond_f
    const-string v1, "-narrow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1265
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v1

    .line 1267
    :cond_1a
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v1
.end method

.method private greylist-max-o styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .registers 3
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    .line 1251
    const-string v0, "-short"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1252
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0

    .line 1253
    :cond_b
    const-string v0, "-narrow"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1254
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0

    .line 1256
    :cond_16
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method private static greylist-max-o styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I
    .registers 2
    .param p0, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 1272
    invoke-virtual {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 1275
    const/4 v0, 0x0

    return v0

    .line 1274
    :pswitch_9
    const/4 v0, 0x7

    return v0

    .line 1273
    :pswitch_b
    const/4 v0, 0x6

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o consumeTableRelative(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 12
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1280
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 1281
    .local v0, "unitTypesTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1282
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    if-nez v2, :cond_93

    .line 1283
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 1285
    .local v2, "valueString":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/EnumMap;

    .line 1287
    .local v3, "absMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;"
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v4, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    if-ne v4, v5, :cond_54

    .line 1288
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1290
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/EnumMap;

    .line 1291
    .local v4, "unitStrings":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    if-nez v4, :cond_46

    .line 1292
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v4, v5

    .line 1293
    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v3, v5, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :cond_46
    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_93

    .line 1296
    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v4, v5, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_93

    .line 1301
    .end local v4    # "unitStrings":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    :cond_54
    invoke-static {p1}, Landroid/icu/text/RelativeDateTimeFormatter;->-$$Nest$smkeyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object v4

    .line 1302
    .local v4, "keyDirection":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    if-nez v4, :cond_5b

    .line 1303
    goto :goto_93

    .line 1305
    :cond_5b
    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 1306
    .local v5, "absUnit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    if-nez v5, :cond_62

    .line 1307
    goto :goto_93

    .line 1310
    :cond_62
    if-nez v3, :cond_73

    .line 1311
    new-instance v6, Ljava/util/EnumMap;

    const-class v7, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-direct {v6, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v3, v6

    .line 1312
    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v7, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v6, v7, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    :cond_73
    invoke-virtual {v3, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/EnumMap;

    .line 1315
    .local v6, "dirMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    if-nez v6, :cond_86

    .line 1316
    new-instance v7, Ljava/util/EnumMap;

    const-class v8, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v6, v7

    .line 1317
    invoke-virtual {v3, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    :cond_86
    invoke-virtual {v6, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_93

    .line 1321
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    .end local v2    # "valueString":Ljava/lang/String;
    .end local v3    # "absMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;"
    .end local v4    # "keyDirection":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v5    # "absUnit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .end local v6    # "dirMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1325
    .end local v1    # "i":I
    :cond_97
    return-void
.end method

.method public greylist-max-o consumeTableRelativeTime(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 6
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1329
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    if-nez v0, :cond_7

    .line 1330
    return-void

    .line 1332
    :cond_7
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 1333
    .local v0, "unitTypesTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1334
    const-string v2, "past"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1335
    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    goto :goto_29

    .line 1336
    :cond_1e
    const-string v2, "future"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1337
    const/4 v2, 0x1

    iput v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    .line 1342
    :goto_29
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTimeDetail(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 1333
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1344
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method public greylist-max-o consumeTimeDetail(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 13
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1347
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 1349
    .local v0, "unitTypesTable":Landroid/icu/impl/UResource$Table;
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    .line 1350
    .local v1, "unitPatterns":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;[[Ljava/lang/String;>;"
    if-nez v1, :cond_1f

    .line 1351
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v1, v2

    .line 1352
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :cond_1f
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v2, v2, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 1355
    .local v2, "patterns":[[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_46

    .line 1356
    sget v5, Landroid/icu/impl/StandardPlural;->COUNT:I

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v5, v7, v4

    aput v6, v7, v3

    const-class v5, Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, [[Ljava/lang/String;

    .line 1357
    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v1, v5, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    :cond_46
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_47
    invoke-interface {v0, v5, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 1362
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v6

    if-nez v6, :cond_73

    .line 1363
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1364
    .local v6, "pluralIndex":I
    iget v7, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    aget-object v7, v2, v7

    aget-object v7, v7, v6

    if-nez v7, :cond_73

    .line 1365
    iget v7, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    aget-object v7, v2, v7

    .line 1367
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->sb:Ljava/lang/StringBuilder;

    .line 1366
    invoke-static {v8, v9, v3, v4}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 1361
    .end local v6    # "pluralIndex":I
    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 1371
    .end local v5    # "i":I
    :cond_76
    return-void
.end method

.method public greylist-max-o consumeTimeUnit(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 7
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1396
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 1397
    .local v0, "unitTypesTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1398
    const-string v2, "dn"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    if-nez v2, :cond_1c

    .line 1399
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->handlePlainDirection(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 1401
    :cond_1c
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3a

    .line 1402
    const-string v2, "relative"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1403
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTableRelative(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_3a

    .line 1404
    :cond_2f
    const-string v2, "relativeTime"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1405
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTableRelativeTime(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 1397
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1409
    .end local v1    # "i":I
    :cond_3d
    return-void
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 9
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 1437
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1438
    return-void

    .line 1441
    :cond_8
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 1443
    .local v0, "table":Landroid/icu/impl/UResource$Table;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-interface {v0, v2, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1444
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v3

    if-ne v3, v1, :cond_1d

    .line 1445
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->handleAlias(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    goto :goto_40

    .line 1448
    :cond_1d
    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 1449
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v3

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1450
    .local v3, "limit":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->-$$Nest$smorNullFromString(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1451
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    if-eqz v4, :cond_40

    .line 1453
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTimeUnit(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 1443
    .end local v3    # "limit":I
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1457
    .end local v2    # "i":I
    :cond_43
    return-void
.end method
