.class public Landroid/telephony/IccOpenLogicalChannelResponse;
.super Ljava/lang/Object;
.source "IccOpenLogicalChannelResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/IccOpenLogicalChannelResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/IccOpenLogicalChannelResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_CHANNEL:I = -0x1

.field public static final STATUS_MISSING_RESOURCE:I = 0x2

.field public static final STATUS_NO_ERROR:I = 0x1

.field public static final STATUS_NO_SUCH_ELEMENT:I = 0x3

.field public static final STATUS_UNKNOWN_ERROR:I = 0x4


# instance fields
.field private final mChannel:I

.field private final mSelectResponse:[B

.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 114
    new-instance v0, Landroid/telephony/IccOpenLogicalChannelResponse$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/IccOpenLogicalChannelResponse$1;-><init>()V

    #@5
    .line 113
    sput-object v0, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "status"    # I
    .param p3, "selectResponse"    # [B

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput p1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    #@5
    .line 56
    iput p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    #@7
    .line 57
    iput-object p3, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    #@9
    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    #@9
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v1

    #@d
    iput v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    #@f
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    .line 67
    .local v0, "arrayLength":I
    if-lez v0, :cond_0

    #@15
    .line 68
    new-array v1, v0, [B

    #@17
    iput-object v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    #@19
    .line 69
    iget-object v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    #@1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    #@1e
    .line 63
    :goto_0
    return-void

    #@1f
    .line 71
    :cond_0
    const/4 v1, 0x0

    #@20
    iput-object v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    #@22
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/IccOpenLogicalChannelResponse;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 98
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getChannel()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    #@2
    return v0
.end method

.method public getSelectResponse()[B
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    #@2
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Channel: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " Status: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 104
    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 105
    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    #@11
    array-length v0, v0

    #@12
    if-lez v0, :cond_0

    #@14
    .line 106
    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    #@16
    array-length v0, v0

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 107
    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1f
    .line 102
    :goto_0
    return-void

    #@20
    .line 109
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    goto :goto_0
.end method
