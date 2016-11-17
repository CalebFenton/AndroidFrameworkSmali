.class Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat$UnitDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnitPatternSink"
.end annotation


# instance fields
.field patterns:[Ljava/lang/String;

.field final synthetic this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V
    .locals 0
    .param p1, "this$1"    # Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@0
    .prologue
    .line 722
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@2
    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 2
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 749
    const-string/jumbo v0, "dnam"

    #@4
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 748
    :goto_0
    return-void

    #@b
    .line 751
    :cond_0
    const-string/jumbo v0, "per"

    #@e
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 755
    sget v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    #@16
    invoke-virtual {p0, v0, p2, v1}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->setFormatterIfAbsent(ILandroid/icu/impl/UResource$Value;I)V

    #@19
    goto :goto_0

    #@1a
    .line 760
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    #@1d
    move-result v0

    #@1e
    invoke-virtual {p0, v0, p2, v1}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->setFormatterIfAbsent(ILandroid/icu/impl/UResource$Value;I)V

    #@21
    goto :goto_0
.end method

.method setFormatterIfAbsent(ILandroid/icu/impl/UResource$Value;I)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "minPlaceholders"    # I

    #@0
    .prologue
    .line 726
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 728
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@6
    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@8
    iget-object v1, v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    #@a
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@c
    iget-object v2, v2, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    #@e
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/EnumMap;

    #@14
    .line 729
    .local v0, "styleToPatterns":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/MeasureFormat$FormatWidth;[Ljava/lang/String;>;"
    if-nez v0, :cond_2

    #@16
    .line 731
    new-instance v0, Ljava/util/EnumMap;

    #@18
    .end local v0    # "styleToPatterns":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/MeasureFormat$FormatWidth;[Ljava/lang/String;>;"
    const-class v1, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@1a
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@1d
    .line 732
    .restart local v0    # "styleToPatterns":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/MeasureFormat$FormatWidth;[Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@1f
    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@21
    iget-object v1, v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    #@23
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@25
    iget-object v2, v2, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    #@27
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 736
    :goto_0
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    #@2c
    if-nez v1, :cond_0

    #@2e
    .line 737
    sget v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PATTERN_COUNT:I

    #@30
    new-array v1, v1, [Ljava/lang/String;

    #@32
    iput-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    #@34
    .line 738
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@36
    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@38
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    #@3a
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 741
    .end local v0    # "styleToPatterns":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/MeasureFormat$FormatWidth;[Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    #@3f
    aget-object v1, v1, p1

    #@41
    if-nez v1, :cond_1

    #@43
    .line 742
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    #@45
    .line 743
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    iget-object v3, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@4b
    iget-object v3, v3, Landroid/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    #@4d
    const/4 v4, 0x1

    #@4e
    .line 742
    invoke-static {v2, v3, p3, v4}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    aput-object v2, v1, p1

    #@54
    .line 725
    :cond_1
    return-void

    #@55
    .line 734
    .restart local v0    # "styleToPatterns":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/MeasureFormat$FormatWidth;[Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@57
    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@59
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, [Ljava/lang/String;

    #@5f
    iput-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    #@61
    goto :goto_0
.end method
