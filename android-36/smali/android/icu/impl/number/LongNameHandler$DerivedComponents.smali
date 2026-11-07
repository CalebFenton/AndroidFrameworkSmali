.class Landroid/icu/impl/number/LongNameHandler$DerivedComponents;
.super Ljava/lang/Object;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DerivedComponents"
.end annotation


# instance fields
.field private blacklist value0:Ljava/lang/String;

.field private blacklist value1:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "structure"    # Ljava/lang/String;

    .line 528
    const-string v0, "compound"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    const-string v1, ""

    iput-object v1, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value0:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1:Ljava/lang/String;

    .line 530
    :try_start_b
    const-string v1, "android/icu/impl/data/icudata"

    const-string v2, "grammaticalFeatures"

    .line 531
    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 533
    .local v1, "derivationsBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string v2, "grammaticalData"

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 534
    .end local v1    # "derivationsBundle":Landroid/icu/impl/ICUResourceBundle;
    .local v2, "derivationsBundle":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "derivations"

    invoke-virtual {v2, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;
    :try_end_25
    .catch Ljava/util/MissingResourceException; {:try_start_b .. :try_end_25} :catch_70

    .line 540
    .end local v2    # "derivationsBundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v1    # "derivationsBundle":Landroid/icu/impl/ICUResourceBundle;
    :try_start_25
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;
    :try_end_2f
    .catch Ljava/util/MissingResourceException; {:try_start_25 .. :try_end_2f} :catch_30

    .line 543
    .local v2, "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_3a

    .line 541
    .end local v2    # "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    :catch_30
    move-exception v2

    .line 542
    .local v2, "e":Ljava/util/MissingResourceException;
    :try_start_31
    const-string v3, "root"

    invoke-virtual {v1, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    move-object v2, v3

    .line 545
    .local v2, "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_3a
    const-string v3, "component"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    .line 546
    .end local v2    # "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    .local v3, "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v3, p2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 547
    .end local v3    # "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v2    # "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v2, p3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    .line 549
    .end local v2    # "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v3    # "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5d

    .line 551
    iput-object v5, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value0:Ljava/lang/String;

    goto :goto_5f

    .line 553
    :cond_5d
    iput-object v2, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value0:Ljava/lang/String;

    .line 556
    :goto_5f
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 557
    .end local v2    # "value":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6d

    .line 558
    iput-object v5, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1:Ljava/lang/String;

    goto :goto_6f

    .line 560
    :cond_6d
    iput-object v4, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1:Ljava/lang/String;
    :try_end_6f
    .catch Ljava/util/MissingResourceException; {:try_start_31 .. :try_end_6f} :catch_70

    .line 564
    .end local v1    # "derivationsBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "stackBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v4    # "value":Ljava/lang/String;
    :goto_6f
    goto :goto_71

    .line 562
    :catch_70
    move-exception v0

    .line 565
    :goto_71
    return-void
.end method


# virtual methods
.method blacklist value0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "compoundValue"    # Ljava/lang/String;

    .line 568
    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value0:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value0:Ljava/lang/String;

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    return-object v0
.end method

.method blacklist value1(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "compoundValue"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/icu/impl/number/LongNameHandler$DerivedComponents;->value1:Ljava/lang/String;

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    return-object v0
.end method
