.class public Lcom/android/i18n/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static blacklist DEBUG:I

.field private static blacklist ERROR:I

.field private static blacklist FATAL:I

.field private static blacklist INFO:I

.field private static blacklist VERBOSE:I

.field private static blacklist WARN:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x2

    sput v0, Lcom/android/i18n/util/Log;->VERBOSE:I

    .line 30
    const/4 v0, 0x3

    sput v0, Lcom/android/i18n/util/Log;->DEBUG:I

    .line 31
    const/4 v0, 0x4

    sput v0, Lcom/android/i18n/util/Log;->INFO:I

    .line 32
    const/4 v0, 0x5

    sput v0, Lcom/android/i18n/util/Log;->WARN:I

    .line 33
    const/4 v0, 0x6

    sput v0, Lcom/android/i18n/util/Log;->ERROR:I

    .line 34
    const/4 v0, 0x7

    sput v0, Lcom/android/i18n/util/Log;->FATAL:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 37
    sget v0, Lcom/android/i18n/util/Log;->ERROR:I

    invoke-static {v0, p0, p1}, Lcom/android/i18n/util/Log;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method private static native blacklist log(ILjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static blacklist w(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 44
    sget v0, Lcom/android/i18n/util/Log;->WARN:I

    invoke-static {v0, p0, p1}, Lcom/android/i18n/util/Log;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method
