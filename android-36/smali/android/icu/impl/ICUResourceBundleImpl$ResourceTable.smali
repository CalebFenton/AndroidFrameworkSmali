.class Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
.super Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceTable"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;I)V
    .registers 4
    .param p1, "wholeBundle"    # Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    .param p2, "rootRes"    # I

    .line 306
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    .line 307
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    .line 308
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .registers 5
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    .line 299
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 300
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    .line 301
    return-void
.end method


# virtual methods
.method blacklist findString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 292
    .local v0, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v1, v0, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v1

    .line 293
    .local v1, "index":I
    if-gez v1, :cond_10

    .line 294
    const/4 v2, 0x0

    return-object v2

    .line 296
    :cond_10
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v2, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected blacklist getKey(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 220
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 217
    const/4 v0, 0x2

    return v0
.end method

.method protected blacklist handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .registers 6
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

    .line 244
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "itemKey":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 248
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    return-object v1

    .line 246
    :cond_17
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method protected blacklist handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .registers 6
    .param p1, "resKey"    # Ljava/lang/String;
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

    .line 235
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    .line 236
    .local v0, "i":I
    if-gez v0, :cond_10

    .line 237
    const/4 v1, 0x0

    return-object v1

    .line 239
    :cond_10
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result v1

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method protected whitelist test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .param p1, "key"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 257
    .local v0, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v1, v0, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v1

    .line 258
    .local v1, "index":I
    if-ltz v1, :cond_3b

    .line 259
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v2, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    .line 261
    .local v2, "res":I
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_1b

    .line 263
    return-object v3

    .line 266
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v4

    .line 267
    .local v4, "array":Landroid/icu/impl/ICUResourceBundleReader$Container;
    if-eqz v4, :cond_3b

    .line 268
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v5

    .line 269
    .local v5, "length":I
    new-array v6, v5, [Ljava/lang/String;

    .line 270
    .local v6, "strings":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 271
    .local v7, "j":I
    :goto_28
    if-ne v7, v5, :cond_2b

    .line 272
    return-object v6

    .line 274
    :cond_2b
    invoke-virtual {v4, v0, v7}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    if-nez v3, :cond_36

    .line 279
    goto :goto_3b

    .line 281
    :cond_36
    aput-object v3, v6, v7

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 285
    .end local v2    # "res":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "array":Landroid/icu/impl/ICUResourceBundleReader$Container;
    .end local v5    # "length":I
    .end local v6    # "strings":[Ljava/lang/String;
    .end local v7    # "j":I
    :cond_3b
    :goto_3b
    invoke-super {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected whitelist test-api handleKeySet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 225
    .local v0, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 226
    .local v1, "keySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v2, Landroid/icu/impl/ICUResourceBundleReader$Table;

    .line 227
    .local v2, "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_1e

    .line 228
    invoke-virtual {v2, v0, v3}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 230
    .end local v3    # "i":I
    :cond_1e
    return-object v1
.end method
