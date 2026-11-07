.class public Landroid/security/AuthTokenUtils;
.super Ljava/lang/Object;
.source "AuthTokenUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static blacklist toHardwareAuthToken([B)Landroid/hardware/security/keymint/HardwareAuthToken;
    .registers 7
    .param p0, "array"    # [B

    .line 40
    new-instance v0, Landroid/hardware/security/keymint/HardwareAuthToken;

    invoke-direct {v0}, Landroid/hardware/security/keymint/HardwareAuthToken;-><init>()V

    .line 44
    .local v0, "hardwareAuthToken":Landroid/hardware/security/keymint/HardwareAuthToken;
    nop

    .line 45
    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-static {p0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/hardware/security/keymint/HardwareAuthToken;->challenge:J

    .line 48
    nop

    .line 49
    const/16 v1, 0x9

    invoke-static {p0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/hardware/security/keymint/HardwareAuthToken;->userId:J

    .line 52
    nop

    .line 53
    const/16 v1, 0x11

    invoke-static {p0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/hardware/security/keymint/HardwareAuthToken;->authenticatorId:J

    .line 58
    nop

    .line 59
    const/16 v1, 0x19

    const/4 v3, 0x4

    invoke-static {p0, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/security/keymint/HardwareAuthToken;->authenticatorType:I

    .line 61
    new-instance v1, Landroid/hardware/security/secureclock/Timestamp;

    invoke-direct {v1}, Landroid/hardware/security/secureclock/Timestamp;-><init>()V

    .line 62
    .local v1, "timestamp":Landroid/hardware/security/secureclock/Timestamp;
    nop

    .line 63
    const/16 v3, 0x1d

    invoke-static {p0, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/security/secureclock/Timestamp;->milliSeconds:J

    .line 64
    iput-object v1, v0, Landroid/hardware/security/keymint/HardwareAuthToken;->timestamp:Landroid/hardware/security/secureclock/Timestamp;

    .line 67
    const/16 v2, 0x20

    new-array v3, v2, [B

    iput-object v3, v0, Landroid/hardware/security/keymint/HardwareAuthToken;->mac:[B

    .line 68
    iget-object v3, v0, Landroid/hardware/security/keymint/HardwareAuthToken;->mac:[B

    const/4 v4, 0x0

    const/16 v5, 0x25

    invoke-static {p0, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-object v0
.end method
