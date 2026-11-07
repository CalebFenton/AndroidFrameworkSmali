.class public Landroid/adservices/exceptions/AdServicesNetworkException;
.super Landroid/adservices/exceptions/AdServicesException;
.source "AdServicesNetworkException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/exceptions/AdServicesNetworkException$ErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_CLIENT:I = 0x4

.field public static final blacklist ERROR_OTHER:I = 0x3e7

.field public static final blacklist ERROR_REDIRECTION:I = 0x3

.field public static final blacklist ERROR_SERVER:I = 0x5

.field public static final blacklist ERROR_TOO_MANY_REQUESTS:I = 0x1ad

.field public static final blacklist INVALID_ERROR_CODE_MESSAGE:Ljava/lang/String; = "Valid error code must be set."


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 85
    invoke-direct {p0}, Landroid/adservices/exceptions/AdServicesException;-><init>()V

    .line 87
    invoke-direct {p0, p1}, Landroid/adservices/exceptions/AdServicesNetworkException;->checkErrorCode(I)V

    .line 88
    iput p1, p0, Landroid/adservices/exceptions/AdServicesNetworkException;->mErrorCode:I

    .line 89
    return-void
.end method

.method private blacklist checkErrorCode(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 113
    sparse-switch p1, :sswitch_data_e

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid error code must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :sswitch_b
    nop

    .line 127
    return-void

    nop

    :sswitch_data_e
    .sparse-switch
        0x3 -> :sswitch_b
        0x4 -> :sswitch_b
        0x5 -> :sswitch_b
        0x1ad -> :sswitch_b
        0x3e7 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public blacklist getErrorCode()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/adservices/exceptions/AdServicesNetworkException;->mErrorCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 105
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Landroid/adservices/exceptions/AdServicesNetworkException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 105
    const-string v2, "%s: {Error code: %s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
