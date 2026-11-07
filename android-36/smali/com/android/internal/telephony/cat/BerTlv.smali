.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final blacklist BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final blacklist BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final blacklist BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final blacklist BER_UNKNOWN_TAG:I


# instance fields
.field private blacklist mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLengthValid:Z

.field private blacklist mTag:I


# direct methods
.method private constructor blacklist <init>(ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;Z)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 41
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    return-void
.end method

.method public static blacklist decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 79
    const-string v0, " endIndex="

    .line 80
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 86
    :try_start_5
    aget-byte v4, p0, v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_7} :catch_fe
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_5 .. :try_end_7} :catch_f1

    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0xd0

    .line 87
    const-string v7, " curIndex="

    const/16 v8, 0x80

    const/16 v9, 0xff

    if-ne v5, v6, :cond_81

    const/4 v4, 0x2

    .line 89
    :try_start_14
    aget-byte v10, p0, v3
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_16} :catch_7e
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_14 .. :try_end_16} :catch_f1

    and-int/2addr v10, v9

    if-ge v10, v8, :cond_1b

    goto/16 :goto_91

    :cond_1b
    const/16 v11, 0x81

    if-ne v10, v11, :cond_55

    const/4 v10, 0x3

    .line 93
    :try_start_20
    aget-byte v4, p0, v4

    and-int/2addr v4, v9

    if-lt v4, v8, :cond_29

    move v12, v10

    move v10, v4

    move v4, v12

    goto :goto_91

    .line 95
    :cond_29
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length < 0x80 length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw p0
    :try_end_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_52} :catch_52
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_20 .. :try_end_52} :catch_f1

    :catch_52
    move v3, v10

    goto/16 :goto_fe

    .line 103
    :cond_55
    :try_start_55
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected first byte to be length or a length tag and < 0x81 byte= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw p0
    :try_end_7e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_7e} :catch_7e
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_55 .. :try_end_7e} :catch_f1

    :catch_7e
    move v3, v4

    goto/16 :goto_fe

    .line 110
    :cond_81
    :try_start_81
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0
    :try_end_87
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_81 .. :try_end_87} :catch_fe
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_81 .. :try_end_87} :catch_f1

    and-int/lit8 v4, v4, 0x7f

    if-ne v0, v4, :cond_8f

    move v4, v2

    move v5, v4

    move v10, v5

    goto :goto_91

    :cond_8f
    move v10, v2

    move v4, v3

    :goto_91
    sub-int v0, v1, v4

    if-lt v0, v10, :cond_ca

    .line 130
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object p0

    if-ne v5, v6, :cond_c3

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_a0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 136
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    if-lt v4, v8, :cond_b8

    if-gt v4, v9, :cond_b8

    add-int/lit8 v4, v4, 0x3

    :goto_b6
    add-int/2addr v1, v4

    goto :goto_a0

    :cond_b8
    if-ltz v4, :cond_bf

    if-ge v4, v8, :cond_bf

    add-int/lit8 v4, v4, 0x2

    goto :goto_b6

    :cond_bf
    move v3, v2

    :cond_c0
    if-eq v10, v1, :cond_c3

    goto :goto_c4

    :cond_c3
    move v2, v3

    .line 159
    :goto_c4
    new-instance v0, Lcom/android/internal/telephony/cat/BerTlv;

    invoke-direct {v0, v5, p0, v2}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;Z)V

    return-object v0

    .line 125
    :cond_ca
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command had extra data endIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw p0

    :catch_f1
    move-exception p0

    .line 120
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ResultException;->explanation()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v0

    .line 116
    :catch_fe
    :goto_fe
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndexOutOfBoundsException  curIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getComprehensionTlvs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getTag()I
    .registers 1

    .line 59
    iget p0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    return p0
.end method

.method public blacklist isLengthValid()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    return p0
.end method
