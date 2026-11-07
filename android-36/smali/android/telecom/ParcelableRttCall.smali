.class public Landroid/telecom/ParcelableRttCall;
.super Ljava/lang/Object;
.source "ParcelableRttCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableRttCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mReceiveStream:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mRttMode:I

.field private final greylist-max-o mTransmitStream:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Landroid/telecom/ParcelableRttCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableRttCall$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableRttCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "rttMode"    # I
    .param p2, "transmitStream"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "receiveStream"    # Landroid/os/ParcelFileDescriptor;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    .line 43
    iput-object p2, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    .line 44
    iput-object p3, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    .line 45
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    .line 49
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    .line 50
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getReceiveStream()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public greylist-max-o getRttMode()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    return v0
.end method

.method public greylist-max-o getTransmitStream()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget v0, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    return-void
.end method
