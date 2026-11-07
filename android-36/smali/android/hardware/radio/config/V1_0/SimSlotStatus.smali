.class public final Landroid/hardware/radio/config/V1_0/SimSlotStatus;
.super Ljava/lang/Object;
.source "SimSlotStatus.java"


# instance fields
.field public blacklist atr:Ljava/lang/String;

.field public blacklist cardState:I

.field public blacklist iccid:Ljava/lang/String;

.field public blacklist logicalSlotId:I

.field public blacklist slotState:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    .line 12
    iput v0, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    .line 20
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    .line 21
    iput v0, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/config/V1_0/SimSlotStatus;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 96
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 101
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 100
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 106
    new-instance v3, Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    invoke-direct {v3}, Landroid/hardware/radio/config/V1_0/SimSlotStatus;-><init>()V

    mul-int/lit8 v5, v1, 0x30

    int-to-long v5, v5

    .line 107
    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 39
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    if-eq v2, v3, :cond_11

    return v1

    .line 42
    :cond_11
    check-cast p1, Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    .line 43
    iget v2, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    iget v3, p1, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 46
    :cond_1a
    iget v2, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    iget v3, p1, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    if-eq v2, v3, :cond_21

    return v1

    .line 49
    :cond_21
    iget-object v2, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 52
    :cond_2c
    iget v2, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    iget v3, p1, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    if-eq v2, v3, :cond_33

    return v1

    .line 55
    :cond_33
    iget-object p0, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    return v1

    :cond_3e
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 63
    iget v0, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    .line 66
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    .line 68
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 63
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 117
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    const-wide/16 v2, 0x4

    add-long v2, p3, v2

    .line 118
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    const-wide/16 v2, 0x8

    add-long v9, p3, v2

    .line 119
    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v5, v2

    .line 123
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 121
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x18

    add-long v2, p3, v2

    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    .line 130
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v13, v0

    .line 131
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v15

    const/16 v19, 0x0

    move-object/from16 v12, p1

    move-wide/from16 v17, v2

    .line 129
    invoke-virtual/range {v12 .. v19}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ".cardState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CardState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .slotState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    invoke-static {v1}, Landroid/hardware/radio/config/V1_0/SlotState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", .atr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", .logicalSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v1, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", .iccid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object p0, p0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
