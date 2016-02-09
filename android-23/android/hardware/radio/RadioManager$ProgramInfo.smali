.class public Landroid/hardware/radio/RadioManager$ProgramInfo;
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
    name = "ProgramInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ProgramInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannel:I

.field private final mDigital:Z

.field private final mMetadata:Landroid/hardware/radio/RadioMetadata;

.field private final mSignalStrength:I

.field private final mStereo:Z

.field private final mSubChannel:I

.field private final mTuned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1175
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo$1;-><init>()V

    #@5
    .line 1174
    sput-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1094
    return-void
.end method

.method constructor <init>(IIZZZILandroid/hardware/radio/RadioMetadata;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "subChannel"    # I
    .param p3, "tuned"    # Z
    .param p4, "stereo"    # Z
    .param p5, "digital"    # Z
    .param p6, "signalStrength"    # I
    .param p7, "metadata"    # Landroid/hardware/radio/RadioMetadata;

    #@0
    .prologue
    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1106
    iput p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    #@5
    .line 1107
    iput p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    #@7
    .line 1108
    iput-boolean p3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    #@9
    .line 1109
    iput-boolean p4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    #@b
    .line 1110
    iput-boolean p5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    #@d
    .line 1111
    iput p6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    #@f
    .line 1112
    iput-object p7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@11
    .line 1105
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    #@b
    .line 1162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    #@11
    .line 1163
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@14
    move-result v0

    #@15
    if-ne v0, v1, :cond_1

    #@17
    move v0, v1

    #@18
    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    #@1a
    .line 1164
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@1d
    move-result v0

    #@1e
    if-ne v0, v1, :cond_2

    #@20
    move v0, v1

    #@21
    :goto_1
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    #@23
    .line 1165
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@26
    move-result v0

    #@27
    if-ne v0, v1, :cond_0

    #@29
    move v2, v1

    #@2a
    :cond_0
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    #@2c
    .line 1166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    #@32
    .line 1167
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@35
    move-result v0

    #@36
    if-ne v0, v1, :cond_3

    #@38
    .line 1168
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/hardware/radio/RadioMetadata;

    #@40
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@42
    .line 1160
    :goto_2
    return-void

    #@43
    :cond_1
    move v0, v2

    #@44
    .line 1163
    goto :goto_0

    #@45
    :cond_2
    move v0, v2

    #@46
    .line 1164
    goto :goto_1

    #@47
    .line 1170
    :cond_3
    const/4 v0, 0x0

    #@48
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@4a
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1203
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
    .line 1231
    if-ne p0, p1, :cond_0

    #@4
    .line 1232
    return v4

    #@5
    .line 1233
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 1234
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 1235
    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    #@d
    .line 1236
    .local v0, "other":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    #@f
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getChannel()I

    #@12
    move-result v2

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 1237
    return v3

    #@16
    .line 1238
    :cond_2
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    #@18
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSubChannel()I

    #@1b
    move-result v2

    #@1c
    if-eq v1, v2, :cond_3

    #@1e
    .line 1239
    return v3

    #@1f
    .line 1240
    :cond_3
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    #@21
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isTuned()Z

    #@24
    move-result v2

    #@25
    if-eq v1, v2, :cond_4

    #@27
    .line 1241
    return v3

    #@28
    .line 1242
    :cond_4
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    #@2a
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isStereo()Z

    #@2d
    move-result v2

    #@2e
    if-eq v1, v2, :cond_5

    #@30
    .line 1243
    return v3

    #@31
    .line 1244
    :cond_5
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    #@33
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isDigital()Z

    #@36
    move-result v2

    #@37
    if-eq v1, v2, :cond_6

    #@39
    .line 1245
    return v3

    #@3a
    .line 1246
    :cond_6
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    #@3c
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSignalStrength()I

    #@3f
    move-result v2

    #@40
    if-eq v1, v2, :cond_7

    #@42
    .line 1247
    return v3

    #@43
    .line 1248
    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@45
    if-nez v1, :cond_8

    #@47
    .line 1249
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    #@4a
    move-result-object v1

    #@4b
    if-eqz v1, :cond_9

    #@4d
    .line 1250
    return v3

    #@4e
    .line 1251
    :cond_8
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@50
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v1, v2}, Landroid/hardware/radio/RadioMetadata;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    if-nez v1, :cond_9

    #@5a
    .line 1252
    return v3

    #@5b
    .line 1253
    :cond_9
    return v4
.end method

.method public getChannel()I
    .locals 1

    #@0
    .prologue
    .line 1120
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    #@2
    return v0
