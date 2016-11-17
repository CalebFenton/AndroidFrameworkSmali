.class public Landroid/hardware/camera2/legacy/LegacyExceptionUtils;
.super Ljava/lang/Object;
.source "LegacyExceptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I

.field public static final BAD_VALUE:I

.field public static final DEAD_OBJECT:I

.field public static final INVALID_OPERATION:I

.field public static final NO_ERROR:I = 0x0

.field public static final PERMISSION_DENIED:I

.field private static final TAG:Ljava/lang/String; = "LegacyExceptionUtils"

.field public static final TIMED_OUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    sget v0, Landroid/system/OsConstants;->EPERM:I

    #@2
    neg-int v0, v0

    #@3
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    #@5
    .line 33
    sget v0, Landroid/system/OsConstants;->EEXIST:I

    #@7
    neg-int v0, v0

    #@8
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    #@a
    .line 34
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    #@c
    neg-int v0, v0

    #@d
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@f
    .line 35
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    #@11
    neg-int v0, v0

    #@12
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    #@14
    .line 36
    sget v0, Landroid/system/OsConstants;->EPIPE:I

    #@16
    neg-int v0, v0

    #@17
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    #@19
    .line 37
    sget v0, Landroid/system/OsConstants;->ETIMEDOUT:I

    #@1b
    neg-int v0, v0

    #@1c
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    #@1e
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0
.end method

.method public static throwOnError(I)I
    .locals 3
    .param p0, "errorFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    if-nez p0, :cond_0

    #@3
    .line 71
    return v0

    #@4
    .line 72
    :cond_0
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    #@6
    neg-int v0, v0

    #@7
    if-ne p0, v0, :cond_1

    #@9
    .line 73
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    #@b
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    #@e
    throw v0

    #@f
    .line 76
    :cond_1
    if-gez p0, :cond_2

    #@11
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Unknown error "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 79
    :cond_2
    return p0
.end method

.method public static throwOnServiceError(I)V
    .locals 4
    .param p0, "errorFlag"    # I

    #@0
    .prologue
    .line 88
    const/16 v0, 0xa

    #@2
    .line 91
    .local v0, "errorCode":I
    if-ltz p0, :cond_0

    #@4
    .line 92
    return-void

    #@5
    .line 93
    :cond_0
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    #@7
    if-ne p0, v2, :cond_1

    #@9
    .line 94
    const/4 v0, 0x1

    #@a
    .line 95
    const-string/jumbo v1, "Lacking privileges to access camera service"

    #@d
    .line 132
    .local v1, "errorMsg":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/os/ServiceSpecificException;

    #@f
    invoke-direct {v2, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 96
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_1
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    #@15
    if-ne p0, v2, :cond_2

    #@17
    .line 99
    return-void

    #@18
    .line 100
    :cond_2
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    #@1a
    if-ne p0, v2, :cond_3

    #@1c
    .line 101
    const/4 v0, 0x3

    #@1d
    .line 102
    const-string/jumbo v1, "Bad argument passed to camera service"

    #@20
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@21
    .line 103
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_3
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    #@23
    if-ne p0, v2, :cond_4

    #@25
    .line 104
    const/4 v0, 0x4

    #@26
    .line 105
    const-string/jumbo v1, "Camera service not available"

    #@29
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 106
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_4
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    #@2c
    if-ne p0, v2, :cond_5

    #@2e
    .line 107
    const/16 v0, 0xa

    #@30
    .line 108
    const-string/jumbo v1, "Operation timed out in camera service"

    #@33
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@34
    .line 109
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_5
    sget v2, Landroid/system/OsConstants;->EACCES:I

    #@36
    neg-int v2, v2

    #@37
    if-ne p0, v2, :cond_6

    #@39
    .line 110
    const/4 v0, 0x6

    #@3a
    .line 111
    const-string/jumbo v1, "Camera disabled by policy"

    #@3d
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@3e
    .line 112
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_6
    sget v2, Landroid/system/OsConstants;->EBUSY:I

    #@40
    neg-int v2, v2

    #@41
    if-ne p0, v2, :cond_7

    #@43
    .line 113
    const/4 v0, 0x7

    #@44
    .line 114
    const-string/jumbo v1, "Camera already in use"

    #@47
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@48
    .line 115
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_7
    sget v2, Landroid/system/OsConstants;->EUSERS:I

    #@4a
    neg-int v2, v2

    #@4b
    if-ne p0, v2, :cond_8

    #@4d
    .line 116
    const/16 v0, 0x8

    #@4f
    .line 117
    const-string/jumbo v1, "Maximum number of cameras in use"

    #@52
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@53
    .line 118
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_8
    sget v2, Landroid/system/OsConstants;->ENODEV:I

    #@55
    neg-int v2, v2

    #@56
    if-ne p0, v2, :cond_9

    #@58
    .line 119
    const/4 v0, 0x4

    #@59
    .line 120
    const-string/jumbo v1, "Camera device not available"

    #@5c
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@5d
    .line 121
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_9
    sget v2, Landroid/system/OsConstants;->EOPNOTSUPP:I

    #@5f
    neg-int v2, v2

    #@60
    if-ne p0, v2, :cond_a

    #@62
    .line 122
    const/16 v0, 0x9

    #@64
    .line 123
    const-string/jumbo v1, "Deprecated camera HAL does not support this"

    #@67
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@68
    .line 124
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_a
    sget v2, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    #@6a
    if-ne p0, v2, :cond_b

    #@6c
    .line 125
    const/16 v0, 0xa

    #@6e
    .line 126
    const-string/jumbo v1, "Illegal state encountered in camera service."

    #@71
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0

    #@72
    .line 128
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_b
    const/16 v0, 0xa

    #@74
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v3, "Unknown camera device error "

    #@7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0
.end method
