.class final Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;
.super Landroid/icu/impl/UResource$Sink;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CapitalizationContextSink"
.end annotation


# instance fields
.field blacklist hasCapitalizationUsage:Z

.field final synthetic blacklist this$0:Landroid/icu/impl/LocaleDisplayNamesImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/impl/LocaleDisplayNamesImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->this$0:Landroid/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 114
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->hasCapitalizationUsage:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/LocaleDisplayNamesImpl;Landroid/icu/impl/LocaleDisplayNamesImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;-><init>(Landroid/icu/impl/LocaleDisplayNamesImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 12
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 118
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 119
    .local v0, "contextsTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 121
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl;->-$$Nest$sfgetcontextUsageTypeMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 122
    .local v2, "usage":Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    if-nez v2, :cond_1c

    goto :goto_47

    .line 124
    :cond_1c
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v3

    .line 125
    .local v3, "intVector":[I
    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_25

    goto :goto_47

    .line 127
    :cond_25
    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->this$0:Landroid/icu/impl/LocaleDisplayNamesImpl;

    invoke-static {v4}, Landroid/icu/impl/LocaleDisplayNamesImpl;->-$$Nest$fgetcapitalization(Landroid/icu/impl/LocaleDisplayNamesImpl;)Landroid/icu/text/DisplayContext;

    move-result-object v4

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_34

    .line 128
    const/4 v4, 0x0

    aget v4, v3, v4

    goto :goto_36

    :cond_34
    aget v4, v3, v6

    .line 129
    .local v4, "titlecaseInt":I
    :goto_36
    if-nez v4, :cond_39

    goto :goto_47

    .line 131
    :cond_39
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->this$0:Landroid/icu/impl/LocaleDisplayNamesImpl;

    invoke-static {v5}, Landroid/icu/impl/LocaleDisplayNamesImpl;->-$$Nest$fgetcapitalizationUsage(Landroid/icu/impl/LocaleDisplayNamesImpl;)[Z

    move-result-object v5

    invoke-virtual {v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->ordinal()I

    move-result v7

    aput-boolean v6, v5, v7

    .line 132
    iput-boolean v6, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->hasCapitalizationUsage:Z

    .line 119
    .end local v2    # "usage":Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .end local v3    # "intVector":[I
    .end local v4    # "titlecaseInt":I
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 134
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method
