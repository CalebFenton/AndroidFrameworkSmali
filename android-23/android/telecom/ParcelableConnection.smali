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
    .line 169
    new-instance v0, Landroid/telecom/ParcelableConnection$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/ParcelableConnection$1;-><init>()V

    #@5
    .line 168
    sput-object v0, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "state"    # I
    .param p3, "capabilities"    # I
    .param p4, "address"    # Landroid/net/Uri;
    .param p5, "addressPresentation"    # I
    .param p6, "callerDisplayName"    # Ljava/lang/String;
    .param p7, "callerDisplayNamePresentation"    # I
    .param p8, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p9, "videoState"    # I
    .param p10, "ringbackRequested"    # Z
    .param p11, "isVoipAudioMode"    # Z
    .param p12, "connectTimeMillis"    # J
    .param p14, "statusHints"    # Landroid/telecom/StatusHints;
    .param p15, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p17, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "II",
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
    .line 54
    .local p16, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@5
    .line 72
    iput p2, p0, Landroid/telecom/ParcelableConnection;->mState:I

    #@7
    .line 73
    iput p3, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    #@9
    .line 74
    iput-object p4, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    #@b
    .line 75
    iput p5, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    #@d
    .line 76
    iput-object p6, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    #@f
    .line 77
    iput p7, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    #@11
    .line 78
    iput-object p8, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@13
    .line 79
    iput p9, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    #@15
    .line 80
    iput-boolean p10, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    #@17
    .line 81
    iput-boolean p11, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    #@19
    .line 82
    iput-wide p12, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    #@1b
    .line 83
    move-object/from16 v0, p14

    #@1d
    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@1f
    .line 84
    move-object/from16 v0, p15

    #@21
    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@23
    .line 85
    move-object/from16 v0, p16

    #@25
    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    #@27
    .line 86
    move-object/from16 v0, p17

    #@29
    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    #@2b
    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 221
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 115
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
    .line 147
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 135
    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    #@2
    return v0
.end method

.method public getIsVoipAudioMode()Z
    .locals 1

    #@0
    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    #@2
    return v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 94
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mState:I

    #@2
    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 123
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    #@2
    return v0
.end method

.method public isRingbackRequested()Z
    .locals 1

    #@0
    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 157
    const-string/jumbo v1, "ParcelableConnection [act:"

    #@8
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 158
    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@e
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 159
    const-string/jumbo v1, "], state:"

    #@15
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 160
    iget v1, p0, Landroid/telecom/ParcelableConnection;->mState:I

    #@1b
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 161
    const-string/jumbo v1, ", capabilities:"

    #@22
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 162
    iget v1, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    #@28
    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 163
    const-string/jumbo v1, ", extras:"

    #@33
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 164
    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    #@39
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
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
    .line 227
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@5
    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@8
    .line 228
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mState:I

    #@a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 229
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    #@f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 230
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    #@14
    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@17
    .line 231
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    #@19
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 232
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    #@1e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 233
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    #@23
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 235
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
    .line 234
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@33
    .line 236
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 237
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
    .line 238
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    #@43
    if-eqz v0, :cond_2

    #@45
    :goto_1
    int-to-byte v0, v1

    #@46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@49
    .line 239
    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    #@4b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@4e
    .line 240
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    #@50
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@53
    .line 241
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@55
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@58
    .line 242
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    #@5a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@5d
    .line 243
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    #@5f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@62
    .line 226
    return-void

    #@63
    :cond_1
    move v0, v2

    #@64
    .line 237
    goto :goto_0

    #@65
    :cond_2
    move v1, v2

    #@66
    .line 238
    goto :goto_1
.end method
