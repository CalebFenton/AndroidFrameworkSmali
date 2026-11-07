.class public final Landroid/hardware/radio/config/V1_1/ModemsConfig;
.super Ljava/lang/Object;
.source "ModemsConfig.java"


# instance fields
.field public blacklist numOfLiveModems:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Landroid/hardware/radio/config/V1_1/ModemsConfig;->numOfLiveModems:B

    return-void
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

    .line 19
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/config/V1_1/ModemsConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 22
    :cond_11
    check-cast p1, Landroid/hardware/radio/config/V1_1/ModemsConfig;

    .line 23
    iget-byte p0, p0, Landroid/hardware/radio/config/V1_1/ModemsConfig;->numOfLiveModems:B

    iget-byte p1, p1, Landroid/hardware/radio/config/V1_1/ModemsConfig;->numOfLiveModems:B

    if-eq p0, p1, :cond_1a

    return v1

    :cond_1a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 31
    iget-byte p0, p0, Landroid/hardware/radio/config/V1_1/ModemsConfig;->numOfLiveModems:B

    .line 32
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 5

    .line 73
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/radio/config/V1_1/ModemsConfig;->numOfLiveModems:B

    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x1

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 47
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/config/V1_1/ModemsConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, ".numOfLiveModems = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-byte p0, p0, Landroid/hardware/radio/config/V1_1/ModemsConfig;->numOfLiveModems:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 4

    .line 101
    iget-byte p0, p0, Landroid/hardware/radio/config/V1_1/ModemsConfig;->numOfLiveModems:B

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt8(JB)V

    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 77
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/config/V1_1/ModemsConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
