.class public final Landroid/hardware/radio/config/V1_1/ModemInfo;
.super Ljava/lang/Object;
.source "ModemInfo.java"


# instance fields
.field public blacklist modemId:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Landroid/hardware/radio/config/V1_1/ModemInfo;->modemId:B

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

    .line 18
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/config/V1_1/ModemInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 21
    :cond_11
    check-cast p1, Landroid/hardware/radio/config/V1_1/ModemInfo;

    .line 22
    iget-byte p0, p0, Landroid/hardware/radio/config/V1_1/ModemInfo;->modemId:B

    iget-byte p1, p1, Landroid/hardware/radio/config/V1_1/ModemInfo;->modemId:B

    if-eq p0, p1, :cond_1a

    return v1

    :cond_1a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 30
    iget-byte p0, p0, Landroid/hardware/radio/config/V1_1/ModemInfo;->modemId:B

    .line 31
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 30
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 5

    .line 72
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/radio/config/V1_1/ModemInfo;->modemId:B

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ".modemId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-byte p0, p0, Landroid/hardware/radio/config/V1_1/ModemInfo;->modemId:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
