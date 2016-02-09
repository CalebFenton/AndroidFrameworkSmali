.class Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;
.super Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceArray"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 1
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    #@0
    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    #@3
    .line 194
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@5
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@7
    invoke-virtual {v0, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@d
    .line 192
    return-void
.end method


# virtual methods
.method public getStringArray()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->handleGetStringArray()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 163
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method protected handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .param p1, "index"    # I
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 190
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 2
    .param p1, "indexStr"    # Ljava/lang/String;
    .param p3, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 184
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 185
    .local v0, "i":I
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method protected handleGetStringArray()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 166
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v2, v5, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    .line 167
    .local v2, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@6
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    #@9
    move-result v1

    #@a
    .line 168
    .local v1, "length":I
    new-array v4, v1, [Ljava/lang/String;

    #@c
    .line 169
    .local v4, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@f
    .line 170
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@11
    invoke-virtual {v5, v2, v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@14
    move-result v5

    #@15
    invoke-virtual {v2, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 171
    .local v3, "s":Ljava/lang/String;
    if-nez v3, :cond_0

    #@1b
    .line 172
    new-instance v5, Landroid/icu/util/UResourceTypeMismatchException;

    #@1d
    const-string/jumbo v6, ""

    #@20
    invoke-direct {v5, v6}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    #@23
    throw v5

    #@24
    .line 174
    :cond_0
    aput-object v3, v4, v0

    #@26
    .line 169
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 176
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v4
.end method
