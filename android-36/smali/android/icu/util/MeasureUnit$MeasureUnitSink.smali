.class final Landroid/icu/util/MeasureUnit$MeasureUnitSink;
.super Landroid/icu/impl/UResource$Sink;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MeasureUnitSink"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 723
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/MeasureUnit-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/MeasureUnit$MeasureUnitSink;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 10
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 726
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 727
    .local v0, "unitTypesTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i2":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 729
    const-string v2, "compound"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "coordinate"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 730
    goto :goto_35

    .line 733
    :cond_1c
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "unitType":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v3

    .line 735
    .local v3, "unitNamesTable":Landroid/icu/impl/UResource$Table;
    const/4 v4, 0x0

    .local v4, "i3":I
    :goto_25
    invoke-interface {v3, v4, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 736
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v5

    .line 737
    .local v5, "unitName":Ljava/lang/String;
    invoke-static {v2, v5}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    .line 735
    .end local v5    # "unitName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 727
    .end local v2    # "unitType":Ljava/lang/String;
    .end local v3    # "unitNamesTable":Landroid/icu/impl/UResource$Table;
    .end local v4    # "i3":I
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 740
    .end local v1    # "i2":I
    :cond_38
    return-void
.end method
