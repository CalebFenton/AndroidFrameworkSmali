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
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;I)V
    .locals 1
    .param p1, "wholeBundle"    # Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    .param p2, "rootRes"    # I

    #@0
    .prologue
    .line 310
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    #@3
    .line 311
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@5
    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@b
    .line 309
    return-void
.end method

.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 1
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    #@0
    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    #@3
    .line 304
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@5
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@7
    invoke-virtual {v0, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@d
    .line 302
    return-void
.end method


# virtual methods
.method findString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 285
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v1, v2, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    .line 286
    .local v1, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@6
    check-cast v2, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@8
    invoke-virtual {v2, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    #@b
    move-result v0

    #@c
    .line 287
    .local v0, "index":I
    if-gez v0, :cond_0

    #@e
    .line 288
    const/4 v2, 0x0

    #@f
    return-object v2

    #@10
    .line 290
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@12
    invoke-virtual {v2, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method getAllItems(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V
    .locals 2
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "readerValue"    # Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    .param p3, "sink"    # Landroid/icu/impl/UResource$TableSink;

    #@0
    .prologue
    .line 298
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v0, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    .line 299
    .local v0, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    iput-object v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@6
    .line 300
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@8
    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@a
    invoke-virtual {v1, v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V

    #@d
    .line 297
    return-void
.end method

.method protected getKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@2
    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@4
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@6
    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 212
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method protected handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 3
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
    .line 238
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@2
    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@4
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@6
    iget-object v2, v2, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@8
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 239
    .local v0, "itemKey":Ljava/lang/String;
    if-nez v0, :cond_0

    #@e
    .line 240
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@13
    throw v1

    #@14
    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    #@17
    move-result v1

    #@18
    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 3
    .param p1, "resKey"    # Ljava/lang/String;
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
    .line 229
    .local p2, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@2
    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@4
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@6
    iget-object v2, v2, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@8
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    #@b
    move-result v0

    #@c
    .line 230
    .local v0, "i":I
    if-gez v0, :cond_0

    #@e
    .line 231
    const/4 v1, 0x0

    #@f
    return-object v1

    #@10
    .line 233
    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    #@13
    move-result v1

    #@14
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@17
    move-result-object v1

    #@18
    return-object v1
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 250
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v4, v8, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    .line 251
    .local v4, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@6
    check-cast v8, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@8
    invoke-virtual {v8, v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    #@b
    move-result v1

    #@c
    .line 252
    .local v1, "index":I
    if-ltz v1, :cond_2

    #@e
    .line 253
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@10
    invoke-virtual {v8, v4, v1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@13
    move-result v5

    #@14
    .line 255
    .local v5, "res":I
    invoke-virtual {v4, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    .line 256
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@1a
    .line 257
    return-object v6

    #@1b
    .line 260
    :cond_0
    invoke-virtual {v4, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@1e
    move-result-object v0

    #@1f
    .line 261
    .local v0, "array":Landroid/icu/impl/ICUResourceBundleReader$Container;
    if-eqz v0, :cond_2

    #@21
    .line 262
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    #@24
    move-result v3

    #@25
    .line 263
    .local v3, "length":I
    new-array v7, v3, [Ljava/lang/String;

    #@27
    .line 264
    .local v7, "strings":[Ljava/lang/String;
    const/4 v2, 0x0

    #@28
    .line 265
    .local v2, "j":I
    :goto_0
    if-ne v2, v3, :cond_1

    #@2a
    .line 266
    return-object v7

    #@2b
    .line 268
    :cond_1
    invoke-virtual {v0, v4, v2}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@2e
    move-result v8

    #@2f
    invoke-virtual {v4, v8}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    .line 269
    if-nez v6, :cond_3

    #@35
    .line 279
    .end local v0    # "array":Landroid/icu/impl/ICUResourceBundleReader$Container;
    .end local v2    # "j":I
    .end local v3    # "length":I
    .end local v5    # "res":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "strings":[Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    #@38
    move-result-object v8

    #@39
    return-object v8

    #@3a
    .line 275
    .restart local v0    # "array":Landroid/icu/impl/ICUResourceBundleReader$Container;
    .restart local v2    # "j":I
    .restart local v3    # "length":I
    .restart local v5    # "res":I
    .restart local v6    # "s":Ljava/lang/String;
    .restart local v7    # "strings":[Ljava/lang/String;
    :cond_3
    aput-object v6, v7, v2

    #@3c
    .line 264
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v2, v4, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    .line 219
    .local v2, "reader":Landroid/icu/impl/ICUResourceBundleReader;
    new-instance v1, Ljava/util/TreeSet;

    #@6
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    #@9
    .line 220
    .local v1, "keySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@b
    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@d
    .line 221
    .local v3, "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    #@11
    move-result v4

    #@12
    if-ge v0, v4, :cond_0

    #@14
    .line 222
    invoke-virtual {v3, v2, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@1b
    .line 221
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 224
    :cond_0
    return-object v1
.end method
