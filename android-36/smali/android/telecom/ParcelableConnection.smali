.class public final Landroid/telecom/ParcelableConnection;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAddress:Landroid/net/Uri;

.field private final greylist-max-o mAddressPresentation:I

.field private blacklist mCallDirection:I

.field private final greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private final greylist-max-o mCallerDisplayNamePresentation:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private final greylist-max-o mConferenceableConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectElapsedTimeMillis:J

.field private final greylist-max-o mConnectTimeMillis:J

.field private final greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionProperties:I

.field private final greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mIsVoipAudioMode:Z

.field private greylist-max-o mParentCallId:Ljava/lang/String;

.field private final greylist-max-o mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final greylist-max-o mRingbackRequested:Z

.field private final greylist-max-o mState:I

.field private final greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mSupportedAudioRoutes:I

.field private final greylist-max-o mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final greylist-max-o mVideoState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 258
    new-instance v0, Landroid/telecom/ParcelableConnection$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableConnection$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;I)V
    .registers 39
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "state"    # I
    .param p3, "capabilities"    # I
    .param p4, "properties"    # I
    .param p5, "supportedAudioRoutes"    # I
    .param p6, "address"    # Landroid/net/Uri;
    .param p7, "addressPresentation"    # I
    .param p8, "callerDisplayName"    # Ljava/lang/String;
    .param p9, "callerDisplayNamePresentation"    # I
    .param p10, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p11, "videoState"    # I
    .param p12, "ringbackRequested"    # Z
    .param p13, "isVoipAudioMode"    # Z
    .param p14, "connectTimeMillis"    # J
    .param p16, "connectElapsedTimeMillis"    # J
    .param p18, "statusHints"    # Landroid/telecom/StatusHints;
    .param p19, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p21, "extras"    # Landroid/os/Bundle;
    .param p22, "callerNumberVerificationStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "IIII",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IZZJJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 113
    .local p20, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 115
    move/from16 v2, p2

    iput v2, v0, Landroid/telecom/ParcelableConnection;->mState:I

    .line 116
    move/from16 v3, p3

    iput v3, v0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    .line 117
    move/from16 v4, p4

    iput v4, v0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    .line 118
    move/from16 v5, p5

    iput v5, v0, Landroid/telecom/ParcelableConnection;->mSupportedAudioRoutes:I

    .line 119
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    .line 120
    move/from16 v7, p7

    iput v7, v0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    .line 121
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 122
    move/from16 v9, p9

    iput v9, v0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    .line 123
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 124
    move/from16 v11, p11

    iput v11, v0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    .line 125
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    .line 126
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    .line 127
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    .line 128
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/telecom/ParcelableConnection;->mConnectElapsedTimeMillis:J

    .line 129
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 130
    move-object/from16 v2, p19

    iput-object v2, v0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 131
    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    .line 132
    move-object/from16 v1, p21

    iput-object v1, v0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    .line 133
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    .line 134
    const/4 v1, -0x1

    iput v1, v0, Landroid/telecom/ParcelableConnection;->mCallDirection:I

    .line 135
    move/from16 v1, p22

    iput v1, v0, Landroid/telecom/ParcelableConnection;->mCallerNumberVerificationStatus:I

    .line 136
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;II)V
    .registers 48
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "state"    # I
    .param p3, "capabilities"    # I
    .param p4, "properties"    # I
    .param p5, "supportedAudioRoutes"    # I
    .param p6, "address"    # Landroid/net/Uri;
    .param p7, "addressPresentation"    # I
    .param p8, "callerDisplayName"    # Ljava/lang/String;
    .param p9, "callerDisplayNamePresentation"    # I
    .param p10, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p11, "videoState"    # I
    .param p12, "ringbackRequested"    # Z
    .param p13, "isVoipAudioMode"    # Z
    .param p14, "connectTimeMillis"    # J
    .param p16, "connectElapsedTimeMillis"    # J
    .param p18, "statusHints"    # Landroid/telecom/StatusHints;
    .param p19, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p21, "extras"    # Landroid/os/Bundle;
    .param p22, "parentCallId"    # Ljava/lang/String;
    .param p23, "callDirection"    # I
    .param p24, "callerNumberVerificationStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "IIII",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IZZJJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 83
    .local p20, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move/from16 v22, p24

    invoke-direct/range {v0 .. v22}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;I)V

    .line 88
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    .line 89
    move/from16 v2, p23

    iput v2, v0, Landroid/telecom/ParcelableConnection;->mCallDirection:I

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallDirection()I
    .registers 2

    .line 231
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallDirection:I

    return v0
.end method

.method public greylist-max-o getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getCallerDisplayNamePresentation()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public blacklist getCallerNumberVerificationStatus()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public final greylist-max-o getConferenceableConnectionIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getConnectElapsedTimeMillis()J
    .registers 3

    .line 207
    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getConnectTimeMillis()J
    .registers 3

    .line 203
    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getConnectionCapabilities()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    return v0
.end method

.method public greylist-max-o getConnectionProperties()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    return v0
.end method

.method public final greylist-max-o getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final greylist-max-o getExtras()Landroid/os/Bundle;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getHandle()Landroid/net/Uri;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public greylist-max-o getHandlePresentation()I
    .registers 2

    .line 175
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    return v0
.end method

.method public greylist-max-o getIsVoipAudioMode()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method public final greylist-max-o getParentCallId()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public greylist-max-o getState()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mState:I

    return v0
.end method

.method public final greylist-max-o getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public greylist-max-o getSupportedAudioRoutes()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public greylist-max-o getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public greylist-max-o getVideoState()I
    .registers 2

    .line 191
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    return v0
.end method

.method public greylist-max-o isRingbackRequested()Z
    .registers 2

    .line 195
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    const-string v1, "ParcelableConnection [act:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string v1, "], state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConnection;->mState:I

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    const-string v1, ", capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    .line 246
    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string v1, ", properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    .line 248
    invoke-static {v1}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    const-string v1, ", extras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    const-string v1, ", parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    const-string v1, ", callDirection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConnection;->mCallDirection:I

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 329
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 330
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 333
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    nop

    .line 337
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 336
    :goto_31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 338
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 340
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 341
    iget-wide v2, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 342
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 343
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 344
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 345
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 346
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mSupportedAudioRoutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mParentCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectElapsedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 350
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallerNumberVerificationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    return-void
.end method
