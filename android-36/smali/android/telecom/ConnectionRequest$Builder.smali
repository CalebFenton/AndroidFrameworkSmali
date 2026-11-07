.class public final Landroid/telecom/ConnectionRequest$Builder;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private blacklist mIsAdhocConference:Z

.field private blacklist mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

.field private greylist-max-o mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

.field private greylist-max-o mShouldShowIncomingCallUi:Z

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private greylist-max-o mVideoState:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    .line 50
    iput-boolean v0, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    .line 54
    iput-boolean v0, p0, Landroid/telecom/ConnectionRequest$Builder;->mIsAdhocConference:Z

    .line 56
    return-void
.end method


# virtual methods
.method public greylist-max-o build()Landroid/telecom/ConnectionRequest;
    .registers 13

    .line 162
    new-instance v0, Landroid/telecom/ConnectionRequest;

    iget-object v1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Landroid/telecom/ConnectionRequest$Builder;->mAddress:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telecom/ConnectionRequest$Builder;->mExtras:Landroid/os/Bundle;

    iget v4, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    iget-object v5, p0, Landroid/telecom/ConnectionRequest$Builder;->mTelecomCallId:Ljava/lang/String;

    iget-boolean v6, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    iget-object v7, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    iget-object v8, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    iget-object v9, p0, Landroid/telecom/ConnectionRequest$Builder;->mParticipants:Ljava/util/List;

    iget-boolean v10, p0, Landroid/telecom/ConnectionRequest$Builder;->mIsAdhocConference:Z

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/util/List;ZLandroid/telecom/ConnectionRequest-IA;)V

    return-object v0
.end method

.method public greylist-max-o setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 63
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 64
    return-object p0
.end method

.method public greylist-max-o setAddress(Landroid/net/Uri;)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .param p1, "address"    # Landroid/net/Uri;

    .line 83
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAddress:Landroid/net/Uri;

    .line 84
    return-object p0
.end method

.method public greylist-max-o setExtras(Landroid/os/Bundle;)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 92
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 93
    return-object p0
.end method

.method public blacklist setIsAdhocConferenceCall(Z)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .param p1, "isAdhocConference"    # Z

    .line 132
    iput-boolean p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mIsAdhocConference:Z

    .line 133
    return-object p0
.end method

.method public blacklist setParticipants(Ljava/util/List;)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/telecom/ConnectionRequest$Builder;"
        }
    .end annotation

    .line 73
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mParticipants:Ljava/util/List;

    .line 74
    return-object p0
.end method

.method public greylist-max-o setRttPipeFromInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .param p1, "rttPipeFromInCall"    # Landroid/os/ParcelFileDescriptor;

    .line 143
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    .line 144
    return-object p0
.end method

.method public greylist-max-o setRttPipeToInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .param p1, "rttPipeToInCall"    # Landroid/os/ParcelFileDescriptor;

    .line 153
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    .line 154
    return-object p0
.end method

.method public greylist-max-o setShouldShowIncomingCallUi(Z)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .param p1, "shouldShowIncomingCallUi"    # Z

    .line 122
    iput-boolean p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    .line 123
    return-object p0
.end method

.method public greylist-max-o setTelecomCallId(Ljava/lang/String;)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mTelecomCallId:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public greylist-max-o setVideoState(I)Landroid/telecom/ConnectionRequest$Builder;
    .registers 2
    .param p1, "videoState"    # I

    .line 101
    iput p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    .line 102
    return-object p0
.end method
