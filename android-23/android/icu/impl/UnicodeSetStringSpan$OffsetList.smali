.class final Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;
.super Ljava/lang/Object;
.source "UnicodeSetStringSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UnicodeSetStringSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OffsetList"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private length:I

.field private list:[I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

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
    sput-boolean v0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->-assertionsDisabled:Z

    #@b
    .line 1024
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1030
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@9
    .line 1029
    return-void
.end method


# virtual methods
.method public addOffset(I)V
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1075
    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@4
    add-int v0, v3, p1

    #@6
    .line 1076
    .local v0, "i":I
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@8
    array-length v3, v3

    #@9
    if-lt v0, v3, :cond_0

    #@b
    .line 1077
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@d
    array-length v3, v3

    #@e
    sub-int/2addr v0, v3

    #@f
    .line 1079
    :cond_0
    sget-boolean v3, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->-assertionsDisabled:Z

    #@11
    if-nez v3, :cond_2

    #@13
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@15
    aget v3, v3, v0

    #@17
    if-nez v3, :cond_1

    #@19
    move v1, v2

    #@1a
    :cond_1
    if-nez v1, :cond_2

    #@1c
    new-instance v1, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@21
    throw v1

    #@22
    .line 1080
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@24
    aput v2, v1, v0

    #@26
    .line 1081
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@28
    add-int/lit8 v1, v1, 0x1

    #@2a
    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@2c
    .line 1074
    return-void
.end method

.method public addOffsetAndCount(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1090
    sget-boolean v2, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->-assertionsDisabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    if-lez p2, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    :cond_0
    if-nez v1, :cond_1

    #@a
    new-instance v1, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v1

    #@10
    .line 1091
    :cond_1
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@12
    add-int v0, v1, p1

    #@14
    .line 1092
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@16
    array-length v1, v1

    #@17
    if-lt v0, v1, :cond_2

    #@19
    .line 1093
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@1b
    array-length v1, v1

    #@1c
    sub-int/2addr v0, v1

    #@1d
    .line 1095
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@1f
    aget v1, v1, v0

    #@21
    if-nez v1, :cond_4

    #@23
    .line 1096
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@25
    aput p2, v1, v0

    #@27
    .line 1097
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@2d
    .line 1089
    :cond_3
    :goto_0
    return-void

    #@2e
    .line 1098
    :cond_4
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@30
    aget v1, v1, v0

    #@32
    if-ge p2, v1, :cond_3

    #@34
    .line 1099
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@36
    aput p2, v1, v0

    #@38
    goto :goto_0
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1041
    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@3
    array-length v0, v2

    #@4
    .local v0, "i":I
    move v1, v0

    #@5
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    #@7
    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    #@9
    .line 1042
    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@b
    aput v3, v2, v0

    #@d
    move v1, v0

    #@e
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@f
    .line 1044
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@11
    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@13
    .line 1040
    return-void
.end method

.method public containsOffset(I)Z
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1107
    iget v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@3
    add-int v0, v2, p1

    #@5
    .line 1108
    .local v0, "i":I
    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@7
    array-length v2, v2

    #@8
    if-lt v0, v2, :cond_0

    #@a
    .line 1109
    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@c
    array-length v2, v2

    #@d
    sub-int/2addr v0, v2

    #@e
    .line 1111
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@10
    aget v2, v2, v0

    #@12
    if-eqz v2, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    :cond_1
    return v1
.end method

.method public hasCountAtOffset(II)Z
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1118
    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@3
    add-int v0, v3, p1

    #@5
    .line 1119
    .local v0, "i":I
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@7
    array-length v3, v3

    #@8
    if-lt v0, v3, :cond_0

    #@a
    .line 1120
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@c
    array-length v3, v3

    #@d
    sub-int/2addr v0, v3

    #@e
    .line 1122
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@10
    aget v1, v3, v0

    #@12
    .line 1123
    .local v1, "oldCount":I
    if-eqz v1, :cond_1

    #@14
    if-gt v1, p2, :cond_1

    #@16
    const/4 v2, 0x1

    #@17
    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1048
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public popMinimum(Landroid/icu/util/OutputInt;)I
    .locals 6
    .param p1, "outCount"    # Landroid/icu/util/OutputInt;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1133
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@3
    .line 1134
    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@5
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@7
    array-length v3, v3

    #@8
    if-ge v1, v3, :cond_2

    #@a
    .line 1135
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@c
    aget v0, v3, v1

    #@e
    .line 1136
    .local v0, "count":I
    if-eqz v0, :cond_0

    #@10
    .line 1137
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@12
    aput v5, v3, v1

    #@14
    .line 1138
    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@1a
    .line 1139
    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@1c
    sub-int v2, v1, v3

    #@1e
    .line 1140
    .local v2, "result":I
    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@20
    .line 1141
    if-eqz p1, :cond_1

    #@22
    iput v0, p1, Landroid/icu/util/OutputInt;->value:I

    #@24
    .line 1142
    :cond_1
    return v2

    #@25
    .line 1149
    .end local v0    # "count":I
    .end local v2    # "result":I
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@27
    array-length v3, v3

    #@28
    iget v4, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@2a
    sub-int v2, v3, v4

    #@2c
    .line 1150
    .restart local v2    # "result":I
    const/4 v1, 0x0

    #@2d
    .line 1152
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@2f
    aget v0, v3, v1

    #@31
    .restart local v0    # "count":I
    if-nez v0, :cond_3

    #@33
    .line 1153
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1155
    :cond_3
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@38
    aput v5, v3, v1

    #@3a
    .line 1156
    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@3c
    add-int/lit8 v3, v3, -0x1

    #@3e
    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@40
    .line 1157
    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@42
    .line 1158
    if-eqz p1, :cond_4

    #@44
    iput v0, p1, Landroid/icu/util/OutputInt;->value:I

    #@46
    .line 1159
    :cond_4
    add-int v3, v2, v1

    #@48
    return v3
.end method

.method public setMaxLength(I)V
    .locals 1
    .param p1, "maxLength"    # I

    #@0
    .prologue
    .line 1034
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@2
    array-length v0, v0

    #@3
    if-le p1, v0, :cond_0

    #@5
    .line 1035
    new-array v0, p1, [I

    #@7
    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@9
    .line 1037
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->clear()V

    #@c
    .line 1033
    return-void
.end method

.method public shift(I)V
    .locals 3
    .param p1, "delta"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1059
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@3
    add-int v0, v1, p1

    #@5
    .line 1060
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@7
    array-length v1, v1

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 1061
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@c
    array-length v1, v1

    #@d
    sub-int/2addr v0, v1

    #@e
    .line 1063
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@10
    aget v1, v1, v0

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1064
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    #@16
    aput v2, v1, v0

    #@18
    .line 1065
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    #@1e
    .line 1067
    :cond_1
    iput v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    #@20
    .line 1058
    return-void
.end method
