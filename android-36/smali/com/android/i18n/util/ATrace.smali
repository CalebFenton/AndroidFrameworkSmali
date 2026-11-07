.class public Lcom/android/i18n/util/ATrace;
.super Ljava/lang/Object;
.source "ATrace.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist nativeTraceBegin(Ljava/lang/String;)V
.end method

.method private static native blacklist nativeTraceEnd()V
.end method

.method public static blacklist traceBegin(Ljava/lang/String;)V
    .registers 1
    .param p0, "event"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p0}, Lcom/android/i18n/util/ATrace;->nativeTraceBegin(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static blacklist traceEnd()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/android/i18n/util/ATrace;->nativeTraceEnd()V

    .line 37
    return-void
.end method
