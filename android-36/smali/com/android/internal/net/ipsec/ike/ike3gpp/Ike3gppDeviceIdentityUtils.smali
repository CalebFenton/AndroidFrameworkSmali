.class public Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppDeviceIdentityUtils;
.super Ljava/lang/Object;
.source "Ike3gppDeviceIdentityUtils.java"


# static fields
.field private static final blacklist DEVICE_IDENTITY_PAYLOAD_LENGTH:I = 0xb

.field private static final blacklist DEVICE_IDENTITY_PAYLOAD_LENGTH_FIELD_VAL:S = 0x9s

.field private static final blacklist DEVICE_IDENTITY_TYPE_IMEI:B = 0x1t

.field private static final blacklist DEVICE_IDENTITY_TYPE_IMEISV:B = 0x2t

.field private static final blacklist ENCODED_DEVICE_IDENTITY_LENGTH:I = 0x8

.field private static final blacklist IMEISV_LENGTH:I = 0x10

.field private static final blacklist IMEI_LENGTH:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist generateDeviceIdentityPayload(Ljava/lang/String;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .registers 10
    .param p0, "deviceIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppDeviceIdentityUtils;->isValidDeviceIdentity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 89
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    .local v0, "payloadData":Ljava/nio/ByteBuffer;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1c

    .line 95
    move v1, v3

    goto :goto_1d

    .line 96
    :cond_1c
    const/4 v1, 0x2

    :goto_1d
    nop

    .line 97
    .local v1, "deviceIdentityType":B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 100
    if-ne v1, v3, :cond_36

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    :cond_36
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 105
    .local v2, "encodedIdentity":[B
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3c
    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x10

    if-ge v6, v7, :cond_6c

    .line 108
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    int-to-byte v6, v6

    .line 109
    .local v6, "nibble1":B
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    int-to-byte v7, v7

    .line 111
    .local v7, "nibble2":B
    if-ne v1, v3, :cond_61

    const/4 v8, 0x7

    if-ne v5, v8, :cond_61

    .line 114
    or-int/lit16 v8, v7, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    goto :goto_67

    .line 116
    :cond_61
    shl-int/lit8 v8, v6, 0x4

    or-int/2addr v8, v7

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 105
    .end local v6    # "nibble1":B
    .end local v7    # "nibble2":B
    :goto_67
    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 120
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_6c
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const v5, 0xa08d

    invoke-direct {v3, v5, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    .line 122
    return-object v3

    .line 52
    .end local v0    # "payloadData":Ljava/nio/ByteBuffer;
    .end local v1    # "deviceIdentityType":B
    .end local v2    # "encodedIdentity":[B
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device identity should be a 15 or 16 digit numeric string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isValidDeviceIdentity(Ljava/lang/String;)Z
    .registers 3
    .param p0, "deviceIdentity"    # Ljava/lang/String;

    .line 127
    if-eqz p0, :cond_18

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 129
    .local v0, "deviceIdentityLen":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_e

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 130
    :cond_e
    const-string v1, "[0-9]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 131
    const/4 v1, 0x1

    return v1

    .line 134
    .end local v0    # "deviceIdentityLen":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method
