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
.method constructor greylist-max-o <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    .line 996
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    .line 997
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mgetResourceByteOffset(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    .line 998
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mgetInt(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array32;->size:I

    .line 999
    add-int/lit8 v0, p2, 0x4

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array32;->itemsOffset:I

    .line 1000
    return-void
.end method


# virtual methods
.method greylist-max-o getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    .line 994
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Array32;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
