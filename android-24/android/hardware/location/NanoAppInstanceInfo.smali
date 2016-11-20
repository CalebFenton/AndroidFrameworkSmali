.class public Landroid/hardware/location/NanoAppInstanceInfo;
.super Ljava/lang/Object;
.source "NanoAppInstanceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/NanoAppInstanceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppId:J

.field private mAppVersion:I

.field private mContexthubId:I

.field private mHandle:I

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
    .line 322
    new-instance v0, Landroid/hardware/location/NanoAppInstanceInfo$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/location/NanoAppInstanceInfo$1;-><init>()V

    #@5
    .line 321
    sput-object v0, Landroid/hardware/location/NanoAppInstanceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@5
    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    #@7
    .line 51
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@9
    iput-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    #@b
    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    #@9
    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    #@f
    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v2

    #@13
    iput-wide v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    #@15
    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v2

    #@19
    iput v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    #@1b
    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    iput v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    #@21
    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v2

    #@25
    iput v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    #@27
    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v2

    #@2b
    iput v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    #@2d
    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    .line 292
    .local v0, "neededSensorsLength":I
    new-array v2, v0, [I

    #@33
    iput-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    #@35
    .line 293
    iget-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    #@37
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    #@3a
    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v1

    #@3e
    .line 296
    .local v1, "outputEventsLength":I
    new-array v2, v1, [I

    #@40
    iput-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    #@42
    .line 297
    iget-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    #@44
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    #@47
    .line 281
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 301
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAppId()J
    .locals 2

    #@0
    .prologue
    .line 101
    iget-wide v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    #@2
    return-wide v0
.end method

.method public getAppVersion()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    #@2
    return v0
.end method

.method public getContexthubId()I
    .locals 1

    #@0
    .prologue
    .line 246
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    #@2
    return v0
.end method

.method public getHandle()I
    .locals 1

    #@0
    .prologue
    .line 266
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNeededExecMemBytes()I
    .locals 1

    #@0
    .prologue
    .line 182
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    #@2
    return v0
.end method

.method public getNeededReadMemBytes()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    #@2
    return v0
.end method

.method public getNeededSensors()[I
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    #@2
    return-object v0
.end method

.method public getNeededWriteMemBytes()I
    .locals 1

    #@0
    .prologue
    .line 161
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    #@2
    return v0
.end method

.method public getOutputEvents()[I
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    #@2
    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setAppId(J)V
    .locals 1
    .param p1, "appId"    # J

    #@0
    .prologue
    .line 112
    iput-wide p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    #@2
    .line 111
    return-void
.end method

.method public setAppVersion(I)V
    .locals 0
    .param p1, "appVersion"    # I

    #@0
    .prologue
    .line 132
    iput p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    #@2
    .line 131
    return-void
.end method

.method public setContexthubId(I)V
    .locals 0
    .param p1, "contexthubId"    # I

    #@0
    .prologue
    .line 257
    iput p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    #@2
    .line 256
    return-void
.end method

.method public setHandle(I)V
    .locals 0
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 277
    iput p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    #@2
    .line 276
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    iput-object p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    #@2
    .line 91
    return-void
.end method

.method public setNeededExecMemBytes(I)V
    .locals 0
    .param p1, "neededExecMemBytes"    # I

    #@0
    .prologue
    .line 194
    iput p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    #@2
    .line 193
    return-void
.end method

.method public setNeededReadMemBytes(I)V
    .locals 0
    .param p1, "neededReadMemBytes"    # I

    #@0
    .prologue
    .line 152
    iput p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    #@2
    .line 151
    return-void
.end method

.method public setNeededSensors([I)V
    .locals 0
    .param p1, "neededSensors"    # [I

    #@0
    .prologue
    .line 215
    if-eqz p1, :cond_0

    #@2
    .end local p1    # "neededSensors":[I
    :goto_0
    iput-object p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    #@4
    .line 214
    return-void

    #@5
    .line 215
    .restart local p1    # "neededSensors":[I
    :cond_0
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    #@7
    goto :goto_0
.end method

.method public setNeededWriteMemBytes(I)V
    .locals 0
    .param p1, "neededWriteMemBytes"    # I

    #@0
    .prologue
    .line 173
    iput p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    #@2
    .line 172
    return-void
.end method

.method public setOutputEvents([I)V
    .locals 0
    .param p1, "outputEvents"    # [I

    #@0
    .prologue
    .line 237
    if-eqz p1, :cond_0

    #@2
    .end local p1    # "outputEvents":[I
    :goto_0
    iput-object p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    #@4
    .line 236
    return-void

    #@5
    .line 237
    .restart local p1    # "outputEvents":[I
    :cond_0
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    #@7
    goto :goto_0
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisher"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    #@2
    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "handle : "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mHandle:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 335
    .local v0, "retVal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ", Id : 0x"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-wide v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    #@28
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, ", Version : "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    const-string/jumbo v2, ", Name : "

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    iget-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    const-string/jumbo v2, ", Publisher : "

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    iget-object v2, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    .line 340
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mPublisher:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 306
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 307
    iget-wide v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppId:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 308
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mAppVersion:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 309
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mContexthubId:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 310
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededReadMemBytes:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 311
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededWriteMemBytes:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 312
    iget v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededExecMemBytes:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 315
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    #@2a
    array-length v0, v0

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 316
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mNeededSensors:[I

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@33
    .line 317
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    #@35
    array-length v0, v0

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 318
    iget-object v0, p0, Landroid/hardware/location/NanoAppInstanceInfo;->mOutputEvents:[I

    #@3b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@3e
    .line 304
    return-void
.end method
