.class public Landroid/hardware/location/ContextHubMessage;
.super Ljava/lang/Object;
.source "ContextHubMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/ContextHubMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContextHubMessage"


# instance fields
.field private mData:[B

.field private mType:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 125
    new-instance v0, Landroid/hardware/location/ContextHubMessage$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/location/ContextHubMessage$1;-><init>()V

    #@5
    .line 124
    sput-object v0, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .param p1, "msgType"    # I
    .param p2, "version"    # I
    .param p3, "data"    # [B

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    #@5
    .line 101
    iput p2, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    #@7
    .line 102
    array-length v0, p3

    #@8
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    #@e
    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    #@9
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v1

    #@d
    iput v1, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    #@f
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    .line 113
    .local v0, "bufferLength":I
    new-array v1, v0, [B

    #@15
    iput-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    #@17
    .line 114
    iget-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    #@19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    #@1c
    .line 109
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubMessage;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/ContextHubMessage;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 106
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getData()[B
    .locals 2

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    #@2
    iget-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    #@0
    .prologue
    .line 44
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    #@2
    return v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 53
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    #@2
    return v0
.end method

.method public setMsgData([B)V
    .locals 1
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 89
    array-length v0, p1

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    #@7
    .line 88
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .param p1, "msgType"    # I

    #@0
    .prologue
    .line 71
    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    #@2
    .line 70
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    #@0
    .prologue
    .line 80
    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    #@2
    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 119
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 120
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    #@c
    array-length v0, v0

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 121
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@15
    .line 117
    return-void
.end method
