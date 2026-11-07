.class public Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# instance fields
.field private final blacklist mChannel:I

.field private final blacklist mCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxApduDataLen:I


# direct methods
.method constructor blacklist <init>(IZ)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    .line 96
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mChannel:I

    if-eqz p2, :cond_12

    const p1, 0xffff

    goto :goto_14

    :cond_12
    const/16 p1, 0xff

    .line 97
    :goto_14
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mMaxApduDataLen:I

    return-void
.end method


# virtual methods
.method public blacklist addApdu(IIII)V
    .registers 14

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mChannel:I

    const/4 v7, 0x0

    const-string v8, ""

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;-><init>(IIIIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addApdu(IIIIILjava/lang/String;)V
    .registers 16

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mChannel:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;-><init>(IIIIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addApdu(IIIILjava/lang/String;)V
    .registers 15

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mChannel:I

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 v7, p0, 0x2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;-><init>(IIIIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addStoreData(Ljava/lang/String;)V
    .registers 13

    .line 78
    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mMaxApduDataLen:I

    mul-int/lit8 v6, v1, 0x2

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v7, 0x1

    if-nez v1, :cond_f

    move v8, v7

    goto :goto_15

    .line 81
    :cond_f
    iget v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mMaxApduDataLen:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v7

    div-int/2addr v1, v2

    move v8, v1

    :goto_15
    const/4 v1, 0x0

    move v9, v7

    :goto_17
    if-ge v9, v8, :cond_2f

    add-int v10, v1, v6

    .line 83
    invoke-virtual {p1, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v9, -0x1

    const/16 v1, 0x80

    const/16 v2, 0xe2

    const/16 v3, 0x11

    move-object v0, p0

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addApdu(IIIILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    move v1, v10

    goto :goto_17

    .line 87
    :cond_2f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x91

    add-int/lit8 v4, v8, -0x1

    const/16 v1, 0x80

    const/16 v2, 0xe2

    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addApdu(IIIILjava/lang/String;)V

    return-void
.end method

.method blacklist getCommands()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    return-object p0
.end method
