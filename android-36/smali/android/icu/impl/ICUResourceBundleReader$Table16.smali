.class final Landroid/icu/impl/ICUResourceBundleReader$Table16;
.super Landroid/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table16"
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .registers 5
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    .line 1099
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1100
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mgetTable16KeyOffsets(Landroid/icu/impl/ICUResourceBundleReader;I)[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    .line 1101
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    array-length v0, v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->size:I

    .line 1102
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->itemsOffset:I

    .line 1103
    return-void
.end method


# virtual methods
.method greylist-max-o getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    .line 1097
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table16;->getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
