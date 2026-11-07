.class public Lcom/android/internal/telephony/HardwareConfig;
.super Ljava/lang/Object;
.source "HardwareConfig.java"


# static fields
.field public static final blacklist DEV_HARDWARE_STATE_DISABLED:I = 0x2

.field public static final blacklist DEV_HARDWARE_STATE_ENABLED:I = 0x0

.field public static final blacklist DEV_HARDWARE_STATE_STANDBY:I = 0x1

.field public static final blacklist DEV_HARDWARE_TYPE_MODEM:I = 0x0

.field public static final blacklist DEV_HARDWARE_TYPE_SIM:I = 0x1

.field public static final blacklist DEV_MODEM_RIL_MODEL_MULTIPLE:I = 0x1

.field public static final blacklist DEV_MODEM_RIL_MODEL_SINGLE:I


# instance fields
.field public blacklist maxActiveDataCall:I

.field public blacklist maxActiveVoiceCall:I

.field public blacklist maxStandby:I

.field public blacklist modemUuid:Ljava/lang/String;

.field public blacklist rat:Ljava/util/BitSet;

.field public blacklist rilModel:I

.field public blacklist state:I

.field public blacklist type:I

.field public blacklist uuid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 13

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 122
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_30

    if-eq v0, v3, :cond_1a

    return-void

    .line 138
    :cond_1a
    aget-object v0, p1, v3

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aget-object v2, p1, v2

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v1

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 126
    :cond_30
    aget-object v0, p1, v3

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aget-object v0, p1, v2

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v0, p1, v1

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v0, 0x4

    aget-object v0, p1, v0

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v0, 0x5

    aget-object v0, p1, v0

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x6

    aget-object v0, p1, v0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v0, 0x7

    aget-object p1, p1, v0

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object v3, p0

    .line 126
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public blacklist assignModem(Ljava/lang/String;IIIIII)V
    .registers 10

    .line 150
    iget v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v0, :cond_36

    .line 151
    invoke-static {p4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    .line 153
    iput p2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    .line 154
    iput p3, p0, Lcom/android/internal/telephony/HardwareConfig;->rilModel:I

    .line 155
    new-instance p1, Ljava/util/BitSet;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    const/4 p1, 0x0

    move p2, p1

    .line 156
    :goto_1c
    array-length p3, p4

    if-ge p2, p3, :cond_30

    .line 157
    iget-object p3, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    aget-char v0, p4, p2

    const/16 v1, 0x31

    if-ne v0, v1, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    move v0, p1

    :goto_2a
    invoke-virtual {p3, p2, v0}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    .line 159
    :cond_30
    iput p5, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveVoiceCall:I

    .line 160
    iput p6, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveDataCall:I

    .line 161
    iput p7, p0, Lcom/android/internal/telephony/HardwareConfig;->maxStandby:I

    :cond_36
    return-void
.end method

.method public blacklist assignSim(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 166
    iget v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    .line 169
    iput p2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    :cond_b
    return-void
.end method

.method public blacklist compareTo(Lcom/android/internal/telephony/HardwareConfig;)I
    .registers 2

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/telephony/HardwareConfig;->toString()Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-virtual {p1}, Lcom/android/internal/telephony/HardwareConfig;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    iget v1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const-string v2, " }"

    const-string v3, ", state="

    const-string v4, "{ uuid="

    if-nez v1, :cond_b2

    .line 176
    const-string v1, "Modem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rilModel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->rilModel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", rat="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", maxActiveVoiceCall="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveVoiceCall:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", maxActiveDataCall="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveDataCall:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", maxStandby="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/HardwareConfig;->maxStandby:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_101

    :cond_b2
    const/4 v5, 0x1

    if-ne v1, v5, :cond_fc

    .line 186
    const-string v1, "Sim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", modemUuid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_101

    .line 192
    :cond_fc
    const-string p0, "Invalid Configration"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :goto_101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
