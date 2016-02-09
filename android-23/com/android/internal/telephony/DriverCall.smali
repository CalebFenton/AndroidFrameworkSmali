.class public Lcom/android/internal/telephony/DriverCall;
.super Ljava/lang/Object;
.source "DriverCall.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DriverCall$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/DriverCall;",
        ">;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DriverCall"


# instance fields
.field public TOA:I

.field public als:I

.field public index:I

.field public isMT:Z

.field public isMpty:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:Lcom/android/internal/telephony/DriverCall$State;

.field public uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static fromCLCCLine(Ljava/lang/String;)Lcom/android/internal/telephony/DriverCall;
    .locals 7
    .param p0, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 57
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    #@5
    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    #@8
    .line 61
    .local v2, "ret":Lcom/android/internal/telephony/DriverCall;
    new-instance v1, Lcom/android/internal/telephony/ATResponseParser;

    #@a
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ATResponseParser;-><init>(Ljava/lang/String;)V

    #@d
    .line 64
    .local v1, "p":Lcom/android/internal/telephony/ATResponseParser;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    #@10
    move-result v5

    #@11
    iput v5, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    #@13
    .line 65
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    #@16
    move-result v5

    #@17
    iput-boolean v5, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@19
    .line 66
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    #@1c
    move-result v5

    #@1d
    invoke-static {v5}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    #@20
    move-result-object v5

    #@21
    iput-object v5, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@23
    .line 68
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    #@26
    move-result v5

    #@27
    if-nez v5, :cond_2

    #@29
    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    #@2b
    .line 69
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    #@2e
    move-result v3

    #@2f
    iput-boolean v3, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    #@31
    .line 72
    const/4 v3, 0x1

    #@32
    iput v3, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    #@34
    .line 74
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->hasMore()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 77
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    iput-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@44
    .line 79
    iget-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@46
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@49
    move-result v3

    #@4a
    if-nez v3, :cond_0

    #@4c
    .line 80
    const/4 v3, 0x0

    #@4d
    iput-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@4f
    .line 83
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    #@52
    move-result v3

    #@53
    iput v3, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    #@55
    .line 89
    iget-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@57
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    #@59
    .line 88
    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    iput-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/telephony/ATParseEx; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    .line 97
    :cond_1
    return-object v2

    #@60
    :cond_2
    move v3, v4

    #@61
    .line 68
    goto :goto_0

    #@62
    .line 92
    :catch_0
    move-exception v0

    #@63
    .line 93
    .local v0, "ex":Lcom/android/internal/telephony/ATParseEx;
    const-string/jumbo v3, "DriverCall"

    #@66
    new-instance v4, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v5, "Invalid CLCC line: \'"

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    const-string/jumbo v5, "\'"

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 94
    return-object v6
.end method

.method public static presentationFromCLIP(I)I
    .locals 3
    .param p0, "cli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    packed-switch p0, :pswitch_data_0

    #@3
    .line 142
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "illegal presentation "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 137
    :pswitch_0
    const/4 v0, 0x1

    #@1e
    return v0

    #@1f
    .line 138
    :pswitch_1
    const/4 v0, 0x2

    #@20
    return v0

    #@21
    .line 139
    :pswitch_2
    const/4 v0, 0x3

    #@22
    return v0

    #@23
    .line 140
    :pswitch_3
    const/4 v0, 0x4

    #@24
    return v0

    #@25
    .line 136
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;
    .locals 3
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    packed-switch p0, :pswitch_data_0

    #@3
    .line 129
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "illegal call state "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 122
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    #@1f
    return-object v0

    #@20
    .line 123
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    #@22
    return-object v0

    #@23
    .line 124
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    #@25
    return-object v0

    #@26
    .line 125
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    #@28
    return-object v0

    #@29
    .line 126
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    #@2b
    return-object v0

    #@2c
    .line 127
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    #@2e
    return-object v0

    #@2f
    .line 121
    nop

    #@30
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


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/DriverCall;)I
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    #@0
    .prologue
    .line 153
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    #@2
    iget v1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 154
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 155
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    #@a
    iget v1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 156
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 158
    :cond_1
    const/4 v0, 0x1

    #@11
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "dc"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 151
    check-cast p1, Lcom/android/internal/telephony/DriverCall;

    #@2
    .end local p1    # "dc":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DriverCall;->compareTo(Lcom/android/internal/telephony/DriverCall;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ","

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@1b
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 108
    const-string/jumbo v1, ","

    #@22
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 109
    const-string/jumbo v1, "toa="

    #@29
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 109
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    #@2f
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 109
    const-string/jumbo v1, ","

    #@36
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 110
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    #@3c
    if-eqz v0, :cond_0

    #@3e
    const-string/jumbo v0, "conf"

    #@41
    .line 107
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 110
    const-string/jumbo v1, ","

    #@48
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 111
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    #@4e
    if-eqz v0, :cond_1

    #@50
    const-string/jumbo v0, "mt"

    #@53
    .line 107
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 111
    const-string/jumbo v1, ","

    #@5a
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 112
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->als:I

    #@60
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 112
    const-string/jumbo v1, ","

    #@67
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    .line 113
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    #@6d
    if-eqz v0, :cond_2

    #@6f
    const-string/jumbo v0, "voc"

    #@72
    .line 107
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    .line 113
    const-string/jumbo v1, ","

    #@79
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    .line 114
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    #@7f
    if-eqz v0, :cond_3

    #@81
    const-string/jumbo v0, "evp"

    #@84
    .line 107
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 114
    const-string/jumbo v1, ","

    #@8b
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 115
    const-string/jumbo v1, ",cli="

    #@92
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    .line 115
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    #@98
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    .line 115
    const-string/jumbo v1, ","

    #@9f
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    .line 116
    const-string/jumbo v1, ","

    #@a6
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v0

    #@aa
    .line 116
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    #@ac
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v0

    #@b4
    return-object v0

    #@b5
    .line 110
    :cond_0
    const-string/jumbo v0, "norm"

    #@b8
    goto :goto_0

    #@b9
    .line 111
    :cond_1
    const-string/jumbo v0, "mo"

    #@bc
    goto :goto_1

    #@bd
    .line 113
    :cond_2
    const-string/jumbo v0, "nonvoc"

    #@c0
    goto :goto_2

    #@c1
    .line 114
    :cond_3
    const-string/jumbo v0, "noevp"

    #@c4
    goto :goto_3
.end method
