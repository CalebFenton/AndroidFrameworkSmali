.class public final Landroid/telecom/ParcelableConnection;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableConnection$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:Landroid/net/Uri;

.field private final mAddressPresentation:I

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mConferenceableConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectTimeMillis:J

.field private final mConnectionCapabilities:I

.field private final mConnectionProperties:I

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIsVoipAudioMode:Z

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mRingbackRequested:Z

.field private final mState:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 189
    new-instance v0, Landroid/telecom/ParcelableConnection$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/ParcelableConnection$1;-><init>()V

    #@5
    .line 188
    sput-object v0, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "state"    # I
    .param p3, "capabilities"    # I
    .param p4, "properties"    # I
    .param p5, "address"    # Landroid/net/Uri;
    .param p6, "addressPresentation"    # I
    .param p7, "callerDisplayName"    # Ljava/lang/String;
    .param p8, "callerDisplayNamePresentation"    # I
    .param p9, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p10, "videoState"    # I
    .param p11, "ringbackRequested"    # Z
    .param p12, "isVoipAudioMode"    # Z
    .param p13, "connectTimeMillis"    # J
    .param p15, "statusHints"    # Landroid/telecom/StatusHints;
    .param p16, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p18, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "III",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IZZJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p17, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@5
    .line 74
    iput p2, p0, Landroid/telecom/ParcelableConnection;->mState:I

    #@7
    .line 75
    iput p3, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    #@9
    .line 76
    iput p4, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    #@b
    .line 77
    iput-object p5, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    #@d
    .line 78
    iput p6, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    #@f
    .line 79
    iput-object p7, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    #@11
    .line 80
    iput p8, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    #@13
    .line 81
    iput-object p9, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@15
    .line 82
    iput p10, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    #@17
    .line 83
    iput-boolean p11, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    #@19
    .line 84
    iput-boolean p12, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    #@1b
    .line 85
    iput-wide p13, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    #@1d
    .line 86
    move-object/from16 v0, p15

    #@1f
    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@21
    .line 87
    move-object/from16 v0, p16

    #@23
    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@25
    .line 88
    move-object/from16 v0, p17

    #@27
    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    #@29
    .line 89
    move-object/from16 v0, p18

    #@2b
    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    #@2d
    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 243
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 133
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    #@2
    return v0
.end method

.method public final getConferenceableConnectionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 153
    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public getConnectionProperties()I
    .locals 1

    #@0
    .prologue
    .line 117
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    #@2
    return v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    #@2
    return v0
.end method

.method public getIsVoipAudioMode()Z
    .locals 1

    #@0
    .prologue
    .line 149
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    #@2
    return v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mState:I

    #@2
    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    #@2
    return v0
.end method

.method public isRingbackRequested()Z
    .locals 1

    #@0
    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 175
    const-string/jumbo v1, "ParcelableConnection [act:"

    #@8
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 176
    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@e
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 177
    const-string/jumbo v1, "], state:"

    #@15
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 178
    iget v1, p0, Landroid/telecom/ParcelableConnection;->mState:I

    #@1b
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 179
    const-string/jumbo v1, ", capabilities:"

    #@22
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 180
    iget v1, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    #@28
    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 181
    const-string/jumbo v1, ", properties:"

    #@33
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 182
    iget v1, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    #@39
    invoke-static {v1}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 183
    const-string/jumbo v1, ", extras:"

    #@44
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 184
    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    #@4a
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 249
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@5
    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@8
    .line 250
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mState:I

    #@a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 251
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    #@f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 252
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    #@14
    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@17
    .line 253
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    #@19
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 254
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    #@1e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 255
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    #@23
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 257
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@28
    if-eqz v3, :cond_0

    #@2a
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2c
    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v0

    #@30
    .line 256
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@33
    .line 258
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 259
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    #@3a
    if-eqz v0, :cond_1

    #@3c
    move v0, v1

    #@3d
    :goto_0
    int-to-byte v0, v0

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@41
    .line 260
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    #@43
    if-eqz v0, :cond_2

    #@45
    :goto_1
    int-to-byte v0, v1

    #@46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@49
    .line 261
    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    #@4b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@4e
    .line 262
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@50
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@53
    .line 263
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@55
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@58
    .line 264
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    #@5a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@5d
    .line 265
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    #@5f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@62
    .line 266
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    #@64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    .line 248
    return-void

    #@68
    :cond_1
    move v0, v2

    #@69
    .line 259
    goto :goto_0

    #@6a
    :cond_2
    move v1, v2

    #@6b
    .line 260
    goto :goto_1
.end method
