.class Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;
.super Ljava/lang/Object;
.source "JavaExceptionReporterJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;


# static fields
.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;
    .registers 2

    .line 16
    sget-object v0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 17
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 18
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;

    return-object v1

    .line 20
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 21
    new-instance v1, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/base/JavaExceptionReporter$Natives;

    .line 25
    sget-object v0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 28
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/JavaExceptionReporterJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist reportJavaException(ZLjava/lang/Throwable;)V
    .registers 3
    .param p1, "crashAfterReport"    # Z
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 34
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_JavaExceptionReporter_reportJavaException(ZLjava/lang/Object;)V

    .line 37
    return-void
.end method

.method public blacklist reportJavaStackTrace(Ljava/lang/String;)V
    .registers 2
    .param p1, "stackTrace"    # Ljava/lang/String;

    .line 41
    invoke-static {p1}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_JavaExceptionReporter_reportJavaStackTrace(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
