.class Landroid/icu/impl/ICUResourceBundleReader$Array;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Array"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/ICUResourceBundleReader$Array;

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
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader$Array;->-assertionsDisabled:Z

    #@b
    .line 936
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
    .line 937
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V
    .locals 11
    .param p1, "reader"    # Landroid/icu/impl/ICUResourceBundleReader;
    .param p2, "key"    # Landroid/icu/impl/UResource$Key;
    .param p3, "value"    # Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
    .param p4, "sink"    # Landroid/icu/impl/UResource$ArraySink;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 940
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    iget v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    #@5
    if-ge v1, v8, :cond_7

    #@7
    .line 941
    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@a
    move-result v3

    #@b
    .line 942
    .local v3, "res":I
    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@e
    move-result v7

    #@f
    .line 943
    .local v7, "type":I
    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_3

    #@15
    .line 944
    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@18
    move-result v2

    #@19
    .line 945
    .local v2, "numItems":I
    invoke-virtual {p4, v1, v2}, Landroid/icu/impl/UResource$ArraySink;->getOrCreateArraySink(II)Landroid/icu/impl/UResource$ArraySink;

    #@1c
    move-result-object v4

    #@1d
    .line 946
    .local v4, "subSink":Landroid/icu/impl/UResource$ArraySink;
    if-eqz v4, :cond_2

    #@1f
    .line 947
    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    #@22
    move-result-object v0

    #@23
    .line 948
    .local v0, "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    sget-boolean v8, Landroid/icu/impl/ICUResourceBundleReader$Array;->-assertionsDisabled:Z

    #@25
    if-nez v8, :cond_1

    #@27
    iget v8, v0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    #@29
    if-ne v8, v2, :cond_0

    #@2b
    move v8, v9

    #@2c
    :goto_1
    if-nez v8, :cond_1

    #@2e
    new-instance v8, Ljava/lang/AssertionError;

    #@30
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@33
    throw v8

    #@34
    :cond_0
    move v8, v10

    #@35
    goto :goto_1

    #@36
    .line 949
    :cond_1
    invoke-virtual {v0, p1, p2, p3, v4}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V

    #@39
    .line 940
    .end local v0    # "array":Landroid/icu/impl/ICUResourceBundleReader$Array;
    .end local v2    # "numItems":I
    .end local v4    # "subSink":Landroid/icu/impl/UResource$ArraySink;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 951
    :cond_3
    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_6

    #@42
    .line 952
    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap10(Landroid/icu/impl/ICUResourceBundleReader;I)I

    #@45
    move-result v2

    #@46
    .line 953
    .restart local v2    # "numItems":I
    invoke-virtual {p4, v1, v2}, Landroid/icu/impl/UResource$ArraySink;->getOrCreateTableSink(II)Landroid/icu/impl/UResource$TableSink;

    #@49
    move-result-object v5

    #@4a
    .line 954
    .local v5, "subSink":Landroid/icu/impl/UResource$TableSink;
    if-eqz v5, :cond_2

    #@4c
    .line 955
    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    #@4f
    move-result-object v6

    #@50
    .line 956
    .local v6, "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    sget-boolean v8, Landroid/icu/impl/ICUResourceBundleReader$Array;->-assertionsDisabled:Z

    #@52
    if-nez v8, :cond_5

    #@54
    iget v8, v6, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    #@56
    if-ne v8, v2, :cond_4

    #@58
    move v8, v9

    #@59
    :goto_3
    if-nez v8, :cond_5

    #@5b
    new-instance v8, Ljava/lang/AssertionError;

    #@5d
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@60
    throw v8

    #@61
    :cond_4
    move v8, v10

    #@62
    goto :goto_3

    #@63
    .line 957
    :cond_5
    invoke-virtual {v6, p1, p2, p3, v5}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V

    #@66
    goto :goto_2

    #@67
    .line 964
    .end local v2    # "numItems":I
    .end local v5    # "subSink":Landroid/icu/impl/UResource$TableSink;
    .end local v6    # "table":Landroid/icu/impl/ICUResourceBundleReader$Table;
    :cond_6
    invoke-static {p3, v3}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->-set0(Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;I)I

    #@6a
    .line 965
    invoke-virtual {p4, v1, p3}, Landroid/icu/impl/UResource$ArraySink;->put(ILandroid/icu/impl/UResource$Value;)V

    #@6d
    goto :goto_2

    #@6e
    .line 968
    .end local v3    # "res":I
    .end local v7    # "type":I
    :cond_7
    invoke-virtual {p4}, Landroid/icu/impl/UResource$ArraySink;->leave()V

    #@71
    .line 939
    return-void
.end method
