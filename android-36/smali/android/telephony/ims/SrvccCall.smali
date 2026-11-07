.class public final Landroid/telephony/ims/SrvccCall;
.super Ljava/lang/Object;
.source "SrvccCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SrvccCall"


# instance fields
.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mCallState:I

.field private blacklist mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    new-instance v0, Landroid/telephony/ims/SrvccCall$1;

    invoke-direct {v0}, Landroid/telephony/ims/SrvccCall$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SrvccCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Landroid/telephony/ims/SrvccCall;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SrvccCall-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SrvccCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callState"    # I
    .param p3, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_17

    .line 62
    if-eqz p3, :cond_e

    .line 64
    iput-object p1, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    .line 65
    iput p2, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    .line 66
    iput-object p3, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 67
    return-void

    .line 62
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "imsCallProfile is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    .line 137
    const-class v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    iput-object v0, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 139
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 108
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 109
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/SrvccCall;

    .line 110
    .local v2, "that":Landroid/telephony/ims/SrvccCall;
    iget-object v3, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v2, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    iget v4, v2, Landroid/telephony/ims/SrvccCall;->mCallState:I

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 110
    :goto_31
    return v0

    .line 108
    .end local v2    # "that":Landroid/telephony/ims/SrvccCall;
    :cond_32
    :goto_32
    return v1
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImsCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public whitelist getPreciseCallState()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 117
    iget-object v0, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 118
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    add-int/2addr v1, v2

    .line 119
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget-object v0, p0, Landroid/telephony/ims/SrvccCall;->mCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Landroid/telephony/ims/SrvccCall;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Landroid/telephony/ims/SrvccCall;->mImsCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    return-void
.end method
