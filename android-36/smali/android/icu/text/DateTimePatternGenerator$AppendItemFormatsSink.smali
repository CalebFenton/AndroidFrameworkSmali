.class Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppendItemFormatsSink"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/text/DateTimePatternGenerator;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/text/DateTimePatternGenerator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 222
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;)V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 7
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 225
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getAppendFormatNumber(Landroid/icu/impl/UResource$Key;)I

    move-result v0

    .line 226
    .local v0, "field":I
    if-gez v0, :cond_7

    return-void

    .line 227
    :cond_7
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-virtual {v1, v0}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemFormat(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    .line 228
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemFormat(ILjava/lang/String;)V

    .line 230
    :cond_18
    return-void
.end method
