.class public Landroid/hardware/location/ContextHubMessage;
.super Ljava/lang/Object;
.source "ContextHubMessage.java"

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
            "Landroid/hardware/location/ContextHubMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_LOG_NUM_BYTES:I = 0x10


# instance fields
.field private greylist-max-o mData:[B

.field private greylist-max-o mType:I

.field private greylist-max-o mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Landroid/hardware/location/ContextHubMessage$1;

    invoke-direct {v0}, Landroid/hardware/location/ContextHubMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II[B)V
    .registers 5
    .param p1, "msgType"    # I
    .param p2, "version"    # I
    .param p3, "data"    # [B

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    .line 108
    iput p2, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    .line 109
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    .line 110
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .local v0, "bufferLength":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    .line 121
    iget-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubMessage-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/ContextHubMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getData()[B
    .registers 3

    .line 69
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    iget-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMsgType()I
    .registers 2

    .line 51
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    return v0
.end method

.method public whitelist setMsgData([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 96
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    .line 97
    return-void
.end method

.method public whitelist setMsgType(I)V
    .registers 2
    .param p1, "msgType"    # I

    .line 78
    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    .line 79
    return-void
.end method

.method public whitelist setVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .line 87
    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    .line 88
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 145
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    array-length v0, v0

    .line 147
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContextHubMessage[type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "ret":Ljava/lang/String;
    if-lez v0, :cond_40

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    :cond_40
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_7f

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    aget-byte v4, v4, v2

    const/4 v5, 0x1

    invoke-static {v4, v5}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_7c

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 159
    .end local v2    # "i":I
    :cond_7f
    if-le v0, v3, :cond_94

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 129
    return-void
.end method
