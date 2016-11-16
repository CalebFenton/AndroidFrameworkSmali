.class Landroid/icu/impl/ICUResourceBundleReader$Container;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Container"
.end annotation


# instance fields
.field protected itemsOffset:I

.field protected size:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 3
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 911
    if-ltz p2, :cond_0

    #@2
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    #@4
    if-gt v1, p2, :cond_1

    #@6
    .line 912
    :cond_0
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 914
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get2(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    #@e
    add-int/2addr v2, p2

    #@f
    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 915
    .local v0, "res16":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get3(Landroid/icu/impl/ICUResourceBundleReader;)I

    #@16
    move-result v1

    #@17
    if-ge v0, v1, :cond_2

    #@19
    .line 922
    :goto_0
    const/high16 v1, 0x60000000

    #@1b
    or-int/2addr v1, v0

    #@1c
    return v1

    #@1d
    .line 920
    :cond_2
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get3(Landroid/icu/impl/ICUResourceBundleReader;)I

    #@20
    move-result v1

    #@21
    sub-int v1, v0, v1

    #@23
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get4(Landroid/icu/impl/ICUResourceBundleReader;)I

    #@26
    move-result v2

    #@27
    add-int v0, v1, v2

    #@29
    goto :goto_0
.end method

.method protected getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 2
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 925
    if-ltz p2, :cond_0

    #@2
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    #@4
    if-gt v0, p2, :cond_1

    #@6
    .line 926
    :cond_0
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 928
    :cond_1
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    #@a
    mul-int/lit8 v1, p2, 0x4

    #@c
    add-int/2addr v0, v1

    #@d
    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap8(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 908
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "resKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 931
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method final getSize()I
    .locals 1

    #@0
    .prologue
    .line 905
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    #@2
    return v0
.end method
