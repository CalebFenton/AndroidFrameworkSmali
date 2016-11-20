.class Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat$UnitDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnitCompoundSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V
    .locals 0
    .param p1, "this$1"    # Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@0
    .prologue
    .line 786
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@2
    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 5
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 789
    const-string/jumbo v0, "per"

    #@4
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 790
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@c
    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@e
    iget-object v0, v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    #@10
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@12
    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@14
    .line 792
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@1a
    iget-object v3, v3, Landroid/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    #@1c
    .line 791
    invoke-static {v2, v3, v4, v4}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 790
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 788
    :cond_0
    return-void
.end method
