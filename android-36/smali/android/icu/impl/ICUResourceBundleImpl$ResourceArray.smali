.class Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;
.super Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceArray"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .registers 5
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 211
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    .line 212
    return-void
.end method


# virtual methods
.method public blacklist getStringArray()[Ljava/lang/String;
    .registers 2

    .line 196
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->handleGetStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 178
    const/16 v0, 0x8

    return v0
.end method

.method protected blacklist handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .registers 5
    .param p1, "index"    # I
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    .line 207
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .registers 6
    .param p1, "indexStr"    # Ljava/lang/String;
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    .line 201
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, "i":I
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist handleGetStringArray()[Ljava/lang/String;
    .registers 8

    .line 182
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 183
    .local v0, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v1

    .line 184
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/String;

    .line 185
    .local v2, "strings":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_28

    .line 186
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v4, v0, v3}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_20

    .line 190
    aput-object v4, v2, v3

    .line 185
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 188
    .restart local v4    # "s":Ljava/lang/String;
    :cond_20
    new-instance v5, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v6, ""

    invoke-direct {v5, v6}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 192
    .end local v3    # "i":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_28
    return-object v2
.end method
