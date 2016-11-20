.class final Landroid/icu/text/MeasureFormat$UnitDataSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnitDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;,
        Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;,
        Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;,
        Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;
    }
.end annotation


# instance fields
.field cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

.field compoundSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;

.field patternSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

.field sb:Ljava/lang/StringBuilder;

.field subtypeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;

.field type:Ljava/lang/String;

.field typeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;

.field unit:Landroid/icu/util/MeasureUnit;

.field width:Landroid/icu/text/MeasureFormat$FormatWidth;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V
    .locals 1
    .param p1, "outputData"    # Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@0
    .prologue
    .line 821
    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    #@3
    .line 764
    new-instance v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

    #@5
    invoke-direct {v0, p0}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;-><init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V

    #@8
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patternSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

    #@a
    .line 780
    new-instance v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;

    #@c
    invoke-direct {v0, p0}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;-><init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V

    #@f
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->subtypeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;

    #@11
    .line 796
    new-instance v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;

    #@13
    invoke-direct {v0, p0}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;-><init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V

    #@16
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->compoundSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;

    #@18
    .line 819
    new-instance v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;

    #@1a
    invoke-direct {v0, p0}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;-><init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V

    #@1d
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->typeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;

    #@1f
    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    #@26
    .line 822
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@28
    .line 821
    return-void
.end method

.method static widthFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 3
    .param p0, "value"    # Landroid/icu/impl/UResource$Value;

    #@0
    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 872
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "/LOCALE/units"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 873
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    const/16 v2, 0xd

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 874
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@17
    return-object v1

    #@18
    .line 875
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1b
    move-result v1

    #@1c
    const/16 v2, 0x12

    #@1e
    if-ne v1, v2, :cond_1

    #@20
    const-string/jumbo v1, "Short"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 876
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2b
    return-object v1

    #@2c
    .line 877
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2f
    move-result v1

    #@30
    const/16 v2, 0x13

    #@32
    if-ne v1, v2, :cond_2

    #@34
    const-string/jumbo v1, "Narrow"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_2

    #@3d
    .line 878
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@3f
    return-object v1

    #@40
    .line 881
    :cond_2
    const/4 v1, 0x0

    #@41
    return-object v1
.end method

.method static widthFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 2
    .param p0, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 857
    const-string/jumbo v0, "units"

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 858
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->length()I

    #@d
    move-result v0

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 859
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@12
    return-object v0

    #@13
    .line 860
    :cond_0
    const-string/jumbo v0, "Short"

    #@16
    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 861
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@1e
    return-object v0

    #@1f
    .line 862
    :cond_1
    const-string/jumbo v0, "Narrow"

    #@22
    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 863
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2a
    return-object v0

    #@2b
    .line 866
    :cond_2
    const/4 v0, 0x0

    #@2c
    return-object v0
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 2
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "initialSize"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 850
    invoke-static {p1}, Landroid/icu/text/MeasureFormat$UnitDataSink;->widthFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/MeasureFormat$FormatWidth;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 851
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->typeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;

    #@b
    return-object v0

    #@c
    .line 853
    :cond_0
    return-object v1
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 5
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    #@0
    .prologue
    .line 829
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x3

    #@5
    if-eq v2, v3, :cond_0

    #@7
    return-void

    #@8
    .line 830
    :cond_0
    invoke-static {p1}, Landroid/icu/text/MeasureFormat$UnitDataSink;->widthFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/MeasureFormat$FormatWidth;

    #@b
    move-result-object v0

    #@c
    .line 831
    .local v0, "sourceWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    if-nez v0, :cond_1

    #@e
    .line 833
    return-void

    #@f
    .line 835
    :cond_1
    invoke-static {p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->widthFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/MeasureFormat$FormatWidth;

    #@12
    move-result-object v1

    #@13
    .line 836
    .local v1, "targetWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    if-nez v1, :cond_2

    #@15
    .line 838
    new-instance v2, Landroid/icu/util/ICUException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Units data fallback from "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 839
    const-string/jumbo v4, " to unknown "

    #@2a
    .line 838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 839
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 842
    :cond_2
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@40
    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@42
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@45
    move-result v3

    #@46
    aget-object v2, v2, v3

    #@48
    if-eqz v2, :cond_3

    #@4a
    .line 843
    new-instance v2, Landroid/icu/util/ICUException;

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v4, "Units data fallback from "

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    .line 844
    const-string/jumbo v4, " to "

    #@5f
    .line 843
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    .line 844
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    .line 843
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    .line 844
    const-string/jumbo v4, " which falls back to something else"

    #@6e
    .line 843
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@79
    throw v2

    #@7a
    .line 846
    :cond_3
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@7c
    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@7e
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@81
    move-result v3

    #@82
    aput-object v1, v2, v3

    #@84
    .line 825
    return-void
.end method
