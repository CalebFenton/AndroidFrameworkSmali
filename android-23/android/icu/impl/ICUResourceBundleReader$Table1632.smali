.class final Landroid/icu/impl/ICUResourceBundleReader$Table1632;
.super Landroid/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table1632"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 916
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    #@3
    .line 917
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@6
    move-result p2

    #@7
    .line 918
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap1(Landroid/icu/impl/ICUResourceBundleReader;I)[C

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->keyOffsets:[C

    #@d
    .line 919
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->keyOffsets:[C

    #@f
    array-length v0, v0

    #@10
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->size:I

    #@12
    .line 920
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->size:I

    #@14
    add-int/lit8 v0, v0, 0x2

    #@16
    and-int/lit8 v0, v0, -0x2

    #@18
    mul-int/lit8 v0, v0, 0x2

    #@1a
    add-int/2addr v0, p2

    #@1b
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->itemsOffset:I

    #@1d
    .line 916
    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 914
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
