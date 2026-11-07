.class Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppendItemNamesSink"
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

    .line 233
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;)V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 10
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 236
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$smgetCLDRFieldAndWidthNumber(Landroid/icu/impl/UResource$Key;)I

    move-result v0

    .line 237
    .local v0, "fieldAndWidth":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    .line 238
    :cond_8
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->-$$Nest$sfgetCOUNT()I

    move-result v1

    div-int v1, v0, v1

    .line 239
    .local v1, "field":I
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$sfgetCLDR_FIELD_WIDTH()[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    move-result-object v2

    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->-$$Nest$sfgetCOUNT()I

    move-result v3

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    .line 240
    .local v2, "width":Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v3

    .line 241
    .local v3, "detailsTable":Landroid/icu/impl/UResource$Table;
    const-string v4, "dn"

    invoke-interface {v3, v4, p2}, Landroid/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 242
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-virtual {v4, v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_37

    .line 243
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;->this$0:Landroid/icu/text/DateTimePatternGenerator;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v2, v5}, Landroid/icu/text/DateTimePatternGenerator;->-$$Nest$msetFieldDisplayName(Landroid/icu/text/DateTimePatternGenerator;ILandroid/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    .line 246
    :cond_37
    return-void
.end method
