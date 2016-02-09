.class Landroid/icu/impl/ICUResourceBundleImpl;
.super Landroid/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;,
        Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0
    .param p1, "wholeBundle"    # Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@0
    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundle;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    #@3
    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;-><init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@3
    .line 18
    return-void
.end method


# virtual methods
.method protected final createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 7
    .param p1, "_key"    # Ljava/lang/String;
    .param p2, "_resource"    # I
    .param p4, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 28
    .local p3, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 48
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "The resource type is unknown"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 31
    :pswitch_1
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;

    #@12
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    #@15
    return-object v0

    #@16
    .line 33
    :pswitch_2
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;

    #@18
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    #@1b
    return-object v0

    #@1c
    .line 35
    :pswitch_3
    const/4 v1, 0x0

    #@1d
    const/4 v2, 0x0

    #@1e
    move-object v0, p0

    #@1f
    move-object v3, p1

    #@20
    move v4, p2

    #@21
    move-object v5, p3

    #@22
    move-object v6, p4

    #@23
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/ICUResourceBundleImpl;->getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 37
    :pswitch_4
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;

    #@2a
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    #@2d
    return-object v0

    #@2e
    .line 39
    :pswitch_5
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;

    #@30
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    #@33
    return-object v0

    #@34
    .line 42
    :pswitch_6
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;

    #@36
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    #@39
    return-object v0

    #@3a
    .line 46
    :pswitch_7
    new-instance v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    #@3c
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    #@3f
    return-object v0

    #@40
    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
