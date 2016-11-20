.class Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat$UnitDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnitSubtypeSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V
    .locals 0
    .param p1, "this$1"    # Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@0
    .prologue
    .line 770
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@2
    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 3
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "initialSize"    # I

    #@0
    .prologue
    .line 774
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@2
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@4
    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->type:Ljava/lang/String;

    #@6
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {v1, v2}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    #@d
    move-result-object v1

    #@e
    iput-object v1, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    #@10
    .line 776
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@12
    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patternSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

    #@14
    const/4 v1, 0x0

    #@15
    iput-object v1, v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    #@17
    .line 777
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@19
    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patternSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

    #@1b
    return-object v0
.end method
