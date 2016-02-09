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
.field protected value:Landroid/icu/impl/ICUResourceBundleReader$Container;


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0
    .param p1, "wholeBundle"    # Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@0
    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    #@3
    .line 157
    return-void
.end method

.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    #@3
    .line 154
    return-void
.end method


# virtual methods
.method protected createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 2
    .param p1, "index"    # I
    .param p2, "resKey"    # Ljava/lang/String;
    .param p4, "requested"    # Landroid/icu/util/UResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 147
    .local p3, "aliasesVisited":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->getContainerResource(I)I

    #@3
    move-result v0

    #@4
    .line 148
    .local v0, "item":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 149
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v1

    #@d
    .line 151
    :cond_0
    invoke-virtual {p0, p2, v0, p3, p4}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method protected getContainerResource(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@2
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@4
    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getSize()I
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 132
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    #@2
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@4
    iget-object v3, v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@6
    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@9
    move-result v0

    #@a
    .line 133
    .local v0, "res":I
    const/4 v2, -0x1

    #@b
    if-ne v0, v2, :cond_0

    #@d
    .line 134
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v2

    #@13
    .line 136
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@15
    iget-object v2, v2, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@17
    invoke-virtual {v2, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 137
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@1d
    .line 138
    return-object v1

    #@1e
    .line 140
    :cond_1
    invoke-super {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl;->getString(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method
