.class Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;
.super Ljava/lang/Object;
.source "CronetLibraryLoaderJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;


# static fields
.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;
    .registers 2

    .line 16
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 17
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 18
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;

    return-object v1

    .line 20
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 21
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;

    .line 25
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 28
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist cronetInitOnInitThread()V
    .registers 1

    .line 34
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetLibraryLoader_cronetInitOnInitThread()V

    .line 35
    return-void
.end method

.method public blacklist getCronetVersion()Ljava/lang/String;
    .registers 2

    .line 39
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetLibraryLoader_getCronetVersion()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist nativeInit()V
    .registers 1

    .line 44
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetLibraryLoader_nativeInit()V

    .line 45
    return-void
.end method

.method public blacklist setMinLogLevel(I)V
    .registers 2
    .param p1, "loggingLevel"    # I

    .line 49
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_net_impl_CronetLibraryLoader_setMinLogLevel(I)V

    .line 51
    return-void
.end method
