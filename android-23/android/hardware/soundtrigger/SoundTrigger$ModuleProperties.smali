.class public Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final id:I

.field public final implementor:Ljava/lang/String;

.field public final maxBufferMs:I

.field public final maxKeyphrases:I

.field public final maxSoundModels:I

.field public final maxUsers:I

.field public final powerConsumptionMw:I

.field public final recognitionModes:I

.field public final returnsTriggerInEvent:Z

.field public final supportsCaptureTransition:Z

.field public final supportsConcurrentCapture:Z

.field public final uuid:Ljava/util/UUID;

.field public final version:I


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 116
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;-><init>()V

    #@5
    .line 115
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 50
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIZIZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "implementor"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "maxSoundModels"    # I
    .param p7, "maxKeyphrases"    # I
    .param p8, "maxUsers"    # I
    .param p9, "recognitionModes"    # I
    .param p10, "supportsCaptureTransition"    # Z
    .param p11, "maxBufferMs"    # I
    .param p12, "supportsConcurrentCapture"    # Z
    .param p13, "powerConsumptionMw"    # I
    .param p14, "returnsTriggerInEvent"    # Z

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    #@5
    .line 100
    iput-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    #@7
    .line 101
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    #@9
    .line 102
    invoke-static {p4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    #@f
    .line 103
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    #@11
    .line 104
    iput p6, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    #@13
    .line 105
    iput p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    #@15
    .line 106
    iput p8, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    #@17
    .line 107
    iput p9, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    #@19
    .line 108
    iput-boolean p10, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    #@1b
    .line 109
    iput p11, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    #@1d
    .line 110
    iput-boolean p12, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    #@1f
    .line 111
    iput p13, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    #@21
    .line 112
    iput-boolean p14, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    #@23
    .line 98
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 16
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 128
    .local v1, "id":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 129
    .local v2, "implementor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 130
    .local v3, "description":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 131
    .local v4, "uuid":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v5

    #@14
    .line 132
    .local v5, "version":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v6

    #@18
    .line 133
    .local v6, "maxSoundModels":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v7

    #@1c
    .line 134
    .local v7, "maxKeyphrases":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v8

    #@20
    .line 135
    .local v8, "maxUsers":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v9

    #@24
    .line 136
    .local v9, "recognitionModes":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    #@27
    move-result v0

    #@28
    const/4 v15, 0x1

    #@29
    if-ne v0, v15, :cond_0

    #@2b
    const/4 v10, 0x1

    #@2c
    .line 137
    .local v10, "supportsCaptureTransition":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v11

    #@30
    .line 138
    .local v11, "maxBufferMs":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    #@33
    move-result v0

    #@34
    const/4 v15, 0x1

    #@35
    if-ne v0, v15, :cond_1

    #@37
    const/4 v12, 0x1

    #@38
    .line 139
    .local v12, "supportsConcurrentCapture":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v13

    #@3c
    .line 140
    .local v13, "powerConsumptionMw":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    #@3f
    move-result v0

    #@40
    const/4 v15, 0x1

    #@41
    if-ne v0, v15, :cond_2

    #@43
    const/4 v14, 0x1

    #@44
    .line 141
    .local v14, "returnsTriggerInEvent":Z
    :goto_2
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@46
    invoke-direct/range {v0 .. v14}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIZIZ)V

    #@49
    return-object v0

    #@4a
    .line 136
    .end local v10    # "supportsCaptureTransition":Z
    .end local v11    # "maxBufferMs":I
    .end local v12    # "supportsConcurrentCapture":Z
    .end local v13    # "powerConsumptionMw":I
    .end local v14    # "returnsTriggerInEvent":Z
    :cond_0
    const/4 v10, 0x0

    #@4b
    .restart local v10    # "supportsCaptureTransition":Z
    goto :goto_0

    #@4c
    .line 138
    .restart local v11    # "maxBufferMs":I
    :cond_1
    const/4 v12, 0x0

    #@4d
    .restart local v12    # "supportsConcurrentCapture":Z
    goto :goto_1

    #@4e
    .line 140
    .restart local v13    # "powerConsumptionMw":I
    :cond_2
    const/4 v14, 0x0

    #@4f
    .restart local v14    # "returnsTriggerInEvent":Z
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 167
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ModuleProperties [id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", implementor="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", description="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 173
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    #@28
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 173
    const-string/jumbo v1, ", uuid="

    #@2f
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 173
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    #@35
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 173
    const-string/jumbo v1, ", version="

    #@3c
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 173
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    #@42
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 173
    const-string/jumbo v1, ", maxSoundModels="

    #@49
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 174
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    #@4f
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 174
    const-string/jumbo v1, ", maxKeyphrases="

    #@56
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 174
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    #@5c
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 174
    const-string/jumbo v1, ", maxUsers="

    #@63
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 175
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    #@69
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 175
    const-string/jumbo v1, ", recognitionModes="

    #@70
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 175
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    #@76
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 176
    const-string/jumbo v1, ", supportsCaptureTransition="

    #@7d
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 176
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    #@83
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 176
    const-string/jumbo v1, ", maxBufferMs="

    #@8a
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    .line 177
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    #@90
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    .line 177
    const-string/jumbo v1, ", supportsConcurrentCapture="

    #@97
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 177
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    #@9d
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    .line 178
    const-string/jumbo v1, ", powerConsumptionMw="

    #@a4
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    .line 178
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    #@aa
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    .line 179
    const-string/jumbo v1, ", returnsTriggerInEvent="

    #@b1
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    .line 179
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    #@b7
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    .line 179
    const-string/jumbo v1, "]"

    #@be
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v0

    #@c6
    return-object v0
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
    .line 149
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 150
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 151
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 152
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    #@13
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 153
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 154
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 155
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 156
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 157
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 158
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    #@35
    if-eqz v0, :cond_0

    #@37
    move v0, v1

    #@38
    :goto_0
    int-to-byte v0, v0

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@3c
    .line 159
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 160
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    #@43
    if-eqz v0, :cond_1

    #@45
    move v0, v1

    #@46
    :goto_1
    int-to-byte v0, v0

    #@47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@4a
    .line 161
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 162
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    #@51
    if-eqz v0, :cond_2

    #@53
    :goto_2
    int-to-byte v0, v1

    #@54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@57
    .line 148
    return-void

    #@58
    :cond_0
    move v0, v2

    #@59
    .line 158
    goto :goto_0

    #@5a
    :cond_1
    move v0, v2

    #@5b
    .line 160
    goto :goto_1

    #@5c
    :cond_2
    move v1, v2

    #@5d
    .line 162
    goto :goto_2
.end method
