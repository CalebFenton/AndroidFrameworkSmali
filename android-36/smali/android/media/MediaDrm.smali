.class public final Landroid/media/MediaDrm;
.super Ljava/lang/Object;
.source "MediaDrm.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$OnEventListener;,
        Landroid/media/MediaDrm$ListenerWithExecutor;,
        Landroid/media/MediaDrm$OnKeyStatusChangeListener;,
        Landroid/media/MediaDrm$OnExpirationUpdateListener;,
        Landroid/media/MediaDrm$OnSessionLostStateListener;,
        Landroid/media/MediaDrm$KeyStatus;,
        Landroid/media/MediaDrm$PlaybackComponent;,
        Landroid/media/MediaDrm$KeyRequest;,
        Landroid/media/MediaDrm$ProvisionRequest;,
        Landroid/media/MediaDrm$Certificate;,
        Landroid/media/MediaDrm$CryptoSession;,
        Landroid/media/MediaDrm$CertificateRequest;,
        Landroid/media/MediaDrm$ListenerArgs;,
        Landroid/media/MediaDrm$LogMessage;,
        Landroid/media/MediaDrm$MetricsConstants;,
        Landroid/media/MediaDrm$ArrayProperty;,
        Landroid/media/MediaDrm$StringProperty;,
        Landroid/media/MediaDrm$SecurityLevel;,
        Landroid/media/MediaDrm$HdcpLevel;,
        Landroid/media/MediaDrm$OfflineLicenseState;,
        Landroid/media/MediaDrm$KeyType;,
        Landroid/media/MediaDrm$DrmEvent;,
        Landroid/media/MediaDrm$SessionException;,
        Landroid/media/MediaDrm$MediaDrmStateException;,
        Landroid/media/MediaDrm$MediaDrmErrorCode;,
        Landroid/media/MediaDrm$ErrorCodes;,
        Landroid/media/MediaDrm$CertificateType;
    }
.end annotation


# static fields
.field public static final greylist-max-o CERTIFICATE_TYPE_NONE:I = 0x0

.field public static final greylist-max-o CERTIFICATE_TYPE_X509:I = 0x1

.field private static final greylist-max-o DRM_EVENT:I = 0xc8

.field public static final whitelist EVENT_KEY_EXPIRED:I = 0x3

.field public static final whitelist EVENT_KEY_REQUIRED:I = 0x2

.field public static final whitelist EVENT_PROVISION_REQUIRED:I = 0x1

.field public static final whitelist EVENT_SESSION_RECLAIMED:I = 0x5

.field public static final whitelist EVENT_VENDOR_DEFINED:I = 0x4

.field private static final greylist-max-o EXPIRATION_UPDATE:I = 0xc9

.field public static final whitelist HDCP_LEVEL_UNKNOWN:I = 0x0

.field public static final whitelist HDCP_NONE:I = 0x1

.field public static final whitelist HDCP_NO_DIGITAL_OUTPUT:I = 0x7fffffff

.field public static final whitelist HDCP_V1:I = 0x2

.field public static final whitelist HDCP_V2:I = 0x3

.field public static final whitelist HDCP_V2_1:I = 0x4

.field public static final whitelist HDCP_V2_2:I = 0x5

.field public static final whitelist HDCP_V2_3:I = 0x6

.field private static final greylist-max-o KEY_STATUS_CHANGE:I = 0xca

.field public static final whitelist KEY_TYPE_OFFLINE:I = 0x2

.field public static final whitelist KEY_TYPE_RELEASE:I = 0x3

.field public static final whitelist KEY_TYPE_STREAMING:I = 0x1

.field public static final whitelist OFFLINE_LICENSE_STATE_RELEASED:I = 0x2

.field public static final whitelist OFFLINE_LICENSE_STATE_UNKNOWN:I = 0x0

.field public static final whitelist OFFLINE_LICENSE_STATE_USABLE:I = 0x1

.field private static final greylist-max-o PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM_CERTIFICATES"

.field public static final whitelist PROPERTY_ALGORITHMS:Ljava/lang/String; = "algorithms"

.field public static final whitelist PROPERTY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final whitelist PROPERTY_DEVICE_UNIQUE_ID:Ljava/lang/String; = "deviceUniqueId"

.field public static final whitelist PROPERTY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final whitelist PROPERTY_VERSION:Ljava/lang/String; = "version"

