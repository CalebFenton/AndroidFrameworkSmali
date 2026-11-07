.class Landroid/icu/impl/ICUResourceBundleReader$Table;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Landroid/icu/impl/UResource$Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# static fields
.field private static final greylist-max-o URESDATA_ITEM_NOT_FOUND:I = -0x1


# instance fields
.field protected greylist-max-o key32Offsets:[I

.field protected greylist-max-o keyOffsets:[C


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1016
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    .line 1017
    return-void
.end method


# virtual methods
.method greylist-max-o findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I
    .registers 7
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "key"    # Ljava/lang/CharSequence;

    .line 1032
    const/4 v0, 0x0

    .line 1033
    .local v0, "start":I
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    .line 1034
    .local v1, "limit":I
    :goto_3
    if-ge v0, v1, :cond_28

    .line 1035
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1036
    .local v2, "mid":I
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v3, :cond_16

    .line 1037
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    aget-char v3, v3, v2

    invoke-static {p1, p2, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mcompareKeys(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I

    move-result v3

    .local v3, "result":I
    goto :goto_1e

    .line 1039
    .end local v3    # "result":I
    :cond_16
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v3, v3, v2

    invoke-static {p1, p2, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mcompareKeys32(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1041
    .restart local v3    # "result":I
    :goto_1e
    if-gez v3, :cond_22

    .line 1042
    move v1, v2

    goto :goto_3

    .line 1043
    :cond_22
    if-lez v3, :cond_27

    .line 1044
    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    .line 1047
    :cond_27
    return v2

    .line 1050
    .end local v2    # "mid":I
    .end local v3    # "result":I
    :cond_28
    const/4 v2, -0x1

    return v2
.end method

.method public blacklist findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1072
    move-object v0, p2

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    .line 1073
    .local v0, "readerValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v1

    .line 1074
    .local v1, "i":I
    if-ltz v1, :cond_15

    .line 1075
    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, v2, v1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    iput v2, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 1076
    const/4 v2, 0x1

    return v2

    .line 1078
    :cond_15
    const/4 v2, 0x0

    return v2
.end method

.method greylist-max-o getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    .line 1019
    if-ltz p2, :cond_1d

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-gt v0, p2, :cond_7

    goto :goto_1d

    .line 1022
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v0, :cond_14

    .line 1023
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    aget-char v0, v0, p2

    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mgetKey16String(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 1024
    :cond_14
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v0, v0, p2

    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$mgetKey32String(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    :goto_1c
    return-object v0

    .line 1020
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z
    .registers 7
    .param p1, "i"    # I
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;
    .param p3, "value"    # Landroid/icu/impl/UResource$Value;

    .line 1058
    if-ltz p1, :cond_2a

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-ge p1, v0, :cond_2a

    .line 1059
    move-object v0, p3

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    .line 1060
    .local v0, "readerValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v1, :cond_17

    .line 1061
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    aget-char v2, v2, p1

    invoke-static {v1, v2, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$msetKeyFromKey16(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V

    goto :goto_20

    .line 1063
    :cond_17
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v2, v2, p1

    invoke-static {v1, v2, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$msetKeyFromKey32(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V

    .line 1065
    :goto_20
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v1

    iput v1, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 1066
    const/4 v1, 0x1

    return v1

    .line 1068
    .end local v0    # "readerValue":Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .registers 4
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "resKey"    # Ljava/lang/String;

    .line 1054
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
