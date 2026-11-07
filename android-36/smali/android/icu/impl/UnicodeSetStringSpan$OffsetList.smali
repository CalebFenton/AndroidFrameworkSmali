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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o length:I

.field private greylist-max-o list:[I

.field private greylist-max-o start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1039
    const-class v0, Landroid/icu/impl/UnicodeSetStringSpan;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    .line 1046
    return-void
.end method


# virtual methods
.method public greylist-max-o addOffset(I)V
    .registers 5
    .param p1, "offset"    # I

    .line 1090
    iget v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1091
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    .line 1092
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1094
    :cond_c
    nop

    .line 1095
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 1096
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    .line 1097
    return-void
.end method

.method public greylist-max-o addOffsetAndCount(II)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 1105
    nop

    .line 1106
    iget v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1107
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 1108
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1110
    :cond_d
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v1, v0

    if-nez v1, :cond_1e

    .line 1111
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput p2, v1, v0

    .line 1112
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    goto :goto_28

    .line 1113
    :cond_1e
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v1, v0

    if-ge p2, v1, :cond_28

    .line 1114
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput p2, v1, v0

    .line 1116
    :cond_28
    :goto_28
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 4

    .line 1056
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v0, v0

    .local v0, "i":I
    :goto_3
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/4 v2, 0x0

    if-lez v0, :cond_e

    .line 1057
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput v2, v0, v1

    move v0, v1

    goto :goto_3

    .line 1059
    .end local v1    # "i":I
    :cond_e
    iput v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    iput v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    .line 1060
    return-void
.end method

.method public greylist-max-o containsOffset(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 1122
    iget v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1123
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    .line 1124
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1126
    :cond_c
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v1, v0

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public greylist-max-o hasCountAtOffset(II)Z
    .registers 6
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 1133
    iget v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1134
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    .line 1135
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1137
    :cond_c
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v1, v0

    .line 1138
    .local v1, "oldCount":I
    if-eqz v1, :cond_16

    if-gt v1, p2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method public greylist-max-o isEmpty()Z
    .registers 2

    .line 1063
    iget v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o popMinimum(Landroid/icu/util/OutputInt;)I
    .registers 7
    .param p1, "outCount"    # Landroid/icu/util/OutputInt;

    .line 1148
    iget v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    .line 1149
    .local v0, "i":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_26

    .line 1150
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v1, v0

    .line 1151
    .local v1, "count":I
    if-eqz v1, :cond_25

    .line 1152
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput v2, v3, v0

    .line 1153
    iget v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    .line 1154
    iget v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    sub-int v2, v0, v2

    .line 1155
    .local v2, "result":I
    iput v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    .line 1156
    if-eqz p1, :cond_24

    iput v1, p1, Landroid/icu/util/OutputInt;->value:I

    .line 1157
    :cond_24
    return v2

    .line 1159
    .end local v1    # "count":I
    .end local v2    # "result":I
    :cond_25
    goto :goto_2

    .line 1164
    :cond_26
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    sub-int/2addr v1, v3

    .line 1165
    .local v1, "result":I
    const/4 v0, 0x0

    .line 1167
    :goto_2d
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v3, v3, v0

    move v4, v3

    .local v4, "count":I
    if-nez v3, :cond_37

    .line 1168
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1170
    :cond_37
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput v2, v3, v0

    .line 1171
    iget v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    .line 1172
    iput v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    .line 1173
    if-eqz p1, :cond_47

    iput v4, p1, Landroid/icu/util/OutputInt;->value:I

    .line 1174
    :cond_47
    add-int v2, v1, v0

    return v2
.end method

.method public greylist-max-o setMaxLength(I)V
    .registers 3
    .param p1, "maxLength"    # I

    .line 1049
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v0, v0

    if-le p1, v0, :cond_9

    .line 1050
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    .line 1052
    :cond_9
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->clear()V

    .line 1053
    return-void
.end method

.method public greylist-max-o shift(I)V
    .registers 5
    .param p1, "delta"    # I

    .line 1074
    iget v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int/2addr v0, p1

    .line 1075
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    .line 1076
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1078
    :cond_c
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1d

    .line 1079
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 1080
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    .line 1082
    :cond_1d
    iput v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    .line 1083
    return-void
.end method
