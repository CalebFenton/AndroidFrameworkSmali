.class public Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
.source "IkeConfigPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigAttributeAppVersion"
.end annotation


# static fields
.field private static final blacklist APP_VERSION_NONE:Ljava/lang/String; = ""

.field private static final blacklist ASCII:Ljava/nio/charset/Charset;


# instance fields
.field public final blacklist applicationVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1178
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1187
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;-><init>(Ljava/lang/String;)V

    .line 1188
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "localAppVersion"    # Ljava/lang/String;

    .line 1192
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;-><init>(I)V

    .line 1193
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->applicationVersion:Ljava/lang/String;

    .line 1194
    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .registers 4
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 1198
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;-><init>(I)V

    .line 1199
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->applicationVersion:Ljava/lang/String;

    .line 1200
    return-void
.end method


# virtual methods
.method protected blacklist encodeValueToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1203
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->applicationVersion:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1204
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1222
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;

    if-nez v0, :cond_b

    goto :goto_17

    .line 1226
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;

    .line 1228
    .local v0, "other":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->applicationVersion:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->applicationVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1223
    .end local v0    # "other":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getValueLength()I
    .registers 3

    .line 1207
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->applicationVersion:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1217
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;->applicationVersion:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist isLengthValid(I)Z
    .registers 3
    .param p1, "length"    # I

    .line 1212
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
