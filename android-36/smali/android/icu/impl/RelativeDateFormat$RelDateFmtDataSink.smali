.class final Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "RelativeDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/RelativeDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RelDateFmtDataSink"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/impl/RelativeDateFormat;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/impl/RelativeDateFormat;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 251
    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;->this$0:Landroid/icu/impl/RelativeDateFormat;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/RelativeDateFormat;Landroid/icu/impl/RelativeDateFormat-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;-><init>(Landroid/icu/impl/RelativeDateFormat;)V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 9
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 255
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 256
    return-void

    .line 259
    :cond_8
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 260
    .local v0, "table":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 264
    :try_start_13
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1b} :catch_39

    .line 269
    .local v2, "keyOffset":I
    nop

    .line 271
    iget-object v3, p0, Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;->this$0:Landroid/icu/impl/RelativeDateFormat;

    invoke-static {v3, v2}, Landroid/icu/impl/RelativeDateFormat;->-$$Nest$mgetStringForDay(Landroid/icu/impl/RelativeDateFormat;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    .line 272
    new-instance v3, Landroid/icu/impl/RelativeDateFormat$URelativeString;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/icu/impl/RelativeDateFormat$URelativeString;-><init>(ILjava/lang/String;)V

    .line 273
    .local v3, "newDayInfo":Landroid/icu/impl/RelativeDateFormat$URelativeString;
    iget-object v4, p0, Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;->this$0:Landroid/icu/impl/RelativeDateFormat;

    invoke-static {v4}, Landroid/icu/impl/RelativeDateFormat;->-$$Nest$fgetfDates(Landroid/icu/impl/RelativeDateFormat;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v2    # "keyOffset":I
    .end local v3    # "newDayInfo":Landroid/icu/impl/RelativeDateFormat$URelativeString;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 266
    :catch_39
    move-exception v2

    .line 268
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    return-void

    .line 276
    .end local v1    # "i":I
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3b
    return-void
.end method
