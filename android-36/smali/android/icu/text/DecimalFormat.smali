.class public Landroid/icu/text/DecimalFormat;
.super Landroid/icu/text/NumberFormat;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DecimalFormat$PropertySetter;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api MINIMUM_GROUPING_DIGITS_AUTO:I = -0x2

.field public static final whitelist test-api MINIMUM_GROUPING_DIGITS_MIN2:I = -0x3

.field public static final whitelist test-api PAD_AFTER_PREFIX:I = 0x1

.field public static final whitelist test-api PAD_AFTER_SUFFIX:I = 0x3

.field public static final whitelist test-api PAD_BEFORE_PREFIX:I = 0x0

.field public static final whitelist test-api PAD_BEFORE_SUFFIX:I = 0x2

.field private static final whitelist serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field volatile transient blacklist currencyParser:Landroid/icu/impl/number/parse/NumberParserImpl;

.field volatile transient greylist-max-o exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

.field volatile transient greylist-max-o formatter:Landroid/icu/number/LocalizedNumberFormatter;

.field private transient greylist-max-o icuMathContextForm:I

.field volatile transient blacklist parser:Landroid/icu/impl/number/parse/NumberParserImpl;

.field transient greylist-max-o properties:Landroid/icu/impl/number/DecimalFormatProperties;

.field private final greylist-max-o serialVersionOnStream:I

.field volatile transient greylist-max-o symbols:Landroid/icu/text/DecimalFormatSymbols;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 250
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 4

    .line 318
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 259
    const/4 v0, 0x5

    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    .line 1272
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 320
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 321
    .local v1, "def":Landroid/icu/util/ULocale;
    invoke-static {v1, v0}, Landroid/icu/text/DecimalFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {}, Landroid/icu/text/DecimalFormat;->getDefaultSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 323
    new-instance v2, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v2}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 324
    new-instance v2, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v2}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 326
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 327
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    .line 328
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 259
    const/4 v0, 0x5

    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    .line 1272
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 350
    invoke-static {}, Landroid/icu/text/DecimalFormat;->getDefaultSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 351
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 352
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 354
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 355
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    .line 356
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 377
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 259
    const/4 v0, 0x5

    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    .line 1272
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 378
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 379
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 380
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 382
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 383
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    .line 384
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p3, "choice"    # I

    .line 413
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    .line 259
    const/4 v0, 0x5

    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    .line 1272
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 414
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 415
    new-instance v1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 416
    new-instance v1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 418
    const/4 v1, 0x1

    if-eq p3, v1, :cond_37

    if-eq p3, v0, :cond_37

    const/4 v0, 0x7

    if-eq p3, v0, :cond_37

    const/16 v0, 0x8

    if-eq p3, v0, :cond_37

    const/16 v0, 0x9

    if-eq p3, v0, :cond_37

    const/4 v0, 0x6

    if-ne p3, v0, :cond_33

    goto :goto_37

    .line 426
    :cond_33
    invoke-virtual {p0, p1, v1}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    goto :goto_3b

    .line 424
    :cond_37
    :goto_37
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 428
    :goto_3b
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    .line 429
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p3, "infoInput"    # Landroid/icu/text/CurrencyPluralInfo;
    .param p4, "style"    # I

    .line 407
    invoke-direct {p0, p1, p2, p4}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V

    .line 408
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p3}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 409
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    .line 410
    return-void
.end method

