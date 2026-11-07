.class Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableFormatsSink"
.end annotation


# instance fields
.field greylist-max-o returnInfo:Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

.field final synthetic blacklist this$0:Landroid/icu/text/DateTimePatternGenerator;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;)V
    .registers 3
    .param p2, "returnInfo"    # Landroid/icu/text/DateTimePatternGenerator$PatternInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 268
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 269
    iput-object p2, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->returnInfo:Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    .line 270
    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 9
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "isRoot"    # Z

    .line 274
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "formatKey":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-static {v1, v0}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$misAvailableFormatSet(Landroid/icu/text/DateTimePatternGenerator;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 276
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-static {v1, v0}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$msetAvailableFormat(Landroid/icu/text/DateTimePatternGenerator;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "formatValue":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->returnInfo:Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    .line 282
    .end local v1    # "formatValue":Ljava/lang/String;
    :cond_1d
    return-void
.end method
