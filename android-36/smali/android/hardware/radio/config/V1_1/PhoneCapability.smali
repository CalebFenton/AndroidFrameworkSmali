.class public final Landroid/hardware/radio/config/V1_1/PhoneCapability;
.super Ljava/lang/Object;
.source "PhoneCapability.java"


# instance fields
.field public blacklist isInternetLingeringSupported:Z

.field public blacklist logicalModemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/config/V1_1/ModemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist maxActiveData:B

.field public blacklist maxActiveInternetData:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-byte v0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveData:B

    .line 16
    iput-byte v0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveInternetData:B

    .line 22
    iput-boolean v0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->isInternetLingeringSupported:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

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

    .line 36
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/config/V1_1/PhoneCapability;

    if-eq v2, v3, :cond_11

    return v1

    .line 39
    :cond_11
    check-cast p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;

    .line 40
    iget-byte v2, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveData:B

    iget-byte v3, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveData:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 43
    :cond_1a
    iget-byte v2, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveInternetData:B

    iget-byte v3, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveInternetData:B

    if-eq v2, v3, :cond_21

    return v1

    .line 46
    :cond_21
    iget-boolean v2, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->isInternetLingeringSupported:Z

    iget-boolean v3, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->isInternetLingeringSupported:Z

    if-eq v2, v3, :cond_28

    return v1

    .line 49
    :cond_28
    iget-object p0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    return v1

    :cond_33
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 57
    iget-byte v0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveData:B

    .line 58
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveInternetData:B

    .line 59
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->isInternetLingeringSupported:Z

    .line 60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

    .line 61
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 57
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 15

    .line 108
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveData:B

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    .line 109
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveInternetData:B

    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    .line 110
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->isInternetLingeringSupported:Z

    const-wide/16 v0, 0x8

    add-long v7, p3, v0

    const-wide/16 v0, 0x10

    add-long/2addr p3, v0

    .line 112
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p3

    int-to-long v3, p3

    .line 114
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x1

    move-object v2, p1

    .line 113
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p1

    .line 117
    iget-object p2, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p2, 0x0

    :goto_34
    if-ge p2, p3, :cond_47

    .line 119
    new-instance p4, Landroid/hardware/radio/config/V1_1/ModemInfo;

    invoke-direct {p4}, Landroid/hardware/radio/config/V1_1/ModemInfo;-><init>()V

    int-to-long v0, p2

    .line 120
    invoke-virtual {p4, v2, p1, v0, v1}, Landroid/hardware/radio/config/V1_1/ModemInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 121
    iget-object v0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_34

    :cond_47
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x18

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 82
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/config/V1_1/PhoneCapability;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ".maxActiveData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-byte v1, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveData:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .maxActiveInternetData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-byte v1, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveInternetData:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .isInternetLingeringSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-boolean v1, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->isInternetLingeringSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .logicalModemList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object p0, p0, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
