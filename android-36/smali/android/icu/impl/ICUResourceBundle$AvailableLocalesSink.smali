.class final Landroid/icu/impl/ICUResourceBundle$AvailableLocalesSink;
.super Landroid/icu/impl/UResource$Sink;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvailableLocalesSink"
.end annotation


# instance fields
.field blacklist output:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/util/ULocale$AvailableType;",
            "[",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Landroid/icu/util/ULocale$AvailableType;",
            "[",
            "Landroid/icu/util/ULocale;",
            ">;)V"
        }
    .end annotation

    .line 703
    .local p1, "output":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/util/ULocale$AvailableType;[Landroid/icu/util/ULocale;>;"
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 704
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$AvailableLocalesSink;->output:Ljava/util/EnumMap;

    .line 705
    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 12
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 709
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 710
    .local v0, "resIndexTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 712
    const-string v2, "InstalledLocales"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 713
    sget-object v2, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    .local v2, "type":Landroid/icu/util/ULocale$AvailableType;
    goto :goto_20

    .line 714
    .end local v2    # "type":Landroid/icu/util/ULocale$AvailableType;
    :cond_16
    const-string v2, "AliasLocales"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 715
    sget-object v2, Landroid/icu/util/ULocale$AvailableType;->ONLY_LEGACY_ALIASES:Landroid/icu/util/ULocale$AvailableType;

    .line 720
    .restart local v2    # "type":Landroid/icu/util/ULocale$AvailableType;
    :goto_20
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v3

    .line 721
    .local v3, "availableLocalesTable":Landroid/icu/impl/UResource$Table;
    invoke-interface {v3}, Landroid/icu/impl/UResource$Table;->getSize()I

    move-result v4

    new-array v4, v4, [Landroid/icu/util/ULocale;

    .line 722
    .local v4, "locales":[Landroid/icu/util/ULocale;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2b
    invoke-interface {v3, v5, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 723
    new-instance v6, Landroid/icu/util/ULocale;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 722
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 725
    .end local v5    # "j":I
    :cond_3f
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundle$AvailableLocalesSink;->output:Ljava/util/EnumMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .end local v2    # "type":Landroid/icu/util/ULocale$AvailableType;
    .end local v3    # "availableLocalesTable":Landroid/icu/impl/UResource$Table;
    .end local v4    # "locales":[Landroid/icu/util/ULocale;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 727
    .end local v1    # "i":I
    :cond_47
    return-void
.end method
