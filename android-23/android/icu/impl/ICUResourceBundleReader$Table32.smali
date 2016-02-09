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
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 939
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    #@3
    .line 940
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@6
    move-result p2

    #@7
    .line 941
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap3(Landroid/icu/impl/ICUResourceBundleReader;I)[I

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    #@d
    .line 942
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    #@f
    array-length v0, v0

    #@10
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->size:I

    #@12
    .line 943
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->size:I

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    mul-int/lit8 v0, v0, 0x4

    #@18
    add-int/2addr v0, p2

    #@19
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->itemsOffset:I

    #@1b
    .line 939
    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 937
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table32;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
