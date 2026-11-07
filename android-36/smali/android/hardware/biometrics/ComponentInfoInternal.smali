.class public Landroid/hardware/biometrics/ComponentInfoInternal;
.super Ljava/lang/Object;
.source "ComponentInfoInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/ComponentInfoInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist componentId:Ljava/lang/String;

.field public final blacklist firmwareVersion:Ljava/lang/String;

.field public final blacklist hardwareVersion:Ljava/lang/String;

.field public final blacklist serialNumber:Ljava/lang/String;

.field public final blacklist softwareVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/hardware/biometrics/ComponentInfoInternal$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/ComponentInfoInternal$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/ComponentInfoInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->componentId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->hardwareVersion:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->firmwareVersion:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->serialNumber:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->softwareVersion:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "hardwareVersion"    # Ljava/lang/String;
    .param p3, "firmwareVersion"    # Ljava/lang/String;
    .param p4, "serialNumber"    # Ljava/lang/String;
    .param p5, "softwareVersion"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->componentId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->hardwareVersion:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->firmwareVersion:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->serialNumber:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->softwareVersion:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static blacklist from(Landroid/hardware/biometrics/ComponentInfoInternal;)Landroid/hardware/biometrics/ComponentInfoInternal;
    .registers 7
    .param p0, "comp"    # Landroid/hardware/biometrics/ComponentInfoInternal;

    .line 41
    new-instance v0, Landroid/hardware/biometrics/ComponentInfoInternal;

    iget-object v1, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->componentId:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->hardwareVersion:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->firmwareVersion:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->serialNumber:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->softwareVersion:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/biometrics/ComponentInfoInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->componentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HardwareVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FirmwareVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SerialNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SoftwareVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->componentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->softwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return-void
.end method
