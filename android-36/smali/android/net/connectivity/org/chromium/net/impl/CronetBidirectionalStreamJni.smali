.class Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;
.super Ljava/lang/Object;
.source "CronetBidirectionalStreamJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 13
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;
    .registers 2

    .line 18
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 19
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 20
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;

    return-object v1

    .line 22
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 23
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;

    .line 27
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 28
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 30
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStreamJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist createBidirectionalStream(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;JZZIZIJ)J
    .registers 13
    .param p1, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .param p2, "urlRequestContextAdapter"    # J
    .param p4, "sendRequestHeadersAutomatically"    # Z
    .param p5, "trafficStatsTagSet"    # Z
    .param p6, "trafficStatsTag"    # I
    .param p7, "trafficStatsUidSet"    # Z
    .param p8, "trafficStatsUid"    # I
    .param p9, "networkHandle"    # J

    .line 36
    invoke-static/range {p1 .. p10}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_createBidirectionalStream(Ljava/lang/Object;JZZIZIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist destroy(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Z)V
    .registers 5
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .param p4, "sendOnCanceled"    # Z

    .line 49
    nop

    .line 50
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_destroy(JLjava/lang/Object;Z)V

    .line 54
    return-void
.end method

.method public blacklist readData(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;II)Z
    .registers 8
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .param p4, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p5, "position"    # I
    .param p6, "limit"    # I

    .line 58
    nop

    .line 59
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_readData(JLjava/lang/Object;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public blacklist sendRequestHeaders(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V
    .registers 4
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    .line 69
    nop

    .line 70
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_sendRequestHeaders(JLjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public blacklist start(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)I
    .registers 10
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "method"    # Ljava/lang/String;
    .param p7, "headers"    # [Ljava/lang/String;
    .param p8, "endOfStream"    # Z

    .line 77
    nop

    .line 78
    invoke-static/range {p1 .. p8}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_start(JLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public blacklist writevData(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;[Ljava/nio/ByteBuffer;[I[IZ)Z
    .registers 9
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .param p4, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p5, "positions"    # [I
    .param p6, "limits"    # [I
    .param p7, "endOfStream"    # Z

    .line 90
    nop

    .line 91
    invoke-static/range {p1 .. p7}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetBidirectionalStream_writevData(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method
