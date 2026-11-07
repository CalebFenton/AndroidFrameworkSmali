.class public final Landroid/hardware/face/FaceEnrollCell;
.super Ljava/lang/Object;
.source "FaceEnrollCell.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceEnrollCell;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mX:I

.field private final blacklist mY:I

.field private final blacklist mZ:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Landroid/hardware/face/FaceEnrollCell$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceEnrollCell$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceEnrollCell;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/hardware/face/FaceEnrollCell;->mX:I

    .line 42
    iput p2, p0, Landroid/hardware/face/FaceEnrollCell;->mY:I

    .line 43
    iput p3, p0, Landroid/hardware/face/FaceEnrollCell;->mZ:I

    .line 44
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceEnrollCell;->mX:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceEnrollCell;->mY:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceEnrollCell;->mZ:I

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/face/FaceEnrollCell-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceEnrollCell;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getX()I
    .registers 2

    .line 50
    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mX:I

    return v0
.end method

.method public blacklist getY()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mY:I

    return v0
.end method

.method public blacklist getZ()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mZ:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/hardware/face/FaceEnrollCell;->mZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