.field public static final whitelist SECURITY_LEVEL_HW_SECURE_ALL:I = 0x5

.field public static final whitelist SECURITY_LEVEL_HW_SECURE_CRYPTO:I = 0x3

.field public static final whitelist SECURITY_LEVEL_HW_SECURE_DECODE:I = 0x4

.field public static final greylist-max-o SECURITY_LEVEL_MAX:I = 0x6

.field public static final whitelist SECURITY_LEVEL_SW_SECURE_CRYPTO:I = 0x1

.field public static final whitelist SECURITY_LEVEL_SW_SECURE_DECODE:I = 0x2

.field public static final whitelist SECURITY_LEVEL_UNKNOWN:I = 0x0

.field private static final blacklist SESSION_LOST_STATE:I = 0xcb

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaDrm"


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaDrm$ListenerWithExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNativeContext:J

.field private final blacklist mPlaybackComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/media/MediaDrm$PlaybackComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$7OUGxlZ4Ca52aZPrZqfObmX3Mp8(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->lambda$createOnExpirationUpdateListener$2(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm$ListenerArgs;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8Xn-Pa9gW8GMd3IzEt8AKUWe4-o(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnSessionLostStateListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->lambda$createOnSessionLostStateListener$3(Landroid/media/MediaDrm$OnSessionLostStateListener;Landroid/media/MediaDrm$ListenerArgs;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DOtWUfKw-SjqpIW05dTzCYGTdfA(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->lambda$createOnKeyStatusChangeListener$1(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm$ListenerArgs;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QqIASoflK_7IX95rX5nUDFEahXs(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnKeyStatusChangeListener;)Ljava/util/function/Consumer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->createOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$WsciNOR9XKq0aopT5iDdednbG6k(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnExpirationUpdateListener;)Ljava/util/function/Consumer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->createOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$XPdmE2ItbJIjgPTN4xuFV7h95CA(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnEventListener;)Ljava/util/function/Consumer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->createOnEventListener(Landroid/media/MediaDrm$OnEventListener;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nqiSr7zr7VsFjoSnkq34eEfRU5k(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnEventListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->lambda$createOnEventListener$0(Landroid/media/MediaDrm$OnEventListener;Landroid/media/MediaDrm$ListenerArgs;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rdxwa3Lx8mr1SNebnMmzuGXSk9k(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnSessionLostStateListener;)Ljava/util/function/Consumer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->createOnSessionLostStateListener(Landroid/media/MediaDrm$OnSessionLostStateListener;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetPlaybackId(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->setPlaybackId([BLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdecryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smencryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsignNative(Landroid/media/MediaDrm;[B[B[B)[B
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaDrm;->signNative(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smverifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2678
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2679
    invoke-static {}, Landroid/media/MediaDrm;->native_init()V

    .line 2680
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;)V
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/media/MediaDrm;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 1223
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaDrm;->mListenerMap:Ljava/util/Map;

    .line 1468
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    .line 296
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaDrm;->mAppPackageName:Ljava/lang/String;

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 298
    invoke-static {p1}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaDrm;->mAppPackageName:Ljava/lang/String;

    .line 297
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaDrm;->native_setup(Ljava/lang/Object;[BLjava/lang/String;)V

    .line 300
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private blacklist clearGenericListener(I)V
    .registers 4
    .param p1, "what"    # I

    .line 1253
    iget-object v0, p0, Landroid/media/MediaDrm;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    return-void
.end method

.method private native blacklist closeSessionNative([B)V
.end method

.method private blacklist createHandler()Landroid/os/Handler;
    .registers 3

    .line 274
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_d

    .line 275
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v0, "handler":Landroid/os/Handler;
    goto :goto_1b

    .line 276
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1a

    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_1b

    .line 279
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1a
    const/4 v0, 0x0

    .line 281
    .restart local v0    # "handler":Landroid/os/Handler;
    :goto_1b
    return-object v0
.end method

.method private blacklist createOnEventListener(Landroid/media/MediaDrm$OnEventListener;)Ljava/util/function/Consumer;
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm$OnEventListener;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation

    .line 1257
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaDrm$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnEventListener;)V

    return-object v0
.end method

.method private blacklist createOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;)Ljava/util/function/Consumer;
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm$OnExpirationUpdateListener;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation

    .line 1288
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaDrm$$ExternalSyntheticLambda6;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnExpirationUpdateListener;)V

    return-object v0
.end method

.method private blacklist createOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;)Ljava/util/function/Consumer;
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm$OnKeyStatusChangeListener;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation

    .line 1274
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaDrm$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnKeyStatusChangeListener;)V

    return-object v0
.end method

.method private blacklist createOnSessionLostStateListener(Landroid/media/MediaDrm$OnSessionLostStateListener;)Ljava/util/function/Consumer;
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaDrm$OnSessionLostStateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm$OnSessionLostStateListener;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation

    .line 1301
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaDrm$$ExternalSyntheticLambda7;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnSessionLostStateListener;)V

    return-object v0
.end method

.method private static final native greylist-max-o decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final native greylist-max-o encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final greylist-max-o getByteArrayFromUUID(Ljava/util/UUID;)[B
    .registers 11
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 234
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 235
    .local v0, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 237
    .local v2, "lsb":J
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 238
    .local v4, "uuidBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    const/16 v6, 0x8

    if-ge v5, v6, :cond_28

    .line 239
    rsub-int/lit8 v7, v5, 0x7

    mul-int/2addr v7, v6

    ushr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 240
    add-int/lit8 v7, v5, 0x8

    rsub-int/lit8 v8, v5, 0x7

    mul-int/2addr v8, v6

    ushr-long v8, v2, v8

    long-to-int v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 238
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 243
    .end local v5    # "i":I
    :cond_28
    return-object v4
.end method

.method private static blacklist getDigestBytes([BLjava/lang/String;)[B
    .registers 4
    .param p0, "rawBytes"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 1683
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1684
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v1

    .line 1685
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_9
    move-exception v0

    .line 1686
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "MediaDrm"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1688
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private native blacklist getKeyRequestNative([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public static final whitelist getMaxSecurityLevel()I
    .registers 1

    .line 2202
    const/4 v0, 0x6

    return v0
.end method

.method private native greylist-max-o getMetricsNative()Landroid/os/PersistableBundle;
.end method

.method private blacklist getNewestAvailablePackageCertificateRawBytes()[B
    .registers 9

    .line 1651
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1652
    .local v0, "application":Landroid/app/Application;
    const/4 v1, 0x0

    const-string v2, "MediaDrm"

    if-nez v0, :cond_f

    .line 1653
    const-string v3, "pkg cert: Application is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    return-object v1

    .line 1656
    :cond_f
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1657
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1b

    .line 1658
    const-string v4, "pkg cert: PackageManager is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    return-object v1

    .line 1661
    :cond_1b
    const/4 v4, 0x0

    .line 1663
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_1c
    iget-object v5, p0, Landroid/media/MediaDrm;->mAppPackageName:Ljava/lang/String;

    const/high16 v6, 0x8000000

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_24} :catch_26

    move-object v4, v5

    .line 1667
    goto :goto_2c

    .line 1665
    :catch_26
    move-exception v5

    .line 1666
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/media/MediaDrm;->mAppPackageName:Ljava/lang/String;

    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1668
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2c
    if-eqz v4, :cond_65

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v5, :cond_33

    goto :goto_65

    .line 1672
    :cond_33
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v5}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v5

    .line 1673
    .local v5, "signers":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_47

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_47

    .line 1674
    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 1676
    :cond_47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg cert: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " signers"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return-object v1

    .line 1669
    .end local v5    # "signers":[Landroid/content/pm/Signature;
    :cond_65
    :goto_65
    const-string v5, "pkg cert: PackageInfo or SigningInfo is null"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return-object v1
.end method

.method private native greylist-max-o getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;
.end method

.method public static final whitelist getSupportedCryptoSchemes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/media/MediaDrm;->getSupportedCryptoSchemesNative()[B

    move-result-object v0

    .line 230
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/media/MediaDrm;->getUUIDsFromByteArray([B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static final native blacklist getSupportedCryptoSchemesNative()[B
.end method

.method private static final blacklist getUUIDFromByteArray([BI)Ljava/util/UUID;
    .registers 14
    .param p0, "uuidBytes"    # [B
    .param p1, "off"    # I

    .line 247
    const-wide/16 v0, 0x0

    .line 248
    .local v0, "msb":J
    const-wide/16 v2, 0x0

    .line 250
    .local v2, "lsb":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    const/16 v5, 0x8

    if-ge v4, v5, :cond_23

    .line 251
    shl-long v6, v0, v5

    add-int v8, p1, v4

    aget-byte v8, p0, v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    or-long v0, v6, v8

    .line 252
    shl-long v6, v2, v5

    add-int v8, p1, v4

    add-int/2addr v8, v5

    aget-byte v5, p0, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    or-long v2, v6, v8

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 255
    .end local v4    # "i":I
    :cond_23
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method

.method private static final blacklist getUUIDsFromByteArray([B)Ljava/util/List;
    .registers 4
    .param p0, "uuidBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 260
    .local v0, "uuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 261
    invoke-static {p0, v1}, Landroid/media/MediaDrm;->getUUIDFromByteArray([BI)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v1, v1, 0x10

    goto :goto_6

    .line 263
    .end local v1    # "off":I
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static final whitelist isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .registers 4
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 184
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z
    .registers 4
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 198
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "securityLevel"    # I

    .line 219
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static final native blacklist isCryptoSchemeSupportedNative([BLjava/lang/String;I)Z
.end method

.method private greylist-max-o keyStatusListFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;"
        }
    .end annotation

    .line 1351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1352
    .local v0, "nelems":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1353
    .local v1, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    :goto_9
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "nelems":I
    .local v2, "nelems":I
    if-lez v0, :cond_1f

    .line 1354
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1355
    .local v0, "keyId":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1356
    .local v3, "keyStatusCode":I
    new-instance v4, Landroid/media/MediaDrm$KeyStatus;

    invoke-direct {v4, v0, v3}, Landroid/media/MediaDrm$KeyStatus;-><init>([BI)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    .end local v0    # "keyId":[B
    .end local v3    # "keyStatusCode":I
    move v0, v2

    goto :goto_9

    .line 1358
    :cond_1f
    return-object v1
.end method

.method private synthetic blacklist lambda$createOnEventListener$0(Landroid/media/MediaDrm$OnEventListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .registers 10
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;
    .param p2, "args"    # Landroid/media/MediaDrm$ListenerArgs;

    .line 1258
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v0

    .line 1259
    .local v0, "sessionId":[B
    array-length v1, v0

    if-nez v1, :cond_a

    .line 1260
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_b

    .line 1259
    :cond_a
    move-object v3, v0

    .line 1262
    .end local v0    # "sessionId":[B
    .local v3, "sessionId":[B
    :goto_b
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetdata(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v0

    .line 1263
    .local v0, "data":[B
    if-eqz v0, :cond_17

    array-length v1, v0

    if-nez v1, :cond_17

    .line 1264
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_18

    .line 1267
    :cond_17
    move-object v6, v0

    .end local v0    # "data":[B
    .local v6, "data":[B
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drm event ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetarg1(Landroid/media/MediaDrm$ListenerArgs;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetarg2(Landroid/media/MediaDrm$ListenerArgs;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaDrm"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetarg1(Landroid/media/MediaDrm$ListenerArgs;)I

    move-result v4

    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetarg2(Landroid/media/MediaDrm$ListenerArgs;)I

    move-result v5

    move-object v2, p0

    move-object v1, p1

    .end local p1    # "listener":Landroid/media/MediaDrm$OnEventListener;
    .local v1, "listener":Landroid/media/MediaDrm$OnEventListener;
    invoke-interface/range {v1 .. v6}, Landroid/media/MediaDrm$OnEventListener;->onEvent(Landroid/media/MediaDrm;[BII[B)V

    .line 1269
    return-void
.end method

.method private synthetic blacklist lambda$createOnExpirationUpdateListener$2(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .registers 8
    .param p1, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .param p2, "args"    # Landroid/media/MediaDrm$ListenerArgs;

    .line 1289
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v0

    .line 1290
    .local v0, "sessionId":[B
    array-length v1, v0

    if-lez v1, :cond_26

    .line 1291
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetexpirationTime(Landroid/media/MediaDrm$ListenerArgs;)J

    move-result-wide v1

    .line 1293
    .local v1, "expirationTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drm key expiration update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaDrm"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-interface {p1, p0, v0, v1, v2}, Landroid/media/MediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V

    .line 1296
    .end local v1    # "expirationTime":J
    :cond_26
    return-void
.end method

.method private synthetic blacklist lambda$createOnKeyStatusChangeListener$1(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .registers 8
    .param p1, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .param p2, "args"    # Landroid/media/MediaDrm$ListenerArgs;

    .line 1275
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v0

    .line 1276
    .local v0, "sessionId":[B
    array-length v1, v0

    if-lez v1, :cond_19

    .line 1277
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetkeyStatusList(Landroid/media/MediaDrm$ListenerArgs;)Ljava/util/List;

    move-result-object v1

    .line 1278
    .local v1, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgethasNewUsableKey(Landroid/media/MediaDrm$ListenerArgs;)Z

    move-result v2

    .line 1280
    .local v2, "hasNewUsableKey":Z
    const-string v3, "MediaDrm"

    const-string v4, "Drm key status changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-interface {p1, p0, v0, v1, v2}, Landroid/media/MediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    .line 1283
    .end local v1    # "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    .end local v2    # "hasNewUsableKey":Z
    :cond_19
    return-void
.end method

.method private synthetic blacklist lambda$createOnSessionLostStateListener$3(Landroid/media/MediaDrm$OnSessionLostStateListener;Landroid/media/MediaDrm$ListenerArgs;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/MediaDrm$OnSessionLostStateListener;
    .param p2, "args"    # Landroid/media/MediaDrm$ListenerArgs;

    .line 1302
    invoke-static {p2}, Landroid/media/MediaDrm$ListenerArgs;->-$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B

    move-result-object v0

    .line 1303
    .local v0, "sessionId":[B
    const-string v1, "MediaDrm"

    const-string v2, "Drm session lost state event: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-interface {p1, p0, v0}, Landroid/media/MediaDrm$OnSessionLostStateListener;->onSessionLostState(Landroid/media/MediaDrm;[B)V

    .line 1305
    return-void
.end method

.method static synthetic blacklist lambda$postEventFromNative$4(Landroid/media/MediaDrm;II[B[BJLjava/util/List;ZLandroid/media/MediaDrm$ListenerWithExecutor;)V
    .registers 21
    .param p0, "md"    # Landroid/media/MediaDrm;
    .param p1, "eventType"    # I
    .param p2, "extra"    # I
    .param p3, "sessionId"    # [B
    .param p4, "data"    # [B
    .param p5, "expirationTime"    # J
    .param p7, "keyStatusList"    # Ljava/util/List;
    .param p8, "hasNewUsableKey"    # Z
    .param p9, "listener"    # Landroid/media/MediaDrm$ListenerWithExecutor;

    .line 1385
    iget-wide v0, p0, Landroid/media/MediaDrm;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1386
    const-string v0, "MediaDrm"

    const-string v1, "MediaDrm went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return-void

    .line 1389
    :cond_10
    new-instance v2, Landroid/media/MediaDrm$ListenerArgs;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Landroid/media/MediaDrm$ListenerArgs;-><init>(II[B[BJLjava/util/List;Z)V

    .line 1392
    .local v2, "args":Landroid/media/MediaDrm$ListenerArgs;
    invoke-static/range {p9 .. p9}, Landroid/media/MediaDrm$ListenerWithExecutor;->-$$Nest$fgetmConsumer(Landroid/media/MediaDrm$ListenerWithExecutor;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1393
    return-void
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_setup(Ljava/lang/Object;[BLjava/lang/String;)V
.end method

.method private native blacklist openSessionNative(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;III[B[BJLjava/util/List;Z)V
    .registers 22
    .param p0, "mediadrm_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "eventType"    # I
    .param p3, "extra"    # I
    .param p4, "sessionId"    # [B
    .param p5, "data"    # [B
    .param p6, "expirationTime"    # J
    .param p9, "hasNewUsableKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "III[B[BJ",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    .line 1373
    .local p8, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/MediaDrm;

    .line 1374
    .local v2, "md":Landroid/media/MediaDrm;
    if-nez v2, :cond_d

    .line 1375
    return-void

    .line 1377
    :cond_d
    packed-switch p1, :pswitch_data_52

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaDrm"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 1382
    :pswitch_29
    iget-object v0, v2, Landroid/media/MediaDrm;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/media/MediaDrm$ListenerWithExecutor;

    .line 1383
    .local v11, "listener":Landroid/media/MediaDrm$ListenerWithExecutor;
    if-eqz v11, :cond_51

    .line 1384
    new-instance v1, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;-><init>(Landroid/media/MediaDrm;II[B[BJLjava/util/List;ZLandroid/media/MediaDrm$ListenerWithExecutor;)V

    .line 1394
    .local v1, "command":Ljava/lang/Runnable;
    invoke-static {v11}, Landroid/media/MediaDrm$ListenerWithExecutor;->-$$Nest$fgetmExecutor(Landroid/media/MediaDrm$ListenerWithExecutor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1395
    .end local v1    # "command":Ljava/lang/Runnable;
    nop

    .line 1401
    .end local v11    # "listener":Landroid/media/MediaDrm$ListenerWithExecutor;
    :cond_51
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0xc8
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method private native greylist-max-o provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method private static final native greylist-max-o setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private blacklist setGenericListener(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/concurrent/Executor;",
            "TT;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;>;)V"
        }
    .end annotation

    .line 1249
    .local p3, "listener":Ljava/lang/Object;, "TT;"
    .local p4, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/util/function/Consumer<Landroid/media/MediaDrm$ListenerArgs;>;>;"
    iget-object v0, p0, Landroid/media/MediaDrm;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaDrm$ListenerWithExecutor;

    invoke-interface {p4, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Consumer;

    invoke-direct {v2, p2, v3}, Landroid/media/MediaDrm$ListenerWithExecutor;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    return-void
.end method

.method private blacklist setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/concurrent/Executor;",
            "TT;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;>;)V"
        }
    .end annotation

    .line 1240
    .local p3, "listener":Ljava/lang/Object;, "TT;"
    .local p4, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/util/function/Consumer<Landroid/media/MediaDrm$ListenerArgs;>;>;"
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 1244
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->setGenericListener(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 1245
    return-void

    .line 1241
    :cond_8
    const-string v0, "executor %s listener %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "errMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Handler;",
            "TT;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;>;)V"
        }
    .end annotation

    .line 1228
    .local p3, "listener":Ljava/lang/Object;, "TT;"
    .local p4, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/util/function/Consumer<Landroid/media/MediaDrm$ListenerArgs;>;>;"
    if-nez p3, :cond_6

    .line 1229
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    goto :goto_17

    .line 1231
    :cond_6
    if-nez p2, :cond_d

    invoke-direct {p0}, Landroid/media/MediaDrm;->createHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, p2

    :goto_e
    move-object p2, v0

    .line 1232
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 1233
    .local v0, "executor":Landroid/os/HandlerExecutor;
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/media/MediaDrm;->setGenericListener(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 1235
    .end local v0    # "executor":Landroid/os/HandlerExecutor;
    :goto_17
    return-void
.end method

.method private static final native greylist-max-o setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private native blacklist setPlaybackId([BLjava/lang/String;)V
.end method

.method private static final native greylist-max-o signNative(Landroid/media/MediaDrm;[B[B[B)[B
.end method

.method private static final native greylist-max-o signRSANative(Landroid/media/MediaDrm;[BLjava/lang/String;[B[B)[B
.end method

.method private static final native greylist-max-o verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z
.end method


# virtual methods
.method public whitelist clearOnEventListener()V
    .registers 2

    .line 1143
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    .line 1144
    return-void
.end method

.method public whitelist clearOnExpirationUpdateListener()V
    .registers 2

    .line 877
    const/16 v0, 0xc9

    invoke-direct {p0, v0}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    .line 878
    return-void
.end method

.method public whitelist clearOnKeyStatusChangeListener()V
    .registers 2

    .line 935
    const/16 v0, 0xca

    invoke-direct {p0, v0}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    .line 936
    return-void
.end method

.method public whitelist clearOnSessionLostStateListener()V
    .registers 2

    .line 1000
    const/16 v0, 0xcb

    invoke-direct {p0, v0}, Landroid/media/MediaDrm;->clearGenericListener(I)V

    .line 1001
    return-void
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 2654
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 2655
    return-void
.end method

.method public whitelist closeSession([B)V
    .registers 4
    .param p1, "sessionId"    # [B

    .line 1462
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->closeSessionNative([B)V

    .line 1463
    iget-object v0, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2632
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 2633
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2635
    :cond_9
    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 2637
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2638
    nop

    .line 2639
    return-void

    .line 2637
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2638
    throw v0
.end method

.method public greylist getCertificateRequest(ILjava/lang/String;)Landroid/media/MediaDrm$CertificateRequest;
    .registers 7
    .param p1, "certType"    # I
    .param p2, "certAuthority"    # Ljava/lang/String;

    .line 2499
    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 2500
    .local v0, "provisionRequest":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v1, Landroid/media/MediaDrm$CertificateRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    .line 2501
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/MediaDrm$CertificateRequest;-><init>([BLjava/lang/String;)V

    .line 2500
    return-object v1
.end method

.method public native whitelist getConnectedHdcpLevel()I
.end method

.method public whitelist getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Landroid/media/MediaDrm$CryptoSession;
    .registers 5
    .param p1, "sessionId"    # [B
    .param p2, "cipherAlgorithm"    # Ljava/lang/String;
    .param p3, "macAlgorithm"    # Ljava/lang/String;

    .line 2447
    new-instance v0, Landroid/media/MediaDrm$CryptoSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/MediaDrm$CryptoSession;-><init>(Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .registers 14
    .param p1, "scope"    # [B
    .param p2, "init"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "keyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 1631
    .local p5, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p5, :cond_9

    .line 1632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .local v0, "internalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_f

    .line 1634
    .end local v0    # "internalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v6, v0

    .line 1636
    .local v6, "internalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_f
    invoke-direct {p0}, Landroid/media/MediaDrm;->getNewestAvailablePackageCertificateRawBytes()[B

    move-result-object v0

    .line 1637
    .local v0, "rawBytes":[B
    const/4 v1, 0x0

    .line 1638
    .local v1, "hashBytes":[B
    if-eqz v0, :cond_1e

    .line 1639
    const-string v2, "SHA-256"

    invoke-static {v0, v2}, Landroid/media/MediaDrm;->getDigestBytes([BLjava/lang/String;)[B

    move-result-object v1

    move-object v7, v1

    goto :goto_1f

    .line 1638
    :cond_1e
    move-object v7, v1

    .line 1641
    .end local v1    # "hashBytes":[B
    .local v7, "hashBytes":[B
    :goto_1f
    if-eqz v7, :cond_2e

    .line 1642
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    .line 1643
    .local v1, "encoderB64":Ljava/util/Base64$Encoder;
    invoke-virtual {v1, v7}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 1644
    .local v2, "hashBytesB64":Ljava/lang/String;
    const-string v3, "package_certificate_hash_bytes"

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    .end local v1    # "encoderB64":Ljava/util/Base64$Encoder;
    .end local v2    # "hashBytesB64":Ljava/lang/String;
    :cond_2e
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "scope":[B
    .end local p2    # "init":[B
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "keyType":I
    .local v2, "scope":[B
    .local v3, "init":[B
    .local v4, "mimeType":Ljava/lang/String;
    .local v5, "keyType":I
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaDrm;->getKeyRequestNative([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    return-object p1
.end method

.method public native whitelist getLogMessages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$LogMessage;",
            ">;"
        }
    .end annotation
.end method

.method public native whitelist getMaxHdcpLevel()I
.end method

.method public native whitelist getMaxSessionCount()I
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 2330
    invoke-direct {p0}, Landroid/media/MediaDrm;->getMetricsNative()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2331
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public native whitelist getOfflineLicenseKeySetIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public native whitelist getOfflineLicenseState([B)I
.end method

.method public native whitelist getOpenSessionCount()I
.end method

.method public whitelist getPlaybackComponent([B)Landroid/media/MediaDrm$PlaybackComponent;
    .registers 4
    .param p1, "sessionId"    # [B

    .line 3053
    if-eqz p1, :cond_f

    .line 3056
    iget-object v0, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDrm$PlaybackComponent;

    return-object v0

    .line 3054
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public native whitelist getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public whitelist getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;
    .registers 3

    .line 1808
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/media/MediaDrm;->getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist getSecureStop([B)[B
.end method

.method public native whitelist getSecureStopIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public native whitelist getSecureStops()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public native whitelist getSecurityLevel([B)I
.end method

.method public final native greylist-max-o native_release()V
.end method

.method public whitelist openSession()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/media/MediaDrm;->getMaxSecurityLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaDrm;->openSession(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist openSession(I)[B
    .registers 6
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    .line 1448
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->openSessionNative(I)[B

    move-result-object v0

    .line 1449
    .local v0, "sessionId":[B
    iget-object v1, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v3, Landroid/media/MediaDrm$PlaybackComponent;

    invoke-direct {v3, p0, v0}, Landroid/media/MediaDrm$PlaybackComponent;-><init>(Landroid/media/MediaDrm;[B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    return-object v0
.end method

.method public greylist provideCertificateResponse([B)Landroid/media/MediaDrm$Certificate;
    .registers 3
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 2569
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist provideKeyResponse([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public whitelist provideProvisionResponse([B)V
    .registers 2
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 1827
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;

    .line 1828
    return-void
.end method

.method public native whitelist queryKeyStatus([B)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist release()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2662
    iget-object v0, p0, Landroid/media/MediaDrm;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 2663
    iget-object v0, p0, Landroid/media/MediaDrm;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2664
    invoke-virtual {p0}, Landroid/media/MediaDrm;->native_release()V

    .line 2665
    iget-object v0, p0, Landroid/media/MediaDrm;->mPlaybackComponentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2667
    :cond_17
    return-void
.end method

.method public whitelist releaseAllSecureStops()V
    .registers 1

    .line 2020
    invoke-virtual {p0}, Landroid/media/MediaDrm;->removeAllSecureStops()V

    .line 2021
    return-void
.end method

.method public native whitelist releaseSecureStops([B)V
.end method

.method public native whitelist removeAllSecureStops()V
.end method

.method public native whitelist removeKeys([B)V
.end method

.method public native whitelist removeOfflineLicense([B)V
.end method

.method public native whitelist removeSecureStop([B)V
.end method

.method public whitelist requiresSecureDecoder(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mime"    # Ljava/lang/String;

    .line 2608
    invoke-static {}, Landroid/media/MediaDrm;->getMaxSecurityLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaDrm;->requiresSecureDecoder(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public native whitelist requiresSecureDecoder(Ljava/lang/String;I)Z
.end method

.method public native whitelist restoreKeys([B[B)V
.end method

.method public whitelist setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;

    .line 1109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;Landroid/os/Handler;)V

    .line 1110
    return-void
.end method

.method public whitelist setOnEventListener(Landroid/media/MediaDrm$OnEventListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1123
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xc8

    invoke-direct {p0, v1, p2, p1, v0}, Landroid/media/MediaDrm;->setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 1124
    return-void
.end method

.method public whitelist setOnEventListener(Ljava/util/concurrent/Executor;Landroid/media/MediaDrm$OnEventListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/MediaDrm$OnEventListener;

    .line 1136
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xc8

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/media/MediaDrm;->setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 1137
    return-void
.end method

.method public whitelist setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 854
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xc9

    invoke-direct {p0, v1, p2, p1, v0}, Landroid/media/MediaDrm;->setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 856
    return-void
.end method

.method public whitelist setOnExpirationUpdateListener(Ljava/util/concurrent/Executor;Landroid/media/MediaDrm$OnExpirationUpdateListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;

    .line 869
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xc9

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/media/MediaDrm;->setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 871
    return-void
.end method

.method public whitelist setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 911
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xca

    invoke-direct {p0, v1, p2, p1, v0}, Landroid/media/MediaDrm;->setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 913
    return-void
.end method

.method public whitelist setOnKeyStatusChangeListener(Ljava/util/concurrent/Executor;Landroid/media/MediaDrm$OnKeyStatusChangeListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    .line 927
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xca

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/media/MediaDrm;->setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 929
    return-void
.end method

.method public whitelist setOnSessionLostStateListener(Landroid/media/MediaDrm$OnSessionLostStateListener;Landroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/MediaDrm$OnSessionLostStateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 976
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xcb

    invoke-direct {p0, v1, p2, p1, v0}, Landroid/media/MediaDrm;->setListenerWithHandler(ILandroid/os/Handler;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 978
    return-void
.end method

.method public whitelist setOnSessionLostStateListener(Ljava/util/concurrent/Executor;Landroid/media/MediaDrm$OnSessionLostStateListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/MediaDrm$OnSessionLostStateListener;

    .line 992
    new-instance v0, Landroid/media/MediaDrm$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/media/MediaDrm$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaDrm;)V

    const/16 v1, 0xcb

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/media/MediaDrm;->setListenerWithExecutor(ILjava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 994
    return-void
.end method

.method public native whitelist setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public native whitelist setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public greylist signRSA([BLjava/lang/String;[B[B)[B
    .registers 6
    .param p1, "sessionId"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "wrappedKey"    # [B
    .param p4, "message"    # [B

    .line 2593
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->signRSANative(Landroid/media/MediaDrm;[BLjava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method