.method static blacklist fieldPositionHelper(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V
    .registers 6
    .param p0, "dq"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p1, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "offset"    # I

    .line 2442
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2443
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 2444
    invoke-interface {p0, p2}, Landroid/icu/impl/number/DecimalQuantity;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    .line 2445
    invoke-static {p1, p2}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    move-result v0

    .line 2446
    .local v0, "found":Z
    if-eqz v0, :cond_22

    if-eqz p3, :cond_22

    .line 2447
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2448
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 2450
    :cond_22
    return-void
.end method

.method private static greylist-max-o getDefaultSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .registers 1

    .line 432
    invoke-static {}, Landroid/icu/text/DecimalFormatSymbols;->getInstance()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 22
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 528
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    .line 529
    .local v2, "fieldGetter":Ljava/io/ObjectInputStream$GetField;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$GetField;->getObjectStreamClass()Ljava/io/ObjectStreamClass;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v3

    .line 530
    .local v3, "serializedFields":[Ljava/io/ObjectStreamField;
    const-string v0, "serialVersionOnStream"

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 532
    .local v4, "serialVersion":I
    const/4 v0, 0x5

    if-gt v4, v0, :cond_3a6

    .line 535
    const/4 v5, 0x1

    if-ne v4, v0, :cond_54

    .line 538
    array-length v0, v3

    if-gt v0, v5, :cond_4c

    .line 542
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 544
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 545
    .local v0, "serializedProperties":Ljava/lang/Object;
    instance-of v5, v0, Landroid/icu/impl/number/DecimalFormatProperties;

    if-eqz v5, :cond_2f

    .line 547
    move-object v5, v0

    check-cast v5, Landroid/icu/impl/number/DecimalFormatProperties;

    iput-object v5, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_38

    .line 550
    :cond_2f
    move-object v5, v0

    check-cast v5, Landroid/icu/impl/number/Properties;

    invoke-virtual {v5}, Landroid/icu/impl/number/Properties;->getInstance()Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v5

    iput-object v5, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 553
    :goto_38
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v5, v1, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 555
    new-instance v5, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v5}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v5, v1, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 556
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    .line 557
    .end local v0    # "serializedProperties":Ljava/lang/Object;
    goto/16 :goto_389

    .line 539
    :cond_4c
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Too many fields when reading serial version 5"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_54
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 561
    const/4 v0, 0x0

    .local v0, "pp":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "ppp":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "ps":Ljava/lang/String;
    const/4 v8, 0x0

    .line 562
    .local v8, "psp":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "np":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "npp":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "ns":Ljava/lang/String;
    const/4 v12, 0x0

    .line 563
    .local v12, "nsp":Ljava/lang/String;
    array-length v13, v3

    move-object v15, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    const/4 v0, 0x0

    .end local v0    # "pp":Ljava/lang/String;
    .local v6, "pp":Ljava/lang/String;
    .local v7, "ppp":Ljava/lang/String;
    .local v8, "ps":Ljava/lang/String;
    .local v9, "psp":Ljava/lang/String;
    .local v10, "np":Ljava/lang/String;
    .local v11, "npp":Ljava/lang/String;
    .local v12, "ns":Ljava/lang/String;
    .local v15, "nsp":Ljava/lang/String;
    :goto_6d
    if-ge v0, v13, :cond_27c

    aget-object v16, v3, v0

    .line 564
    .local v16, "field":Ljava/io/ObjectStreamField;
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    .line 565
    .local v5, "name":Ljava/lang/String;
    const-string v14, "decimalSeparatorAlwaysShown"

    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_89

    .line 566
    move/from16 v19, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v14, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v1, v14}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    goto/16 :goto_277

    .line 567
    :cond_89
    move/from16 v19, v0

    const/4 v0, 0x0

    const-string v14, "exponentSignAlwaysShown"

    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9d

    .line 568
    invoke-virtual {v2, v14, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v1, v14}, Landroid/icu/text/DecimalFormat;->setExponentSignAlwaysShown(Z)V

    goto/16 :goto_277

    .line 569
    :cond_9d
    const-string v14, "formatWidth"

    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ae

    .line 570
    invoke-virtual {v2, v14, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/icu/text/DecimalFormat;->setFormatWidth(I)V

    goto/16 :goto_277

    .line 571
    :cond_ae
    const-string v0, "groupingSize"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c0

    .line 572
    const/4 v14, 0x3

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    goto/16 :goto_277

    .line 573
    :cond_c0
    const-string v0, "groupingSize2"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d2

    .line 574
    const/4 v14, 0x0

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setSecondaryGroupingSize(I)V

    goto/16 :goto_277

    .line 575
    :cond_d2
    const-string v0, "maxSignificantDigits"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e4

    .line 576
    const/4 v14, 0x6

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    goto/16 :goto_277

    .line 577
    :cond_e4
    const-string v0, "minExponentDigits"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f6

    .line 578
    const/4 v14, 0x0

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setMinimumExponentDigits(B)V

    goto/16 :goto_277

    .line 579
    :cond_f6
    const-string v0, "minSignificantDigits"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_108

    .line 580
    const/4 v14, 0x1

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    goto/16 :goto_277

    .line 581
    :cond_108
    const/4 v14, 0x1

    const-string v0, "multiplier"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11a

    .line 582
    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    goto/16 :goto_277

    .line 583
    :cond_11a
    const-string v0, "pad"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12d

    .line 584
    const/16 v14, 0x20

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setPadCharacter(C)V

    goto/16 :goto_277

    .line 585
    :cond_12d
    const-string v0, "padPosition"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13f

    .line 586
    const/4 v14, 0x0

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setPadPosition(I)V

    goto/16 :goto_277

    .line 587
    :cond_13f
    const/4 v14, 0x0

    const-string v0, "parseBigDecimal"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_151

    .line 588
    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    goto/16 :goto_277

    .line 589
    :cond_151
    const-string v0, "parseRequireDecimalPoint"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_162

    .line 590
    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setDecimalPatternMatchRequired(Z)V

    goto/16 :goto_277

    .line 591
    :cond_162
    const-string v0, "roundingMode"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_173

    .line 592
    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setRoundingMode(I)V

    goto/16 :goto_277

    .line 593
    :cond_173
    const-string v0, "useExponentialNotation"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_184

    .line 594
    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setScientificNotation(Z)V

    goto/16 :goto_277

    .line 595
    :cond_184
    const-string v0, "useSignificantDigits"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_195

    .line 596
    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    goto/16 :goto_277

    .line 597
    :cond_195
    const-string v0, "currencyPluralInfo"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    const/4 v14, 0x0

    if-eqz v18, :cond_1a9

    .line 598
    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V

    goto/16 :goto_277

    .line 599
    :cond_1a9
    const-string v0, "mathContext"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1bc

    .line 600
    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/math/MathContext;

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setMathContextICU(Landroid/icu/math/MathContext;)V

    goto/16 :goto_277

    .line 601
    :cond_1bc
    const-string v0, "negPrefixPattern"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 602
    const-string v0, "negPrefixPattern"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .end local v11    # "npp":Ljava/lang/String;
    .local v0, "npp":Ljava/lang/String;
    goto/16 :goto_277

    .line 603
    .end local v0    # "npp":Ljava/lang/String;
    .restart local v11    # "npp":Ljava/lang/String;
    :cond_1cf
    const-string v0, "negSuffixPattern"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 604
    const-string v0, "negSuffixPattern"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .end local v15    # "nsp":Ljava/lang/String;
    .local v0, "nsp":Ljava/lang/String;
    goto/16 :goto_277

    .line 605
    .end local v0    # "nsp":Ljava/lang/String;
    .restart local v15    # "nsp":Ljava/lang/String;
    :cond_1e2
    const-string v0, "negativePrefix"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 606
    const-string v0, "negativePrefix"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .end local v10    # "np":Ljava/lang/String;
    .local v0, "np":Ljava/lang/String;
    goto/16 :goto_277

    .line 607
    .end local v0    # "np":Ljava/lang/String;
    .restart local v10    # "np":Ljava/lang/String;
    :cond_1f5
    const-string v0, "negativeSuffix"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 608
    const-string v0, "negativeSuffix"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .end local v12    # "ns":Ljava/lang/String;
    .local v0, "ns":Ljava/lang/String;
    goto/16 :goto_277

    .line 609
    .end local v0    # "ns":Ljava/lang/String;
    .restart local v12    # "ns":Ljava/lang/String;
    :cond_208
    const-string v0, "posPrefixPattern"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 610
    const-string v0, "posPrefixPattern"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .end local v7    # "ppp":Ljava/lang/String;
    .local v0, "ppp":Ljava/lang/String;
    goto :goto_277

    .line 611
    .end local v0    # "ppp":Ljava/lang/String;
    .restart local v7    # "ppp":Ljava/lang/String;
    :cond_21a
    const-string v0, "posSuffixPattern"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 612
    const-string v0, "posSuffixPattern"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .end local v9    # "psp":Ljava/lang/String;
    .local v0, "psp":Ljava/lang/String;
    goto :goto_277

    .line 613
    .end local v0    # "psp":Ljava/lang/String;
    .restart local v9    # "psp":Ljava/lang/String;
    :cond_22c
    const-string v0, "positivePrefix"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 614
    const-string v0, "positivePrefix"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .end local v6    # "pp":Ljava/lang/String;
    .local v0, "pp":Ljava/lang/String;
    goto :goto_277

    .line 615
    .end local v0    # "pp":Ljava/lang/String;
    .restart local v6    # "pp":Ljava/lang/String;
    :cond_23e
    const-string v0, "positiveSuffix"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_250

    .line 616
    const-string v0, "positiveSuffix"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .end local v8    # "ps":Ljava/lang/String;
    .local v0, "ps":Ljava/lang/String;
    goto :goto_277

    .line 617
    .end local v0    # "ps":Ljava/lang/String;
    .restart local v8    # "ps":Ljava/lang/String;
    :cond_250
    const-string v0, "roundingIncrement"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_264

    .line 618
    const-string v0, "roundingIncrement"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V

    goto :goto_277

    .line 619
    :cond_264
    const-string v0, "symbols"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_277

    .line 620
    const-string v0, "symbols"

    invoke-virtual {v2, v0, v14}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 563
    .end local v5    # "name":Ljava/lang/String;
    .end local v16    # "field":Ljava/io/ObjectStreamField;
    :cond_277
    :goto_277
    add-int/lit8 v0, v19, 0x1

    const/4 v5, 0x1

    goto/16 :goto_6d

    .line 633
    :cond_27c
    if-nez v11, :cond_284

    .line 634
    iget-object v0, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_289

    .line 636
    :cond_284
    iget-object v0, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v11}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 638
    :goto_289
    if-nez v15, :cond_291

    .line 639
    iget-object v0, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v12}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_296

    .line 641
    :cond_291
    iget-object v0, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v15}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 643
    :goto_296
    if-nez v7, :cond_29e

    .line 644
    iget-object v0, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_2a3

    .line 646
    :cond_29e
    iget-object v0, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 648
    :goto_2a3
    if-nez v9, :cond_2ab

    .line 649
    iget-object v0, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v8}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_2b0

    .line 651
    :cond_2ab
    iget-object v0, v1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v9}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 656
    :goto_2b0
    :try_start_2b0
    const-class v0, Landroid/icu/text/NumberFormat;

    const-string v5, "groupingUsed"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 657
    .local v0, "getter":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 659
    const-class v5, Landroid/icu/text/NumberFormat;

    const-string v13, "parseIntegerOnly"

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 660
    .end local v0    # "getter":Ljava/lang/reflect/Field;
    .local v5, "getter":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 661
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 662
    const-class v0, Landroid/icu/text/NumberFormat;

    const-string v13, "maximumIntegerDigits"

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 663
    .end local v5    # "getter":Ljava/lang/reflect/Field;
    .restart local v0    # "getter":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 665
    const-class v5, Landroid/icu/text/NumberFormat;

    const-string v13, "minimumIntegerDigits"

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 666
    .end local v0    # "getter":Ljava/lang/reflect/Field;
    .restart local v5    # "getter":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 667
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 668
    const-class v0, Landroid/icu/text/NumberFormat;

    const-string v13, "maximumFractionDigits"

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 669
    .end local v5    # "getter":Ljava/lang/reflect/Field;
    .restart local v0    # "getter":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 671
    const-class v5, Landroid/icu/text/NumberFormat;

    const-string v13, "minimumFractionDigits"

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 672
    .end local v0    # "getter":Ljava/lang/reflect/Field;
    .restart local v5    # "getter":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 673
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 674
    const-class v0, Landroid/icu/text/NumberFormat;

    const-string v13, "currency"

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 675
    .end local v5    # "getter":Ljava/lang/reflect/Field;
    .restart local v0    # "getter":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/Currency;

    invoke-virtual {v1, v5}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 677
    const-class v5, Landroid/icu/text/NumberFormat;

    const-string v13, "parseStrict"

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 678
    .end local v0    # "getter":Ljava/lang/reflect/Field;
    .restart local v5    # "getter":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 679
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setParseStrict(Z)V
    :try_end_374
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b0 .. :try_end_374} :catch_39f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b0 .. :try_end_374} :catch_398
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2b0 .. :try_end_374} :catch_391
    .catch Ljava/lang/SecurityException; {:try_start_2b0 .. :try_end_374} :catch_38a

    .line 688
    nop

    .line 690
    iget-object v0, v1, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    if-nez v0, :cond_37f

    .line 691
    invoke-static {}, Landroid/icu/text/DecimalFormat;->getDefaultSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 693
    :cond_37f
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 694
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    .line 696
    .end local v5    # "getter":Ljava/lang/reflect/Field;
    .end local v6    # "pp":Ljava/lang/String;
    .end local v7    # "ppp":Ljava/lang/String;
    .end local v8    # "ps":Ljava/lang/String;
    .end local v9    # "psp":Ljava/lang/String;
    .end local v10    # "np":Ljava/lang/String;
    .end local v11    # "npp":Ljava/lang/String;
    .end local v12    # "ns":Ljava/lang/String;
    .end local v15    # "nsp":Ljava/lang/String;
    :goto_389
    return-void

    .line 686
    .restart local v6    # "pp":Ljava/lang/String;
    .restart local v7    # "ppp":Ljava/lang/String;
    .restart local v8    # "ps":Ljava/lang/String;
    .restart local v9    # "psp":Ljava/lang/String;
    .restart local v10    # "np":Ljava/lang/String;
    .restart local v11    # "npp":Ljava/lang/String;
    .restart local v12    # "ns":Ljava/lang/String;
    .restart local v15    # "nsp":Ljava/lang/String;
    :catch_38a
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 684
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_391
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 682
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_398
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 680
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_39f
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 533
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "pp":Ljava/lang/String;
    .end local v7    # "ppp":Ljava/lang/String;
    .end local v8    # "ps":Ljava/lang/String;
    .end local v9    # "psp":Ljava/lang/String;
    .end local v10    # "np":Ljava/lang/String;
    .end local v11    # "npp":Ljava/lang/String;
    .end local v12    # "ns":Ljava/lang/String;
    .end local v15    # "nsp":Ljava/lang/String;
    :cond_3a6
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot deserialize newer android.icu.text.DecimalFormat (v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o safeConvertBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/Number;
    .registers 5
    .param p1, "number"    # Ljava/math/BigDecimal;

    .line 2407
    :try_start_0
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 2408
    :catch_6
    move-exception v0

    .line 2409
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-lez v1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-gez v1, :cond_1a

    .line 2410
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 2411
    :cond_1a
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-gez v1, :cond_27

    .line 2412
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 2413
    :cond_27
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-gez v1, :cond_34

    .line 2414
    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 2416
    :cond_34
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 514
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 518
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 521
    monitor-exit p0

    return-void

    .line 513
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method


# virtual methods
.method public declared-synchronized whitelist test-api applyLocalizedPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "localizedPattern"    # Ljava/lang/String;

    monitor-enter p0

    .line 488
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/icu/impl/number/PatternStringUtils;->convertLocalized(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Z)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 490
    monitor-exit p0

    return-void

    .line 487
    .end local v0    # "pattern":Ljava/lang/String;
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "localizedPattern":Ljava/lang/String;
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    monitor-enter p0

    .line 465
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 468
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 469
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 470
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 471
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 472
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 473
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_24

    .line 474
    monitor-exit p0

    return-void

    .line 464
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "pattern":Ljava/lang/String;
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public declared-synchronized whitelist test-api areSignificantDigitsUsed()Z
    .registers 3

    monitor-enter p0

    .line 1479
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1480
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_18

    if-eq v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1479
    :goto_16
    monitor-exit p0

    return v0

    .line 1478
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 499
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormat;

    .line 500
    .local v0, "other":Landroid/icu/text/DecimalFormat;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 501
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalFormatProperties;->clone()Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 502
    new-instance v1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 503
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    .line 504
    return-object v0
.end method

.method public declared-synchronized whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 2256
    const/4 v0, 0x0

    if-nez p1, :cond_6

    monitor-exit p0

    return v0

    .line 2257
    :cond_6
    const/4 v1, 0x1

    if-ne p1, p0, :cond_b

    monitor-exit p0

    return v1

    .line 2258
    :cond_b
    :try_start_b
    instance-of v2, p1, Landroid/icu/text/DecimalFormat;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_2b

    if-nez v2, :cond_11

    monitor-exit p0

    return v0

    .line 2259
    :cond_11
    :try_start_11
    move-object v2, p1

    check-cast v2, Landroid/icu/text/DecimalFormat;

    .line 2260
    .local v2, "other":Landroid/icu/text/DecimalFormat;
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    iget-object v4, v2, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v3, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v4, v2, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3, v4}, Landroid/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_2b

    if-eqz v3, :cond_29

    move v0, v1

    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_29
    monitor-exit p0

    return v0

    .line 2255
    .end local v2    # "other":Landroid/icu/text/DecimalFormat;
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public whitelist test-api format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 8
    .param p1, "number"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 707
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    .line 708
    .local v0, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 709
    .local v1, "string":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v2, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 710
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-static {v0, v1, p4, v2}, Landroid/icu/text/DecimalFormat;->fieldPositionHelper(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 711
    invoke-static {v1, p3}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 712
    return-object p3
.end method

.method public whitelist test-api format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 8
    .param p1, "number"    # J
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 720
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(J)V

    .line 721
    .local v0, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 722
    .local v1, "string":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v2, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 723
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-static {v0, v1, p4, v2}, Landroid/icu/text/DecimalFormat;->fieldPositionHelper(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 724
    invoke-static {v1, p3}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 725
    return-object p3
.end method

.method public whitelist test-api format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "number"    # Landroid/icu/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 760
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 761
    .local v0, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 762
    .local v1, "string":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v2, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 763
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-static {v0, v1, p3, v2}, Landroid/icu/text/DecimalFormat;->fieldPositionHelper(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 764
    invoke-static {v1, p2}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 765
    return-object p2
.end method

.method public whitelist test-api format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 9
    .param p1, "currAmt"    # Landroid/icu/util/CurrencyAmount;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 787
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    .line 788
    .local v0, "localSymbols":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V

    .line 790
    new-instance v1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 791
    .local v1, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v2, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v2}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 792
    .local v2, "string":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v3, v0}, Landroid/icu/number/LocalizedNumberFormatter;->symbols(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v3

    check-cast v3, Landroid/icu/number/LocalizedNumberFormatter;

    .line 793
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/number/LocalizedNumberFormatter;->unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v3

    check-cast v3, Landroid/icu/number/LocalizedNumberFormatter;

    .line 794
    invoke-virtual {v3, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 795
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-static {v1, v2, p3, v3}, Landroid/icu/text/DecimalFormat;->fieldPositionHelper(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 796
    invoke-static {v2, p2}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 797
    return-object p2
.end method

.method public whitelist test-api format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 747
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigDecimal;)V

    .line 748
    .local v0, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 749
    .local v1, "string":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v2, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 750
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-static {v0, v1, p3, v2}, Landroid/icu/text/DecimalFormat;->fieldPositionHelper(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 751
    invoke-static {v1, p2}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 752
    return-object p2
.end method

.method public whitelist test-api format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 733
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigInteger;)V

    .line 734
    .local v0, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 735
    .local v1, "string":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v2, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 736
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-static {v0, v1, p3, v2}, Landroid/icu/text/DecimalFormat;->fieldPositionHelper(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 737
    invoke-static {v1, p2}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 738
    return-object p2
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 773
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_12

    .line 774
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 775
    .local v0, "number":Ljava/lang/Number;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v1, v0}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    .line 776
    .local v1, "output":Landroid/icu/number/FormattedNumber;
    invoke-virtual {v1}, Landroid/icu/number/FormattedNumber;->toCharacterIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 773
    .end local v0    # "number":Ljava/lang/Number;
    .end local v1    # "output":Landroid/icu/number/FormattedNumber;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public declared-synchronized whitelist test-api getCurrency()Landroid/icu/util/Currency;
    .registers 2

    monitor-enter p0

    .line 1932
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1932
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method blacklist getCurrencyParser()Landroid/icu/impl/number/parse/NumberParserImpl;
    .registers 4

    .line 2392
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyParser:Landroid/icu/impl/number/parse/NumberParserImpl;

    if-nez v0, :cond_f

    .line 2393
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/NumberParserImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyParser:Landroid/icu/impl/number/parse/NumberParserImpl;

    .line 2395
    :cond_f
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyParser:Landroid/icu/impl/number/parse/NumberParserImpl;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;
    .registers 2

    monitor-enter p0

    .line 2005
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 2005
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;
    .registers 3

    monitor-enter p0

    .line 1966
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v0

    .line 1967
    .local v0, "usage":Landroid/icu/util/Currency$CurrencyUsage;
    if-nez v0, :cond_c

    .line 1968
    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-object v0, v1

    .line 1970
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_c
    monitor-exit p0

    return-object v0

    .line 1965
    .end local v0    # "usage":Landroid/icu/util/Currency$CurrencyUsage;
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized whitelist test-api getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .registers 2

    monitor-enter p0

    .line 890
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 890
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public greylist-max-o getFixedDecimal(D)Landroid/icu/text/PluralRules$IFixedDecimal;
    .registers 4
    .param p1, "number"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2357
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0, p1, p2}, Landroid/icu/number/LocalizedNumberFormatter;->format(D)Landroid/icu/number/FormattedNumber;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/number/FormattedNumber;->getFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getFormatWidth()I
    .registers 2

    monitor-enter p0

    .line 1592
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1592
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api getGroupingSize()I
    .registers 2

    monitor-enter p0

    .line 1790
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    if-gez v0, :cond_c

    .line 1791
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 1793
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_14

    monitor-exit p0

    return v0

    .line 1789
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMathContext()Ljava/math/MathContext;
    .registers 2

    monitor-enter p0

    .line 1243
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    .line 1244
    .local v0, "mathContext":Ljava/math/MathContext;
    nop

    .line 1245
    monitor-exit p0

    return-object v0

    .line 1242
    .end local v0    # "mathContext":Ljava/math/MathContext;
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMathContextICU()Landroid/icu/math/MathContext;
    .registers 7

    monitor-enter p0

    .line 1280
    :try_start_1
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    .line 1281
    .local v0, "mathContext":Ljava/math/MathContext;
    new-instance v1, Landroid/icu/math/MathContext;

    .line 1282
    invoke-virtual {v0}, Ljava/math/MathContext;->getPrecision()I

    move-result v2

    iget v3, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 1285
    invoke-virtual {v0}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/icu/math/MathContext;-><init>(IIZI)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 1281
    monitor-exit p0

    return-object v1

    .line 1279
    .end local v0    # "mathContext":Ljava/math/MathContext;
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMaximumFractionDigits()I
    .registers 2

    monitor-enter p0

    .line 1440
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1440
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMaximumIntegerDigits()I
    .registers 2

    monitor-enter p0

    .line 1359
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1359
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMaximumSignificantDigits()I
    .registers 2

    monitor-enter p0

    .line 1554
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1554
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMinimumExponentDigits()B
    .registers 2

    monitor-enter p0

    .line 1713
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    int-to-byte v0, v0

    monitor-exit p0

    return v0

    .line 1713
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMinimumFractionDigits()I
    .registers 2

    monitor-enter p0

    .line 1396
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1396
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMinimumGroupingDigits()I
    .registers 2

    monitor-enter p0

    .line 1853
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumGroupingDigits()I

    move-result v0

    if-lez v0, :cond_11

    .line 1854
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumGroupingDigits()I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    monitor-exit p0

    return v0

    .line 1856
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_11
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1852
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMinimumIntegerDigits()I
    .registers 2

    monitor-enter p0

    .line 1320
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1320
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMinimumSignificantDigits()I
    .registers 2

    monitor-enter p0

    .line 1522
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1522
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api getMultiplier()I
    .registers 5

    monitor-enter p0

    .line 1081
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1082
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_25

    monitor-exit p0

    return v0

    .line 1084
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_25

    double-to-int v0, v0

    monitor-exit p0

    return v0

    .line 1080
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public declared-synchronized whitelist test-api getNegativePrefix()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 950
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/icu/number/LocalizedNumberFormatter;->getAffixImpl(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 950
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized whitelist test-api getNegativeSuffix()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1016
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->getAffixImpl(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 1016
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized whitelist test-api getPadCharacter()C
    .registers 4

    monitor-enter p0

    .line 1624
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, "paddingString":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 1626
    const-string v2, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_18

    monitor-exit p0

    return v1

    .line 1628
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_12
    :try_start_12
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_18

    monitor-exit p0

    return v1

    .line 1623
    .end local v0    # "paddingString":Ljava/lang/CharSequence;
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized whitelist test-api getPadPosition()I
    .registers 3

    monitor-enter p0

    .line 1653
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadPosition()Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v0

    .line 1654
    .local v0, "loc":Landroid/icu/impl/number/Padder$PadPosition;
    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroid/icu/impl/number/Padder$PadPosition;->toOld()I

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return v1

    .line 1652
    .end local v0    # "loc":Landroid/icu/impl/number/Padder$PadPosition;
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public whitelist test-api getParseMaxDigits()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2051
    const/16 v0, 0x3e8

    return v0
.end method

.method blacklist getParser()Landroid/icu/impl/number/parse/NumberParserImpl;
    .registers 4

    .line 2385
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->parser:Landroid/icu/impl/number/parse/NumberParserImpl;

    if-nez v0, :cond_f

    .line 2386
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/NumberParserImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->parser:Landroid/icu/impl/number/parse/NumberParserImpl;

    .line 2388
    :cond_f
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->parser:Landroid/icu/impl/number/parse/NumberParserImpl;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getPositivePrefix()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 917
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->getAffixImpl(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 917
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized whitelist test-api getPositiveSuffix()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 983
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/icu/number/LocalizedNumberFormatter;->getAffixImpl(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 983
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized whitelist test-api getRoundingIncrement()Ljava/math/BigDecimal;
    .registers 2

    monitor-enter p0

    .line 1135
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1135
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api getRoundingMode()I
    .registers 3

    monitor-enter p0

    .line 1207
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    .line 1208
    .local v0, "mode":Ljava/math/RoundingMode;
    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return v1

    .line 1206
    .end local v0    # "mode":Ljava/math/RoundingMode;
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSecondaryGroupingSize()I
    .registers 3

    monitor-enter p0

    .line 1821
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    .line 1822
    .local v0, "grouping2":I
    if-gez v0, :cond_c

    .line 1823
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1825
    :cond_c
    monitor-exit p0

    return v0

    .line 1820
    .end local v0    # "grouping2":I
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .registers 3

    monitor-enter p0

    .line 2268
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->hashCode()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 2268
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized whitelist test-api isDecimalPatternMatchRequired()Z
    .registers 2

    monitor-enter p0

    .line 2122
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalPatternMatchRequired()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 2122
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api isDecimalSeparatorAlwaysShown()Z
    .registers 2

    monitor-enter p0

    .line 1906
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1906
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api isExponentSignAlwaysShown()Z
    .registers 2

    monitor-enter p0

    .line 1737
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getExponentSignAlwaysShown()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1737
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api isGroupingUsed()Z
    .registers 2

    monitor-enter p0

    .line 1763
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingUsed()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1763
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api isParseBigDecimal()Z
    .registers 2

    monitor-enter p0

    .line 2028
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseToBigDecimal()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 2028
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api isParseCaseSensitive()Z
    .registers 2

    monitor-enter p0

    .line 2190
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseCaseSensitive()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 2190
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api isParseIntegerOnly()Z
    .registers 2

    monitor-enter p0

    .line 2098
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseIntegerOnly()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 2098
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api isParseNoExponent()Z
    .registers 2

    monitor-enter p0

    .line 2169
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseNoExponent()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 2169
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api isParseStrict()Z
    .registers 3

    monitor-enter p0

    .line 2067
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseMode()Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->STRICT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    .line 2067
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized whitelist test-api isScientificNotation()Z
    .registers 3

    monitor-enter p0

    .line 1683
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    monitor-exit p0

    return v0

    .line 1683
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized whitelist test-api isSignAlwaysShown()Z
    .registers 2

    monitor-enter p0

    .line 1045
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSignAlwaysShown()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1045
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    .line 805
    if-eqz p1, :cond_5c

    .line 808
    if-nez p2, :cond_b

    .line 809
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    move-object p2, v0

    .line 811
    :cond_b
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ltz v0, :cond_54

    .line 814
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1d

    .line 816
    return-object v2

    .line 819
    :cond_1d
    new-instance v0, Landroid/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v0}, Landroid/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 822
    .local v0, "result":Landroid/icu/impl/number/parse/ParsedNumber;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 823
    .local v1, "startIndex":I
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getParser()Landroid/icu/impl/number/parse/NumberParserImpl;

    move-result-object v3

    .line 824
    .local v3, "parser":Landroid/icu/impl/number/parse/NumberParserImpl;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v1, v4, v0}, Landroid/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;IZLandroid/icu/impl/number/parse/ParsedNumber;)V

    .line 825
    invoke-virtual {v0}, Landroid/icu/impl/number/parse/ParsedNumber;->success()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 826
    iget v2, v0, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 828
    invoke-virtual {v3}, Landroid/icu/impl/number/parse/NumberParserImpl;->getParseFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/number/parse/ParsedNumber;->getNumber(I)Ljava/lang/Number;

    move-result-object v2

    .line 830
    .local v2, "number":Ljava/lang/Number;
    instance-of v4, v2, Ljava/math/BigDecimal;

    if-eqz v4, :cond_4c

    .line 831
    move-object v4, v2

    check-cast v4, Ljava/math/BigDecimal;

    invoke-direct {p0, v4}, Landroid/icu/text/DecimalFormat;->safeConvertBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/Number;

    move-result-object v2

    .line 833
    :cond_4c
    return-object v2

    .line 835
    .end local v2    # "number":Ljava/lang/Number;
    :cond_4d
    iget v4, v0, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    add-int/2addr v4, v1

    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 836
    return-object v2

    .line 812
    .end local v0    # "result":Landroid/icu/impl/number/parse/ParsedNumber;
    .end local v1    # "startIndex":I
    .end local v3    # "parser":Landroid/icu/impl/number/parse/NumberParserImpl;
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot start parsing at a negative offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    .line 845
    if-eqz p1, :cond_6b

    .line 848
    if-nez p2, :cond_b

    .line 849
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    move-object p2, v0

    .line 851
    :cond_b
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ltz v0, :cond_63

    .line 854
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1d

    .line 856
    return-object v2

    .line 859
    :cond_1d
    new-instance v0, Landroid/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v0}, Landroid/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 860
    .local v0, "result":Landroid/icu/impl/number/parse/ParsedNumber;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 861
    .local v1, "startIndex":I
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getCurrencyParser()Landroid/icu/impl/number/parse/NumberParserImpl;

    move-result-object v3

    .line 862
    .local v3, "parser":Landroid/icu/impl/number/parse/NumberParserImpl;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;IZLandroid/icu/impl/number/parse/ParsedNumber;)V

    .line 863
    invoke-virtual {v0}, Landroid/icu/impl/number/parse/ParsedNumber;->success()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 864
    iget v2, v0, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 866
    invoke-virtual {v3}, Landroid/icu/impl/number/parse/NumberParserImpl;->getParseFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/number/parse/ParsedNumber;->getNumber(I)Ljava/lang/Number;

    move-result-object v2

    .line 868
    .local v2, "number":Ljava/lang/Number;
    instance-of v4, v2, Ljava/math/BigDecimal;

    if-eqz v4, :cond_50

    .line 869
    move-object v4, v2

    check-cast v4, Ljava/math/BigDecimal;

    invoke-direct {p0, v4}, Landroid/icu/text/DecimalFormat;->safeConvertBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/Number;

    move-result-object v2

    .line 871
    :cond_50
    iget-object v4, v0, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v4

    .line 872
    .local v4, "currency":Landroid/icu/util/Currency;
    new-instance v5, Landroid/icu/util/CurrencyAmount;

    invoke-direct {v5, v2, v4}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    return-object v5

    .line 874
    .end local v2    # "number":Ljava/lang/Number;
    .end local v4    # "currency":Landroid/icu/util/Currency;
    :cond_5c
    iget v4, v0, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    add-int/2addr v4, v1

    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 875
    return-object v2

    .line 852
    .end local v0    # "result":Landroid/icu/impl/number/parse/ParsedNumber;
    .end local v1    # "startIndex":I
    .end local v3    # "parser":Landroid/icu/impl/number/parse/NumberParserImpl;
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot start parsing at a negative offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o refreshFormatter()V
    .registers 5

    .line 2362
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    if-nez v0, :cond_5

    .line 2365
    return-void

    .line 2367
    :cond_5
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 2368
    .local v0, "locale":Landroid/icu/util/ULocale;
    if-nez v0, :cond_15

    .line 2370
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    sget-object v2, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 2372
    :cond_15
    if-nez v0, :cond_1d

    .line 2374
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 2376
    :cond_1d
    nop

    .line 2377
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {v1, v2, v3}, Landroid/icu/number/NumberFormatter;->fromDecimalFormat(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    .line 2380
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->parser:Landroid/icu/impl/number/parse/NumberParserImpl;

    .line 2381
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyParser:Landroid/icu/impl/number/parse/NumberParserImpl;

    .line 2382
    return-void
.end method

.method public declared-synchronized whitelist test-api setCurrency(Landroid/icu/util/Currency;)V
    .registers 3
    .param p1, "currency"    # Landroid/icu/util/Currency;

    monitor-enter p0

    .line 1951
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrency(Landroid/icu/util/Currency;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1952
    if-eqz p1, :cond_d

    .line 1953
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V

    .line 1955
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_d
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1956
    monitor-exit p0

    return-void

    .line 1950
    .end local p1    # "currency":Landroid/icu/util/Currency;
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public declared-synchronized whitelist test-api setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V
    .registers 3
    .param p1, "newInfo"    # Landroid/icu/text/CurrencyPluralInfo;

    monitor-enter p0

    .line 2018
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2019
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2020
    monitor-exit p0

    return-void

    .line 2017
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "newInfo":Landroid/icu/text/CurrencyPluralInfo;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V
    .registers 3
    .param p1, "usage"    # Landroid/icu/util/Currency$CurrencyUsage;

    monitor-enter p0

    .line 1994
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1995
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1996
    monitor-exit p0

    return-void

    .line 1993
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "usage":Landroid/icu/util/Currency$CurrencyUsage;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .registers 3
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    monitor-enter p0

    .line 901
    :try_start_1
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 902
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 903
    monitor-exit p0

    return-void

    .line 900
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "newSymbols":Landroid/icu/text/DecimalFormatSymbols;
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized whitelist test-api setDecimalPatternMatchRequired(Z)V
    .registers 3
    .param p1, "value"    # Z

    monitor-enter p0

    .line 2159
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setDecimalPatternMatchRequired(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2160
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2161
    monitor-exit p0

    return-void

    .line 2158
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "value":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setDecimalSeparatorAlwaysShown(Z)V
    .registers 3
    .param p1, "value"    # Z

    monitor-enter p0

    .line 1920
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setDecimalSeparatorAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1921
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1922
    monitor-exit p0

    return-void

    .line 1919
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "value":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setExponentSignAlwaysShown(Z)V
    .registers 3
    .param p1, "expSignAlways"    # Z

    monitor-enter p0

    .line 1752
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setExponentSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1753
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1754
    monitor-exit p0

    return-void

    .line 1751
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "expSignAlways":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setFormatWidth(I)V
    .registers 3
    .param p1, "width"    # I

    monitor-enter p0

    .line 1614
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setFormatWidth(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1615
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1616
    monitor-exit p0

    return-void

    .line 1613
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "width":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setGroupingSize(I)V
    .registers 3
    .param p1, "width"    # I

    monitor-enter p0

    .line 1811
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1812
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1813
    monitor-exit p0

    return-void

    .line 1810
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "width":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setGroupingUsed(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 1780
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingUsed(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1781
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1782
    monitor-exit p0

    return-void

    .line 1779
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "enabled":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMathContext(Ljava/math/MathContext;)V
    .registers 3
    .param p1, "mathContext"    # Ljava/math/MathContext;

    monitor-enter p0

    .line 1266
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMathContext(Ljava/math/MathContext;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1267
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1268
    monitor-exit p0

    return-void

    .line 1265
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "mathContext":Ljava/math/MathContext;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMathContextICU(Landroid/icu/math/MathContext;)V
    .registers 5
    .param p1, "mathContextICU"    # Landroid/icu/math/MathContext;

    monitor-enter p0

    .line 1298
    :try_start_1
    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getForm()I

    move-result v0

    iput v0, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 1300
    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getLostDigits()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1304
    new-instance v0, Ljava/math/MathContext;

    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getDigits()I

    move-result v1

    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .local v0, "mathContext":Ljava/math/MathContext;
    goto :goto_2a

    .line 1306
    .end local v0    # "mathContext":Ljava/math/MathContext;
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_19
    new-instance v0, Ljava/math/MathContext;

    .line 1308
    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getDigits()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getRoundingMode()I

    move-result v2

    invoke-static {v2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1310
    .restart local v0    # "mathContext":Ljava/math/MathContext;
    :goto_2a
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMathContext(Ljava/math/MathContext;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 1311
    monitor-exit p0

    return-void

    .line 1297
    .end local v0    # "mathContext":Ljava/math/MathContext;
    .end local p1    # "mathContextICU":Landroid/icu/math/MathContext;
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMaximumFractionDigits(I)V
    .registers 4
    .param p1, "value"    # I

    monitor-enter p0

    .line 1465
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v0

    .line 1466
    .local v0, "min":I
    if-ltz v0, :cond_10

    if-le v0, p1, :cond_10

    .line 1467
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1469
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_10
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1470
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1471
    monitor-exit p0

    return-void

    .line 1464
    .end local v0    # "min":I
    .end local p1    # "value":I
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMaximumIntegerDigits(I)V
    .registers 4
    .param p1, "value"    # I

    monitor-enter p0

    .line 1381
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v0

    .line 1382
    .local v0, "min":I
    if-ltz v0, :cond_10

    if-le v0, p1, :cond_10

    .line 1383
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1385
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_10
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1386
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1387
    monitor-exit p0

    return-void

    .line 1380
    .end local v0    # "min":I
    .end local p1    # "value":I
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMaximumSignificantDigits(I)V
    .registers 4
    .param p1, "value"    # I

    monitor-enter p0

    .line 1578
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0

    .line 1579
    .local v0, "min":I
    if-ltz v0, :cond_10

    if-le v0, p1, :cond_10

    .line 1580
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1582
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_10
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1583
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1584
    monitor-exit p0

    return-void

    .line 1577
    .end local v0    # "min":I
    .end local p1    # "value":I
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMinimumExponentDigits(B)V
    .registers 3
    .param p1, "minExpDig"    # B

    monitor-enter p0

    .line 1727
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1728
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1729
    monitor-exit p0

    return-void

    .line 1726
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "minExpDig":B
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMinimumFractionDigits(I)V
    .registers 4
    .param p1, "value"    # I

    monitor-enter p0

    .line 1425
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v0

    .line 1426
    .local v0, "max":I
    if-ltz v0, :cond_10

    if-ge v0, p1, :cond_10

    .line 1427
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1429
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_10
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1430
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1431
    monitor-exit p0

    return-void

    .line 1424
    .end local v0    # "max":I
    .end local p1    # "value":I
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMinimumGroupingDigits(I)V
    .registers 3
    .param p1, "number"    # I

    monitor-enter p0

    .line 1877
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumGroupingDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1878
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1879
    monitor-exit p0

    return-void

    .line 1876
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "number":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMinimumIntegerDigits(I)V
    .registers 4
    .param p1, "value"    # I

    monitor-enter p0

    .line 1344
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v0

    .line 1345
    .local v0, "max":I
    if-ltz v0, :cond_10

    if-ge v0, p1, :cond_10

    .line 1346
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1348
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_10
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1349
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1350
    monitor-exit p0

    return-void

    .line 1343
    .end local v0    # "max":I
    .end local p1    # "value":I
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMinimumSignificantDigits(I)V
    .registers 4
    .param p1, "value"    # I

    monitor-enter p0

    .line 1540
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v0

    .line 1541
    .local v0, "max":I
    if-ltz v0, :cond_10

    if-ge v0, p1, :cond_10

    .line 1542
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1544
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_10
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1545
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1546
    monitor-exit p0

    return-void

    .line 1539
    .end local v0    # "max":I
    .end local p1    # "value":I
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public declared-synchronized whitelist test-api setMultiplier(I)V
    .registers 7
    .param p1, "multiplier"    # I

    monitor-enter p0

    .line 1103
    if-eqz p1, :cond_38

    .line 1108
    const/4 v0, 0x0

    .line 1109
    .local v0, "delta":I
    move v1, p1

    .line 1110
    .local v1, "value":I
    :goto_5
    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    .line 1111
    add-int/lit8 v0, v0, 0x1

    .line 1112
    :try_start_a
    div-int/lit8 v2, v1, 0xa

    .line 1113
    .local v2, "temp":I
    mul-int/lit8 v3, v2, 0xa

    if-eq v3, v1, :cond_12

    .line 1114
    const/4 v0, -0x1

    .line 1115
    goto :goto_14

    .line 1117
    :cond_12
    move v1, v2

    .line 1118
    .end local v2    # "temp":I
    goto :goto_5

    .line 1119
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_14
    :goto_14
    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    .line 1120
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v2, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1121
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->setMultiplier(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_33

    .line 1123
    :cond_23
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1124
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->setMultiplier(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1126
    :goto_33
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_40

    .line 1127
    monitor-exit p0

    return-void

    .line 1104
    .end local v0    # "delta":I
    .end local v1    # "value":I
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multiplier must be nonzero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    .end local p1    # "multiplier":I
    :catchall_40
    move-exception p1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public declared-synchronized whitelist test-api setNegativePrefix(Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    monitor-enter p0

    .line 964
    if-eqz p1, :cond_f

    .line 967
    :try_start_3
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 968
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 969
    monitor-exit p0

    return-void

    .line 963
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "prefix":Ljava/lang/String;
    :catchall_d
    move-exception p1

    goto :goto_15

    .line 965
    .restart local p1    # "prefix":Ljava/lang/String;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 963
    .end local p1    # "prefix":Ljava/lang/String;
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist test-api setNegativeSuffix(Ljava/lang/String;)V
    .registers 3
    .param p1, "suffix"    # Ljava/lang/String;

    monitor-enter p0

    .line 1030
    if-eqz p1, :cond_f

    .line 1033
    :try_start_3
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1034
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 1035
    monitor-exit p0

    return-void

    .line 1029
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "suffix":Ljava/lang/String;
    :catchall_d
    move-exception p1

    goto :goto_15

    .line 1031
    .restart local p1    # "suffix":Ljava/lang/String;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1029
    .end local p1    # "suffix":Ljava/lang/String;
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist test-api setPadCharacter(C)V
    .registers 4
    .param p1, "padChar"    # C

    monitor-enter p0

    .line 1643
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1644
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1645
    monitor-exit p0

    return-void

    .line 1642
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "padChar":C
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized whitelist test-api setPadPosition(I)V
    .registers 4
    .param p1, "padPos"    # I

    monitor-enter p0

    .line 1673
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1}, Landroid/icu/impl/number/Padder$PadPosition;->fromOld(I)Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadPosition(Landroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1674
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1675
    monitor-exit p0

    return-void

    .line 1672
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "padPos":I
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized whitelist test-api setParseBigDecimal(Z)V
    .registers 3
    .param p1, "value"    # Z

    monitor-enter p0

    .line 2040
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseToBigDecimal(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2041
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2042
    monitor-exit p0

    return-void

    .line 2039
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "value":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setParseCaseSensitive(Z)V
    .registers 3
    .param p1, "value"    # Z

    monitor-enter p0

    .line 2202
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseCaseSensitive(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2203
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2204
    monitor-exit p0

    return-void

    .line 2201
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "value":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setParseIntegerOnly(Z)V
    .registers 3
    .param p1, "parseIntegerOnly"    # Z

    monitor-enter p0

    .line 2112
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseIntegerOnly(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2113
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2114
    monitor-exit p0

    return-void

    .line 2111
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "parseIntegerOnly":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public whitelist test-api setParseMaxDigits(I)V
    .registers 2
    .param p1, "maxDigits"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2060
    return-void
.end method

.method public declared-synchronized whitelist test-api setParseNoExponent(Z)V
    .registers 3
    .param p1, "value"    # Z

    monitor-enter p0

    .line 2180
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseNoExponent(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2181
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2182
    monitor-exit p0

    return-void

    .line 2179
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "value":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setParseStrict(Z)V
    .registers 4
    .param p1, "parseStrict"    # Z

    monitor-enter p0

    .line 2075
    if-eqz p1, :cond_6

    :try_start_3
    sget-object v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->STRICT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    goto :goto_8

    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_6
    sget-object v0, Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 2076
    .local v0, "mode":Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    :goto_8
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseMode(Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2077
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 2078
    monitor-exit p0

    return-void

    .line 2074
    .end local v0    # "mode":Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    .end local p1    # "parseStrict":Z
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public declared-synchronized blacklist setParseStrictMode(Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;)V
    .registers 3
    .param p1, "parseMode"    # Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2087
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseMode(Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2088
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2089
    monitor-exit p0

    return-void

    .line 2086
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "parseMode":Landroid/icu/impl/number/DecimalFormatProperties$ParseMode;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setPositivePrefix(Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    monitor-enter p0

    .line 931
    if-eqz p1, :cond_f

    .line 934
    :try_start_3
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 935
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 936
    monitor-exit p0

    return-void

    .line 930
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "prefix":Ljava/lang/String;
    :catchall_d
    move-exception p1

    goto :goto_15

    .line 932
    .restart local p1    # "prefix":Ljava/lang/String;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 930
    .end local p1    # "prefix":Ljava/lang/String;
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist test-api setPositiveSuffix(Ljava/lang/String;)V
    .registers 3
    .param p1, "suffix"    # Ljava/lang/String;

    monitor-enter p0

    .line 997
    if-eqz p1, :cond_f

    .line 1000
    :try_start_3
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1001
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 1002
    monitor-exit p0

    return-void

    .line 996
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "suffix":Ljava/lang/String;
    :catchall_d
    move-exception p1

    goto :goto_15

    .line 998
    .restart local p1    # "suffix":Ljava/lang/String;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 996
    .end local p1    # "suffix":Ljava/lang/String;
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_d

    throw p1
.end method

.method public declared-synchronized greylist-max-o setProperties(Landroid/icu/text/DecimalFormat$PropertySetter;)V
    .registers 3
    .param p1, "func"    # Landroid/icu/text/DecimalFormat$PropertySetter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2458
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-interface {p1, v0}, Landroid/icu/text/DecimalFormat$PropertySetter;->set(Landroid/icu/impl/number/DecimalFormatProperties;)V

    .line 2459
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2460
    monitor-exit p0

    return-void

    .line 2457
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "func":Landroid/icu/text/DecimalFormat$PropertySetter;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method greylist-max-o setPropertiesFromPattern(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ignoreRounding"    # I

    .line 2433
    if-eqz p1, :cond_8

    .line 2436
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1, v0, p2}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V

    .line 2437
    return-void

    .line 2434
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public declared-synchronized whitelist test-api setRoundingIncrement(D)V
    .registers 5
    .param p1, "increment"    # D

    monitor-enter p0

    .line 1189
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_f

    .line 1190
    const/4 v0, 0x0

    :try_start_8
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V

    goto :goto_1a

    .line 1194
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_f
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1195
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1196
    .local v0, "javaBigDecimal":Ljava/math/BigDecimal;
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1c

    .line 1198
    .end local v0    # "javaBigDecimal":Ljava/math/BigDecimal;
    :goto_1a
    monitor-exit p0

    return-void

    .line 1188
    .end local p1    # "increment":D
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public declared-synchronized whitelist test-api setRoundingIncrement(Landroid/icu/math/BigDecimal;)V
    .registers 3
    .param p1, "increment"    # Landroid/icu/math/BigDecimal;

    monitor-enter p0

    .line 1177
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_9

    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1178
    .local v0, "javaBigDecimal":Ljava/math/BigDecimal;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    .line 1179
    monitor-exit p0

    return-void

    .line 1176
    .end local v0    # "javaBigDecimal":Ljava/math/BigDecimal;
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "increment":Landroid/icu/math/BigDecimal;
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized whitelist test-api setRoundingIncrement(Ljava/math/BigDecimal;)V
    .registers 4
    .param p1, "increment"    # Ljava/math/BigDecimal;

    monitor-enter p0

    .line 1160
    if-eqz p1, :cond_15

    :try_start_3
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1161
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1f

    .line 1162
    monitor-exit p0

    return-void

    .line 1165
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1166
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1f

    .line 1167
    monitor-exit p0

    return-void

    .line 1159
    .end local p1    # "increment":Ljava/math/BigDecimal;
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public declared-synchronized whitelist test-api setRoundingMode(I)V
    .registers 4
    .param p1, "roundingMode"    # I

    monitor-enter p0

    .line 1233
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingMode(Ljava/math/RoundingMode;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1234
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1235
    monitor-exit p0

    return-void

    .line 1232
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "roundingMode":I
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized whitelist test-api setScientificNotation(Z)V
    .registers 4
    .param p1, "useScientific"    # Z

    monitor-enter p0

    .line 1699
    if-eqz p1, :cond_a

    .line 1700
    :try_start_3
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_10

    .line 1702
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_a
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1704
    :goto_10
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 1705
    monitor-exit p0

    return-void

    .line 1698
    .end local p1    # "useScientific":Z
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public declared-synchronized whitelist test-api setSecondaryGroupingSize(I)V
    .registers 3
    .param p1, "width"    # I

    monitor-enter p0

    .line 1843
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1844
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1845
    monitor-exit p0

    return-void

    .line 1842
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "width":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setSignAlwaysShown(Z)V
    .registers 3
    .param p1, "value"    # Z

    monitor-enter p0

    .line 1071
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1072
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1073
    monitor-exit p0

    return-void

    .line 1070
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "value":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api setSignificantDigitsUsed(Z)V
    .registers 7
    .param p1, "useSignificantDigits"    # Z

    monitor-enter p0

    .line 1497
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0

    .line 1498
    .local v0, "oldMinSig":I
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_33

    .line 1500
    .local v1, "oldMaxSig":I
    const/4 v2, -0x1

    if-eqz p1, :cond_16

    .line 1501
    if-ne v0, v2, :cond_14

    if-eq v1, v2, :cond_1c

    .line 1502
    :cond_14
    monitor-exit p0

    return-void

    .line 1505
    :cond_16
    if-ne v0, v2, :cond_1c

    if-ne v1, v2, :cond_1c

    .line 1506
    monitor-exit p0

    return-void

    .line 1509
    :cond_1c
    if-eqz p1, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    move v3, v2

    .line 1510
    .local v3, "minSig":I
    :goto_21
    if-eqz p1, :cond_24

    const/4 v2, 0x6

    .line 1511
    .local v2, "maxSig":I
    :cond_24
    :try_start_24
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v4, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1512
    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v4, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1513
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_33

    .line 1514
    monitor-exit p0

    return-void

    .line 1496
    .end local v0    # "oldMinSig":I
    .end local v1    # "oldMaxSig":I
    .end local v2    # "maxSig":I
    .end local v3    # "minSig":I
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    .end local p1    # "useSignificantDigits":Z
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public declared-synchronized whitelist test-api toLocalizedPattern()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2334
    :try_start_1
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 2335
    .local v0, "pattern":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/icu/impl/number/PatternStringUtils;->convertLocalized(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v1

    .line 2333
    .end local v0    # "pattern":Ljava/lang/String;
    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public greylist-max-o toNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;
    .registers 2

    .line 2348
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api toPattern()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 2309
    :try_start_1
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    .line 2310
    .local v0, "tprops":Landroid/icu/impl/number/DecimalFormatProperties;
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 2311
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 2312
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 2313
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyAsDecimal()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2314
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2315
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2316
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2317
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v1, 0x0

    goto :goto_50

    .end local p0    # "this":Landroid/icu/text/DecimalFormat;
    :cond_4f
    :goto_4f
    const/4 v1, 0x1

    .line 2318
    .local v1, "useCurrency":Z
    :goto_50
    if-eqz v1, :cond_6d

    .line 2319
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v2}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2320
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v2}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2321
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v2}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2323
    :cond_6d
    invoke-static {v0}, Landroid/icu/impl/number/PatternStringUtils;->propertiesToPatternString(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/lang/String;

    move-result-object v2
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_73

    monitor-exit p0

    return-object v2

    .line 2308
    .end local v0    # "tprops":Landroid/icu/impl/number/DecimalFormatProperties;
    .end local v1    # "useCurrency":Z
    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2279
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    const-string v1, " { symbols@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2283
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    monitor-enter p0

    .line 2285
    :try_start_33
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->toStringBare(Ljava/lang/StringBuilder;)V

    .line 2286
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_43

    .line 2287
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2286
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method
