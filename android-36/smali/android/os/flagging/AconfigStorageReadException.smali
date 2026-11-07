.class public Landroid/os/flagging/AconfigStorageReadException;
.super Ljava/lang/RuntimeException;
.source "AconfigStorageReadException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/flagging/AconfigStorageReadException$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_CANNOT_READ_STORAGE_FILE:I = 0x4

.field public static final whitelist ERROR_CONTAINER_NOT_FOUND:I = 0x3

.field public static final greylist ERROR_FILE_FINGERPRINT_MISMATCH:I = 0x5

.field public static final whitelist ERROR_GENERIC:I = 0x0

.field public static final whitelist ERROR_PACKAGE_NOT_FOUND:I = 0x2

.field public static final whitelist ERROR_STORAGE_SYSTEM_NOT_FOUND:I = 0x1


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    iput p1, p0, Landroid/os/flagging/AconfigStorageReadException;->mErrorCode:I

    .line 106
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 119
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    iput p1, p0, Landroid/os/flagging/AconfigStorageReadException;->mErrorCode:I

    .line 121
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/Throwable;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 131
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 132
    iput p1, p0, Landroid/os/flagging/AconfigStorageReadException;->mErrorCode:I

    .line 133
    return-void
.end method

.method private blacklist errorString()Ljava/lang/String;
    .registers 3

    .line 166
    iget v0, p0, Landroid/os/flagging/AconfigStorageReadException;->mErrorCode:I

    packed-switch v0, :pswitch_data_34

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/flagging/AconfigStorageReadException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_21
    const-string v0, "ERROR_FILE_FINGERPRINT_MISMATCH"

    return-object v0

    .line 176
    :pswitch_24
    const-string v0, "ERROR_CANNOT_READ_STORAGE_FILE"

    return-object v0

    .line 174
    :pswitch_27
    const-string v0, "ERROR_CONTAINER_NOT_FOUND"

    return-object v0

    .line 172
    :pswitch_2a
    const-string v0, "ERROR_PACKAGE_NOT_FOUND"

    return-object v0

    .line 170
    :pswitch_2d
    const-string v0, "ERROR_STORAGE_SYSTEM_NOT_FOUND"

    return-object v0

    .line 168
    :pswitch_30
    const-string v0, "ERROR_GENERIC"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/os/flagging/AconfigStorageReadException;->mErrorCode:I

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/os/flagging/AconfigStorageReadException;->errorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
