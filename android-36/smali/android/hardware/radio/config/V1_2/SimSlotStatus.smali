.class public final Landroid/hardware/radio/config/V1_2/SimSlotStatus;
.super Ljava/lang/Object;
.source "SimSlotStatus.java"


# instance fields
.field public blacklist base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

.field public blacklist eid:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    invoke-direct {v0}, Landroid/hardware/radio/config/V1_0/SimSlotStatus;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->eid:Ljava/lang/String;

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
            "Landroid/hardware/radio/config/V1_2/SimSlotStatus;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 62
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 66
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 72
    new-instance v3, Landroid/hardware/radio/config/V1_2/SimSlotStatus;

    invoke-direct {v3}, Landroid/hardware/radio/config/V1_2/SimSlotStatus;-><init>()V

    mul-int/lit8 v5, v1, 0x40

    int-to-long v5, v5

    .line 73
    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
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

    .line 23
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/config/V1_2/SimSlotStatus;

    if-eq v2, v3, :cond_11

    return v1

    .line 26
    :cond_11
    check-cast p1, Landroid/hardware/radio/config/V1_2/SimSlotStatus;

    .line 27
    iget-object v2, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    iget-object v3, p1, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 30
    :cond_1e
    iget-object p0, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->eid:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->eid:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 38
    iget-object v0, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    .line 39
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->eid:Ljava/lang/String;

    .line 40
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 38
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 15

    .line 83
    iget-object v0, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x30

    add-long v7, p3, v0

    .line 84
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->eid:Ljava/lang/String;

    .line 87
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    int-to-long v3, p0

    .line 88
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x0

    move-object v2, p1

    .line 86
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", .eid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object p0, p0, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->eid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
