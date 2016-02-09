.class public Landroid/hardware/camera2/utils/CameraRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CameraRuntimeException.java"


# instance fields
.field private mCause:Ljava/lang/Throwable;

.field private mMessage:Ljava/lang/String;

.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "problem"    # I

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    .line 20
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    #@5
    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 25
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    #@5
    .line 26
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 30
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 31
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    #@5
    .line 32
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    #@7
    .line 33
    iput-object p3, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    #@9
    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 38
    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    #@5
    .line 39
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    #@7
    .line 36
    return-void
.end method


# virtual methods
.method public asChecked()Landroid/hardware/camera2/CameraAccessException;
    .locals 4

    #@0
    .prologue
    .line 49
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 50
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    #@a
    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    #@c
    iget-object v2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    #@e
    iget-object v3, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    #@10
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@13
    .line 59
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraAccessException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@1a
    .line 61
    return-object v0

    #@1b
    .line 51
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 52
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    #@21
    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    #@23
    iget-object v2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    #@25
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    #@28
    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_0

    #@29
    .line 53
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 54
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    #@2f
    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    #@31
    iget-object v2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    #@33
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/Throwable;)V

    #@36
    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_0

    #@37
    .line 56
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    #@39
    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    #@3b
    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    #@3e
    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_0
.end method

.method public final getReason()I
    .locals 1

    #@0
    .prologue
    .line 15
    iget v0, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    #@2
    return v0
.end method
