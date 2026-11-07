.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;


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

.method public static blacklist get()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;
    .registers 2

    .line 17
    sget-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 18
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 19
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;

    return-object v1

    .line 21
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 22
    new-instance v1, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier$Natives;

    .line 26
    sget-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 27
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 29
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist notifyConnectionCostChanged(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;I)V
    .registers 5
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .param p4, "newConnectionCost"    # I

    .line 35
    nop

    .line 36
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyConnectionCostChanged(JLjava/lang/Object;I)V

    .line 40
    return-void
.end method

.method public blacklist notifyConnectionSubtypeChanged(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;I)V
    .registers 5
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .param p4, "subType"    # I

    .line 44
    nop

    .line 45
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyConnectionSubtypeChanged(JLjava/lang/Object;I)V

    .line 49
    return-void
.end method

.method public blacklist notifyConnectionTypeChanged(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;IJ)V
    .registers 7
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .param p4, "newConnectionType"    # I
    .param p5, "defaultNetId"    # J

    .line 53
    nop

    .line 54
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyConnectionTypeChanged(JLjava/lang/Object;IJ)V

    .line 59
    return-void
.end method

.method public blacklist notifyOfNetworkConnect(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;JI)V
    .registers 7
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .param p4, "netId"    # J
    .param p6, "connectionType"    # I

    .line 63
    nop

    .line 64
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyOfNetworkConnect(JLjava/lang/Object;JI)V

    .line 69
    return-void
.end method

.method public blacklist notifyOfNetworkDisconnect(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;J)V
    .registers 6
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .param p4, "netId"    # J

    .line 73
    nop

    .line 74
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyOfNetworkDisconnect(JLjava/lang/Object;J)V

    .line 78
    return-void
.end method

.method public blacklist notifyOfNetworkSoonToDisconnect(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;J)V
    .registers 6
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .param p4, "netId"    # J

    .line 82
    nop

    .line 83
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyOfNetworkSoonToDisconnect(JLjava/lang/Object;J)V

    .line 87
    return-void
.end method

.method public blacklist notifyPurgeActiveNetworkList(JLandroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;[J)V
    .registers 5
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;
    .param p4, "activeNetIds"    # [J

    .line 91
    nop

    .line 92
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_NetworkChangeNotifier_notifyPurgeActiveNetworkList(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    return-void
.end method
