.class public Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;
.super Ljava/lang/Object;
.source "ExceptionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;
    }
.end annotation


# instance fields
.field private blacklist mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Throwable;I)V
    .registers 6
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "maxDepth"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;->mElements:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "count":I
    :goto_e
    if-eqz p1, :cond_23

    if-ge v0, p2, :cond_23

    .line 55
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;->mElements:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;

    invoke-direct {v2, p1}, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 59
    :cond_23
    return-void
.end method

.method public static blacklist fromByteArray([B)Ljava/lang/Exception;
    .registers 6
    .param p0, "bytes"    # [B

    .line 80
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 81
    return-object v0

    .line 83
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_33

    .line 84
    .local v1, "bs":Ljava/io/ByteArrayInputStream;
    :try_start_9
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_29

    .line 85
    .local v2, "os":Ljava/io/ObjectInputStream;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;

    .line 86
    .local v3, "info":Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;
    invoke-virtual {v3}, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;->toException()Ljava/lang/Exception;

    move-result-object v4
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1f

    .line 87
    :try_start_18
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_29

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_33

    .line 86
    return-object v4

    .line 83
    .end local v3    # "info":Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;
    :catchall_1f
    move-exception v3

    :try_start_20
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v4

    :try_start_25
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "bs":Ljava/io/ByteArrayInputStream;
    .end local p0    # "bytes":[B
    :goto_28
    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .end local v2    # "os":Ljava/io/ObjectInputStream;
    .restart local v1    # "bs":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "bytes":[B
    :catchall_29
    move-exception v2

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v3

    :try_start_2f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "bytes":[B
    :goto_32
    throw v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_33

    .line 87
    .end local v1    # "bs":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "bytes":[B
    :catch_33
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static blacklist toByteArray(Ljava/lang/Throwable;I)[B
    .registers 8
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "maxDepth"    # I

    .line 63
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 64
    return-object v0

    .line 67
    :cond_4
    :try_start_4
    new-instance v1, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;

    invoke-direct {v1, p0, p1}, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;-><init>(Ljava/lang/Throwable;I)V

    .line 68
    .local v1, "info":Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_35

    .line 69
    .local v2, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_e
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_2b

    .line 70
    .local v3, "os":Ljava/io/ObjectOutputStream;
    :try_start_13
    invoke-virtual {v3, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_21

    .line 72
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2b

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_35

    .line 71
    return-object v4

    .line 68
    :catchall_21
    move-exception v4

    :try_start_22
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v5

    :try_start_27
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "info":Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;
    .end local v2    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "t":Ljava/lang/Throwable;
    .end local p1    # "maxDepth":I
    :goto_2a
    throw v4
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    .restart local v1    # "info":Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;
    .restart local v2    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "t":Ljava/lang/Throwable;
    .restart local p1    # "maxDepth":I
    :catchall_2b
    move-exception v3

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception v4

    :try_start_31
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "t":Ljava/lang/Throwable;
    .end local p1    # "maxDepth":I
    :goto_34
    throw v3
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_35

    .line 73
    .end local v1    # "info":Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;
    .end local v2    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "t":Ljava/lang/Throwable;
    .restart local p1    # "maxDepth":I
    :catch_35
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method blacklist toException()Ljava/lang/Exception;
    .registers 7

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3c

    .line 96
    iget-object v2, p0, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;

    .line 97
    .local v2, "element":Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;->mExceptionClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .local v3, "tmp":Ljava/lang/Exception;
    iget-object v4, v2, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;->mStackTrace:[Ljava/lang/StackTraceElement;

    invoke-virtual {v3, v4}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3d

    .line 99
    move-object v0, v3

    .line 95
    .end local v2    # "element":Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo$ExceptionInfoElement;
    .end local v3    # "tmp":Ljava/lang/Exception;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 101
    .end local v1    # "i":I
    :cond_3c
    return-object v0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3d
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
