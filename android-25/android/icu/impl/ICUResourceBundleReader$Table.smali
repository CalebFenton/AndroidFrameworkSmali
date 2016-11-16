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
.field static final synthetic -assertionsDisabled:Z

.field private static final URESDATA_ITEM_NOT_FOUND:I = -0x1


# instance fields
.field protected key32Offsets:[I

.field protected keyOffsets:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader$Table;->-assertionsDisabled:Z

    #@b
    .line 992
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1073
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
    .line 1010
    const/4 v3, 0x0

    #@1
    .line 1011
    .local v3, "start":I
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    #@3
    .line 1012
    .local v0, "limit":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@5
    .line 1013
    add-int v4, v3, v0

    #@7
    ushr-int/lit8 v1, v4, 0x1

    #@9
    .line 1014
    .local v1, "mid":I
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 1015
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@f
    aget-char v4, v4, v1

    #@11
    invoke-static {p1, p2, v4}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap6(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I

    #@14
    move-result v2

    #@15
    .line 1019
    .local v2, "result":I
    :goto_1
    if-gez v2, :cond_1

    #@17
    .line 1020
    move v0, v1

    #@18
    goto :goto_0

    #@19
    .line 1017
    .end local v2    # "result":I
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    #@1b
    aget v4, v4, v1

    #@1d
    invoke-static {p1, p2, v4}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap5(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I

    #@20
    move-result v2

    #@21
    .restart local v2    # "result":I
    goto :goto_1

    #@22
    .line 1021
    :cond_1
    if-lez v2, :cond_2

    #@24
    .line 1022
    add-int/lit8 v3, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1025
    :cond_2
    return v1

    #@28
    .line 1028
    .end local v1    # "mid":I
    .end local v2    # "result":I
    :cond_3
    const/4 v4, -0x1

    #@29
    return v4
.end method

.method getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V
    .locals 11
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;
    .param p3, "value"    # Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    .param p4, "sink"    # Landroid/icu/impl/UResource$TableSink;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1036
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    iget v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    #@5
    if-ge v1, v8, :cond_9

    #@7
    .line 1037
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@9
    if-eqz v8, :cond_0

    #@b
    .line 1038
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@d
    aget-char v8, v8, v1

    #@f
    invoke-static {p1, v8, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap13(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V

    #@12
    .line 1042
    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@15
    move-result v3

    #@16
    .line 1043
    .local v3, "res":I
    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@19
    move-result v7

    #@1a
    .line 1044
    .local v7, "type":I
    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_4

    #@20
    .line 1045
    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@23
    move-result v2

    #@24
    .line 1046
    .local v2, "numItems":I
    invoke-virtual {p4, p2, v2}, Landroid/icu/impl/UResource$TableSink;->getOrCreateArraySink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$ArraySink;

    #@27
    move-result-object v4

    #@28
    .line 1047
    .local v4, "subSink":Landroid/icu/impl/UResource$ArraySink;
    if-eqz v4, :cond_3

    #@2a
    .line 1048
    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@2d
    move-result-object v0

    #@2e
    .line 1049
    .local v0, "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    sget-boolean v8, Landroid/icu/impl/ICUResourceBundleReader$Table;->-assertionsDisabled:Z

    #@30
    if-nez v8, :cond_2

    #@32
    iget v8, v0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    #@34
    if-ne v8, v2, :cond_1

    #@36
    move v8, v9

    #@37
    :goto_2
    if-nez v8, :cond_2

    #@39
    new-instance v8, Ljava/lang/AssertionError;

    #@3b
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@3e
    throw v8

    #@3f
    .line 1040
    .end local v0    # "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    .end local v2    # "numItems":I
    .end local v3    # "res":I
    .end local v4    # "subSink":Landroid/icu/impl/UResource$ArraySink;
    .end local v7    # "type":I
    :cond_0
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    #@41
    aget v8, v8, v1

    #@43
    invoke-static {p1, v8, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap14(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V

    #@46
    goto :goto_1

    #@47
    .restart local v0    # "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    .restart local v2    # "numItems":I
    .restart local v3    # "res":I
    .restart local v4    # "subSink":Landroid/icu/impl/UResource$ArraySink;
    .restart local v7    # "type":I
    :cond_1
    move v8, v10

    #@48
    .line 1049
    goto :goto_2

    #@49
    .line 1050
    :cond_2
    invoke-virtual {v0, p1, p2, p3, v4}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V

    #@4c
    .line 1036
    .end local v0    # "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    .end local v2    # "numItems":I
    .end local v4    # "subSink":Landroid/icu/impl/UResource$ArraySink;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1052
    :cond_4
    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    #@52
    move-result v8

    #@53
    if-eqz v8, :cond_7

    #@55
    .line 1053
    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap10(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@58
    move-result v2

    #@59
    .line 1054
    .restart local v2    # "numItems":I
    invoke-virtual {p4, p2, v2}, Landroid/icu/impl/UResource$TableSink;->getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;

    #@5c
    move-result-object v5

    #@5d
    .line 1055
    .local v5, "subSink":Landroid/icu/impl/UResource$TableSink;
    if-eqz v5, :cond_3

    #@5f
    .line 1056
    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@62
    move-result-object v6

    #@63
    .line 1057
    .local v6, "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    sget-boolean v8, Landroid/icu/impl/ICUResourceBundleReader$Table;->-assertionsDisabled:Z

    #@65
    if-nez v8, :cond_6

    #@67
    iget v8, v6, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    #@69
    if-ne v8, v2, :cond_5

    #@6b
    move v8, v9

    #@6c
    :goto_4
    if-nez v8, :cond_6

    #@6e
    new-instance v8, Ljava/lang/AssertionError;

    #@70
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@73
    throw v8

    #@74
    :cond_5
    move v8, v10

    #@75
    goto :goto_4

    #@76
    .line 1058
    :cond_6
    invoke-virtual {v6, p1, p2, p3, v5}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V

    #@79
    goto :goto_3

    #@7a
    .line 1064
    .end local v2    # "numItems":I
    .end local v5    # "subSink":Landroid/icu/impl/UResource$TableSink;
    .end local v6    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    :cond_7
    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap0(Landroid/icu/impl/ICUResourceBundleReader;I)Z

    #@7d
    move-result v8

    #@7e
    if-eqz v8, :cond_8

    #@80
    .line 1065
    invoke-virtual {p4, p2}, Landroid/icu/impl/UResource$TableSink;->putNoFallback(Landroid/icu/impl/UResource$Key;)V

    #@83
    goto :goto_3

    #@84
    .line 1067
    :cond_8
    invoke-static {p3, v3}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->-set0(Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;I)I

    #@87
    .line 1068
    invoke-virtual {p4, p2, p3}, Landroid/icu/impl/UResource$TableSink;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    #@8a
    goto :goto_3

    #@8b
    .line 1071
    .end local v3    # "res":I
    .end local v7    # "type":I
    :cond_9
    invoke-virtual {p4}, Landroid/icu/impl/UResource$TableSink;->leave()V

    #@8e
    .line 1035
    return-void
.end method

.method getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 2
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 997
    if-ltz p2, :cond_0

    #@3
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    #@5
    if-gt v0, p2, :cond_1

    #@7
    .line 998
    :cond_0
    return-object v1

    #@8
    .line 1000
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 1001
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    #@e
    aget-char v0, v0, p2

    #@10
    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap11(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 1000
    :goto_0
    return-object v0

    #@15
    .line 1002
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    #@17
    aget v0, v0, p2

    #@19
    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap12(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

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
    .line 1032
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
