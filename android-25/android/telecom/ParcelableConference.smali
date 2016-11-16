.class public final Landroid/telecom/ParcelableConference;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableConference$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableConference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private mConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionProperties:I

.field private mExtras:Landroid/os/Bundle;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 131
    new-instance v0, Landroid/telecom/ParcelableConference$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/ParcelableConference$1;-><init>()V

    #@5
    .line 130
    sput-object v0, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "state"    # I
    .param p3, "connectionCapabilities"    # I
    .param p4, "connectionProperties"    # I
    .param p6, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p7, "videoState"    # I
    .param p8, "connectTimeMillis"    # J
    .param p10, "statusHints"    # Landroid/telecom/StatusHints;
    .param p11, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    #@2
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 39
    iput-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    #@7
    .line 56
    iput-object p1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@9
    .line 57
    iput p2, p0, Landroid/telecom/ParcelableConference;->mState:I

    #@b
    .line 58
    iput p3, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    #@d
    .line 59
    iput p4, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    #@f
    .line 60
    iput-object p5, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    #@11
    .line 61
    iput-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    #@13
    .line 62
    iput-object p6, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@15
    .line 63
    iput p7, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    #@17
    .line 64
    iput-wide p8, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    #@19
    .line 65
    iput-object p10, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    #@1b
    .line 66
    iput-object p11, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    #@1d
    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 162
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 112
    iget-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    #@2
    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    #@2
    return v0
.end method

.method public getConnectionIds()Ljava/util/List;
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
    .line 108
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getConnectionProperties()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    #@2
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget v0, p0, Landroid/telecom/ParcelableConference;->mState:I

    #@2
    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    #@2
    return-object v0
.end method

.method public getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 119
    iget v0, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 72
    const-string/jumbo v1, "account: "

    #@8
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v0

    #@c
    .line 73
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@e
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v0

    #@12
    .line 74
    const-string/jumbo v1, ", state: "

    #@15
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v0

    #@19
    .line 75
    iget v1, p0, Landroid/telecom/ParcelableConference;->mState:I

    #@1b
    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    move-result-object v0

    #@23
    .line 76
    const-string/jumbo v1, ", capabilities: "

    #@26
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    move-result-object v0

    #@2a
    .line 77
    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    #@2c
    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    move-result-object v0

    #@34
    .line 78
    const-string/jumbo v1, ", properties: "

    #@37
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v0

    #@3b
    .line 79
    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    #@3d
    invoke-static {v1}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    move-result-object v0

    #@45
    .line 80
    const-string/jumbo v1, ", connectTime: "

    #@48
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b
    move-result-object v0

    #@4c
    .line 81
    iget-wide v2, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    #@4e
    .line 71
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@51
    move-result-object v0

    #@52
    .line 82
    const-string/jumbo v1, ", children: "

    #@55
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    move-result-object v0

    #@59
    .line 83
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    #@5b
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@5e
    move-result-object v0

    #@5f
    .line 84
    const-string/jumbo v1, ", VideoState: "

    #@62
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    move-result-object v0

    #@66
    .line 85
    iget v1, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    #@68
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@6b
    move-result-object v0

    #@6c
    .line 86
    const-string/jumbo v1, ", VideoProvider: "

    #@6f
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@72
    move-result-object v0

    #@73
    .line 87
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@75
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 168
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@4
    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@7
    .line 169
    iget v1, p0, Landroid/telecom/ParcelableConference;->mState:I

    #@9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 170
    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    #@e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 171
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    #@13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@16
    .line 172
    iget-wide v2, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    #@18
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@1b
    .line 174
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@1d
    if-eqz v1, :cond_0

    #@1f
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    #@21
    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v0

    #@25
    .line 173
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    .line 175
    iget v0, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 176
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    #@2f
    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@32
    .line 177
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@37
    .line 178
    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 167
    return-void
.end method
