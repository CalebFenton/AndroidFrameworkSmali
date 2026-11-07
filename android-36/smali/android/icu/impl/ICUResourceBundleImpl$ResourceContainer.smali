.class abstract Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ResourceContainer"
.end annotation


# instance fields
.field protected blacklist value:Landroid/icu/impl/ICUResourceBundleReader$Container;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .registers 2
    .param p1, "wholeBundle"    # Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    .line 172
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    .line 173
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .registers 4
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 170
    return-void
.end method


# virtual methods
.method protected blacklist createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .registers 7
    .param p1, "index"    # I
    .param p2, "resKey"    # Ljava/lang/String;
    .param p4, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 161
    .local p3, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->getContainerResource(I)I

    move-result v0

    .line 162
    .local v0, "item":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 165
    invoke-virtual {p0, p2, v0, p3, p4}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    return-object v1

    .line 163
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method protected blacklist getContainerResource(I)I
    .registers 4
    .param p1, "index"    # I

    .line 157
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method

.method public blacklist getSize()I
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v0

    return v0
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I

    .line 146
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    .line 147
    .local v0, "res":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 150
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 152
    return-object v1

    .line 154
    :cond_18
    invoke-super {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 148
    .end local v1    # "s":Ljava/lang/String;
    :cond_1d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method
