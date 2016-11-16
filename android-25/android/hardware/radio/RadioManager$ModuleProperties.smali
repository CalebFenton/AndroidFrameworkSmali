.class public Landroid/hardware/radio/RadioManager$ModuleProperties;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ModuleProperties$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private final mClassId:I

.field private final mId:I

.field private final mImplementor:Ljava/lang/String;

.field private final mIsCaptureSupported:Z

.field private final mNumAudioSources:I

.field private final mNumTuners:I

.field private final mProduct:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 224
    new-instance v0, Landroid/hardware/radio/RadioManager$ModuleProperties$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;-><init>()V

    #@5
    .line 223
    sput-object v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 99
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ[Landroid/hardware/radio/RadioManager$BandDescriptor;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "classId"    # I
    .param p3, "implementor"    # Ljava/lang/String;
    .param p4, "product"    # Ljava/lang/String;
    .param p5, "version"    # Ljava/lang/String;
    .param p6, "serial"    # Ljava/lang/String;
    .param p7, "numTuners"    # I
    .param p8, "numAudioSources"    # I
    .param p9, "isCaptureSupported"    # Z
    .param p10, "bands"    # [Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    iput p1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    #@5
    .line 116
    iput p2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    #@7
    .line 117
    iput-object p3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    #@9
    .line 118
    iput-object p4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    #@b
    .line 119
    iput-object p5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    #@d
    .line 120
    iput-object p6, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    #@f
    .line 121
    iput p7, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    #@11
    .line 122
    iput p8, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    #@13
    .line 123
    iput-boolean p9, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    #@15
    .line 124
    iput-object p10, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@17
    .line 114
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v3

    #@8
    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    #@a
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v3

    #@e
    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    #@10
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    #@16
    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    #@1c
    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    #@22
    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    #@28
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    #@2e
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v3

    #@32
    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    #@34
    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v3

    #@38
    if-ne v3, v2, :cond_0

    #@3a
    :goto_0
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    #@3c
    .line 216
    const-class v2, Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@3e
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    #@45
    move-result-object v1

    #@46
    .line 217
    .local v1, "tmp":[Landroid/os/Parcelable;
    array-length v2, v1

    #@47
    new-array v2, v2, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@49
    iput-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@4b
    .line 218
    const/4 v0, 0x0

    #@4c
    .local v0, "i":I
    :goto_1
    array-length v2, v1

    #@4d
    if-ge v0, v2, :cond_1

    #@4f
    .line 219
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@51
    aget-object v2, v1, v0

    #@53
    check-cast v2, Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@55
    aput-object v2, v3, v0

    #@57
    .line 218
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 215
    .end local v0    # "i":I
    .end local v1    # "tmp":[Landroid/os/Parcelable;
    :cond_0
    const/4 v2, 0x0

    #@5b
    goto :goto_0

    #@5c
    .line 206
    .restart local v0    # "i":I
    .restart local v1    # "tmp":[Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 250
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 283
    if-ne p0, p1, :cond_0

    #@4
    .line 284
    return v4

    #@5
    .line 285
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 286
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 287
    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    #@d
    .line 288
    .local v0, "other":Landroid/hardware/radio/RadioManager$ModuleProperties;
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    #@f
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    #@12
    move-result v2

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 289
    return v3

    #@16
    .line 290
    :cond_2
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    #@18
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getClassId()I

    #@1b
    move-result v2

    #@1c
    if-eq v1, v2, :cond_3

    #@1e
    .line 291
    return v3

    #@1f
    .line 292
    :cond_3
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    #@21
    if-nez v1, :cond_4

    #@23
    .line 293
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getImplementor()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    if-eqz v1, :cond_5

    #@29
    .line 294
    return v3

    #@2a
    .line 295
    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    #@2c
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getImplementor()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_5

    #@36
    .line 296
    return v3

    #@37
    .line 297
    :cond_5
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    #@39
    if-nez v1, :cond_6

    #@3b
    .line 298
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getProduct()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    if-eqz v1, :cond_7

    #@41
    .line 299
    return v3

    #@42
    .line 300
    :cond_6
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    #@44
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getProduct()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-nez v1, :cond_7

    #@4e
    .line 301
    return v3

    #@4f
    .line 302
    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    #@51
    if-nez v1, :cond_8

    #@53
    .line 303
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getVersion()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    if-eqz v1, :cond_9

    #@59
    .line 304
    return v3

    #@5a
    .line 305
    :cond_8
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    #@5c
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getVersion()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v1

    #@64
    if-nez v1, :cond_9

    #@66
    .line 306
    return v3

    #@67
    .line 307
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    #@69
    if-nez v1, :cond_a

    #@6b
    .line 308
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getSerial()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    if-eqz v1, :cond_b

    #@71
    .line 309
    return v3

    #@72
    .line 310
    :cond_a
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    #@74
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getSerial()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v1

    #@7c
    if-nez v1, :cond_b

    #@7e
    .line 311
    return v3

    #@7f
    .line 312
    :cond_b
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    #@81
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getNumTuners()I

    #@84
    move-result v2

    #@85
    if-eq v1, v2, :cond_c

    #@87
    .line 313
    return v3

    #@88
    .line 314
    :cond_c
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    #@8a
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getNumAudioSources()I

    #@8d
    move-result v2

    #@8e
    if-eq v1, v2, :cond_d

    #@90
    .line 315
    return v3

    #@91
    .line 316
    :cond_d
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    #@93
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->isCaptureSupported()Z

    #@96
    move-result v2

    #@97
    if-eq v1, v2, :cond_e

    #@99
    .line 317
    return v3

    #@9a
    .line 318
    :cond_e
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@9c
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@9f
    move-result-object v2

    #@a0
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@a3
    move-result v1

    #@a4
    if-nez v1, :cond_f

    #@a6
    .line 319
    return v3

    #@a7
    .line 320
    :cond_f
    return v4
.end method

.method public getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@2
    return-object v0
.end method

.method public getClassId()I
    .locals 1

    #@0
    .prologue
    .line 140
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 133
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    #@2
    return v0
.end method

.method public getImplementor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNumAudioSources()I
    .locals 1

    #@0
    .prologue
    .line 187
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    #@2
    return v0
.end method

.method public getNumTuners()I
    .locals 1

    #@0
    .prologue
    .line 177
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    #@2
    return v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 266
    const/16 v0, 0x1f

    #@3
    .line 268
    .local v0, "prime":I
    iget v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    #@5
    add-int/lit8 v1, v2, 0x1f

    #@7
    .line 269
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@9
    iget v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    #@b
    add-int v1, v2, v4

    #@d
    .line 270
    mul-int/lit8 v4, v1, 0x1f

    #@f
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    #@11
    if-nez v2, :cond_1

    #@13
    move v2, v3

    #@14
    :goto_0
    add-int v1, v4, v2

    #@16
    .line 271
    mul-int/lit8 v4, v1, 0x1f

    #@18
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    #@1a
    if-nez v2, :cond_2

    #@1c
    move v2, v3

    #@1d
    :goto_1
    add-int v1, v4, v2

    #@1f
    .line 272
    mul-int/lit8 v4, v1, 0x1f

    #@21
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    #@23
    if-nez v2, :cond_3

    #@25
    move v2, v3

    #@26
    :goto_2
    add-int v1, v4, v2

    #@28
    .line 273
    mul-int/lit8 v4, v1, 0x1f

    #@2a
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    #@2c
    if-nez v2, :cond_4

    #@2e
    move v2, v3

    #@2f
    :goto_3
    add-int v1, v4, v2

    #@31
    .line 274
    mul-int/lit8 v2, v1, 0x1f

    #@33
    iget v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    #@35
    add-int v1, v2, v4

    #@37
    .line 275
    mul-int/lit8 v2, v1, 0x1f

    #@39
    iget v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    #@3b
    add-int v1, v2, v4

    #@3d
    .line 276
    mul-int/lit8 v2, v1, 0x1f

    #@3f
    iget-boolean v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    #@41
    if-eqz v4, :cond_0

    #@43
    const/4 v3, 0x1

    #@44
    :cond_0
    add-int v1, v2, v3

    #@46
    .line 277
    mul-int/lit8 v2, v1, 0x1f

    #@48
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@4a
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@4d
    move-result v3

    #@4e
    add-int v1, v2, v3

    #@50
    .line 278
    return v1

    #@51
    .line 270
    :cond_1
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    #@53
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@56
    move-result v2

    #@57
    goto :goto_0

    #@58
    .line 271
    :cond_2
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    #@5a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@5d
    move-result v2

    #@5e
    goto :goto_1

    #@5f
    .line 272
    :cond_3
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    #@61
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@64
    move-result v2

    #@65
    goto :goto_2

    #@66
    .line 273
    :cond_4
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    #@68
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@6b
    move-result v2

    #@6c
    goto :goto_3
.end method

.method public isCaptureSupported()Z
    .locals 1

    #@0
    .prologue
    .line 196
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ModuleProperties [mId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", mClassId="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 256
    const-string/jumbo v1, ", mImplementor="

    #@22
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 256
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    #@28
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 256
    const-string/jumbo v1, ", mProduct="

    #@2f
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 256
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    #@35
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 257
    const-string/jumbo v1, ", mVersion="

    #@3c
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 257
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    #@42
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 257
    const-string/jumbo v1, ", mSerial="

    #@49
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 257
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    #@4f
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 258
    const-string/jumbo v1, ", mNumTuners="

    #@56
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 258
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    #@5c
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 259
    const-string/jumbo v1, ", mNumAudioSources="

    #@63
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 259
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    #@69
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 260
    const-string/jumbo v1, ", mIsCaptureSupported="

    #@70
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 260
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    #@76
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 261
    const-string/jumbo v1, ", mBands="

    #@7d
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 261
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@83
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 261
    const-string/jumbo v1, "]"

    #@8e
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 236
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 237
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 238
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 239
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 240
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 241
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 242
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 243
    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 244
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    #@2a
    if-eqz v0, :cond_0

    #@2c
    const/4 v0, 0x1

    #@2d
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 245
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@32
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@35
    .line 235
    return-void

    #@36
    .line 244
    :cond_0
    const/4 v0, 0x0

    #@37
    goto :goto_0
.end method
