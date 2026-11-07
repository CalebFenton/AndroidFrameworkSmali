.class public final Landroid/hardware/biometrics/SensorProperties$ComponentInfo;
.super Ljava/lang/Object;
.source "SensorProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/SensorProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentInfo"
.end annotation


# instance fields
.field private final blacklist mComponentId:Ljava/lang/String;

.field private final blacklist mFirmwareVersion:Ljava/lang/String;

.field private final blacklist mHardwareVersion:Ljava/lang/String;

.field private final blacklist mSerialNumber:Ljava/lang/String;

.field private final blacklist mSoftwareVersion:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "hardwareVersion"    # Ljava/lang/String;
    .param p3, "firmwareVersion"    # Ljava/lang/String;
    .param p4, "serialNumber"    # Ljava/lang/String;
    .param p5, "softwareVersion"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mComponentId:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mHardwareVersion:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mFirmwareVersion:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mSerialNumber:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mSoftwareVersion:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static blacklist from(Landroid/hardware/biometrics/ComponentInfoInternal;)Landroid/hardware/biometrics/SensorProperties$ComponentInfo;
    .registers 7
    .param p0, "internalComp"    # Landroid/hardware/biometrics/ComponentInfoInternal;

    .line 131
    new-instance v0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->componentId:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->hardwareVersion:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->firmwareVersion:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->serialNumber:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->softwareVersion:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getComponentId()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mComponentId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFirmwareVersion()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHardwareVersion()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mHardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSoftwareVersion()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method
