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
.field private static final TAG:Ljava/lang/String; = "LegacyExceptionUtils"


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
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
    .line 59
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 68
    if-gez p0, :cond_0

    #@6
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unknown error "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 61
    :sswitch_0
    return v0

    #@21
    .line 64
    :sswitch_1
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    #@23
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    #@26
    throw v0

    #@27
    .line 71
    :cond_0
    return p0

    #@28
    .line 59
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
