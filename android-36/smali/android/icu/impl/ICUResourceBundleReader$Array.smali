.class Landroid/icu/impl/ICUResourceBundleReader$Array;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Landroid/icu/impl/UResource$Array;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Array"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 980
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getValue(ILandroid/icu/impl/UResource$Value;)Z
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 983
    if-ltz p1, :cond_13

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ge p1, v0, :cond_13

    .line 984
    move-object v0, p2

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    .line 985
    .local v0, "readerValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v1

    iput v1, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 986
    const/4 v1, 0x1

    return v1

    .line 988
    .end local v0    # "readerValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
