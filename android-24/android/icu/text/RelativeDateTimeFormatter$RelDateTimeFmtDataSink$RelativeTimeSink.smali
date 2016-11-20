.class Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelativeTimeSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V
    .locals 0
    .param p1, "this$1"    # Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    #@0
    .prologue
    .line 834
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

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
    const/4 v2, 0x0

    #@1
    .line 837
    const-string/jumbo v0, "past"

    #@4
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 838
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    #@c
    const/4 v1, 0x0

    #@d
    iput v1, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->pastFutureIndex:I

    #@f
    .line 844
    :goto_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    #@11
    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    #@13
    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@15
    if-nez v0, :cond_2

    #@17
    .line 845
    return-object v2

    #@18
    .line 839
    :cond_0
    const-string/jumbo v0, "future"

    #@1b
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 840
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    #@23
    const/4 v1, 0x1

    #@24
    iput v1, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->pastFutureIndex:I

    #@26
    goto :goto_0

    #@27
    .line 842
    :cond_1
    return-object v2

    #@28
    .line 847
    :cond_2
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    #@2a
    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeTimeDetailSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;

    #@2c
    return-object v0
.end method
