.class public Landroid/net/connectivity/org/chromium/base/TokenJni;
.super Ljava/lang/Object;
.source "TokenJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/Token$Natives;


# static fields
.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/Token$Natives;
    .registers 2

    .line 17
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TokenJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 18
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 19
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/base/Token$Natives;

    return-object v1

    .line 21
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 22
    new-instance v1, Landroid/net/connectivity/org/chromium/base/TokenJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/TokenJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/Token$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/base/Token$Natives;

    .line 26
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TokenJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 27
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/TokenJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 29
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/TokenJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist createRandom()Landroid/net/connectivity/org/chromium/base/Token;
    .registers 2

    .line 35
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_Token_createRandom()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/Token;

    return-object v0
.end method
