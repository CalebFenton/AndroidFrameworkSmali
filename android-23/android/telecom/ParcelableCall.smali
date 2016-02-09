.class public final Landroid/telecom/ParcelableCall;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCall$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapabilities:I

.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCallIds:Ljava/util/List;
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

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final mHandle:Landroid/net/Uri;

.field private final mHandlePresentation:I

.field private final mId:Ljava/lang/String;

.field private final mIntentExtras:Landroid/os/Bundle;

.field private final mIsVideoCallProviderChanged:Z

.field private final mParentCallId:Ljava/lang/String;

.field private final mProperties:I

.field private final mState:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;

.field private final mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 264
    new-instance v0, Landroid/telecom/ParcelableCall$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/ParcelableCall$1;-><init>()V

    #@5
    .line 263
    sput-object v0, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;ZLcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "capabilities"    # I
    .param p6, "properties"    # I
    .param p7, "connectTimeMillis"    # J
    .param p9, "handle"    # Landroid/net/Uri;
    .param p10, "handlePresentation"    # I
    .param p11, "callerDisplayName"    # Ljava/lang/String;
    .param p12, "callerDisplayNamePresentation"    # I
    .param p13, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p14, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p15, "isVideoCallProviderChanged"    # Z
    .param p16, "videoCallProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p17, "parentCallId"    # Ljava/lang/String;
    .param p19, "statusHints"    # Landroid/telecom/StatusHints;
    .param p20, "videoState"    # I
    .param p22, "intentExtras"    # Landroid/os/Bundle;
    .param p23, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Z",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p4, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p18, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p21, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    #@5
    .line 84
    iput p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    #@7
    .line 85
    iput-object p3, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@9
    .line 86
    iput-object p4, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    #@b
    .line 87
    iput p5, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    #@d
    .line 88
    iput p6, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    #@f
    .line 89
    iput-wide p7, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    #@11
    .line 90
    iput-object p9, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    #@13
    .line 91
    iput p10, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    #@15
    .line 92
    iput-object p11, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    #@17
    .line 93
    iput p12, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    #@19
    .line 94
    move-object/from16 v0, p13

    #@1b
    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@1d
    .line 95
    move-object/from16 v0, p14

    #@1f
    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@21
    .line 96
    move/from16 v0, p15

    #@23
    iput-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    #@25
    .line 97
    move-object/from16 v0, p16

    #@27
    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@29
    .line 98
    move-object/from16 v0, p17

    #@2b
    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    #@2d
    .line 99
    move-object/from16 v0, p18

    #@2f
    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    #@31
    .line 100
    move-object/from16 v0, p19

    #@33
    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    #@35
    .line 101
    move/from16 v0, p20

    #@37
    iput v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    #@39
    .line 102
    invoke-static/range {p21 .. p21}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    #@3f
    .line 103
    move-object/from16 v0, p22

    #@41
    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    #@43
    .line 104
    move-object/from16 v0, p23

    #@45
    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    #@47
    .line 82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 328
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    #@0
    .prologue
    .line 167
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    #@2
    return v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
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
    .line 129
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    #@2
    return v0
.end method

.method public getChildCallIds()Ljava/util/List;
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
    .line 208
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getConferenceableCallIds()Ljava/util/List;
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
    .line 212
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 142
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@2
    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    #@0
    .prologue
    .line 154
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    #@2
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getParentCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProperties()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    #@2
    return v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    #@2
    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public getVideoCall(Landroid/telecom/Call;)Landroid/telecom/InCallService$VideoCall;
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 185
    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    #@2
    if-nez v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 187
    :try_start_0
    new-instance v1, Landroid/telecom/VideoCallImpl;

    #@a
    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@c
    invoke-direct {v1, v2, p1}, Landroid/telecom/VideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;)V

    #@f
    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/InCallService$VideoCall;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 193
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    #@13
    return-object v1

    #@14
    .line 188
    :catch_0
    move-exception v0

    #@15
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 229
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    #@2
    return v0
.end method

.method public isVideoCallProviderChanged()Z
    .locals 1

    #@0
    .prologue
    .line 259
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 361
    const-string/jumbo v0, "[%s, parent:%s, children:%s]"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    #@d
    const/4 v3, 0x1

    #@e
    aput-object v2, v1, v3

    #@10
    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    #@12
    const/4 v3, 0x2

    #@13
    aput-object v2, v1, v3

    #@15
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 334
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 335
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 336
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@11
    .line 337
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@16
    .line 338
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 339
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 340
    iget-wide v4, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    #@22
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@25
    .line 341
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    #@27
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@2a
    .line 342
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 343
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 344
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 345
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    #@3b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@3e
    .line 346
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    #@40
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@43
    .line 347
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    #@45
    if-eqz v0, :cond_0

    #@47
    const/4 v0, 0x1

    #@48
    :goto_0
    int-to-byte v0, v0

    #@49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@4c
    .line 349
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@4e
    if-eqz v0, :cond_1

    #@50
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@52
    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    #@55
    move-result-object v0

    #@56
    .line 348
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@59
    .line 350
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    #@5b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5e
    .line 351
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    #@60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@63
    .line 352
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    #@65
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@68
    .line 353
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    #@6a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 354
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    #@6f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@72
    .line 355
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    #@74
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@77
    .line 356
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    #@79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@7c
    .line 333
    return-void

    #@7d
    :cond_0
    move v0, v1

    #@7e
    .line 347
    goto :goto_0

    #@7f
    :cond_1
    move-object v0, v2

    #@80
    .line 349
    goto :goto_1
.end method
