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
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 2
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 928
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    #@3
    .line 929
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap0(Landroid/icu/impl/ICUResourceBundleReader;I)[C

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    #@9
    .line 930
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    #@b
    array-length v0, v0

    #@c
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->size:I

    #@e
    .line 931
    add-int/lit8 v0, p2, 0x1

    #@10
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->size:I

    #@12
    add-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->itemsOffset:I

    #@15
    .line 928
    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 926
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table16;->getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
