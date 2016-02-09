.class public final Landroid/bluetooth/BluetoothMasInstance;
.super Ljava/lang/Object;
.source "BluetoothMasInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothMasInstance$MessageType;,
        Landroid/bluetooth/BluetoothMasInstance$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothMasInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannel:I

.field private final mId:I

.field private final mMsgTypes:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 60
    new-instance v0, Landroid/bluetooth/BluetoothMasInstance$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothMasInstance$1;-><init>()V

    #@5
    .line 59
    sput-object v0, Landroid/bluetooth/BluetoothMasInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "channel"    # I
    .param p4, "msgTypes"    # I

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    iput p1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    #@5
    .line 31
    iput-object p2, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    #@7
    .line 32
    iput p3, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    #@9
    .line 33
    iput p4, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    #@b
    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 38
    instance-of v1, p1, Landroid/bluetooth/BluetoothMasInstance;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 39
    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    #@7
    check-cast p1, Landroid/bluetooth/BluetoothMasInstance;

    #@9
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0

    #@f
    .line 41
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public getChannel()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    #@2
    return v0
.end method

.method public getMsgTypes()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 46
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    #@2
    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    #@4
    shl-int/lit8 v1, v1, 0x8

    #@6
    add-int/2addr v0, v1

    #@7
    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    #@9
    shl-int/lit8 v1, v1, 0x10

    #@b
    add-int/2addr v0, v1

    #@c
    return v0
.end method

.method public msgSupported(I)Z
    .locals 2
    .param p1, "msg"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 101
    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ":"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ":"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, ":"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 52
    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 71
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 72
    iget-object v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 73
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 74
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 70
    return-void
.end method
