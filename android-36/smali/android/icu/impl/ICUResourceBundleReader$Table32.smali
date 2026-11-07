.class final Landroid/icu/impl/ICUResourceBundleReader$Table32;
.super Landroid/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table32"
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    .line 1110
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1111
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mgetResourceByteOffset(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    .line 1112
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mgetTable32KeyOffsets(Landroid/icu/impl/ICUResourceBundleReader;I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    .line 1113
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    array-length v0, v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->size:I

    .line 1114
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->size:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->itemsOffset:I

    .line 1115
    return-void
.end method


# virtual methods
.method greylist-max-o getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    .line 1108
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table32;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
