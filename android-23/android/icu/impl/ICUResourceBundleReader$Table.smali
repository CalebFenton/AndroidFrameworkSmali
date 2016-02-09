.class Landroid/icu/impl/ICUResourceBundleReader$Table;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# static fields
.field private static final URESDATA_ITEM_NOT_FOUND:I = -0x1


# instance fields
.field protected key32Offsets:[I

.field protected keyOffsets:[C


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 908
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I
    .locals 5
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "key"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 884
    const/4 v3, 0x0

    #@1
    .line 885
    .local v3, "start":I
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    #@3
    .line 886
    .local v0, "limit":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@5
    .line 887
    add-int v4, v3, v0

    #@7
    ushr-int/lit8 v1, v4, 0x1

    #@9
    .line 888
    .local v1, "mid":I
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 889
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@f
    aget-char v4, v4, v1

    #@11
    invoke-static {p1, p2, v4}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap5(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I

    #@14
    move-result v2

    #@15
    .line 893
    .local v2, "result":I
    :goto_1
    if-gez v2, :cond_1

    #@17
    .line 894
    move v0, v1

    #@18
    goto :goto_0

    #@19
    .line 891
    .end local v2    # "result":I
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    #@1b
    aget v4, v4, v1

    #@1d
    invoke-static {p1, p2, v4}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap4(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I

    #@20
    move-result v2

    #@21
    .restart local v2    # "result":I
    goto :goto_1

    #@22
    .line 895
    :cond_1
    if-lez v2, :cond_2

    #@24
    .line 896
    add-int/lit8 v3, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 899
    :cond_2
    return v1

    #@28
    .line 902
    .end local v1    # "mid":I
    .end local v2    # "result":I
    :cond_3
    const/4 v4, -0x1

    #@29
    return v4
.end method

.method getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 2
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 871
    if-ltz p2, :cond_0

    #@3
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    #@5
    if-gt v0, p2, :cond_1

    #@7
    .line 872
    :cond_0
    return-object v1

    #@8
    .line 874
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 875
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@e
    aget-char v0, v0, p2

    #@10
    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap8(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 874
    :goto_0
    return-object v0

    #@15
    .line 876
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    #@17
    aget v0, v0, p2

    #@19
    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap9(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    goto :goto_0
.end method

.method getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .locals 1
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "resKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 906
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method
