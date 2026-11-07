.class public final Landroid/net/connectivity/org/chromium/net/telemetry/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# static fields
.field private static final blacklist MD5_MESSAGE_DIGEST:Ljava/security/MessageDigest;

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const-class v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->TAG:Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->getMd5MessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->MD5_MESSAGE_DIGEST:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getMd5MessageDigest()Ljava/security/MessageDigest;
    .registers 3

    .line 35
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 36
    :catch_7
    move-exception v0

    .line 37
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 38
    sget-object v1, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->TAG:Ljava/lang/String;

    const-string v2, "Error while instantiating messageDigest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist hash(Ljava/lang/String;)J
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .line 63
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->MD5_MESSAGE_DIGEST:Ljava/security/MessageDigest;

    if-eqz v0, :cond_18

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 65
    :cond_d
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->hash([B)J

    move-result-wide v0

    goto :goto_1a

    .line 64
    :cond_18
    :goto_18
    const-wide/16 v0, 0x0

    .line 63
    :goto_1a
    return-wide v0
.end method

.method public static blacklist hash([B)J
    .registers 3
    .param p0, "bytes"    # [B

    .line 52
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->MD5_MESSAGE_DIGEST:Ljava/security/MessageDigest;

    if-eqz v0, :cond_19

    if-eqz p0, :cond_19

    array-length v0, p0

    if-nez v0, :cond_a

    goto :goto_19

    .line 54
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->MD5_MESSAGE_DIGEST:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_1b

    .line 53
    :cond_19
    :goto_19
    const-wide/16 v0, 0x0

    .line 52
    :goto_1b
    return-wide v0
.end method
