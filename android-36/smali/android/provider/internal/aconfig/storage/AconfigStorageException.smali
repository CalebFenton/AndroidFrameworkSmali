.class public Landroid/provider/internal/aconfig/storage/AconfigStorageException;
.super Ljava/lang/RuntimeException;
.source "AconfigStorageException.java"


# static fields
.field public static final blacklist ERROR_CANNOT_READ_STORAGE_FILE:I = 0x4

.field public static final blacklist ERROR_CONTAINER_NOT_FOUND:I = 0x3

.field public static final blacklist ERROR_FILE_FINGERPRINT_MISMATCH:I = 0x5

.field public static final blacklist ERROR_GENERIC:I = 0x0

.field public static final blacklist ERROR_PACKAGE_NOT_FOUND:I = 0x2

.field public static final blacklist ERROR_STORAGE_SYSTEM_NOT_FOUND:I = 0x1


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    iput p1, p0, Landroid/provider/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 90
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    iput p1, p0, Landroid/provider/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    .line 67
    return-void
.end method

.method private blacklist errorString()Ljava/lang/String;
    .registers 3

    .line 120
    iget v0, p0, Landroid/provider/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    packed-switch v0, :pswitch_data_34

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Unknown error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_21
    const-string v0, "ERROR_FILE_FINGERPRINT_MISMATCH"

    return-object v0

    .line 130
    :pswitch_24
    const-string v0, "ERROR_CANNOT_READ_STORAGE_FILE"

    return-object v0

    .line 128
    :pswitch_27
    const-string v0, "ERROR_CONTAINER_NOT_FOUND"

    return-object v0

    .line 126
    :pswitch_2a
    const-string v0, "ERROR_PACKAGE_NOT_FOUND"

    return-object v0

    .line 124
    :pswitch_2d
    const-string v0, "ERROR_STORAGE_SYSTEM_NOT_FOUND"

    return-object v0

    .line 122
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
.method public blacklist getErrorCode()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/provider/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/provider/internal/aconfig/storage/AconfigStorageException;->errorString()Ljava/lang/String;

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
