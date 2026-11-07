.class public Landroid/net/connectivity/org/chromium/base/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeEvent(II)V
    .registers 2
    .param p0, "tag"    # I
    .param p1, "value"    # I

    .line 16
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 17
    return-void
.end method
