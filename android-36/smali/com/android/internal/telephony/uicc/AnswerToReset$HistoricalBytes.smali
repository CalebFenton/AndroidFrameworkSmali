.class public Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
.super Ljava/lang/Object;
.source "AnswerToReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AnswerToReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoricalBytes"
.end annotation


# instance fields
.field private final blacklist mCategory:B

.field private final blacklist mNodes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mRawData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$smparseHistoricalBytes([BII)Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->parseHistoricalBytes([BII)Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>([BLandroid/util/ArrayMap;B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[B>;B)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mRawData:[B

    .line 113
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mNodes:Landroid/util/ArrayMap;

    .line 114
    iput-byte p3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mCategory:B

    return-void
.end method

.method private static blacklist parseHistoricalBytes([BII)Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    .registers 8

    const/4 v0, 0x0

    if-lez p2, :cond_2c

    add-int v1, p1, p2

    .line 93
    array-length v2, p0

    if-le v1, v2, :cond_9

    goto :goto_2c

    .line 96
    :cond_9
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    add-int/lit8 v3, p1, 0x1

    :goto_10
    if-ge v3, v1, :cond_1b

    if-lez v3, :cond_1b

    add-int/lit8 v4, v1, -0x1

    .line 101
    invoke-static {v3, v2, p0, v4}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->parseLtvNode(ILandroid/util/ArrayMap;[BI)I

    move-result v3

    goto :goto_10

    :cond_1b
    if-gez v3, :cond_1e

    return-object v0

    .line 106
    :cond_1e
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 107
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    new-instance p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    aget-byte p1, v0, v1

    invoke-direct {p0, v0, v2, p1}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;-><init>([BLandroid/util/ArrayMap;B)V

    return-object p0

    :cond_2c
    :goto_2c
    return-object v0
.end method

.method private static blacklist parseLtvNode(ILandroid/util/ArrayMap;[BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[B>;[BI)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-le p0, p3, :cond_4

    return v0

    .line 122
    :cond_4
    aget-byte v1, p2, p0

    and-int/lit16 v2, v1, 0xf0

    shr-int/lit8 v2, v2, 0x4

    add-int/lit8 p0, p0, 0x1

    and-int/lit8 v1, v1, 0xf

    add-int v3, p0, v1

    add-int/lit8 p3, p3, 0x1

    if-gt v3, p3, :cond_25

    if-nez v1, :cond_17

    goto :goto_25

    .line 127
    :cond_17
    new-array p3, v1, [B

    const/4 v0, 0x0

    .line 128
    invoke-static {p2, p0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_25
    :goto_25
    return v0
.end method


# virtual methods
.method public blacklist getCategory()B
    .registers 1

    .line 76
    iget-byte p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mCategory:B

    return p0
.end method

.method public blacklist getRawData()[B
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mRawData:[B

    return-object p0
.end method

.method public blacklist getValue(I)[B
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->mNodes:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
