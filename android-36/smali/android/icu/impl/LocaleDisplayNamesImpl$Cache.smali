.class Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private blacklist cache:Landroid/icu/text/LocaleDisplayNames;

.field private blacklist capitalization:Landroid/icu/text/DisplayContext;

.field private blacklist dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field private blacklist locale:Landroid/icu/util/ULocale;

.field private blacklist nameLength:Landroid/icu/text/DisplayContext;

.field private blacklist substituteHandling:Landroid/icu/text/DisplayContext;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/LocaleDisplayNamesImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 767
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v0, :cond_1e

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1e

    sget-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1e

    sget-object v0, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    .line 769
    invoke-virtual {p1, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 770
    :cond_1e
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    .line 771
    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 772
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    .line 773
    sget-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    .line 774
    sget-object v0, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Landroid/icu/text/DisplayContext;

    .line 775
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    .line 777
    :cond_35
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    return-object v0
.end method

.method public varargs blacklist get(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .registers 12
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "contexts"    # [Landroid/icu/text/DisplayContext;

    .line 780
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 781
    .local v0, "dialectHandlingIn":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 782
    .local v1, "capitalizationIn":Landroid/icu/text/DisplayContext;
    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    .line 783
    .local v2, "nameLengthIn":Landroid/icu/text/DisplayContext;
    sget-object v3, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    .line 784
    .local v3, "substituteHandling":Landroid/icu/text/DisplayContext;
    array-length v4, p2

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_39

    aget-object v6, p2, v5

    .line 785
    .local v6, "contextItem":Landroid/icu/text/DisplayContext;
    sget-object v7, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    invoke-virtual {v6}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_66

    goto :goto_36

    .line 797
    :pswitch_1e
    move-object v3, v6

    .line 798
    goto :goto_36

    .line 794
    :pswitch_20
    move-object v2, v6

    .line 795
    goto :goto_36

    .line 791
    :pswitch_22
    move-object v1, v6

    .line 792
    goto :goto_36

    .line 787
    :pswitch_24
    invoke-virtual {v6}, Landroid/icu/text/DisplayContext;->value()I

    move-result v7

    sget-object v8, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v8}, Landroid/icu/text/DisplayContext;->value()I

    move-result v8

    if-ne v7, v8, :cond_33

    .line 788
    sget-object v7, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_35

    :cond_33
    sget-object v7, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 789
    .end local v0    # "dialectHandlingIn":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .local v7, "dialectHandlingIn":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    :goto_35
    move-object v0, v7

    .line 784
    .end local v6    # "contextItem":Landroid/icu/text/DisplayContext;
    .end local v7    # "dialectHandlingIn":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .restart local v0    # "dialectHandlingIn":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 803
    :cond_39
    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne v0, v4, :cond_51

    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    if-ne v1, v4, :cond_51

    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    if-ne v2, v4, :cond_51

    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Landroid/icu/text/DisplayContext;

    if-ne v3, v4, :cond_51

    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    .line 805
    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 806
    :cond_51
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    .line 807
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 808
    iput-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    .line 809
    iput-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    .line 810
    iput-object v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Landroid/icu/text/DisplayContext;

    .line 811
    new-instance v4, Landroid/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {v4, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    iput-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    .line 813
    :cond_62
    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    return-object v4

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
    .end packed-switch
.end method
