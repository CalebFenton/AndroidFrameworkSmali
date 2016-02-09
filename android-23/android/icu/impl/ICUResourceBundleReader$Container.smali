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
    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 2
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 827
    if-ltz p2, :cond_0

    #@2
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    #@4
    if-gt v0, p2, :cond_1

    #@6
    .line 828
    :cond_0
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 831
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get1(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    #@e
    add-int/2addr v1, p2

    #@f
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 830
    const/high16 v1, 0x60000000

    #@15
    or-int/2addr v0, v1

    #@16
    return v0
.end method

.method protected getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 2
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 834
    if-ltz p2, :cond_0

    #@2
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    #@4
    if-gt v0, p2, :cond_1

    #@6
    .line 835
    :cond_0
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 837
    :cond_1
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    #@a
    mul-int/lit8 v1, p2, 0x4

    #@c
    add-int/2addr v0, v1

    #@d
    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap6(Landroid/icu/impl/ICUResourceBundleReader;I)I

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
    .line 824
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
    .line 840
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

.method getSize()I
    .locals 1

    #@0
    .prologue
    .line 821
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    #@2
    return v0
.end method
