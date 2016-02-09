.class public final Landroid/media/MediaDrm;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$MediaDrmStateException;,
        Landroid/media/MediaDrm$OnExpirationUpdateListener;,
        Landroid/media/MediaDrm$OnKeyStatusChangeListener;,
        Landroid/media/MediaDrm$KeyStatus;,
        Landroid/media/MediaDrm$OnEventListener;,
        Landroid/media/MediaDrm$EventHandler;,
        Landroid/media/MediaDrm$KeyRequest;,
        Landroid/media/MediaDrm$ProvisionRequest;,
        Landroid/media/MediaDrm$CryptoSession;,
        Landroid/media/MediaDrm$CertificateRequest;,
        Landroid/media/MediaDrm$Certificate;
    }
.end annotation


# static fields
.field public static final CERTIFICATE_TYPE_NONE:I = 0x0

.field public static final CERTIFICATE_TYPE_X509:I = 0x1

.field private static final DRM_EVENT:I = 0xc8

.field public static final EVENT_KEY_EXPIRED:I = 0x3

.field public static final EVENT_KEY_REQUIRED:I = 0x2

.field public static final EVENT_PROVISION_REQUIRED:I = 0x1

.field public static final EVENT_SESSION_RECLAIMED:I = 0x5

.field public static final EVENT_VENDOR_DEFINED:I = 0x4

.field private static final EXPIRATION_UPDATE:I = 0xc9

.field private static final KEY_STATUS_CHANGE:I = 0xca

.field public static final KEY_TYPE_OFFLINE:I = 0x2

.field public static final KEY_TYPE_RELEASE:I = 0x3

.field public static final KEY_TYPE_STREAMING:I = 0x1

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM_CERTIFICATES"

.field public static final PROPERTY_ALGORITHMS:Ljava/lang/String; = "algorithms"

.field public static final PROPERTY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final PROPERTY_DEVICE_UNIQUE_ID:Ljava/lang/String; = "deviceUniqueId"

.field public static final PROPERTY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final PROPERTY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "MediaDrm"


# instance fields
.field private mEventHandler:Landroid/media/MediaDrm$EventHandler;

.field private mNativeContext:J

.field private mOnEventListener:Landroid/media/MediaDrm$OnEventListener;

.field private mOnExpirationUpdateEventHandler:Landroid/media/MediaDrm$EventHandler;

.field private mOnExpirationUpdateListener:Landroid/media/MediaDrm$OnExpirationUpdateListener;

.field private mOnKeyStatusChangeEventHandler:Landroid/media/MediaDrm$EventHandler;

