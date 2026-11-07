.class public final Landroid/hardware/face/Face;
.super Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
.source "Face.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/hardware/face/Face$1;

    invoke-direct {v0}, Landroid/hardware/face/Face$1;-><init>()V

    sput-object v0, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 36
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/face/Face-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/face/Face;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;IJ)V
    .registers 5
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "faceId"    # I
    .param p3, "deviceId"    # J

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    invoke-virtual {p0}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p0}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    return-void
.end method
