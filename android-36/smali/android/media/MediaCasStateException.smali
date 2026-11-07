.class public Landroid/media/MediaCasStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaCasStateException.java"


# instance fields
.field private final greylist-max-o mDiagnosticInfo:Ljava/lang/String;

.field private final greylist-max-o mErrorCode:I


# direct methods
.method private constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "err"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "diagnosticInfo"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    iput p1, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    .line 33
    iput-object p3, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static greylist-max-o throwExceptionIfNeeded(I)V
    .registers 2
    .param p0, "err"    # I

    .line 37
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method static greylist-max-o throwExceptionIfNeeded(ILjava/lang/String;)V
    .registers 6
    .param p0, "err"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 41
    if-nez p0, :cond_3

    .line 42
    return-void

    .line 44
    :cond_3
    const/4 v0, 0x6

    if-eq p0, v0, :cond_55

    .line 48
    const-string v0, ""

    .line 49
    .local v0, "diagnosticInfo":Ljava/lang/String;
    packed-switch p0, :pswitch_data_5c

    .line 102
    :pswitch_b
    const-string v0, "Unknown CAS state exception"

    goto :goto_41

    .line 99
    :pswitch_e
    const-string v0, "Rebooting"

    .line 100
    goto :goto_41

    .line 96
    :pswitch_11
    const-string v0, "Blackout"

    .line 97
    goto :goto_41

    .line 93
    :pswitch_14
    const-string v0, "Card Invalid"

    .line 94
    goto :goto_41

    .line 90
    :pswitch_17
    const-string v0, "Card Muted"

    .line 91
    goto :goto_41

    .line 87
    :pswitch_1a
    const-string v0, "No Card"

    .line 88
    goto :goto_41

    .line 84
    :pswitch_1d
    const-string v0, "Need Pairing"

    .line 85
    goto :goto_41

    .line 81
    :pswitch_20
    const-string v0, "Need Activation"

    .line 82
    goto :goto_41

    .line 51
    :pswitch_23
    const-string v0, "General CAS error"

    .line 52
    goto :goto_41

    .line 78
    :pswitch_26
    const-string v0, "Decrypt error"

    .line 79
    goto :goto_41

    .line 75
    :pswitch_29
    const-string v0, "Not initialized"

    .line 76
    goto :goto_41

    .line 72
    :pswitch_2c
    const-string v0, "Tamper detected"

    .line 73
    goto :goto_41

    .line 69
    :pswitch_2f
    const-string v0, "Insufficient output protection"

    .line 70
    goto :goto_41

    .line 66
    :pswitch_32
    const-string v0, "Invalid CAS state"

    .line 67
    goto :goto_41

    .line 63
    :pswitch_35
    const-string v0, "Unsupported scheme or data format"

    .line 64
    goto :goto_41

    .line 60
    :pswitch_38
    const-string v0, "Session not opened"

    .line 61
    goto :goto_41

    .line 57
    :pswitch_3b
    const-string v0, "License expired"

    .line 58
    goto :goto_41

    .line 54
    :pswitch_3e
    const-string v0, "No license"

    .line 55
    nop

    .line 105
    :goto_41
    new-instance v1, Landroid/media/MediaCasStateException;

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s (err=%d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/media/MediaCasStateException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0    # "diagnosticInfo":Ljava/lang/String;
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_2f
        :pswitch_2c
        :pswitch_b
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public whitelist getDiagnosticInfo()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getErrorCode()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    return v0
.end method
