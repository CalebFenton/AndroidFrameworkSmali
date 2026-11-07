.class public Lcom/android/ims/RcsTypeIdPair;
.super Ljava/lang/Object;
.source "RcsTypeIdPair.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/RcsTypeIdPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mId:I

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lcom/android/ims/RcsTypeIdPair$1;

    invoke-direct {v0}, Lcom/android/ims/RcsTypeIdPair$1;-><init>()V

    sput-object v0, Lcom/android/ims/RcsTypeIdPair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "id"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    .line 32
    iput p2, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    return v0
.end method

.method public blacklist setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 48
    iput p1, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    .line 49
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 40
    iput p1, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    .line 41
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method
