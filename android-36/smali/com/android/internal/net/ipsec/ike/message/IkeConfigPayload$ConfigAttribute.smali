.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
.super Ljava/lang/Object;
.source "IkeConfigPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConfigAttribute"
.end annotation


# static fields
.field private static final blacklist ATTRIBUTE_HEADER_LEN:I = 0x4

.field private static final blacklist ATTRIBUTE_TYPE_MASK:I = 0x7fff

.field private static final blacklist ENCODED_ATTRIBUTE_BYTES_KEY:Ljava/lang/String; = "encodedAttribute"

.field protected static final blacklist IPV4_ADDRESS_LEN:I = 0x4

.field private static final blacklist IPV4_PREFIX_LEN_MAX:I = 0x20

.field protected static final blacklist IPV6_ADDRESS_LEN:I = 0x10

.field protected static final blacklist PREFIX_LEN_LEN:I = 0x1

.field protected static final blacklist VALUE_LEN_NOT_INCLUDED:I


# instance fields
.field public final blacklist attributeType:I


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 2
    .param p1, "attributeType"    # I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    .line 190
    return-void
.end method

.method protected constructor blacklist <init>(II)V
    .registers 5
    .param p1, "attributeType"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;-><init>(I)V

    .line 195
    invoke-virtual {p0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->isLengthValid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 198
    return-void

    .line 196
    :cond_a
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v1, "Invalid configuration length"

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist decodeAttributesFrom(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 3
    .param p0, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 255
    .local v0, "configList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;>;"
    :goto_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 256
    invoke-static {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->decodeSingleAttributeFrom(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    move-result-object v1

    .line 257
    .local v1, "attribute":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    if-eqz v1, :cond_14

    .line 258
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v1    # "attribute":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    :cond_14
    goto :goto_5

    .line 262
    :cond_15
    return-object v0
.end method

.method private static blacklist decodeSingleAttributeFrom(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    .registers 7
    .param p0, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 274
    .local v0, "attributeType":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    .line 275
    .local v1, "length":I
    new-array v2, v1, [B

    .line 276
    .local v2, "value":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 278
    packed-switch v0, :pswitch_data_78

    .line 302
    :pswitch_18
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized attribute type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    const-string v5, "IkeConfigPayload"

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v3, 0x0

    return-object v3

    .line 300
    :pswitch_36
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;-><init>([B)V

    return-object v3

    .line 298
    :pswitch_3c
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;-><init>([B)V

    return-object v3

    .line 296
    :pswitch_42
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Subnet;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Subnet;-><init>([B)V

    return-object v3

    .line 294
    :pswitch_48
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;-><init>([B)V

    return-object v3

    .line 292
    :pswitch_4e
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;-><init>([B)V

    return-object v3

    .line 290
    :pswitch_54
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;-><init>([B)V

    return-object v3

    .line 288
    :pswitch_5a
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;-><init>([B)V

    return-object v3

    .line 286
    :pswitch_60
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dhcp;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dhcp;-><init>([B)V

    return-object v3

    .line 284
    :pswitch_66
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dns;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dns;-><init>([B)V

    return-object v3

    .line 282
    :pswitch_6c
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;-><init>([B)V

    return-object v3

    .line 280
    :pswitch_72
    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;-><init>([B)V

    return-object v3

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_72
        :pswitch_6c
        :pswitch_66
        :pswitch_18
        :pswitch_18
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_18
        :pswitch_4e
        :pswitch_18
        :pswitch_18
        :pswitch_48
        :pswitch_18
        :pswitch_42
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_3c
        :pswitch_36
    .end packed-switch
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    .registers 6
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 207
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    nop

    .line 210
    const-string v0, "encodedAttribute"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 211
    .local v0, "byteArrayBundle":Landroid/os/PersistableBundle;
    nop

    .line 212
    invoke-static {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 216
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :try_start_15
    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->decodeSingleAttributeFrom(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_15 .. :try_end_19} :catch_29
    .catch Ljava/nio/BufferUnderflowException; {:try_start_15 .. :try_end_19} :catch_29
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_15 .. :try_end_19} :catch_29

    .line 222
    .local v2, "attribute":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    nop

    .line 224
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_21

    .line 229
    return-object v2

    .line 225
    :cond_21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected trailing bytes in Config request PersistableBundle"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    .end local v2    # "attribute":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    :catch_29
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PersistableBundle contains invalid Config request"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static blacklist netmaskToPrefixLen(Ljava/net/Inet4Address;)I
    .registers 7
    .param p0, "address"    # Ljava/net/Inet4Address;

    .line 340
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 342
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 343
    .local v1, "netmaskInt":I
    const/high16 v2, -0x80000000

    .line 345
    .local v2, "leftmostBitMask":I
    const/4 v3, 0x0

    .line 346
    .local v3, "prefixLen":I
    :goto_f
    and-int v4, v1, v2

    if-ne v4, v2, :cond_18

    .line 347
    add-int/lit8 v3, v3, 0x1

    .line 348
    shl-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 351
    :cond_18
    if-nez v1, :cond_1b

    .line 355
    return v3

    .line 352
    :cond_1b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid netmask address"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected static blacklist prefixToNetmaskBytes(I)[B
    .registers 5
    .param p0, "prefixLen"    # I

    .line 359
    const/16 v0, 0x20

    if-gt p0, v0, :cond_1c

    if-ltz p0, :cond_1c

    .line 363
    rsub-int/lit8 v0, p0, 0x20

    const-wide/16 v1, -0x1

    shl-long v0, v1, v0

    long-to-int v0, v0

    .line 364
    .local v0, "netmaskInt":I
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 366
    .local v2, "netmask":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 367
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3

    .line 360
    .end local v0    # "netmaskInt":I
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "netmask":[B
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid IPv4 prefix length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encodeAttributeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 310
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    and-int/lit16 v0, v0, 0x7fff

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->getValueLength()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->encodeValueToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    return-void
.end method

.method protected abstract blacklist encodeValueToByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 332
    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 333
    return v1

    .line 336
    :cond_6
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    move-object v2, p1

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public blacklist getAttributeLen()I
    .registers 2

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->getValueLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected abstract blacklist getValueLength()I
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 327
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEmptyValue()Z
    .registers 2

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->getValueLength()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected abstract blacklist isLengthValid(I)Z
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 5

    .line 234
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 236
    .local v0, "result":Landroid/os/PersistableBundle;
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->getAttributeLen()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 237
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->encodeAttributeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 239
    nop

    .line 241
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 239
    const-string v3, "encodedAttribute"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 242
    return-object v0
.end method
