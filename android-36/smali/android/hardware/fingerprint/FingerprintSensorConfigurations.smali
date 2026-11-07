.class public Landroid/hardware/fingerprint/FingerprintSensorConfigurations;
.super Ljava/lang/Object;
.source "FingerprintSensorConfigurations.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/FingerprintSensorConfigurations;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "FingerprintSensorConfigurations"


# instance fields
.field private final blacklist mResetLockoutRequiresHardwareAuthToken:Z

.field private final blacklist mSensorPropsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/biometrics/fingerprint/SensorProps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mResetLockoutRequiresHardwareAuthToken:Z

    .line 107
    const-class v0, Ljava/lang/String;

    const-class v1, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    .line 108
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "resetLockoutRequiresHardwareAuthToken"    # Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mResetLockoutRequiresHardwareAuthToken:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public static blacklist getIFingerprint(Ljava/lang/String;)Landroid/hardware/biometrics/fingerprint/IFingerprint;
    .registers 6
    .param p0, "fqName"    # Ljava/lang/String;

    .line 188
    const-string v0, "virtual"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 189
    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->remapFqName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "fqNameMapped":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIFingerprint fqName is mapped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintSensorConfigurations"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    nop

    .line 193
    :try_start_2f
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 192
    invoke-static {v1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;

    move-result-object v1

    .line 194
    .local v1, "vhal":Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;
    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;->getFingerprintHal()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3f} :catch_40

    return-object v2

    .line 195
    .end local v1    # "vhal":Landroid/hardware/biometrics/fingerprint/virtualhal/IVirtualHal;
    :catch_40
    move-exception v1

    .line 196
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception in vhal.getFingerprintHal() call"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0    # "fqNameMapped":Ljava/lang/String;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    nop

    .line 201
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getSensorNameNotForInstance$0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "instance"    # Ljava/lang/String;
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist remapFqName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fqName"    # Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/virtual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 176
    return-object p0

    .line 179
    :cond_1c
    const-string v0, "IFingerprint"

    const-string v1, "virtualhal.IVirtualHal"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addAidlSensors([Ljava/lang/String;)V
    .registers 7
    .param p1, "aidlInstances"    # [Ljava/lang/String;

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    .line 76
    .local v2, "aidlInstance":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v2    # "aidlInstance":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 78
    :cond_f
    return-void
.end method

.method public blacklist addHidlSensors([Ljava/lang/String;Landroid/content/Context;)V
    .registers 11
    .param p1, "hidlConfigStrings"    # [Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "hidlFingerprintSensorConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2b

    aget-object v3, p1, v2

    .line 87
    .local v3, "hidlConfigString":Ljava/lang/String;
    new-instance v4, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;

    invoke-direct {v4}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;-><init>()V

    .line 90
    .local v4, "hidlFingerprintSensorConfig":Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;
    :try_start_10
    invoke-virtual {v4, v3, p2}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->parse(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_1f

    .line 94
    nop

    .line 95
    invoke-virtual {v4}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->getModality()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_28

    .line 96
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 91
    :catch_1f
    move-exception v5

    .line 92
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "FingerprintSensorConfigurations"

    const-string v7, "HIDL sensor configuration format is incorrect."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    nop

    .line 86
    .end local v3    # "hidlConfigString":Ljava/lang/String;
    .end local v4    # "hidlFingerprintSensorConfig":Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 99
    :cond_2b
    const-string v1, "defaultHIDL"

    .line 100
    .local v1, "hidlHalInstanceName":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;

    .line 101
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 100
    const-string v4, "defaultHIDL"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist doesInstanceExist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "instance"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getResetLockoutRequiresHardwareAuthToken()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mResetLockoutRequiresHardwareAuthToken:Z

    return v0
.end method

.method public blacklist getSensorInstance()Ljava/lang/String;
    .registers 3

    .line 148
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 149
    .local v0, "optionalInstance":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getSensorNameNotForInstance(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "instance"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintSensorConfigurations$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 140
    .local v0, "notAVirtualInstance":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/fingerprint/SensorProps;
    .registers 8
    .param p1, "instance"    # Ljava/lang/String;

    .line 209
    const-string v0, "FingerprintSensorConfigurations"

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 212
    .local v1, "props":[Landroid/hardware/biometrics/fingerprint/SensorProps;
    if-eqz v1, :cond_d

    .line 213
    return-object v1

    .line 217
    :cond_d
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "fqName":Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->getIFingerprint(Ljava/lang/String;)Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v3

    .line 219
    .local v3, "fp":Landroid/hardware/biometrics/fingerprint/IFingerprint;
    if-eqz v3, :cond_32

    .line 220
    invoke-interface {v3}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object v0

    move-object v1, v0

    .end local v1    # "props":[Landroid/hardware/biometrics/fingerprint/SensorProps;
    .local v0, "props":[Landroid/hardware/biometrics/fingerprint/SensorProps;
    goto :goto_48

    .line 222
    .end local v0    # "props":[Landroid/hardware/biometrics/fingerprint/SensorProps;
    .restart local v1    # "props":[Landroid/hardware/biometrics/fingerprint/SensorProps;
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IFingerprint null for instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_48} :catch_49

    .line 226
    .end local v2    # "fqName":Ljava/lang/String;
    .end local v3    # "fp":Landroid/hardware/biometrics/fingerprint/IFingerprint;
    :goto_48
    goto :goto_4f

    .line 224
    :catch_49
    move-exception v2

    .line 225
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to get sensor properties!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4f
    if-nez v1, :cond_54

    .line 229
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 231
    :cond_54
    return-object v1
.end method

.method public blacklist hasSensorConfigurations()Z
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isSingleSensorConfigurationPresent()Z
    .registers 3

    .line 121
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 163
    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mResetLockoutRequiresHardwareAuthToken:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 164
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 165
    return-void
.end method
