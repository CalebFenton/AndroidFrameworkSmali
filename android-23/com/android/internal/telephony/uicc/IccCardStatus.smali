.class public Lcom/android/internal/telephony/uicc/IccCardStatus;
.super Ljava/lang/Object;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;,
        Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    }
.end annotation


# static fields
.field public static final CARD_MAX_APPS:I = 0x8


# instance fields
.field public mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

.field public mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field public mCdmaSubscriptionAppIndex:I

.field public mGsmUmtsSubscriptionAppIndex:I

.field public mImsSubscriptionAppIndex:I

.field public mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setCardState(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    #@3
    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unrecognized RIL_CardState: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 69
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@21
    .line 66
    :goto_0
    return-void

    #@22
    .line 72
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@26
    goto :goto_0

    #@27
    .line 75
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@29
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@2b
    goto :goto_0

    #@2c
    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setUniversalPinState(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    #@3
    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unrecognized RIL_PinState: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 85
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@21
    .line 82
    :goto_0
    return-void

    #@22
    .line 88
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@26
    goto :goto_0

    #@27
    .line 91
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@29
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@2b
    goto :goto_0

    #@2c
    .line 94
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@2e
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@30
    goto :goto_0

    #@31
    .line 97
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@33
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@35
    goto :goto_0

    #@36
    .line 100
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@38
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@3a
    goto :goto_0

    #@3b
    .line 83
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 112
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "IccCardState {"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, ","

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@1d
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 114
    const-string/jumbo v3, ",num_apps="

    #@24
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 114
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@2a
    array-length v3, v3

    #@2b
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 115
    const-string/jumbo v3, ",gsm_id="

    #@32
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 115
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    #@38
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 116
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    #@3d
    if-ltz v2, :cond_1

    #@3f
    .line 117
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    #@41
    if-ge v2, v4, :cond_1

    #@43
    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@45
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    #@47
    aget-object v0, v2, v3

    #@49
    .line 119
    .local v0, "app":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    if-nez v0, :cond_0

    #@4b
    const-string/jumbo v0, "null"

    #@4e
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    .line 122
    :cond_1
    const-string/jumbo v2, ",cdma_id="

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    .line 123
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    #@5f
    if-ltz v2, :cond_3

    #@61
    .line 124
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    #@63
    if-ge v2, v4, :cond_3

    #@65
    .line 125
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@67
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    #@69
    aget-object v0, v2, v3

    #@6b
    .line 126
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    if-nez v0, :cond_2

    #@6d
    const-string/jumbo v0, "null"

    #@70
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    .line 129
    :cond_3
    const-string/jumbo v2, ",ims_id="

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    #@7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    .line 130
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    #@81
    if-ltz v2, :cond_5

    #@83
    .line 131
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    #@85
    if-ge v2, v4, :cond_5

    #@87
    .line 132
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@89
    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    #@8b
    aget-object v0, v2, v3

    #@8d
    .line 133
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    if-nez v0, :cond_4

    #@8f
    const-string/jumbo v0, "null"

    #@92
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    .line 136
    :cond_5
    const-string/jumbo v2, "}"

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    return-object v2
.end method
