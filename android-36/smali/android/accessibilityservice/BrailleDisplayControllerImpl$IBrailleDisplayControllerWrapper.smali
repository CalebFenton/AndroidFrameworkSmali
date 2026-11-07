.class final Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
.super Landroid/accessibilityservice/IBrailleDisplayController$Stub;
.source "BrailleDisplayControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/BrailleDisplayControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IBrailleDisplayControllerWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$Ag9dc1qLQx9uKlcF4KIldNxPQUU(Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->lambda$onConnectionFailed$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uj3YIyOk3gOIrtFgSgeuoyv9NGM(Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;[B)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->lambda$onInput$2([B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zcvqIo7pB9pytNAJViofgy16POo(Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;[B)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->lambda$onConnected$0([B)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 221
    iput-object p1, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-direct {p0}, Landroid/accessibilityservice/IBrailleDisplayController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/accessibilityservice/BrailleDisplayControllerImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)V

    return-void
.end method

.method private synthetic blacklist lambda$onConnected$0([B)V
    .registers 3
    .param p1, "hidDescriptor"    # [B

    .line 232
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmCallback(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;->onConnected([B)V

    return-void
.end method

.method private synthetic blacklist lambda$onConnectionFailed$1(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 248
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmCallback(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;->onConnectionFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onInput$2([B)V
    .registers 3
    .param p1, "input"    # [B

    .line 266
    iget-object v0, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v0}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmCallback(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;->onInput([B)V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(Landroid/accessibilityservice/IBrailleDisplayConnection;[B)V
    .registers 8
    .param p1, "connection"    # Landroid/accessibilityservice/IBrailleDisplayConnection;
    .param p2, "hidDescriptor"    # [B

    .line 227
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 230
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmLock(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_2a

    .line 231
    :try_start_e
    iget-object v3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v3, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fputmBrailleDisplayConnection(Landroid/accessibilityservice/BrailleDisplayControllerImpl;Landroid/accessibilityservice/IBrailleDisplayConnection;)V

    .line 232
    iget-object v3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmCallbackExecutor(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 233
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_27

    .line 235
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 236
    nop

    .line 237
    return-void

    .line 233
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local v0    # "identity":J
    .end local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    .end local p1    # "connection":Landroid/accessibilityservice/IBrailleDisplayConnection;
    .end local p2    # "hidDescriptor":[B
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 235
    .restart local v0    # "identity":J
    .restart local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    .restart local p1    # "connection":Landroid/accessibilityservice/IBrailleDisplayConnection;
    .restart local p2    # "hidDescriptor":[B
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 236
    throw v2
.end method

.method public blacklist onConnectionFailed(I)V
    .registers 7
    .param p1, "errorCode"    # I

    .line 244
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 247
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmLock(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_25

    .line 248
    :try_start_e
    iget-object v3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmCallbackExecutor(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_22

    .line 251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    nop

    .line 253
    return-void

    .line 249
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local v0    # "identity":J
    .end local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    .end local p1    # "errorCode":I
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 251
    .restart local v0    # "identity":J
    .restart local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    .restart local p1    # "errorCode":I
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    throw v2
.end method

.method public blacklist onDisconnected()V
    .registers 7

    .line 279
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmLock(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_33

    .line 283
    :try_start_e
    iget-object v3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmCallbackExecutor(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v4}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmCallback(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/BrailleDisplayController$BrailleDisplayCallback;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 284
    iget-object v3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$mclearConnectionLocked(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)V

    .line 285
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_30

    .line 287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    nop

    .line 289
    return-void

    .line 285
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "identity":J
    .end local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 287
    .restart local v0    # "identity":J
    .restart local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw v2
.end method

.method public blacklist onInput([B)V
    .registers 7
    .param p1, "input"    # [B

    .line 260
    invoke-static {}, Landroid/accessibilityservice/BrailleDisplayController;->checkApiFlagIsEnabled()V

    .line 261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 263
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v2}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmLock(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_2d

    .line 265
    :try_start_e
    iget-object v3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmBrailleDisplayConnection(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Landroid/accessibilityservice/IBrailleDisplayConnection;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 266
    iget-object v3, p0, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;->this$0:Landroid/accessibilityservice/BrailleDisplayControllerImpl;

    invoke-static {v3}, Landroid/accessibilityservice/BrailleDisplayControllerImpl;->-$$Nest$fgetmCallbackExecutor(Landroid/accessibilityservice/BrailleDisplayControllerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1}, Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 268
    :cond_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_2a

    .line 270
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    nop

    .line 272
    return-void

    .line 268
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .end local v0    # "identity":J
    .end local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    .end local p1    # "input":[B
    :try_start_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 270
    .restart local v0    # "identity":J
    .restart local p0    # "this":Landroid/accessibilityservice/BrailleDisplayControllerImpl$IBrailleDisplayControllerWrapper;
    .restart local p1    # "input":[B
    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    throw v2
.end method
