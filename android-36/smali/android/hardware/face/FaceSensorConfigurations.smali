.class public Landroid/hardware/face/FaceSensorConfigurations;
.super Ljava/lang/Object;
.source "FaceSensorConfigurations.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceSensorConfigurations;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "FaceSensorConfigurations"


# instance fields
.field private final blacklist mResetLockoutRequiresChallenge:Z

.field private final blacklist mSensorPropsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/biometrics/face/SensorProps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/hardware/face/FaceSensorConfigurations$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceSensorConfigurations$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceSensorConfigurations;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mResetLockoutRequiresChallenge:Z

    .line 72
    const-class v0, Ljava/lang/String;

    const-class v1, [Landroid/hardware/biometrics/face/SensorProps;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "resetLockoutRequiresChallenge"    # Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Landroid/hardware/face/FaceSensorConfigurations;->mResetLockoutRequiresChallenge:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public static blacklist getIFace(Ljava/lang/String;)Landroid/hardware/biometrics/face/IFace;
    .registers 6
    .param p0, "fqName"    # Ljava/lang/String;

    .line 183
    const-string v0, "virtual"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 184
    invoke-static {p0}, Landroid/hardware/face/FaceSensorConfigurations;->remapFqName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "fqNameMapped":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIFace fqName is mapped: "

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

    const-string v2, "FaceSensorConfigurations"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    nop

    .line 188
    :try_start_2f
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 187
    invoke-static {v1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;

    move-result-object v1

    .line 189
    .local v1, "vhal":Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;
    invoke-interface {v1}, Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;->getFaceHal()Landroid/hardware/biometrics/face/IFace;

    move-result-object v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3f} :catch_40

    return-object v2

    .line 190
    .end local v1    # "vhal":Landroid/hardware/biometrics/face/virtualhal/IVirtualHal;
    :catch_40
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception in vhal.getFaceHal() call"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "fqNameMapped":Ljava/lang/String;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_57
    nop

    .line 196
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/hardware/biometrics/face/IFace$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/IFace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getSensorNameNotForInstance$0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "instance"    # Ljava/lang/String;
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist remapFqName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fqName"    # Ljava/lang/String;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

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

    .line 172
    return-object p0

    .line 175
    :cond_1c
    const-string v0, "IFace"

    const-string v1, "virtualhal.IVirtualHal"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addAidlConfigs([Ljava/lang/String;)V
    .registers 7
    .param p1, "aidlInstances"    # [Ljava/lang/String;

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    .line 81
    .local v2, "aidlInstance":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v2    # "aidlInstance":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    :cond_f
    return-void
.end method

.method public blacklist addHidlConfigs([Ljava/lang/String;Landroid/content/Context;)V
    .registers 11
    .param p1, "hidlConfigStrings"    # [Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "hidlFaceSensorConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/HidlFaceSensorConfig;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2c

    aget-object v3, p1, v2

    .line 92
    .local v3, "hidlConfig":Ljava/lang/String;
    new-instance v4, Landroid/hardware/face/HidlFaceSensorConfig;

    invoke-direct {v4}, Landroid/hardware/face/HidlFaceSensorConfig;-><init>()V

    .line 94
    .local v4, "hidlFaceSensorConfig":Landroid/hardware/face/HidlFaceSensorConfig;
    :try_start_10
    invoke-virtual {v4, v3, p2}, Landroid/hardware/face/HidlFaceSensorConfig;->parse(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_20

    .line 98
    nop

    .line 99
    invoke-virtual {v4}, Landroid/hardware/face/HidlFaceSensorConfig;->getModality()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_29

    .line 100
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 95
    :catch_20
    move-exception v5

    .line 96
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "FaceSensorConfigurations"

    const-string v7, "HIDL sensor configuration format is incorrect."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    nop

    .line 91
    .end local v3    # "hidlConfig":Ljava/lang/String;
    .end local v4    # "hidlFaceSensorConfig":Landroid/hardware/face/HidlFaceSensorConfig;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 103
    :cond_2c
    const-string v1, "defaultHIDL"

    .line 104
    .local v1, "hidlHalInstanceName":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/biometrics/face/SensorProps;

    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/biometrics/face/SensorProps;

    const-string v4, "defaultHIDL"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist doesInstanceExist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "instance"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getResetLockoutRequiresChallenge()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mResetLockoutRequiresChallenge:Z

    return v0
.end method

.method public blacklist getSensorInstance()Ljava/lang/String;
    .registers 3

    .line 146
    iget-object v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 147
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

    .line 136
    iget-object v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceSensorConfigurations$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/hardware/face/FaceSensorConfigurations$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 138
    .local v0, "notAVirtualInstance":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getSensorPropForInstance(Ljava/lang/String;)[Landroid/hardware/biometrics/face/SensorProps;
    .registers 8
    .param p1, "instance"    # Ljava/lang/String;

    .line 205
    const-string v0, "FaceSensorConfigurations"

    iget-object v1, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/biometrics/face/SensorProps;

    .line 208
    .local v1, "props":[Landroid/hardware/biometrics/face/SensorProps;
    if-eqz v1, :cond_d

    .line 209
    return-object v1

    .line 213
    :cond_d
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "fqName":Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/face/FaceSensorConfigurations;->getIFace(Ljava/lang/String;)Landroid/hardware/biometrics/face/IFace;

    move-result-object v3

    .line 215
    .local v3, "fp":Landroid/hardware/biometrics/face/IFace;
    if-eqz v3, :cond_32

    .line 216
    invoke-interface {v3}, Landroid/hardware/biometrics/face/IFace;->getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;

    move-result-object v0

    move-object v1, v0

    .end local v1    # "props":[Landroid/hardware/biometrics/face/SensorProps;
    .local v0, "props":[Landroid/hardware/biometrics/face/SensorProps;
    goto :goto_48

    .line 218
    .end local v0    # "props":[Landroid/hardware/biometrics/face/SensorProps;
    .restart local v1    # "props":[Landroid/hardware/biometrics/face/SensorProps;
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IFace null for instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_48} :catch_49

    .line 222
    .end local v2    # "fqName":Ljava/lang/String;
    .end local v3    # "fp":Landroid/hardware/biometrics/face/IFace;
    :goto_48
    goto :goto_4f

    .line 220
    :catch_49
    move-exception v2

    .line 221
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to get sensor properties!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4f
    return-object v1
.end method

.method public blacklist hasSensorConfigurations()Z
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

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

    .line 119
    iget-object v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

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

    .line 161
    iget-boolean v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mResetLockoutRequiresChallenge:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 162
    iget-object v0, p0, Landroid/hardware/face/FaceSensorConfigurations;->mSensorPropsMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 163
    return-void
.end method
