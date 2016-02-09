.class public Landroid/hardware/camera2/utils/CameraBinderDecorator;
.super Ljava/lang/Object;
.source "CameraBinderDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I = -0x11

.field public static final BAD_VALUE:I = -0x16

.field public static final DEAD_OBJECT:I = -0x20

.field public static final EACCES:I = -0xd

.field public static final EBUSY:I = -0x10

.field public static final ENODEV:I = -0x13

.field public static final EOPNOTSUPP:I = -0x5f

.field public static final EUSERS:I = -0x57

.field public static final INVALID_OPERATION:I = -0x26

.field public static final NO_ERROR:I = 0x0

.field public static final PERMISSION_DENIED:I = -0x1

.field public static final TIMED_OUT:I = -0x6e


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 166
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;-><init>()V

    #@5
    invoke-static {p0, v0}, Landroid/hardware/camera2/utils/Decorator;->newInstance(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static throwOnError(I)V
    .locals 6
    .param p0, "errorFlag"    # I

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x3

    #@4
    .line 104
    sparse-switch p0, :sswitch_data_0

    #@7
    .line 140
    if-gez p0, :cond_0

    #@9
    .line 141
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@b
    .line 142
    const-string/jumbo v1, "Unknown camera device error %d"

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v3

    #@14
    aput-object v3, v2, v5

    #@16
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 141
    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 106
    :sswitch_0
    return-void

    #@1f
    .line 108
    :sswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    #@21
    const-string/jumbo v1, "Lacking privileges to access camera service"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 112
    :sswitch_2
    return-void

    #@29
    .line 114
    :sswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v1, "Bad argument passed to camera service"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 116
    :sswitch_4
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@34
    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    #@37
    throw v0

    #@38
    .line 118
    :sswitch_5
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@3a
    .line 119
    const-string/jumbo v1, "Operation timed out in camera service"

    #@3d
    .line 118
    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    #@40
    throw v0

    #@41
    .line 121
    :sswitch_6
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@43
    invoke-direct {v0, v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    #@46
    throw v0

    #@47
    .line 123
    :sswitch_7
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@49
    const/4 v1, 0x4

    #@4a
    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    #@4d
    throw v0

    #@4e
    .line 125
    :sswitch_8
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@50
    const/4 v1, 0x5

    #@51
    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    #@54
    throw v0

    #@55
    .line 127
    :sswitch_9
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@57
    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    #@5a
    throw v0

    #@5b
    .line 129
    :sswitch_a
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@5d
    const/16 v1, 0x3e8

    #@5f
    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    #@62
    throw v0

    #@63
    .line 131
    :sswitch_b
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@65
    .line 132
    const-string/jumbo v1, "Illegal state encountered in camera service."

    #@68
    .line 131
    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    #@6b
    throw v0

    #@6c
    .line 103
    :cond_0
    return-void

    #@6d
    .line 104
    nop

    #@6e
    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_5
        -0x5f -> :sswitch_a
        -0x57 -> :sswitch_8
        -0x26 -> :sswitch_b
        -0x20 -> :sswitch_4
        -0x16 -> :sswitch_3
        -0x13 -> :sswitch_9
        -0x11 -> :sswitch_2
        -0x10 -> :sswitch_7
        -0xd -> :sswitch_6
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
