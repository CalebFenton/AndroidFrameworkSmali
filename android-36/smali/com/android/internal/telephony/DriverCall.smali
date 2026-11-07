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
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/DriverCall;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist AUDIO_QUALITY_AMR:I = 0x1

.field public static final blacklist AUDIO_QUALITY_AMR_WB:I = 0x2

.field public static final blacklist AUDIO_QUALITY_EVRC:I = 0x6

.field public static final blacklist AUDIO_QUALITY_EVRC_B:I = 0x7

.field public static final blacklist AUDIO_QUALITY_EVRC_NW:I = 0x9

.field public static final blacklist AUDIO_QUALITY_EVRC_WB:I = 0x8

.field public static final blacklist AUDIO_QUALITY_GSM_EFR:I = 0x3

.field public static final blacklist AUDIO_QUALITY_GSM_FR:I = 0x4

.field public static final blacklist AUDIO_QUALITY_GSM_HR:I = 0x5

.field public static final blacklist AUDIO_QUALITY_UNSPECIFIED:I


# instance fields
.field public blacklist TOA:I

.field public blacklist als:I

.field public blacklist audioQuality:I

.field public blacklist forwardedNumber:Ljava/lang/String;

.field public greylist index:I

.field public greylist isMT:Z

.field public blacklist isMpty:Z

.field public greylist isVoice:Z

.field public blacklist isVoicePrivacy:Z

.field public greylist name:Ljava/lang/String;

.field public blacklist namePresentation:I

.field public greylist number:Ljava/lang/String;

.field public greylist numberPresentation:I

.field public greylist state:Lcom/android/internal/telephony/DriverCall$State;

.field public blacklist uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    return-void
.end method

.method public static blacklist presentationFromCLIP(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_26

    const/4 v1, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v1, :cond_24

    if-ne p0, v0, :cond_d

    const/4 p0, 0x4

    return p0

    .line 186
    :cond_d
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal presentation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return v0

    :cond_25
    return v1

    :cond_26
    return v0
.end method

.method public static blacklist stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    if-eqz p0, :cond_37

    const/4 v0, 0x1

    if-eq p0, v0, :cond_34

    const/4 v0, 0x2

    if-eq p0, v0, :cond_31

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x5

    if-ne p0, v0, :cond_14

    .line 171
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 173
    :cond_14
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2b
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 169
    :cond_2e
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 168
    :cond_31
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 167
    :cond_34
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0

    .line 166
    :cond_37
    sget-object p0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    return-object p0
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/telephony/DriverCall;)I
    .registers 2

    .line 197
    iget p0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    iget p1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-ne p0, p1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    check-cast p1, Lcom/android/internal/telephony/DriverCall;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DriverCall;->compareTo(Lcom/android/internal/telephony/DriverCall;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",toa="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-boolean v2, p0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    if-eqz v2, :cond_2d

    const-string v2, "conf"

    goto :goto_2f

    :cond_2d
    const-string v2, "norm"

    :goto_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-boolean v2, p0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eqz v2, :cond_3c

    const-string v2, "mt"

    goto :goto_3e

    :cond_3c
    const-string v2, "mo"

    :goto_3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-boolean v2, p0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    if-eqz v2, :cond_53

    const-string v2, "voc"

    goto :goto_55

    :cond_53
    const-string v2, "nonvoc"

    :goto_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-boolean v1, p0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v1, :cond_62

    const-string v1, "evp"

    goto :goto_64

    :cond_62
    const-string v1, "noevp"

    :goto_64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",,cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",audioQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
