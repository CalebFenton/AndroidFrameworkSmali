.class public Lcom/android/internal/telephony/HardwareConfig;
.super Ljava/lang/Object;
.source "HardwareConfig.java"


# static fields
.field public static final DEV_HARDWARE_STATE_DISABLED:I = 0x2

.field public static final DEV_HARDWARE_STATE_ENABLED:I = 0x0

.field public static final DEV_HARDWARE_STATE_STANDBY:I = 0x1

.field public static final DEV_HARDWARE_TYPE_MODEM:I = 0x0

.field public static final DEV_HARDWARE_TYPE_SIM:I = 0x1

.field public static final DEV_MODEM_RIL_MODEL_MULTIPLE:I = 0x1

.field public static final DEV_MODEM_RIL_MODEL_SINGLE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "HardwareConfig"


# instance fields
.field public maxActiveDataCall:I

.field public maxActiveVoiceCall:I

.field public maxStandby:I

.field public modemUuid:Ljava/lang/String;

.field public rat:Ljava/util/BitSet;

.field public rilModel:I

.field public state:I

.field public type:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "res"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v2, 0x2

    #@2
    const/4 v1, 0x1

    #@3
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 122
    const-string/jumbo v0, ","

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v8

    #@d
    .line 124
    .local v8, "split":[Ljava/lang/String;
    const/4 v0, 0x0

    #@e
    aget-object v0, v8, v0

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@16
    .line 126
    iget v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@18
    packed-switch v0, :pswitch_data_0

    #@1b
    .line 121
    :goto_0
    return-void

    #@1c
    .line 129
    :pswitch_0
    aget-object v0, v8, v1

    #@1e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 130
    aget-object v0, v8, v2

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    .line 131
    aget-object v0, v8, v3

    #@2a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2d
    move-result v3

    #@2e
    .line 132
    const/4 v0, 0x4

    #@2f
    aget-object v0, v8, v0

    #@31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@34
    move-result v4

    #@35
    .line 133
    const/4 v0, 0x5

    #@36
    aget-object v0, v8, v0

    #@38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3b
    move-result v5

    #@3c
    .line 134
    const/4 v0, 0x6

    #@3d
    aget-object v0, v8, v0

    #@3f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@42
    move-result v6

    #@43
    .line 135
    const/4 v0, 0x7

    #@44
    aget-object v0, v8, v0

    #@46
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@49
    move-result v7

    #@4a
    move-object v0, p0

    #@4b
    .line 128
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    #@4e
    goto :goto_0

    #@4f
    .line 141
    :pswitch_1
    aget-object v0, v8, v1

    #@51
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    .line 142
    aget-object v1, v8, v2

    #@57
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5a
    move-result v1

    #@5b
    .line 143
    aget-object v2, v8, v3

    #@5d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    .line 140
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    #@64
    goto :goto_0

    #@65
    .line 126
    nop

    #@66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public assignModem(Ljava/lang/String;IIIIII)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "model"    # I
    .param p4, "ratBits"    # I
    .param p5, "maxV"    # I
    .param p6, "maxD"    # I
    .param p7, "maxS"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 152
    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@3
    if-nez v2, :cond_2

    #@5
    .line 153
    invoke-static {p4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    #@c
    move-result-object v0

    #@d
    .line 154
    .local v0, "bits":[C
    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    #@f
    .line 156
    iput p3, p0, Lcom/android/internal/telephony/HardwareConfig;->rilModel:I

    #@11
    .line 157
    new-instance v2, Ljava/util/BitSet;

    #@13
    array-length v4, v0

    #@14
    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    #@17
    iput-object v2, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    #@19
    .line 158
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@1b
    if-ge v1, v2, :cond_1

    #@1d
    .line 159
    iget-object v4, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    #@1f
    aget-char v2, v0, v1

    #@21
    const/16 v5, 0x31

    #@23
    if-ne v2, v5, :cond_0

    #@25
    const/4 v2, 0x1

    #@26
    :goto_1
    invoke-virtual {v4, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    #@29
    .line 158
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    :cond_0
    move v2, v3

    #@2d
    .line 159
    goto :goto_1

    #@2e
    .line 161
    :cond_1
    iput p5, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveVoiceCall:I

    #@30
    .line 162
    iput p6, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveDataCall:I

    #@32
    .line 163
    iput p7, p0, Lcom/android/internal/telephony/HardwareConfig;->maxStandby:I

    #@34
    .line 151
    .end local v0    # "bits":[C
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public assignSim(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "link"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    iget v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 169
    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    #@7
    .line 170
    iput-object p3, p0, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    #@9
    .line 167
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/internal/telephony/HardwareConfig;)I
    .locals 3
    .param p1, "hw"    # Lcom/android/internal/telephony/HardwareConfig;

    #@0
    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/internal/telephony/HardwareConfig;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 201
    .local v0, "one":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/HardwareConfig;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 203
    .local v1, "two":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v2

    #@c
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@7
    if-nez v1, :cond_0

    #@9
    .line 178
    const-string/jumbo v1, "Modem "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 179
    const-string/jumbo v1, "{ uuid="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 180
    const-string/jumbo v1, ", state="

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    .line 181
    const-string/jumbo v1, ", rilModel="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->rilModel:I

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    .line 182
    const-string/jumbo v1, ", rat="

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    iget-object v2, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    #@3c
    invoke-virtual {v2}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 183
    const-string/jumbo v1, ", maxActiveVoiceCall="

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveVoiceCall:I

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    .line 184
    const-string/jumbo v1, ", maxActiveDataCall="

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveDataCall:I

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    .line 185
    const-string/jumbo v1, ", maxStandby="

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->maxStandby:I

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    .line 186
    const-string/jumbo v1, " }"

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 196
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    return-object v1

    #@72
    .line 187
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    #@74
    const/4 v2, 0x1

    #@75
    if-ne v1, v2, :cond_1

    #@77
    .line 188
    const-string/jumbo v1, "Sim "

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 189
    const-string/jumbo v1, "{ uuid="

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    iget-object v2, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 190
    const-string/jumbo v1, ", modemUuid="

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    iget-object v2, p0, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    .line 191
    const-string/jumbo v1, ", state="

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    iget v2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    .line 192
    const-string/jumbo v1, " }"

    #@a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    goto :goto_0

    #@a8
    .line 194
    :cond_1
    const-string/jumbo v1, "Invalid Configration"

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    goto :goto_0
.end method