.end method

.method public getMetadata()Landroid/hardware/radio/RadioMetadata;
    .locals 1

    #@0
    .prologue
    .line 1157
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@2
    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    #@0
    .prologue
    .line 1150
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    #@2
    return v0
.end method

.method public getSubChannel()I
    .locals 1

    #@0
    .prologue
    .line 1126
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1217
    const/16 v0, 0x1f

    #@4
    .line 1219
    .local v0, "prime":I
    iget v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    #@6
    add-int/lit8 v1, v2, 0x1f

    #@8
    .line 1220
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@a
    iget v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    #@c
    add-int v1, v2, v5

    #@e
    .line 1221
    mul-int/lit8 v5, v1, 0x1f

    #@10
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    #@12
    if-eqz v2, :cond_0

    #@14
    move v2, v3

    #@15
    :goto_0
    add-int v1, v5, v2

    #@17
    .line 1222
    mul-int/lit8 v5, v1, 0x1f

    #@19
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    #@1b
    if-eqz v2, :cond_1

    #@1d
    move v2, v3

    #@1e
    :goto_1
    add-int v1, v5, v2

    #@20
    .line 1223
    mul-int/lit8 v2, v1, 0x1f

    #@22
    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    #@24
    if-eqz v5, :cond_2

    #@26
    :goto_2
    add-int v1, v2, v3

    #@28
    .line 1224
    mul-int/lit8 v2, v1, 0x1f

    #@2a
    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    #@2c
    add-int v1, v2, v3

    #@2e
    .line 1225
    mul-int/lit8 v2, v1, 0x1f

    #@30
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@32
    if-nez v3, :cond_3

    #@34
    :goto_3
    add-int v1, v2, v4

    #@36
    .line 1226
    return v1

    #@37
    :cond_0
    move v2, v4

    #@38
    .line 1221
    goto :goto_0

    #@39
    :cond_1
    move v2, v4

    #@3a
    .line 1222
    goto :goto_1

    #@3b
    :cond_2
    move v3, v4

    #@3c
    .line 1223
    goto :goto_2

    #@3d
    .line 1225
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@3f
    invoke-virtual {v3}, Landroid/hardware/radio/RadioMetadata;->hashCode()I

    #@42
    move-result v4

    #@43
    goto :goto_3
.end method

.method public isDigital()Z
    .locals 1

    #@0
    .prologue
    .line 1144
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    #@2
    return v0
.end method

.method public isStereo()Z
    .locals 1

    #@0
    .prologue
    .line 1138
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    #@2
    return v0
.end method

.method public isTuned()Z
    .locals 1

    #@0
    .prologue
    .line 1132
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ProgramInfo [mChannel="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", mSubChannel="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 1209
    const-string/jumbo v1, ", mTuned="

    #@22
    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 1209
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    #@28
    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 1209
    const-string/jumbo v1, ", mStereo="

    #@2f
    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 1209
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    #@35
    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 1209
    const-string/jumbo v1, ", mDigital="

    #@3c
    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 1209
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    #@42
    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 1210
    const-string/jumbo v1, ", mSignalStrength="

    #@49
    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 1210
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    #@4f
    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 1211
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@55
    if-nez v0, :cond_0

    #@57
    const-string/jumbo v0, ""

    #@5a
    .line 1208
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 1212
    const-string/jumbo v1, "]"

    #@61
    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    return-object v0

    #@6a
    .line 1211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v2, ", mMetadata="

    #@72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@78
    invoke-virtual {v2}, Landroid/hardware/radio/RadioMetadata;->toString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1187
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1188
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1189
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    int-to-byte v0, v0

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@15
    .line 1190
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    move v0, v1

    #@1a
    :goto_1
    int-to-byte v0, v0

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@1e
    .line 1191
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    #@20
    if-eqz v0, :cond_2

    #@22
    move v0, v1

    #@23
    :goto_2
    int-to-byte v0, v0

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@27
    .line 1192
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 1193
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@2e
    if-nez v0, :cond_3

    #@30
    .line 1194
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@33
    .line 1186
    :goto_3
    return-void

    #@34
    :cond_0
    move v0, v2

    #@35
    .line 1189
    goto :goto_0

    #@36
    :cond_1
    move v0, v2

    #@37
    .line 1190
    goto :goto_1

    #@38
    :cond_2
    move v0, v2

    #@39
    .line 1191
    goto :goto_2

    #@3a
    .line 1196
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@3d
    .line 1197
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    #@3f
    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    #@42
    goto :goto_3
.end method
