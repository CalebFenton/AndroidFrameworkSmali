.class Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat$UnitDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnitTypeSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V
    .locals 0
    .param p1, "this$1"    # Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@0
    .prologue
    .line 803
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@2
    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 2
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "initialSize"    # I

    #@0
    .prologue
    .line 806
    const-string/jumbo v0, "currency"

    #@3
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 816
    :cond_0
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 808
    :cond_1
    const-string/jumbo v0, "compound"

    #@e
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 809
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@16
    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@18
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@1a
    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@1c
    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat$MeasureFormatData;->hasPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_0

    #@22
    .line 810
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@24
    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->compoundSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;

    #@26
    return-object v0

    #@27
    .line 813
    :cond_2
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@29
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->type:Ljava/lang/String;

    #@2f
    .line 814
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@31
    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->subtypeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;

    #@33
    return-object v0
.end method
