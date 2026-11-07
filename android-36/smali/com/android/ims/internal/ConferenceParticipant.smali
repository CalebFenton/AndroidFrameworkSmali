.class public Lcom/android/ims/internal/ConferenceParticipant;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist ANONYMOUS_INVALID_HOST:Ljava/lang/String; = "anonymous.invalid"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ConferenceParticipant"


# instance fields
.field private blacklist mCallDirection:I

.field private blacklist mConnectElapsedTime:J

.field private blacklist mConnectTime:J

.field private final blacklist mDisplayName:Ljava/lang/String;

.field private final blacklist mEndpoint:Landroid/net/Uri;

.field private final blacklist mHandle:Landroid/net/Uri;

.field private final blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Lcom/android/ims/internal/ConferenceParticipant$1;

    invoke-direct {v0}, Lcom/android/ims/internal/ConferenceParticipant$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/ConferenceParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;II)V
    .registers 6
    .param p1, "handle"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "endpoint"    # Landroid/net/Uri;
    .param p4, "state"    # I
    .param p5, "callDirection"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    .line 95
    iput-object p2, p0, Lcom/android/ims/internal/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/android/ims/internal/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    .line 97
    iput p4, p0, Lcom/android/ims/internal/ConferenceParticipant;->mState:I

    .line 98
    iput p5, p0, Lcom/android/ims/internal/ConferenceParticipant;->mCallDirection:I

    .line 99
    return-void
.end method

.method public static blacklist getParticipantAddress(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8
    .param p0, "address"    # Landroid/net/Uri;
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 314
    if-nez p0, :cond_3

    .line 315
    return-object p0

    .line 333
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 335
    return-object p0

    .line 338
    :cond_e
    const-string v1, "[@;:]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "numberParts":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_18

    .line 340
    return-object p0

    .line 342
    :cond_18
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "formattedNumber":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 351
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    :cond_26
    nop

    .line 355
    if-eqz v2, :cond_2b

    move-object v3, v2

    goto :goto_2c

    :cond_2b
    move-object v3, v0

    .line 354
    :goto_2c
    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallDirection()I
    .registers 2

    .line 286
    iget v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mCallDirection:I

    return v0
.end method

.method public blacklist getConnectElapsedTime()J
    .registers 3

    .line 273
    iget-wide v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectElapsedTime:J

    return-wide v0
.end method

.method public blacklist getConnectTime()J
    .registers 3

    .line 262
    iget-wide v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectTime:J

    return-wide v0
.end method

.method public blacklist getDisplayName()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEndpoint()Landroid/net/Uri;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getHandle()Landroid/net/Uri;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getParticipantPresentation()I
    .registers 10

    .line 145
    invoke-virtual {p0}, Lcom/android/ims/internal/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    .line 146
    .local v0, "address":Landroid/net/Uri;
    const/4 v1, 0x2

    if-nez v0, :cond_8

    .line 147
    return v1

    .line 150
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 153
    return v1

    .line 161
    :cond_13
    const-string v3, "[;]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "hostParts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 166
    .local v4, "addressPart":Ljava/lang/String;
    const-string v5, "[@]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "numberParts":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-eq v6, v1, :cond_27

    .line 171
    return v7

    .line 173
    :cond_27
    aget-object v6, v5, v7

    .line 177
    .local v6, "hostName":Ljava/lang/String;
    const-string v8, "anonymous.invalid"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 178
    return v1

    .line 181
    :cond_32
    return v7
.end method

.method public blacklist getState()I
    .registers 2

    .line 255
    iget v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mState:I

    return v0
.end method

.method public blacklist setCallDirection(I)V
    .registers 2
    .param p1, "callDirection"    # I

    .line 298
    iput p1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mCallDirection:I

    .line 299
    return-void
.end method

.method public blacklist setConnectElapsedTime(J)V
    .registers 3
    .param p1, "connectElapsedTime"    # J

    .line 277
    iput-wide p1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectElapsedTime:J

    .line 278
    return-void
.end method

.method public blacklist setConnectTime(J)V
    .registers 3
    .param p1, "connectTime"    # J

    .line 266
    iput-wide p1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectTime:J

    .line 267
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ConferenceParticipant Handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    const-string v2, "ConferenceParticipant"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, " DisplayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, " Endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, " State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Lcom/android/ims/internal/ConferenceParticipant;->mState:I

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, " ConnectTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Lcom/android/ims/internal/ConferenceParticipant;->getConnectTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, " ConnectElapsedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/android/ims/internal/ConferenceParticipant;->getConnectElapsedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, " Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Lcom/android/ims/internal/ConferenceParticipant;->getCallDirection()I

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "Incoming"

    goto :goto_67

    :cond_65
    const-string v1, "Outgoing"

    :goto_67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 192
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mHandle:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 193
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mEndpoint:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 195
    iget v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-wide v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-wide v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mConnectElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    iget v0, p0, Lcom/android/ims/internal/ConferenceParticipant;->mCallDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return-void
.end method
