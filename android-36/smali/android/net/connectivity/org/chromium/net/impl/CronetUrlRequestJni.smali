.class Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;
.super Ljava/lang/Object;
.source "CronetUrlRequestJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 14
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;
    .registers 2

    .line 19
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 20
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 21
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    return-object v1

    .line 23
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 24
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;

    .line 28
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 29
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 31
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist addRequestHeader(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .line 37
    nop

    .line 38
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_addRequestHeader(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist createRequestAdapter(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;JLjava/lang/String;IZZZIZII[BLjava/nio/ByteBuffer;IILjava/lang/String;J)J
    .registers 22
    .param p1, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .param p2, "urlRequestContextAdapter"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "disableCache"    # Z
    .param p7, "disableConnectionMigration"    # Z
    .param p8, "trafficStatsTagSet"    # Z
    .param p9, "trafficStatsTag"    # I
    .param p10, "trafficStatsUidSet"    # Z
    .param p11, "trafficStatsUid"    # I
    .param p12, "idempotency"    # I
    .param p13, "dictionarySha256Hash"    # [B
    .param p14, "dictionary"    # Ljava/nio/ByteBuffer;
    .param p15, "dictionaryPosition"    # I
    .param p16, "dictionaryCapacity"    # I
    .param p17, "dictionaryId"    # Ljava/lang/String;
    .param p18, "networkHandle"    # J

    .line 47
    invoke-static/range {p1 .. p19}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_createRequestAdapter(Ljava/lang/Object;JLjava/lang/Object;IZZZIZIILjava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist destroy(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Z)V
    .registers 5
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .param p4, "sendOnCanceled"    # Z

    .line 69
    nop

    .line 70
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_destroy(JLjava/lang/Object;Z)V

    .line 74
    return-void
.end method

.method public blacklist followDeferredRedirect(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .registers 4
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    .line 78
    nop

    .line 79
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_followDeferredRedirect(JLjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public blacklist getStatus(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V
    .registers 5
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .param p4, "listener"    # Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    .line 86
    nop

    .line 87
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_getStatus(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public blacklist readData(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/nio/ByteBuffer;II)Z
    .registers 8
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .param p4, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p5, "position"    # I
    .param p6, "capacity"    # I

    .line 95
    nop

    .line 96
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_readData(JLjava/lang/Object;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public blacklist setHttpMethod(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;)Z
    .registers 6
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
    .param p4, "method"    # Ljava/lang/String;

    .line 106
    nop

    .line 107
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_setHttpMethod(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist start(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .registers 4
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;

    .line 115
    nop

    .line 116
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUrlRequest_start(JLjava/lang/Object;)V

    .line 119
    return-void
.end method
