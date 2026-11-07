.class Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;
.super Ljava/lang/Object;
.source "EarlyTraceEventJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;


# static fields
.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;
    .registers 2

    .line 16
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 17
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 18
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;

    return-object v1

    .line 20
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 21
    new-instance v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;

    .line 25
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 28
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist recordEarlyAsyncBeginEvent(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "timeNanos"    # J

    .line 34
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyAsyncBeginEvent(Ljava/lang/Object;JJ)V

    .line 38
    return-void
.end method

.method public blacklist recordEarlyAsyncEndEvent(JJ)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "timeNanos"    # J

    .line 42
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyAsyncEndEvent(JJ)V

    .line 45
    return-void
.end method

.method public blacklist recordEarlyBeginEvent(Ljava/lang/String;JIJ)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeNanos"    # J
    .param p4, "threadId"    # I
    .param p5, "threadMillis"    # J

    .line 49
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyBeginEvent(Ljava/lang/Object;JIJ)V

    .line 54
    return-void
.end method

.method public blacklist recordEarlyEndEvent(Ljava/lang/String;JIJ)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeNanos"    # J
    .param p4, "threadId"    # I
    .param p5, "threadMillis"    # J

    .line 58
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyEndEvent(Ljava/lang/Object;JIJ)V

    .line 63
    return-void
.end method

.method public blacklist recordEarlyToplevelBeginEvent(Ljava/lang/String;JIJ)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeNanos"    # J
    .param p4, "threadId"    # I
    .param p5, "threadMillis"    # J

    .line 67
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyToplevelBeginEvent(Ljava/lang/Object;JIJ)V

    .line 72
    return-void
.end method

.method public blacklist recordEarlyToplevelEndEvent(Ljava/lang/String;JIJ)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeNanos"    # J
    .param p4, "threadId"    # I
    .param p5, "threadMillis"    # J

    .line 76
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_EarlyTraceEvent_recordEarlyToplevelEndEvent(Ljava/lang/Object;JIJ)V

    .line 81
    return-void
.end method
