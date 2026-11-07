.class public Landroid/telephony/IccOpenLogicalChannelResponse;
.super Ljava/lang/Object;
.source "IccOpenLogicalChannelResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/IccOpenLogicalChannelResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID_CHANNEL:I = -0x1

.field public static final whitelist STATUS_MISSING_RESOURCE:I = 0x2

.field public static final whitelist STATUS_NO_ERROR:I = 0x1

.field public static final whitelist STATUS_NO_SUCH_ELEMENT:I = 0x3

.field public static final whitelist STATUS_UNKNOWN_ERROR:I = 0x4


# instance fields
.field private final greylist-max-o mChannel:I

.field private final greylist-max-o mSelectResponse:[B

.field private final greylist-max-o mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/telephony/IccOpenLogicalChannelResponse$1;

    invoke-direct {v0}, Landroid/telephony/IccOpenLogicalChannelResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(II[B)V
    .registers 4
    .param p1, "channel"    # I
    .param p2, "status"    # I
    .param p3, "selectResponse"    # [B

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    .line 56
    iput p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    .line 57
    iput-object p3, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    .line 58
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, "arrayLength":I
    if-lez v0, :cond_1f

    .line 68
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    .line 69
    iget-object v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_22

    .line 71
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    .line 73
    :goto_22
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/IccOpenLogicalChannelResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChannel()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    return v0
.end method

.method public whitelist getSelectResponse()[B
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    array-length v0, v0

    if-lez v0, :cond_1f

    .line 106
    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_23

    .line 109
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    :goto_23
    return-void
.end method
