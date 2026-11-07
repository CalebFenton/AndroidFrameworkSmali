.class Landroid/net/connectivity/org/chromium/base/CommandLineJni;
.super Ljava/lang/Object;
.source "CommandLineJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;


# static fields
.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;
    .registers 2

    .line 16
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 17
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 18
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    return-object v1

    .line 20
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 21
    new-instance v1, Landroid/net/connectivity/org/chromium/base/CommandLineJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/CommandLineJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    .line 25
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 28
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist appendSwitch(Ljava/lang/String;)V
    .registers 2
    .param p1, "switchString"    # Ljava/lang/String;

    .line 34
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_CommandLine_appendSwitch(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public blacklist appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "switchString"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 39
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_CommandLine_appendSwitchWithValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public blacklist appendSwitchesAndArguments([Ljava/lang/String;)V
    .registers 2
    .param p1, "array"    # [Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_CommandLine_appendSwitchesAndArguments(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public blacklist getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "switchString"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_CommandLine_getSwitchValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSwitchesFlattened()[Ljava/lang/String;
    .registers 2

    .line 58
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_CommandLine_getSwitchesFlattened()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasSwitch(Ljava/lang/String;)Z
    .registers 3
    .param p1, "switchString"    # Ljava/lang/String;

    .line 63
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_CommandLine_hasSwitch(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist init([Ljava/lang/String;)V
    .registers 2
    .param p1, "args"    # [Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_CommandLine_init(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public blacklist removeSwitch(Ljava/lang/String;)V
    .registers 2
    .param p1, "switchString"    # Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_CommandLine_removeSwitch(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
