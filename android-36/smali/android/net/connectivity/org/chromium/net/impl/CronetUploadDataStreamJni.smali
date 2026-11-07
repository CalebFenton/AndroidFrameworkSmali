.class Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;
.super Ljava/lang/Object;
.source "CronetUploadDataStreamJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 12
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;
    .registers 2

    .line 17
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 18
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 19
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;

    return-object v1

    .line 21
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 22
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;

    .line 26
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 27
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 29
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStreamJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist attachUploadDataToRequest(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;JJ)J
    .registers 8
    .param p1, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .param p2, "urlRequestAdapter"    # J
    .param p4, "length"    # J

    .line 35
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_attachUploadDataToRequest(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist createAdapterForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)J
    .registers 4
    .param p1, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    .line 43
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_createAdapterForTesting(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist createUploadDataStreamForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;JJ)J
    .registers 8
    .param p1, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .param p2, "length"    # J
    .param p4, "adapter"    # J

    .line 49
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_createUploadDataStreamForTesting(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist destroy(J)V
    .registers 3
    .param p1, "nativePtr"    # J

    .line 57
    nop

    .line 58
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_destroy(J)V

    .line 60
    return-void
.end method

.method public blacklist onReadSucceeded(JLandroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;IZ)V
    .registers 6
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .param p4, "bytesRead"    # I
    .param p5, "finalChunk"    # Z

    .line 64
    nop

    .line 65
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_onReadSucceeded(JLjava/lang/Object;IZ)V

    .line 70
    return-void
.end method

.method public blacklist onRewindSucceeded(JLandroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V
    .registers 4
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    .line 74
    nop

    .line 75
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetUploadDataStream_onRewindSucceeded(JLjava/lang/Object;)V

    .line 78
    return-void
.end method
