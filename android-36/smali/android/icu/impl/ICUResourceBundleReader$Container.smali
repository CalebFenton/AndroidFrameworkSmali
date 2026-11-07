.class Landroid/icu/impl/ICUResourceBundleReader$Container;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Container"
.end annotation


# instance fields
.field protected greylist-max-o itemsOffset:I

.field protected greylist-max-o size:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    return-void
.end method


# virtual methods
.method protected greylist-max-o getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .registers 6
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    .line 954
    if-ltz p2, :cond_29

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    if-gt v0, p2, :cond_7

    goto :goto_29

    .line 957
    :cond_7
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$fgetb16BitUnits(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    .line 958
    .local v0, "res16":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$fgetpoolStringIndex16Limit(Landroid/icu/impl/ICUResourceBundleReader;)I

    move-result v1

    if-ge v0, v1, :cond_19

    goto :goto_25

    .line 963
    :cond_19
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$fgetpoolStringIndex16Limit(Landroid/icu/impl/ICUResourceBundleReader;)I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$fgetpoolStringIndexLimit(Landroid/icu/impl/ICUResourceBundleReader;)I

    move-result v2

    add-int v0, v1, v2

    .line 965
    :goto_25
    const/high16 v1, 0x60000000

    or-int/2addr v1, v0

    return v1

    .line 955
    .end local v0    # "res16":I
    :cond_29
    :goto_29
    const/4 v0, -0x1

    return v0
.end method

.method protected greylist-max-o getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .registers 5
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    .line 968
    if-ltz p2, :cond_11

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    if-gt v0, p2, :cond_7

    goto :goto_11

    .line 971
    :cond_7
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mgetInt(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0

    .line 969
    :cond_11
    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    .line 951
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "resKey"    # Ljava/lang/String;

    .line 974
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method

.method public final greylist-max-o getSize()I
    .registers 2

    .line 948
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    return v0
.end method
