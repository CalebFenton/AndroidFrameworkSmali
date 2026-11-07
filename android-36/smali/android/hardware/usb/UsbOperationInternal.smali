.class public final Landroid/hardware/usb/UsbOperationInternal;
.super Landroid/hardware/usb/IUsbOperationInternal$Stub;
.source "UsbOperationInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbOperationInternal$UsbOperationStatus;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UsbPortStatus"

.field public static final blacklist USB_OPERATION_ERROR_INTERNAL:I = 0x1

.field public static final blacklist USB_OPERATION_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final blacklist USB_OPERATION_ERROR_PORT_MISMATCH:I = 0x3

.field public static final blacklist USB_OPERATION_SUCCESS:I = 0x0

.field private static final blacklist USB_OPERATION_TIMEOUT_MSECS:I = 0x1388


# instance fields
.field private blacklist mAsynchronous:Z

.field private blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mId:Ljava/lang/String;

.field final blacklist mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mOperationComplete:Z

.field private final blacklist mOperationID:I

.field final blacklist mOperationWait:Ljava/util/concurrent/locks/Condition;

.field private blacklist mResult:I

.field private blacklist mStatus:I


# direct methods
.method public static synthetic blacklist $r8$lambda$sqqNA1WIsmY_xWHIksO1RwF0rm4(Landroid/hardware/usb/UsbOperationInternal;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/usb/UsbOperationInternal;->lambda$onOperationComplete$0()V

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "operationID"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Landroid/hardware/usb/IUsbOperationInternal$Stub;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    .line 48
    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    .line 98
    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    .line 99
    iput-object p2, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "operationID"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p4, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/hardware/usb/IUsbOperationInternal$Stub;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    .line 48
    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    .line 90
    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    .line 91
    iput-object p2, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Landroid/hardware/usb/UsbOperationInternal;->mExecutor:Ljava/util/concurrent/Executor;

    .line 93
    iput-object p4, p0, Landroid/hardware/usb/UsbOperationInternal;->mConsumer:Ljava/util/function/Consumer;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    .line 95
    return-void
.end method

.method private synthetic blacklist lambda$onOperationComplete$0()V
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mConsumer:Ljava/util/function/Consumer;

    iget v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist getStatus()I
    .registers 2

    .line 165
    iget-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method public blacklist onOperationComplete(I)V
    .registers 6
    .param p1, "status"    # I

    .line 108
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    .line 111
    iput p1, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    .line 112
    const-string v1, "UsbPortStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-boolean v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mAsynchronous:Z

    if-eqz v1, :cond_63

    .line 114
    iget v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mStatus:I

    packed-switch v1, :pswitch_data_76

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    goto :goto_58

    .line 125
    :pswitch_49
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 126
    goto :goto_58

    .line 122
    :pswitch_4d
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 123
    goto :goto_58

    .line 119
    :pswitch_51
    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 120
    goto :goto_58

    .line 116
    :pswitch_54
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mResult:I

    .line 117
    nop

    .line 130
    :goto_58
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/usb/UsbOperationInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/usb/UsbOperationInternal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/usb/UsbOperationInternal;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_68

    .line 132
    :cond_63
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_68
    .catchall {:try_start_6 .. :try_end_68} :catchall_6f

    .line 135
    :goto_68
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    nop

    .line 137
    return-void

    .line 135
    :catchall_6f
    move-exception v0

    iget-object v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    throw v0

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
    .end packed-switch
.end method

.method public blacklist waitForOperationComplete()V
    .registers 12

    .line 143
    const-string v0, " opID:"

    const-string v1, "Port:"

    const-string v2, "UsbPortStatus"

    iget-object v3, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 146
    .local v3, "now":J
    const-wide/16 v5, 0x1388

    add-long/2addr v5, v3

    .line 149
    .local v5, "deadline":J
    :cond_12
    iget-object v7, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationWait:Ljava/util/concurrent/locks/Condition;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v5, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 151
    iget-boolean v7, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    if-nez v7, :cond_2b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-ltz v7, :cond_12

    .line 152
    :cond_2b
    iget-boolean v7, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationComplete:Z

    if-nez v7, :cond_61

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " operationComplete not received in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "msecs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_61} :catch_6a
    .catchall {:try_start_b .. :try_end_61} :catchall_68

    .line 160
    .end local v3    # "now":J
    .end local v5    # "deadline":J
    :cond_61
    nop

    :goto_62
    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    goto :goto_93

    .line 160
    :catchall_68
    move-exception v0

    goto :goto_94

    .line 157
    :catch_6a
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_6b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/hardware/usb/UsbOperationInternal;->mId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mOperationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " operationComplete interrupted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_6b .. :try_end_91} :catchall_68

    .line 160
    nop

    .end local v3    # "e":Ljava/lang/InterruptedException;
    goto :goto_62

    .line 162
    :goto_93
    return-void

    .line 160
    :goto_94
    iget-object v1, p0, Landroid/hardware/usb/UsbOperationInternal;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    throw v0
.end method
