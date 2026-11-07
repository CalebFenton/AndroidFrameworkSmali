.class public abstract Landroid/net/connectivity/org/chromium/net/NetworkException;
.super Landroid/net/connectivity/org/chromium/net/CronetException;
.source "NetworkException.java"


# static fields
.field public static final blacklist ERROR_ADDRESS_UNREACHABLE:I = 0x9

.field public static final blacklist ERROR_CONNECTION_CLOSED:I = 0x5

.field public static final blacklist ERROR_CONNECTION_REFUSED:I = 0x7

.field public static final blacklist ERROR_CONNECTION_RESET:I = 0x8

.field public static final blacklist ERROR_CONNECTION_TIMED_OUT:I = 0x6

.field public static final blacklist ERROR_HOSTNAME_NOT_RESOLVED:I = 0x1

.field public static final blacklist ERROR_INTERNET_DISCONNECTED:I = 0x2

.field public static final blacklist ERROR_NETWORK_CHANGED:I = 0x3

.field public static final blacklist ERROR_OTHER:I = 0xb

.field public static final blacklist ERROR_QUIC_PROTOCOL_FAILED:I = 0xa

.field public static final blacklist ERROR_TIMED_OUT:I = 0x4


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/CronetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public abstract blacklist getCronetInternalErrorCode()I
.end method

.method public abstract blacklist getErrorCode()I
.end method

.method public abstract blacklist immediatelyRetryable()Z
.end method
