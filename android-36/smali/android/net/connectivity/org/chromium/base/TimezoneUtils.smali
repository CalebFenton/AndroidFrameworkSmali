.class Landroid/net/connectivity/org/chromium/base/TimezoneUtils;
.super Ljava/lang/Object;
.source "TimezoneUtils.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDefaultTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 27
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "timezoneID":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 29
    return-object v1
.end method
