.class public final Landroid/telephony/CallAttributes;
.super Ljava/lang/Object;
.source "CallAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCallQuality:Landroid/telephony/CallQuality;

.field private blacklist mNetworkType:I

.field private blacklist mPreciseCallState:Landroid/telephony/PreciseCallState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Landroid/telephony/CallAttributes$1;

    invoke-direct {v0}, Landroid/telephony/CallAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-class v0, Landroid/telephony/PreciseCallState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/PreciseCallState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseCallState;

    iput-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    .line 60
    const-class v0, Landroid/telephony/CallQuality;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CallQuality;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallQuality;

    iput-object v0, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CallAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CallAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V
    .registers 4
    .param p1, "state"    # Landroid/telephony/PreciseCallState;
    .param p2, "networkType"    # I
    .param p3, "callQuality"    # Landroid/telephony/CallQuality;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 46
    iput p2, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    .line 47
    iput-object p3, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    if-eqz p1, :cond_37

    instance-of v1, p1, Landroid/telephony/CallAttributes;

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Landroid/telephony/CallAttributes;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_12

    goto :goto_37

    .line 121
    :cond_12
    const/4 v1, 0x1

    if-ne p0, p1, :cond_16

    .line 122
    return v1

    .line 125
    :cond_16
    move-object v2, p1

    check-cast v2, Landroid/telephony/CallAttributes;

    .line 127
    .local v2, "s":Landroid/telephony/CallAttributes;
    iget-object v3, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    iget-object v4, v2, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget v3, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    iget v4, v2, Landroid/telephony/CallAttributes;->mNetworkType:I

    if-ne v3, v4, :cond_35

    iget-object v3, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    iget-object v4, v2, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    .line 129
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    move v0, v1

    goto :goto_36

    :cond_35
    nop

    .line 127
    :goto_36
    return v0

    .line 118
    .end local v2    # "s":Landroid/telephony/CallAttributes;
    :cond_37
    :goto_37
    return v0
.end method

.method public whitelist getCallQuality()Landroid/telephony/CallQuality;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    return-object v0
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    return v0
.end method

.method public whitelist getPreciseCallState()Landroid/telephony/PreciseCallState;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 112
    iget-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    iget v1, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPreciseCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    iget v0, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    return-void
.end method
