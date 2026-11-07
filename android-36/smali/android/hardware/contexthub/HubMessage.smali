.class public final Landroid/hardware/contexthub/HubMessage;
.super Ljava/lang/Object;
.source "HubMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubMessage$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/HubMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG_LOG_NUM_BYTES:I = 0x10


# instance fields
.field private final blacklist mMessageBody:[B

.field private blacklist mMessageSequenceNumber:I

.field private final blacklist mMessageType:I

.field private final blacklist mResponseRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Landroid/hardware/contexthub/HubMessage$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/HubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I[BZ)V
    .registers 5
    .param p1, "messageType"    # I
    .param p2, "messageBody"    # [B
    .param p3, "responseRequired"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "messageBody cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iput p1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    .line 51
    iput-object p2, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    .line 52
    iput-boolean p3, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(I[BZLandroid/hardware/contexthub/HubMessage-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubMessage;-><init>(I[BZ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, "msgSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    .line 105
    iget-object v1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    iput-boolean v2, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/contexthub/HubMessage-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 173
    return v0

    .line 176
    :cond_4
    const/4 v1, 0x0

    .line 177
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/contexthub/HubMessage;

    if-eqz v2, :cond_34

    move-object v2, p1

    check-cast v2, Landroid/hardware/contexthub/HubMessage;

    .line 178
    .local v2, "other":Landroid/hardware/contexthub/HubMessage;
    nop

    .line 179
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubMessage;->getMessageType()I

    move-result v3

    iget v4, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    if-ne v3, v4, :cond_32

    .line 180
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubMessage;->getMessageBody()[B

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 181
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    if-ne v3, v4, :cond_32

    .line 182
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v3

    iget v4, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    move v1, v0

    .line 185
    .end local v2    # "other":Landroid/hardware/contexthub/HubMessage;
    :cond_34
    return v1
.end method

.method public whitelist getMessageBody()[B
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    return-object v0
.end method

.method public blacklist getMessageSequenceNumber()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    return v0
.end method

.method public whitelist getMessageType()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 190
    invoke-static {}, Landroid/chre/flags/Flags;->fixApiCheck()Z

    move-result v0

    if-nez v0, :cond_b

    .line 191
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 194
    :cond_b
    iget v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    .line 196
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    .line 197
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 194
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isResponseRequired()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    return v0
.end method

.method public blacklist setMessageSequenceNumber(I)V
    .registers 2
    .param p1, "messageSequenceNumber"    # I

    .line 87
    iput p1, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    .line 88
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 143
    iget-object v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    array-length v0, v0

    .line 145
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v1, "out":Ljava/lang/StringBuilder;
    const-string v2, "HubMessage[type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, ", messageSequenceNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v2, ", responseRequired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    if-lez v0, :cond_41

    .line 153
    const-string v2, "data = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_41
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_64

    .line 156
    iget-object v3, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_61

    .line 159
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 162
    .end local v2    # "i":I
    :cond_64
    if-le v0, v3, :cond_6b

    .line 163
    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_6b
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 123
    iget-boolean v0, p0, Landroid/hardware/contexthub/HubMessage;->mResponseRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/hardware/contexthub/HubMessage;->mMessageSequenceNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-void
.end method
