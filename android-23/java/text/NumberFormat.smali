.class public abstract Ljava/text/NumberFormat;
.super Ljava/text/Format;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/NumberFormat$Field;
    }
.end annotation


# static fields
.field public static final FRACTION_FIELD:I = 0x1

.field public static final INTEGER_FIELD:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x20094c40ec82f818L


# instance fields
.field private groupingUsed:Z

.field maximumFractionDigits:I

.field maximumIntegerDigits:I

.field minimumFractionDigits:I

.field minimumIntegerDigits:I

.field private parseIntegerOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 702
    const/16 v0, 0xb

    #@2
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@4
    .line 703
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6
    const-string/jumbo v2, "groupingUsed"

    #@9
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@b
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 704
    new-instance v1, Ljava/io/ObjectStreamField;

    #@13
    const-string/jumbo v2, "maxFractionDigits"

    #@16
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@18
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 705
    new-instance v1, Ljava/io/ObjectStreamField;

    #@20
    const-string/jumbo v2, "maximumFractionDigits"

    #@23
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@25
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@28
    const/4 v2, 0x2

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 706
    new-instance v1, Ljava/io/ObjectStreamField;

    #@2d
    const-string/jumbo v2, "maximumIntegerDigits"

    #@30
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@32
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@35
    const/4 v2, 0x3

    #@36
    aput-object v1, v0, v2

    #@38
    .line 707
    new-instance v1, Ljava/io/ObjectStreamField;

    #@3a
    const-string/jumbo v2, "maxIntegerDigits"

    #@3d
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@3f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@42
    const/4 v2, 0x4

    #@43
    aput-object v1, v0, v2

    #@45
    .line 708
    new-instance v1, Ljava/io/ObjectStreamField;

    #@47
    const-string/jumbo v2, "minFractionDigits"

    #@4a
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@4c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@4f
    const/4 v2, 0x5

    #@50
    aput-object v1, v0, v2

    #@52
    .line 709
    new-instance v1, Ljava/io/ObjectStreamField;

    #@54
    const-string/jumbo v2, "minimumFractionDigits"

    #@57
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@59
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@5c
    const/4 v2, 0x6

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 710
    new-instance v1, Ljava/io/ObjectStreamField;

    #@61
    const-string/jumbo v2, "minimumIntegerDigits"

    #@64
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@66
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@69
    const/4 v2, 0x7

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 711
    new-instance v1, Ljava/io/ObjectStreamField;

    #@6e
    const-string/jumbo v2, "minIntegerDigits"

    #@71
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@73
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@76
    const/16 v2, 0x8

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 712
    new-instance v1, Ljava/io/ObjectStreamField;

    #@7c
    const-string/jumbo v2, "parseIntegerOnly"

    #@7f
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@81
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@84
    const/16 v2, 0x9

    #@86
    aput-object v1, v0, v2

    #@88
    .line 713
    new-instance v1, Ljava/io/ObjectStreamField;

    #@8a
    const-string/jumbo v2, "serialVersionOnStream"

    #@8d
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@8f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@92
    const/16 v2, 0xa

    #@94
    aput-object v1, v0, v2

    #@96
    .line 702
    sput-object v0, Ljava/text/NumberFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@98
    .line 142
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 166
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    #@5
    .line 156
    iput-boolean v2, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@7
    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@9
    .line 158
    const/16 v0, 0x28

    #@b
    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@d
    .line 159
    iput v2, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@f
    .line 160
    const/4 v0, 0x3

    #@10
    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@12
    .line 161
    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@14
    .line 166
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 317
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getCurrencyInstance()Ljava/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 344
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 356
    if-nez p0, :cond_0

    #@2
    .line 357
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "locale == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 360
    :cond_0
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@e
    move-result-object v0

    #@f
    iget-object v0, v0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    #@11
    invoke-static {v0, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static final getInstance()Ljava/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 399
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 415
    new-instance v0, Ljava/text/DecimalFormat;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 411
    invoke-static {p0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getIntegerInstance()Ljava/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 371
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 383
    if-nez p0, :cond_0

    #@2
    .line 384
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "locale == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 387
    :cond_0
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@e
    move-result-object v1

    #@f
    iget-object v1, v1, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    #@11
    invoke-static {v1, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@14
    move-result-object v0

    #@15
    .line 388
    .local v0, "result":Ljava/text/NumberFormat;
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    #@19
    .line 389
    return-object v0
.end method

.method public static final getNumberInstance()Ljava/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 468
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 480
    if-nez p0, :cond_0

    #@2
    .line 481
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "locale == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 483
    :cond_0
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@e
    move-result-object v0

    #@f
    iget-object v0, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    #@11
    invoke-static {v0, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static final getPercentInstance()Ljava/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 501
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 518
    if-nez p0, :cond_0

    #@2
    .line 519
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "locale == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 522
    :cond_0
    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@e
    move-result-object v0

    #@f
    iget-object v0, v0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    #@11
    invoke-static {v0, p0}, Ljava/text/NumberFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x28

    #@2
    const/4 v4, 0x3

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 741
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@8
    move-result-object v0

    #@9
    .line 742
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "groupingUsed"

    #@c
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@f
    move-result v1

    #@10
    iput-boolean v1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@12
    .line 743
    const-string/jumbo v1, "parseIntegerOnly"

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@18
    move-result v1

    #@19
    iput-boolean v1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@1b
    .line 744
    const-string/jumbo v1, "serialVersionOnStream"

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_1

    #@24
    .line 745
    const-string/jumbo v1, "maxFractionDigits"

    #@27
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@2d
    .line 746
    const-string/jumbo v1, "maxIntegerDigits"

    #@30
    invoke-virtual {v0, v1, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    #@33
    move-result v1

    #@34
    iput v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@36
    .line 747
    const-string/jumbo v1, "minFractionDigits"

    #@39
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    #@3c
    move-result v1

    #@3d
    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@3f
    .line 748
    const-string/jumbo v1, "minIntegerDigits"

    #@42
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    #@45
    move-result v1

    #@46
    iput v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@48
    .line 755
    :goto_0
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@4a
    iget v2, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@4c
    if-gt v1, v2, :cond_0

    #@4e
    .line 756
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@50
    iget v2, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@52
    if-le v1, v2, :cond_2

    #@54
    .line 757
    :cond_0
    new-instance v1, Ljava/io/InvalidObjectException;

    #@56
    const-string/jumbo v2, "min digits greater than max digits"

    #@59
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v1

    #@5d
    .line 750
    :cond_1
    const-string/jumbo v1, "maximumFractionDigits"

    #@60
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@63
    move-result v1

    #@64
    iput v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@66
    .line 751
    const-string/jumbo v1, "maximumIntegerDigits"

    #@69
    invoke-virtual {v0, v1, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@6c
    move-result v1

    #@6d
    iput v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@6f
    .line 752
    const-string/jumbo v1, "minimumFractionDigits"

    #@72
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@75
    move-result v1

    #@76
    iput v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@78
    .line 753
    const-string/jumbo v1, "minimumIntegerDigits"

    #@7b
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@7e
    move-result v1

    #@7f
    iput v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@81
    goto :goto_0

    #@82
    .line 759
    :cond_2
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@84
    if-ltz v1, :cond_3

    #@86
    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@88
    if-gez v1, :cond_4

    #@8a
    .line 761
    :cond_3
    new-instance v1, Ljava/io/InvalidObjectException;

    #@8c
    const-string/jumbo v2, "min or max digits negative"

    #@8f
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@92
    throw v1

    #@93
    .line 760
    :cond_4
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@95
    if-ltz v1, :cond_3

    #@97
    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@99
    if-ltz v1, :cond_3

    #@9b
    .line 740
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x7f

    #@2
    .line 717
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@5
    move-result-object v0

    #@6
    .line 718
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "groupingUsed"

    #@9
    iget-boolean v3, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@b
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@e
    .line 719
    const-string/jumbo v3, "maxFractionDigits"

    #@11
    .line 720
    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@13
    if-ge v1, v2, :cond_1

    #@15
    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@17
    int-to-byte v1, v1

    #@18
    .line 719
    :goto_0
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    #@1b
    .line 722
    const-string/jumbo v1, "maximumFractionDigits"

    #@1e
    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@20
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@23
    .line 723
    const-string/jumbo v1, "maximumIntegerDigits"

    #@26
    iget v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@28
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@2b
    .line 724
    const-string/jumbo v3, "maxIntegerDigits"

    #@2e
    .line 725
    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@30
    if-ge v1, v2, :cond_2

    #@32
    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@34
    int-to-byte v1, v1

    #@35
    .line 724
    :goto_1
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    #@38
    .line 727
    const-string/jumbo v3, "minFractionDigits"

    #@3b
    .line 728
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@3d
    if-ge v1, v2, :cond_3

    #@3f
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@41
    int-to-byte v1, v1

    #@42
    .line 727
    :goto_2
    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    #@45
    .line 730
    const-string/jumbo v1, "minimumFractionDigits"

    #@48
    iget v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@4a
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@4d
    .line 731
    const-string/jumbo v1, "minimumIntegerDigits"

    #@50
    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@52
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@55
    .line 732
    const-string/jumbo v1, "minIntegerDigits"

    #@58
    .line 733
    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@5a
    if-ge v3, v2, :cond_0

    #@5c
    iget v2, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@5e
    int-to-byte v2, v2

    #@5f
    .line 732
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    #@62
    .line 734
    const-string/jumbo v1, "parseIntegerOnly"

    #@65
    iget-boolean v2, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@67
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@6a
    .line 735
    const-string/jumbo v1, "serialVersionOnStream"

    #@6d
    const/4 v2, 0x1

    #@6e
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@71
    .line 736
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@74
    .line 716
    return-void

    #@75
    :cond_1
    move v1, v2

    #@76
    .line 721
    goto :goto_0

    #@77
    :cond_2
    move v1, v2

    #@78
    .line 726
    goto :goto_1

    #@79
    :cond_3
    move v1, v2

    #@7a
    .line 729
    goto :goto_2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 174
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 190
    if-ne p1, p0, :cond_0

    #@4
    .line 191
    return v1

    #@5
    .line 193
    :cond_0
    instance-of v3, p1, Ljava/text/NumberFormat;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 194
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 196
    check-cast v0, Ljava/text/NumberFormat;

    #@d
    .line 197
    .local v0, "obj":Ljava/text/NumberFormat;
    iget-boolean v3, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@f
    iget-boolean v4, v0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 198
    iget-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@15
    iget-boolean v4, v0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 199
    iget v3, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@1b
    iget v4, v0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 200
    iget v3, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@21
    iget v4, v0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@23
    if-ne v3, v4, :cond_3

    #@25
    .line 201
    iget v3, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@27
    iget v4, v0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@29
    if-ne v3, v4, :cond_3

    #@2b
    .line 202
    iget v3, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@2d
    iget v4, v0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@2f
    if-ne v3, v4, :cond_2

    #@31
    .line 197
    :goto_0
    return v1

    #@32
    :cond_2
    move v1, v2

    #@33
    .line 202
    goto :goto_0

    #@34
    :cond_3
    move v1, v2

    #@35
    .line 197
    goto :goto_0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 295
    instance-of v4, p1, Ljava/lang/Byte;

    #@2
    if-nez v4, :cond_0

    #@4
    instance-of v4, p1, Ljava/lang/Short;

    #@6
    if-nez v4, :cond_0

    #@8
    instance-of v4, p1, Ljava/lang/Integer;

    #@a
    if-nez v4, :cond_0

    #@c
    .line 296
    instance-of v4, p1, Ljava/lang/Long;

    #@e
    .line 295
    if-nez v4, :cond_0

    #@10
    .line 297
    instance-of v4, p1, Ljava/math/BigInteger;

    #@12
    if-eqz v4, :cond_1

    #@14
    move-object v4, p1

    #@15
    check-cast v4, Ljava/math/BigInteger;

    #@17
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    #@1a
    move-result v4

    #@1b
    const/16 v5, 0x40

    #@1d
    if-ge v4, v5, :cond_1

    #@1f
    .line 298
    :cond_0
    check-cast p1, Ljava/lang/Number;

    #@21
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@24
    move-result-wide v2

    #@25
    .line 299
    .local v2, "lv":J
    invoke-virtual {p0, v2, v3, p2, p3}, Ljava/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@28
    move-result-object v4

    #@29
    return-object v4

    #@2a
    .line 300
    .end local v2    # "lv":J
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/lang/Number;

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 301
    check-cast p1, Ljava/lang/Number;

    #@30
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@33
    move-result-wide v0

    #@34
    .line 302
    .local v0, "dv":D
    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@37
    move-result-object v4

    #@38
    return-object v4

    #@39
    .line 304
    .end local v0    # "dv":D
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    if-nez p1, :cond_3

    #@3b
    .line 305
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@3d
    const-string/jumbo v5, "Can\'t format null object"

    #@40
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v4

    #@44
    .line 307
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@46
    new-instance v5, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v6, "Bad class: "

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v4
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    #@0
    .prologue
    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 426
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@2
    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 437
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@2
    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    #@0
    .prologue
    .line 447
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@2
    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    #@0
    .prologue
    .line 457
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@2
    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    #@0
    .prologue
    .line 845
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x4d5

    #@2
    const/16 v1, 0x4cf

    #@4
    .line 527
    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    move v0, v1

    #@9
    :goto_0
    iget-boolean v3, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@b
    if-eqz v3, :cond_1

    #@d
    :goto_1
    add-int/2addr v0, v1

    #@e
    .line 528
    iget v1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@10
    .line 527
    add-int/2addr v0, v1

    #@11
    .line 528
    iget v1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@13
    .line 527
    add-int/2addr v0, v1

    #@14
    .line 529
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@16
    .line 527
    add-int/2addr v0, v1

    #@17
    .line 529
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@19
    .line 527
    add-int/2addr v0, v1

    #@1a
    return v0

    #@1b
    :cond_0
    move v0, v2

    #@1c
    goto :goto_0

    #@1d
    :cond_1
    move v1, v2

    #@1e
    goto :goto_1
.end method

.method public isGroupingUsed()Z
    .locals 1

    #@0
    .prologue
    .line 540
    iget-boolean v0, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@2
    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    #@0
    .prologue
    .line 548
    iget-boolean v0, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@2
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 562
    new-instance v1, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 563
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@9
    move-result-object v0

    #@a
    .line 564
    .local v0, "number":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 565
    new-instance v2, Ljava/text/ParseException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Unparseable number: \""

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, "\""

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@30
    move-result v4

    #@31
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@34
    throw v2

    #@35
    .line 567
    :cond_0
    return-object v0
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 592
    if-nez p2, :cond_0

    #@3
    .line 593
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "position == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 596
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 597
    :catch_0
    move-exception v0

    #@12
    .line 598
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 1
    .param p1, "currency"    # Ljava/util/Currency;

    #@0
    .prologue
    .line 615
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setGroupingUsed(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 627
    iput-boolean p1, p0, Ljava/text/NumberFormat;->groupingUsed:Z

    #@2
    .line 626
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 639
    if-gez p1, :cond_0

    #@3
    move p1, v0

    #@4
    .end local p1    # "value":I
    :cond_0
    iput p1, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@6
    .line 640
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@8
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 641
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@e
    iput v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@10
    .line 638
    :cond_1
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 654
    if-gez p1, :cond_0

    #@3
    move p1, v0

    #@4
    .end local p1    # "value":I
    :cond_0
    iput p1, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@6
    .line 655
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@8
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 656
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@e
    iput v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@10
    .line 653
    :cond_1
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 668
    if-gez p1, :cond_0

    #@3
    move p1, v0

    #@4
    .end local p1    # "value":I
    :cond_0
    iput p1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@6
    .line 669
    iget v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@8
    iget v1, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 670
    iget v0, p0, Ljava/text/NumberFormat;->minimumFractionDigits:I

    #@e
    iput v0, p0, Ljava/text/NumberFormat;->maximumFractionDigits:I

    #@10
    .line 667
    :cond_1
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 682
    if-gez p1, :cond_0

    #@3
    move p1, v0

    #@4
    .end local p1    # "value":I
    :cond_0
    iput p1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@6
    .line 683
    iget v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@8
    iget v1, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 684
    iget v0, p0, Ljava/text/NumberFormat;->minimumIntegerDigits:I

    #@e
    iput v0, p0, Ljava/text/NumberFormat;->maximumIntegerDigits:I

    #@10
    .line 681
    :cond_1
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 699
    iput-boolean p1, p0, Ljava/text/NumberFormat;->parseIntegerOnly:Z

    #@2
    .line 698
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 1
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 855
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
