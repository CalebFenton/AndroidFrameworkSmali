.class public final Landroid/telephony/ims/ImsException;
.super Ljava/lang/Exception;
.source "ImsException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsException$ImsErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CODE_ERROR_INVALID_SUBSCRIPTION:I = 0x3

.field public static final whitelist CODE_ERROR_SERVICE_UNAVAILABLE:I = 0x1

.field public static final whitelist CODE_ERROR_UNSPECIFIED:I = 0x0

.field public static final whitelist CODE_ERROR_UNSUPPORTED_OPERATION:I = 0x2


# instance fields
.field private blacklist mCode:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 86
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/telephony/ims/ImsException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    iput v0, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 96
    invoke-static {p1, p2}, Landroid/telephony/ims/ImsException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 97
    iput p2, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 110
    invoke-static {p1, p2}, Landroid/telephony/ims/ImsException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 111
    iput p2, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 112
    return-void
.end method

.method private static blacklist getMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "code"    # I

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " (code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 130
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getCode()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/telephony/ims/ImsException;->mCode:I

    return v0
.end method
