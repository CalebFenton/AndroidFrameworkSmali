.class public Lcom/android/internal/telephony/CallStateException;
.super Ljava/lang/Exception;
.source "CallStateException.java"


# static fields
.field public static final blacklist ERROR_ALREADY_DIALING:I = 0x3

.field public static final blacklist ERROR_CALLING_DISABLED:I = 0x5

.field public static final blacklist ERROR_CALL_RINGING:I = 0x4

.field public static final blacklist ERROR_FDN_BLOCKED:I = 0x8

.field public static final blacklist ERROR_INVALID:I = -0x1

.field public static final blacklist ERROR_OTASP_PROVISIONING_IN_PROCESS:I = 0x7

.field public static final blacklist ERROR_OUT_OF_SERVICE:I = 0x1

.field public static final blacklist ERROR_POWER_OFF:I = 0x2

.field public static final blacklist ERROR_TOO_MANY_CALLS:I = 0x6


# instance fields
.field private blacklist mError:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/android/internal/telephony/CallStateException;->mError:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3

    .line 55
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 56
    iput p1, p0, Lcom/android/internal/telephony/CallStateException;->mError:I

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/android/internal/telephony/CallStateException;->mError:I

    return-void
.end method


# virtual methods
.method public blacklist getError()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/android/internal/telephony/CallStateException;->mError:I

    return p0
.end method
