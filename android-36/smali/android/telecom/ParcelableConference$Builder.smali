.class public final Landroid/telecom/ParcelableConference$Builder;
.super Ljava/lang/Object;
.source "ParcelableConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mAddressPresentation:I

.field private blacklist mCallDirection:I

.field private blacklist mCallerDisplayName:Ljava/lang/String;

.field private blacklist mCallerDisplayNamePresentation:I

.field private blacklist mConnectElapsedTimeMillis:J

.field private blacklist mConnectTimeMillis:J

.field private blacklist mConnectionCapabilities:I

.field private blacklist mConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectionProperties:I

.field private blacklist mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private blacklist mRingbackRequested:Z

.field private final blacklist mState:I

.field private blacklist mStatusHints:Landroid/telecom/StatusHints;

.field private blacklist mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private blacklist mVideoState:I


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;I)V
    .registers 6
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "state"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectionIds:Ljava/util/List;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectTimeMillis:J

    .line 44
    const/4 v2, 0x0

    iput v2, p0, Landroid/telecom/ParcelableConference$Builder;->mVideoState:I

    .line 47
    iput-wide v0, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectElapsedTimeMillis:J

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Landroid/telecom/ParcelableConference$Builder;->mAddressPresentation:I

    .line 51
    iput v0, p0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayNamePresentation:I

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/ParcelableConference$Builder;->mCallDirection:I

    .line 59
    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 60
    iput p2, p0, Landroid/telecom/ParcelableConference$Builder;->mState:I

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telecom/ParcelableConference;
    .registers 25

    .line 131
    move-object/from16 v0, p0

    new-instance v1, Landroid/telecom/ParcelableConference;

    iget-object v2, v0, Landroid/telecom/ParcelableConference$Builder;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget v3, v0, Landroid/telecom/ParcelableConference$Builder;->mState:I

    iget v4, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectionCapabilities:I

    iget v5, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectionProperties:I

    iget-object v6, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectionIds:Ljava/util/List;

    iget-object v7, v0, Landroid/telecom/ParcelableConference$Builder;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget v8, v0, Landroid/telecom/ParcelableConference$Builder;->mVideoState:I

    iget-wide v9, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectTimeMillis:J

    iget-wide v11, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectElapsedTimeMillis:J

    iget-object v13, v0, Landroid/telecom/ParcelableConference$Builder;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v14, v0, Landroid/telecom/ParcelableConference$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v15, v0, Landroid/telecom/ParcelableConference$Builder;->mAddress:Landroid/net/Uri;

    move-object/from16 v16, v1

    iget v1, v0, Landroid/telecom/ParcelableConference$Builder;->mAddressPresentation:I

    move/from16 v17, v1

    iget-object v1, v0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayName:Ljava/lang/String;

    move-object/from16 v18, v1

    iget v1, v0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayNamePresentation:I

    move/from16 v19, v1

    iget-object v1, v0, Landroid/telecom/ParcelableConference$Builder;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    move-object/from16 v20, v1

    iget-boolean v1, v0, Landroid/telecom/ParcelableConference$Builder;->mRingbackRequested:Z

    move/from16 v21, v1

    iget v1, v0, Landroid/telecom/ParcelableConference$Builder;->mCallDirection:I

    const/16 v22, 0x0

    move/from16 v23, v21

    move/from16 v21, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v23

    invoke-direct/range {v1 .. v22}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZILandroid/telecom/ParcelableConference-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public blacklist setAddress(Landroid/net/Uri;I)Landroid/telecom/ParcelableConference$Builder;
    .registers 3
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "addressPresentation"    # I

    .line 82
    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mAddress:Landroid/net/Uri;

    .line 83
    iput p2, p0, Landroid/telecom/ParcelableConference$Builder;->mAddressPresentation:I

    .line 84
    return-object p0
.end method

.method public blacklist setCallDirection(I)Landroid/telecom/ParcelableConference$Builder;
    .registers 2
    .param p1, "callDirection"    # I

    .line 126
    iput p1, p0, Landroid/telecom/ParcelableConference$Builder;->mCallDirection:I

    .line 127
    return-object p0
.end method

.method public blacklist setCallerDisplayName(Ljava/lang/String;I)Landroid/telecom/ParcelableConference$Builder;
    .registers 3
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "callerDisplayNamePresentation"    # I

    .line 75
    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayName:Ljava/lang/String;

    .line 76
    iput p2, p0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayNamePresentation:I

    .line 77
    return-object p0
.end method

.method public blacklist setConnectTimeMillis(JJ)Landroid/telecom/ParcelableConference$Builder;
    .registers 5
    .param p1, "connectTimeMillis"    # J
    .param p3, "connectElapsedTimeMillis"    # J

    .line 98
    iput-wide p1, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectTimeMillis:J

    .line 99
    iput-wide p3, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectElapsedTimeMillis:J

    .line 100
    return-object p0
.end method

.method public blacklist setConnectionCapabilities(I)Landroid/telecom/ParcelableConference$Builder;
    .registers 2
    .param p1, "capabilities"    # I

    .line 121
    iput p1, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectionCapabilities:I

    .line 122
    return-object p0
.end method

.method public blacklist setConnectionIds(Ljava/util/List;)Landroid/telecom/ParcelableConference$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/ParcelableConference$Builder;"
        }
    .end annotation

    .line 111
    .local p1, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectionIds:Ljava/util/List;

    .line 112
    return-object p0
.end method

.method public blacklist setConnectionProperties(I)Landroid/telecom/ParcelableConference$Builder;
    .registers 2
    .param p1, "properties"    # I

    .line 116
    iput p1, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectionProperties:I

    .line 117
    return-object p0
.end method

.method public blacklist setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableConference$Builder;
    .registers 2
    .param p1, "cause"    # Landroid/telecom/DisconnectCause;

    .line 64
    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 65
    return-object p0
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableConference$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 88
    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mExtras:Landroid/os/Bundle;

    .line 89
    return-object p0
.end method

.method public blacklist setRingbackRequested(Z)Landroid/telecom/ParcelableConference$Builder;
    .registers 2
    .param p1, "requested"    # Z

    .line 69
    iput-boolean p1, p0, Landroid/telecom/ParcelableConference$Builder;->mRingbackRequested:Z

    .line 70
    return-object p0
.end method

.method public blacklist setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableConference$Builder;
    .registers 2
    .param p1, "hints"    # Landroid/telecom/StatusHints;

    .line 93
    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mStatusHints:Landroid/telecom/StatusHints;

    .line 94
    return-object p0
.end method

.method public blacklist setVideoAttributes(Lcom/android/internal/telecom/IVideoProvider;I)Landroid/telecom/ParcelableConference$Builder;
    .registers 3
    .param p1, "provider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "videoState"    # I

    .line 105
    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 106
    iput p2, p0, Landroid/telecom/ParcelableConference$Builder;->mVideoState:I

    .line 107
    return-object p0
.end method
