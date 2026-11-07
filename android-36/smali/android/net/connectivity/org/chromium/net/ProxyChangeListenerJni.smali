.class Landroid/net/connectivity/org/chromium/net/ProxyChangeListenerJni;
.super Ljava/lang/Object;
.source "ProxyChangeListenerJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;


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

.method public static blacklist get()Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;
    .registers 2

    .line 17
    sget-object v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListenerJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 18
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 19
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;

    return-object v1

    .line 21
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 22
    new-instance v1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListenerJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListenerJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;

    .line 26
    sget-object v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListenerJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 27
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListenerJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 29
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListenerJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist proxySettingsChanged(JLandroid/net/connectivity/org/chromium/net/ProxyChangeListener;)V
    .registers 4
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;

    .line 35
    nop

    .line 36
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_ProxyChangeListener_proxySettingsChanged(JLjava/lang/Object;)V

    .line 39
    return-void
.end method

.method public blacklist proxySettingsChangedTo(JLandroid/net/connectivity/org/chromium/net/ProxyChangeListener;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "nativePtr"    # J
    .param p3, "caller"    # Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "pacUrl"    # Ljava/lang/String;
    .param p7, "exclusionList"    # [Ljava/lang/String;

    .line 43
    nop

    .line 44
    invoke-static/range {p1 .. p7}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_ProxyChangeListener_proxySettingsChangedTo(JLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    return-void
.end method
