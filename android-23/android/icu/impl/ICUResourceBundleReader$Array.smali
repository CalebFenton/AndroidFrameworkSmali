.class final Landroid/icu/impl/ICUResourceBundleReader$Array;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Array"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 850
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    #@3
    .line 851
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@6
    move-result p2

    #@7
    .line 852
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap6(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    #@d
    .line 853
    add-int/lit8 v0, p2, 0x4

    #@f
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array;->itemsOffset:I

    #@11
    .line 850
    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 848
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
