.class final Landroid/icu/impl/ICUResourceBundleReader$Array16;
.super Landroid/icu/impl/ICUResourceBundleReader$Array;
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
.method constructor greylist-max-o <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    .line 1007
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    .line 1008
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$fgetb16BitUnits(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array16;->size:I

    .line 1009
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array16;->itemsOffset:I

    .line 1010
    return-void
.end method


# virtual methods
.method greylist-max-o getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    .line 1005
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Array16;->getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
