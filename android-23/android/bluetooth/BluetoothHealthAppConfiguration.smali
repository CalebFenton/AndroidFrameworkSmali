.class public final Landroid/bluetooth/BluetoothHealthAppConfiguration;
.super Ljava/lang/Object;
.source "BluetoothHealthAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHealthAppConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannelType:I

.field private final mDataType:I

.field private final mName:Ljava/lang/String;

.field private final mRole:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 142
    new-instance v0, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;-><init>()V

    #@5
    .line 141
    sput-object v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    #@5
    .line 45
    iput p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    #@7
    .line 46
    const/4 v0, 0x2

    #@8
    iput v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    #@a
    .line 47
    const/16 v0, 0xc

    #@c
    iput v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    #@e
    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "role"    # I
    .param p4, "channelType"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    #@5
    .line 62
    iput p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    #@7
    .line 63
    iput p3, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    #@9
    .line 64
    iput p4, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    #@b
    .line 60
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

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 69
    instance-of v2, p1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 70
    check-cast v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@8
    .line 72
    .local v0, "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 73
    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    #@16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    #@19
    move-result v3

    #@1a
    if-ne v2, v3, :cond_0

    #@1c
    .line 74
    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    #@1e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getRole()I

    #@21
    move-result v3

    #@22
    if-ne v2, v3, :cond_0

    #@24
    .line 75
    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    #@26
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    #@29
    move-result v3

    #@2a
    if-ne v2, v3, :cond_0

    #@2c
    const/4 v1, 0x1

    #@2d
    .line 72
    :cond_0
    return v1

    #@2e
    .line 77
    .end local v0    # "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :cond_1
    return v1
.end method

.method public getChannelType()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    #@2
    return v0
.end method

.method public getDataType()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRole()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 83
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v1

    #@a
    :goto_0
    add-int/lit16 v0, v1, 0x20f

    #@c
    .line 84
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@e
    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    #@10
    add-int v0, v1, v2

    #@12
    .line 85
    mul-int/lit8 v1, v0, 0x1f

    #@14
    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    #@16
    add-int v0, v1, v2

    #@18
    .line 86
    mul-int/lit8 v1, v0, 0x1f

    #@1a
    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    #@1c
    add-int v0, v1, v2

    #@1e
    .line 87
    return v0

    #@1f
    .line 83
    .end local v0    # "result":I
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BluetoothHealthAppConfiguration [mName = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 93
    const-string/jumbo v1, ",mDataType = "

    #@15
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 93
    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    #@1b
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 93
    const-string/jumbo v1, ", mRole = "

    #@22
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 93
    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    #@28
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 93
    const-string/jumbo v1, ",mChannelType = "

    #@2f
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 94
    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    #@35
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 94
    const-string/jumbo v1, "]"

    #@3c
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 161
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 162
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 163
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 159
    return-void
.end method
