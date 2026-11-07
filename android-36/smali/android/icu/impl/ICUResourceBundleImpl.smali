.class Landroid/icu/impl/ICUResourceBundleImpl;
.super Landroid/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
    }
.end annotation


# instance fields
.field protected blacklist resource:I


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .registers 3
    .param p1, "wholeBundle"    # Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    .line 28
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundle;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    .line 29
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader;->getRootResource()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleImpl;->resource:I

    .line 30
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .registers 4
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;-><init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 25
    iput p3, p0, Landroid/icu/impl/ICUResourceBundleImpl;->resource:I

    .line 26
    return-void
.end method


# virtual methods
.method protected final blacklist createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .registers 13
    .param p1, "_key"    # Ljava/lang/String;
    .param p2, "_resource"    # I
    .param p4, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .line 38
    .local p3, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 58
    :pswitch_7
    move-object v4, p1

    move v5, p2

    .end local p1    # "_key":Ljava/lang/String;
    .end local p2    # "_resource":I
    .local v4, "_key":Ljava/lang/String;
    .local v5, "_resource":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The resource type is unknown"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    .end local v4    # "_key":Ljava/lang/String;
    .end local v5    # "_resource":I
    .restart local p1    # "_key":Ljava/lang/String;
    .restart local p2    # "_resource":I
    :pswitch_11
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object v0

    .line 52
    :pswitch_17
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object v0

    .line 47
    :pswitch_1d
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object v0

    .line 45
    :pswitch_23
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "_key":Ljava/lang/String;
    .end local p2    # "_resource":I
    .end local p3    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p4    # "requested":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "_key":Ljava/lang/String;
    .restart local v5    # "_resource":I
    .local v6, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, "requested":Landroid/icu/util/UResourceBundle;
    invoke-static/range {v1 .. v7}, Landroid/icu/impl/ICUResourceBundleImpl;->getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    return-object p1

    .line 56
    .end local v4    # "_key":Ljava/lang/String;
    .end local v5    # "_resource":I
    .end local v6    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "requested":Landroid/icu/util/UResourceBundle;
    .restart local p1    # "_key":Ljava/lang/String;
    .restart local p2    # "_resource":I
    .restart local p3    # "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p4    # "requested":Landroid/icu/util/UResourceBundle;
    :pswitch_2f
    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .end local p1    # "_key":Ljava/lang/String;
    .end local p2    # "_resource":I
    .restart local v4    # "_key":Ljava/lang/String;
    .restart local v5    # "_resource":I
    new-instance p1, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-direct {p1, p0, v4, v5}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p1

    .line 43
    .end local v4    # "_key":Ljava/lang/String;
    .end local v5    # "_resource":I
    .restart local p1    # "_key":Ljava/lang/String;
    .restart local p2    # "_resource":I
    :pswitch_38
    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .end local p1    # "_key":Ljava/lang/String;
    .end local p2    # "_resource":I
    .restart local v4    # "_key":Ljava/lang/String;
    .restart local v5    # "_resource":I
    new-instance p1, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;

    invoke-direct {p1, p0, v4, v5}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p1

    .line 41
    .end local v4    # "_key":Ljava/lang/String;
    .end local v5    # "_resource":I
    .restart local p1    # "_key":Ljava/lang/String;
    .restart local p2    # "_resource":I
    :pswitch_41
    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .end local p1    # "_key":Ljava/lang/String;
    .end local p2    # "_resource":I
    .restart local v4    # "_key":Ljava/lang/String;
    .restart local v5    # "_resource":I
    new-instance p1, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;

    invoke-direct {p1, p0, v4, v5}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-object p1

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_38
        :pswitch_2f
        :pswitch_23
        :pswitch_2f
        :pswitch_2f
        :pswitch_41
        :pswitch_1d
        :pswitch_17
        :pswitch_17
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_11
    .end packed-switch
.end method

.method public blacklist getResource()I
    .registers 2

    .line 32
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleImpl;->resource:I

    return v0
.end method
