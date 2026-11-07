.class public abstract Landroid/companion/datatransfer/SystemDataTransferRequest;
.super Ljava/lang/Object;
.source "SystemDataTransferRequest.java"


# static fields
.field public static final blacklist DATA_TYPE_PERMISSION_SYNC:I = 0x1


# instance fields
.field final blacklist mAssociationId:I

.field final blacklist mDataType:I

.field blacklist mUserConsented:Z

.field blacklist mUserId:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "associationId"    # I
    .param p2, "dataType"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserConsented:Z

    .line 52
    iput p1, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mAssociationId:I

    .line 53
    iput p2, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mDataType:I

    .line 54
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserConsented:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mAssociationId:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mDataType:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserId:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserConsented:Z

    .line 92
    return-void
.end method


# virtual methods
.method public abstract blacklist copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAssociationId()I
    .registers 2

    .line 58
    iget v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mAssociationId:I

    return v0
.end method

.method public blacklist getDataType()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mDataType:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserId:I

    return v0
.end method

.method public blacklist isUserConsented()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserConsented:Z

    return v0
.end method

.method public blacklist setUserConsented(Z)V
    .registers 2
    .param p1, "isUserConsented"    # Z

    .line 83
    iput-boolean p1, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserConsented:Z

    .line 84
    return-void
.end method

.method public blacklist setUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 78
    iput p1, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserId:I

    .line 79
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mAssociationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-boolean v0, p0, Landroid/companion/datatransfer/SystemDataTransferRequest;->mUserConsented:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 100
    return-void
.end method
