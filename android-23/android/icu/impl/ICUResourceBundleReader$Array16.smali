.class final Landroid/icu/impl/ICUResourceBundleReader$Array16;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Array16"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 861
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    #@3
    .line 862
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get1(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p2}, Ljava/nio/CharBuffer;->charAt(I)C

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array16;->size:I

    #@d
    .line 863
    add-int/lit8 v0, p2, 0x1

    #@f
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array16;->itemsOffset:I

    #@11
    .line 861
    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 859
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Array16;->getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