.field private mOnKeyStatusChangeListener:Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# direct methods
.method static synthetic -get0(Landroid/media/MediaDrm;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/MediaDrm;->mNativeContext:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaDrm;->mOnExpirationUpdateListener:Landroid/media/MediaDrm$OnExpirationUpdateListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaDrm;->mOnKeyStatusChangeListener:Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/MediaDrm;[B[B[B[B)Z
    .locals 1
    .param p0, "drm"    # Landroid/media/MediaDrm;
    .param p1, "sessionId"    # [B
    .param p2, "keyId"    # [B
    .param p3, "message"    # [B
    .param p4, "signature"    # [B

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/media/MediaDrm;[B[B[B[B)[B
    .locals 1
    .param p0, "drm"    # Landroid/media/MediaDrm;
    .param p1, "sessionId"    # [B
    .param p2, "keyId"    # [B
    .param p3, "input"    # [B
    .param p4, "iv"    # [B

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/media/MediaDrm;[B[B[B[B)[B
    .locals 1
    .param p0, "drm"    # Landroid/media/MediaDrm;
    .param p1, "sessionId"    # [B
    .param p2, "keyId"    # [B
    .param p3, "input"    # [B
    .param p4, "iv"    # [B

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Landroid/media/MediaDrm;[B[B[B)[B
    .locals 1
    .param p0, "drm"    # Landroid/media/MediaDrm;
    .param p1, "sessionId"    # [B
    .param p2, "keyId"    # [B
    .param p3, "message"    # [B

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaDrm;->signNative(Landroid/media/MediaDrm;[B[B[B)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Landroid/media/MediaDrm;Landroid/os/Parcel;)Ljava/util/List;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->keyStatusListFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .locals 0
    .param p0, "drm"    # Landroid/media/MediaDrm;
    .param p1, "sessionId"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .locals 0
    .param p0, "drm"    # Landroid/media/MediaDrm;
    .param p1, "sessionId"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1328
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 1329
    invoke-static {}, Landroid/media/MediaDrm;->native_init()V

    #@9
    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 204
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@a
    .line 205
    new-instance v1, Landroid/media/MediaDrm$EventHandler;

    #@c
    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    #@f
    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@11
    .line 215
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@13
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@16
    .line 216
    invoke-static {p1}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    #@19
    move-result-object v2

    #@1a
    .line 215
    invoke-direct {p0, v1, v2}, Landroid/media/MediaDrm;->native_setup(Ljava/lang/Object;[B)V

    #@1d
    .line 202
    return-void

    #@1e
    .line 206
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 207
    new-instance v1, Landroid/media/MediaDrm$EventHandler;

    #@26
    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    #@29
    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@2b
    goto :goto_0

    #@2c
    .line 209
    :cond_1
    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@2e
    goto :goto_0
.end method

.method private static final native decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final native encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 11
    .param p0, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    const/16 v10, 0x8

    #@2
    .line 179
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    #@5
    move-result-wide v4

    #@6
    .line 180
    .local v4, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    #@9
    move-result-wide v2

    #@a
    .line 182
    .local v2, "lsb":J
    const/16 v6, 0x10

    #@c
    new-array v1, v6, [B

    #@e
    .line 183
    .local v1, "uuidBytes":[B
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_0

    #@11
    .line 184
    rsub-int/lit8 v6, v0, 0x7

    #@13
    mul-int/lit8 v6, v6, 0x8

    #@15
    ushr-long v6, v4, v6

    #@17
    long-to-int v6, v6

    #@18
    int-to-byte v6, v6

    #@19
    aput-byte v6, v1, v0

    #@1b
    .line 185
    add-int/lit8 v6, v0, 0x8

    #@1d
    rsub-int/lit8 v7, v0, 0x7

    #@1f
    mul-int/lit8 v7, v7, 0x8

    #@21
    ushr-long v8, v2, v7

    #@23
    long-to-int v7, v8

    #@24
    int-to-byte v7, v7

    #@25
    aput-byte v7, v1, v6

    #@27
    .line 183
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 188
    :cond_0
    return-object v1
.end method

.method private native getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 2
    .param p0, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    .line 162
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static final native isCryptoSchemeSupportedNative([BLjava/lang/String;)Z
.end method

.method private keyStatusListFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v3

    #@4
    .line 588
    .local v3, "nelems":I
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .local v2, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    move v4, v3

    #@a
    .line 589
    .end local v3    # "nelems":I
    .local v4, "nelems":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    #@c
    .end local v4    # "nelems":I
    .restart local v3    # "nelems":I
    if-lez v4, :cond_0

    #@e
    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@11
    move-result-object v0

    #@12
    .line 591
    .local v0, "keyId":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v1

    #@16
    .line 592
    .local v1, "keyStatusCode":I
    new-instance v5, Landroid/media/MediaDrm$KeyStatus;

    #@18
    invoke-direct {v5, v0, v1}, Landroid/media/MediaDrm$KeyStatus;-><init>([BI)V

    #@1b
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    move v4, v3

    #@1f
    .end local v3    # "nelems":I
    .restart local v4    # "nelems":I
    goto :goto_0

    #@20
    .line 594
    .end local v0    # "keyId":[B
    .end local v1    # "keyStatusCode":I
    .end local v4    # "nelems":I
    .restart local v3    # "nelems":I
    :cond_0
    return-object v2
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;[B)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediadrm_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "eventType"    # I
    .param p3, "extra"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 607
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "mediadrm_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/media/MediaDrm;

    #@8
    .line 608
    .local v1, "md":Landroid/media/MediaDrm;
    if-nez v1, :cond_0

    #@a
    .line 609
    return-void

    #@b
    .line 611
    :cond_0
    iget-object v2, v1, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 612
    iget-object v2, v1, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@11
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaDrm$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 613
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@17
    invoke-virtual {v2, v0}, Landroid/media/MediaDrm$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 605
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private native provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method private static final native setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private static final native setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private static final native signNative(Landroid/media/MediaDrm;[B[B[B)[B
.end method

.method private static final native signRSANative(Landroid/media/MediaDrm;[BLjava/lang/String;[B[B)[B
.end method

.method private static final native verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z
.end method


# virtual methods
.method public native closeSession([B)V
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 1317
    invoke-direct {p0}, Landroid/media/MediaDrm;->native_finalize()V

    #@3
    .line 1316
    return-void
.end method

.method public getCertificateRequest(ILjava/lang/String;)Landroid/media/MediaDrm$CertificateRequest;
    .locals 4
    .param p1, "certType"    # I
    .param p2, "certAuthority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1222
    invoke-direct {p0, p1, p2}, Landroid/media/MediaDrm;->getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;

    #@3
    move-result-object v0

    #@4
    .line 1223
    .local v0, "provisionRequest":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v1, Landroid/media/MediaDrm$CertificateRequest;

    #@6
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    #@9
    move-result-object v2

    #@a
    .line 1224
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 1223
    invoke-direct {v1, v2, v3}, Landroid/media/MediaDrm$CertificateRequest;-><init>([BLjava/lang/String;)V

    #@11
    return-object v1
.end method

.method public getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Landroid/media/MediaDrm$CryptoSession;
    .locals 6
    .param p1, "sessionId"    # [B
    .param p2, "cipherAlgorithm"    # Ljava/lang/String;
    .param p3, "macAlgorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1173
    new-instance v0, Landroid/media/MediaDrm$CryptoSession;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p0

    #@4
    move-object v3, p1

    #@5
    move-object v4, p2

    #@6
    move-object v5, p3

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaDrm$CryptoSession;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V

    #@a
    return-object v0
.end method

.method public native getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
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

.method public native getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public native getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;
    .locals 2

    #@0
    .prologue
    .line 881
    const-string/jumbo v0, ""

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v1, v0}, Landroid/media/MediaDrm;->getProvisionRequestNative(ILjava/lang/String;)Landroid/media/MediaDrm$ProvisionRequest;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public native getSecureStop([B)[B
.end method

.method public native getSecureStops()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public native openSession()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation
.end method

.method public provideCertificateResponse([B)Landroid/media/MediaDrm$Certificate;
    .locals 1
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1289
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public native provideKeyResponse([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public provideProvisionResponse([B)V
    .locals 0
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    #@0
    .prologue
    .line 900
    invoke-direct {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponseNative([B)Landroid/media/MediaDrm$Certificate;

    #@3
    .line 899
    return-void
.end method

.method public native queryKeyStatus([B)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native release()V
.end method

.method public native releaseAllSecureStops()V
.end method

.method public native releaseSecureStops([B)V
.end method

.method public native removeKeys([B)V
.end method

.method public native restoreKeys([B[B)V
.end method

.method public setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;

    #@0
    .prologue
    .line 432
    iput-object p1, p0, Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;

    #@2
    .line 430
    return-void
.end method

.method public setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaDrm$OnExpirationUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 274
    if-eqz p1, :cond_1

    #@2
    .line 275
    if-eqz p2, :cond_2

    #@4
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    .line 276
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 277
    iget-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@c
    if-eqz v1, :cond_0

    #@e
    iget-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@10
    invoke-virtual {v1}, Landroid/media/MediaDrm$EventHandler;->getLooper()Landroid/os/Looper;

    #@13
    move-result-object v1

    #@14
    if-eq v1, v0, :cond_1

    #@16
    .line 278
    :cond_0
    new-instance v1, Landroid/media/MediaDrm$EventHandler;

    #@18
    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    #@1b
    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@1d
    .line 282
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    iput-object p1, p0, Landroid/media/MediaDrm;->mOnExpirationUpdateListener:Landroid/media/MediaDrm$OnExpirationUpdateListener;

    #@1f
    .line 273
    return-void

    #@20
    .line 275
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@23
    move-result-object v0

    #@24
    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0
.end method

.method public setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/MediaDrm$OnKeyStatusChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 316
    if-eqz p1, :cond_1

    #@2
    .line 317
    if-eqz p2, :cond_2

    #@4
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    .line 318
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 319
    iget-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@c
    if-eqz v1, :cond_0

    #@e
    iget-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@10
    invoke-virtual {v1}, Landroid/media/MediaDrm$EventHandler;->getLooper()Landroid/os/Looper;

    #@13
    move-result-object v1

    #@14
    if-eq v1, v0, :cond_1

    #@16
    .line 320
    :cond_0
    new-instance v1, Landroid/media/MediaDrm$EventHandler;

    #@18
    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    #@1b
    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    #@1d
    .line 324
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    iput-object p1, p0, Landroid/media/MediaDrm;->mOnKeyStatusChangeListener:Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    #@1f
    .line 315
    return-void

    #@20
    .line 317
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@23
    move-result-object v0

    #@24
    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0
.end method

.method public native setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public native setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public signRSA([BLjava/lang/String;[B[B)[B
    .locals 1
    .param p1, "sessionId"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "wrappedKey"    # [B
    .param p4, "message"    # [B

    #@0
    .prologue
    .line 1312
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->signRSANative(Landroid/media/MediaDrm;[BLjava/lang/String;[B[B)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public native unprovisionDevice()V
.end method
