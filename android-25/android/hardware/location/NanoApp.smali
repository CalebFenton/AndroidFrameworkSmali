.class public Landroid/hardware/location/NanoApp;
.super Ljava/lang/Object;
.source "NanoApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/NanoApp$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/NanoApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final UNKNOWN:Ljava/lang/String;

.field private mAppBinary:[B

.field private mAppId:I

.field private mAppIdSet:Z

.field private mAppVersion:I

.field private mName:Ljava/lang/String;

.field private mNeededExecMemBytes:I

.field private mNeededReadMemBytes:I

.field private mNeededSensors:[I

.field private mNeededWriteMemBytes:I

.field private mOutputEvents:[I

.field private mPublisher:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 333
    new-instance v0, Landroid/hardware/location/NanoApp$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/location/NanoApp$1;-><init>()V

    #@5
    .line 332
    sput-object v0, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v1, v0}, Landroid/hardware/location/NanoApp;-><init>(I[B)V

    #@5
    .line 63
    iput-boolean v1, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    #@7
    .line 61
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "appBinary"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 35
    const-string/jumbo v0, "NanoApp"

    #@7
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    #@9
    .line 37
    const-string/jumbo v0, "Unknown"

    #@c
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    #@e
    .line 82
    const-string/jumbo v0, "Unknown"

    #@11
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    #@13
    .line 83
    const-string/jumbo v0, "Unknown"

    #@16
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    #@18
    .line 85
    iput p1, p0, Landroid/hardware/location/NanoApp;->mAppId:I

    #@1a
    .line 86
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    #@1d
    .line 87
    iput v1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    #@1f
    .line 89
    iput v1, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    #@21
    .line 90
    iput v1, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    #@23
    .line 91
    iput v1, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    #@25
    .line 93
    new-array v0, v1, [I

    #@27
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    #@29
    .line 94
    new-array v0, v1, [I

    #@2b
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    #@2d
    .line 95
    iput-object p2, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    #@2f
    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const-string/jumbo v3, "NanoApp"

    #@6
    iput-object v3, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    #@8
    .line 37
    const-string/jumbo v3, "Unknown"

    #@b
    iput-object v3, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    #@d
    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    #@13
    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    #@19
    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    iput v3, p0, Landroid/hardware/location/NanoApp;->mAppId:I

    #@1f
    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    iput v3, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    #@25
    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    iput v3, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    #@2b
    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v3

    #@2f
    iput v3, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    #@31
    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v3

    #@35
    iput v3, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    #@37
    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    .line 290
    .local v1, "mNeededSensorsLength":I
    new-array v3, v1, [I

    #@3d
    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    #@3f
    .line 291
    iget-object v3, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    #@41
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    #@44
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v2

    #@48
    .line 294
    .local v2, "mOutputEventsLength":I
    new-array v3, v2, [I

    #@4a
    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    #@4c
    .line 295
    iget-object v3, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    #@4e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    #@51
    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v0

    #@55
    .line 298
    .local v0, "binaryLength":I
    new-array v3, v0, [B

    #@57
    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    #@59
    .line 299
    iget-object v3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    #@5b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    #@5e
    .line 279
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoApp;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoApp;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 303
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAppBinary()[B
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    #@2
    return-object v0
.end method

.method public getAppId()I
    .locals 1

    #@0
    .prologue
    .line 213
    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppId:I

    #@2
    return v0
.end method

.method public getAppVersion()I
    .locals 1

    #@0
    .prologue
    .line 222
    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNeededExecMemBytes()I
    .locals 1

    #@0
    .prologue
    .line 249
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    #@2
    return v0
.end method

.method public getNeededReadMemBytes()I
    .locals 1

    #@0
    .prologue
    .line 231
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    #@2
    return v0
.end method

.method public getNeededSensors()[I
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    #@2
    return-object v0
.end method

.method public getNeededWriteMemBytes()I
    .locals 1

    #@0
    .prologue
    .line 240
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    #@2
    return v0
.end method

.method public getOutputEvents()[I
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    #@2
    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setAppBinary([B)V
    .locals 0
    .param p1, "appBinary"    # [B

    #@0
    .prologue
    .line 185
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    #@2
    .line 184
    return-void
.end method

.method public setAppId(I)V
    .locals 1
    .param p1, "appId"    # I

    #@0
    .prologue
    .line 122
    iput p1, p0, Landroid/hardware/location/NanoApp;->mAppId:I

    #@2
    .line 123
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    #@5
    .line 121
    return-void
.end method

.method public setAppVersion(I)V
    .locals 0
    .param p1, "appVersion"    # I

    #@0
    .prologue
    .line 132
    iput p1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    #@2
    .line 131
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    #@2
    .line 112
    return-void
.end method

.method public setNeededExecMemBytes(I)V
    .locals 0
    .param p1, "neededExecMemBytes"    # I

    #@0
    .prologue
    .line 162
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    #@2
    .line 161
    return-void
.end method

.method public setNeededReadMemBytes(I)V
    .locals 0
    .param p1, "neededReadMemBytes"    # I

    #@0
    .prologue
    .line 142
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    #@2
    .line 141
    return-void
.end method

.method public setNeededSensors([I)V
    .locals 0
    .param p1, "neededSensors"    # [I

    #@0
    .prologue
    .line 172
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    #@2
    .line 171
    return-void
.end method

.method public setNeededWriteMemBytes(I)V
    .locals 0
    .param p1, "neededWriteMemBytes"    # I

    #@0
    .prologue
    .line 152
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    #@2
    .line 151
    return-void
.end method

.method public setOutputEvents([I)V
    .locals 0
    .param p1, "outputEvents"    # [I

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    #@2
    .line 175
    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisher"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    #@2
    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Id : "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/hardware/location/NanoApp;->mAppId:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 346
    .local v0, "retVal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ", Version : "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget v2, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    const-string/jumbo v2, ", Name : "

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    const-string/jumbo v2, ", Publisher : "

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    .line 350
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Must set non-null AppBinary for nanoapp "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 310
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    #@22
    if-nez v0, :cond_1

    #@24
    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Must set AppId for nanoapp "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 314
    :cond_1
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@45
    .line 315
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    #@47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4a
    .line 316
    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppId:I

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 317
    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    #@51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    .line 318
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    #@56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 319
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    #@5b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 320
    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    #@60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    .line 322
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    #@65
    array-length v0, v0

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    .line 323
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    #@6b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@6e
    .line 325
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    #@70
    array-length v0, v0

    #@71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    .line 326
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    #@76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@79
    .line 328
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    #@7b
    array-length v0, v0

    #@7c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    .line 329
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    #@81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@84
    .line 306
    return-void
.end method
