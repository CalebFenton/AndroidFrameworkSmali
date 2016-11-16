.class final Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RelDateTimeFmtDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues:[I


# instance fields
.field pastFutureIndex:I

.field qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field relativeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;

.field relativeTimeDetailSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;

.field relativeTimeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;

.field sb:Ljava/lang/StringBuilder;

.field style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field styleRelUnitPatterns:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private ulocale:Landroid/icu/util/ULocale;

.field unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field unitSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;


# direct methods
.method static synthetic -get0(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)Landroid/icu/util/ULocale;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->ulocale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method private static synthetic -getandroid-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->-android-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->-android-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x3

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x1

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->-android-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 722
    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    #@3
    .line 714
    new-instance v0, Ljava/util/EnumMap;

    #@5
    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@7
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@a
    .line 713
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    #@c
    .line 716
    new-instance v0, Ljava/util/EnumMap;

    #@e
    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@10
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@13
    .line 715
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    #@15
    .line 718
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->ulocale:Landroid/icu/util/ULocale;

    #@18
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->sb:Ljava/lang/StringBuilder;

    #@1f
    .line 831
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;

    #@21
    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V

    #@24
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeTimeDetailSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;

    #@26
    .line 850
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;

    #@28
    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V

    #@2b
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeTimeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;

    #@2d
    .line 897
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;

    #@2f
    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V

    #@32
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;

    #@34
    .line 941
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;

    #@36
    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V

    #@39
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unitSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;

    #@3b
    .line 723
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->ulocale:Landroid/icu/util/ULocale;

    #@3d
    .line 722
    return-void
.end method

.method private styleFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 2
    .param p1, "value"    # Landroid/icu/impl/UResource$Value;

    #@0
    .prologue
    .line 742
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 743
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "-short"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 744
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@f
    return-object v1

    #@10
    .line 745
    :cond_0
    const-string/jumbo v1, "-narrow"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 746
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@1b
    return-object v1

    #@1c
    .line 748
    :cond_1
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@1e
    return-object v1
.end method

.method private styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 732
    const-string/jumbo v0, "-short"

    #@3
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 733
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@b
    return-object v0

    #@c
    .line 734
    :cond_0
    const-string/jumbo v0, "-narrow"

    #@f
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 735
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@17
    return-object v0

    #@18
    .line 737
    :cond_1
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@1a
    return-object v0
.end method

.method private static styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I
    .locals 2
    .param p0, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@0
    .prologue
    .line 753
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->-getandroid-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 756
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 754
    :pswitch_0
    const/4 v0, 0x6

    #@10
    return v0

    #@11
    .line 755
    :pswitch_1
    const/4 v0, 0x7

    #@12
    return v0

    #@13
    .line 753
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 5
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "initialSize"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 789
    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@4
    move-result-object v2

    #@5
    iput-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@7
    .line 790
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    #@a
    move-result v2

    #@b
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@d
    invoke-static {v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I

    #@10
    move-result v3

    #@11
    sub-int v0, v2, v3

    #@13
    .line 791
    .local v0, "limit":I
    const/4 v2, 0x0

    #@14
    invoke-virtual {p1, v2, v0}, Landroid/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 794
    .local v1, "unitString":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->-wrap0(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@1b
    move-result-object v2

    #@1c
    iput-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@1e
    .line 795
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@20
    if-nez v2, :cond_0

    #@22
    .line 796
    return-object v4

    #@23
    .line 798
    :cond_0
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unitSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;

    #@25
    return-object v2
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 7
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    #@0
    .prologue
    .line 763
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    #@3
    move-result v4

    #@4
    const/4 v5, 0x3

    #@5
    if-eq v4, v5, :cond_0

    #@7
    return-void

    #@8
    .line 765
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@b
    move-result-object v1

    #@c
    .line 766
    .local v1, "sourceStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    #@f
    move-result v4

    #@10
    invoke-static {v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I

    #@13
    move-result v5

    #@14
    sub-int v0, v4, v5

    #@16
    .line 767
    .local v0, "limit":I
    const/4 v4, 0x0

    #@17
    invoke-virtual {p1, v4, v0}, Landroid/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-static {v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->-wrap0(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@1e
    move-result-object v3

    #@1f
    .line 768
    .local v3, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
    if-eqz v3, :cond_2

    #@21
    .line 771
    invoke-direct {p0, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@24
    move-result-object v2

    #@25
    .line 772
    .local v2, "targetStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    if-ne v1, v2, :cond_1

    #@27
    .line 773
    new-instance v4, Landroid/icu/util/ICUException;

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "Invalid style fallback from "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    const-string/jumbo v6, " to itself"

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-direct {v4, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@47
    throw v4

    #@48
    .line 777
    :cond_1
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@4f
    move-result v5

    #@50
    aget-object v4, v4, v5

    #@52
    if-nez v4, :cond_3

    #@54
    .line 778
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@5b
    move-result v5

    #@5c
    aput-object v2, v4, v5

    #@5e
    .line 761
    .end local v2    # "targetStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_2
    return-void

    #@5f
    .line 779
    .restart local v2    # "targetStyle":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_3
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@66
    move-result v5

    #@67
    aget-object v4, v4, v5

    #@69
    if-eq v4, v2, :cond_2

    #@6b
    .line 780
    new-instance v4, Landroid/icu/util/ICUException;

    #@6d
    .line 781
    new-instance v5, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v6, "Inconsistent style fallback for style "

    #@75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    const-string/jumbo v6, " to "

    #@80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    .line 780
    invoke-direct {v4, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v4
.end method
