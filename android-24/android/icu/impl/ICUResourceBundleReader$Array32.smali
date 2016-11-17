.class final Landroid/icu/impl/ICUResourceBundleReader$Array32;
.super Landroid/icu/impl/ICUResourceBundleReader$Array;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Array32"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 976
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    #@3
    .line 977
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap9(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@6
    move-result p2

    #@7
    .line 978
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap8(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array32;->size:I

    #@d
    .line 979
    add-int/lit8 v0, p2, 0x4

    #@f
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array32;->itemsOffset:I

    #@11
    .line 976
    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 974
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Array32;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
