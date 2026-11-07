.class public final Landroid/bluetooth/BluetoothMasInstance;
.super Ljava/lang/Object;
.source "BluetoothMasInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothMasInstance$MessageType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothMasInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChannel:I

.field private final blacklist mId:I

.field private final blacklist mMsgTypes:I

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/bluetooth/BluetoothMasInstance$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothMasInstance$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothMasInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "channel"    # I
    .param p4, "msgTypes"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    .line 34
    iput-object p2, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    .line 35
    iput p3, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    .line 36
    iput p4, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    instance-of v0, p1, Landroid/bluetooth/BluetoothMasInstance;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 42
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BluetoothMasInstance;

    iget v2, v2, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 44
    :cond_10
    return v1
.end method

.method public blacklist getChannel()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    return v0
.end method

.method public blacklist getMsgTypes()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 49
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist msgSupported(I)Z
    .registers 3
    .param p1, "msg"    # I

    .line 114
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 84
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
