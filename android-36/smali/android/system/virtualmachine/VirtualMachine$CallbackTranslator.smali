.class Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;
.super Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackTranslator"
.end annotation


# instance fields
.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mOnDiedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mService:Landroid/system/virtualizationservice/IVirtualizationService;

.field final synthetic blacklist this$0:Landroid/system/virtualmachine/VirtualMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$Iw_HfCXZuKEl_75vEOlQSGI-IRU(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$onPayloadReady$2(Landroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PW29A6v05yoaNy3alkjVDvFKcRA(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V
    .registers 1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$new$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WuSdgb7ip0nsz_g4NasbC0SSz1E(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;ILandroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$onPayloadFinished$3(ILandroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$adRnD1Ra59nc_je1RvMd9APKSfQ(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;ILandroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$reportStopped$5(ILandroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gzwe8rWRfWZFvM8PX_jc3oGbP6o(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;ILjava/lang/String;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$onError$4(ILjava/lang/String;Landroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mSk0-f8yaC_mVKhQS3tkFvvbknE(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$onPayloadStarted$1(Landroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine;Landroid/system/virtualizationservice/IVirtualizationService;)V
    .registers 5
    .param p2, "service"    # Landroid/system/virtualizationservice/IVirtualizationService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2343
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-direct {p0}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;-><init>()V

    .line 2341
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mOnDiedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2344
    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mService:Landroid/system/virtualizationservice/IVirtualizationService;

    .line 2345
    new-instance p1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda0;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 2346
    invoke-interface {p2}, Landroid/system/virtualizationservice/IVirtualizationService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2347
    return-void
.end method

.method private blacklist getTranslatedError(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 2385
    packed-switch p1, :pswitch_data_c

    .line 2393
    const/4 v0, 0x0

    return v0

    .line 2391
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 2389
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 2387
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getTranslatedReason(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 2399
    packed-switch p1, :pswitch_data_28

    .line 2429
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2427
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 2425
    :pswitch_8
    const/16 v0, 0xf

    return v0

    .line 2423
    :pswitch_b
    const/16 v0, 0xe

    return v0

    .line 2421
    :pswitch_e
    const/16 v0, 0xd

    return v0

    .line 2419
    :pswitch_11
    const/16 v0, 0xc

    return v0

    .line 2417
    :pswitch_14
    const/16 v0, 0xb

    return v0

    .line 2415
    :pswitch_17
    const/16 v0, 0x8

    return v0

    .line 2413
    :pswitch_1a
    const/4 v0, 0x7

    return v0

    .line 2411
    :pswitch_1c
    const/4 v0, 0x6

    return v0

    .line 2409
    :pswitch_1e
    const/4 v0, 0x5

    return v0

    .line 2407
    :pswitch_20
    const/4 v0, 0x4

    return v0

    .line 2405
    :pswitch_22
    const/4 v0, 0x3

    return v0

    .line 2403
    :pswitch_24
    const/4 v0, 0x1

    return v0

    .line 2401
    :pswitch_26
    const/4 v0, 0x0

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_3
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
        :pswitch_17
        :pswitch_3
        :pswitch_3
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 2

    .line 2345
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->reportStopped(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$4(ILjava/lang/String;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 5
    .param p1, "translatedError"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/system/virtualmachine/VirtualMachineCallback;

    .line 2367
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p3, v0, p1, p2}, Landroid/system/virtualmachine/VirtualMachineCallback;->onError(Landroid/system/virtualmachine/VirtualMachine;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPayloadFinished$3(ILandroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 4
    .param p1, "exitCode"    # I
    .param p2, "cb"    # Landroid/system/virtualmachine/VirtualMachineCallback;

    .line 2361
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p2, v0, p1}, Landroid/system/virtualmachine/VirtualMachineCallback;->onPayloadFinished(Landroid/system/virtualmachine/VirtualMachine;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onPayloadReady$2(Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/system/virtualmachine/VirtualMachineCallback;

    .line 2356
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p1, v0}, Landroid/system/virtualmachine/VirtualMachineCallback;->onPayloadReady(Landroid/system/virtualmachine/VirtualMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPayloadStarted$1(Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/system/virtualmachine/VirtualMachineCallback;

    .line 2351
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p1, v0}, Landroid/system/virtualmachine/VirtualMachineCallback;->onPayloadStarted(Landroid/system/virtualmachine/VirtualMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$reportStopped$5(ILandroid/system/virtualmachine/VirtualMachineCallback;)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "cb"    # Landroid/system/virtualmachine/VirtualMachineCallback;

    .line 2379
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p2, v0, p1}, Landroid/system/virtualmachine/VirtualMachineCallback;->onStopped(Landroid/system/virtualmachine/VirtualMachine;I)V

    return-void
.end method

.method private blacklist reportStopped(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 2378
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mOnDiedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2379
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda5;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;I)V

    invoke-static {v0, v1}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    .line 2381
    :cond_14
    return-void
.end method


# virtual methods
.method public blacklist onDied(II)V
    .registers 7
    .param p1, "cid"    # I
    .param p2, "reason"    # I

    .line 2372
    invoke-direct {p0, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->getTranslatedReason(I)I

    move-result v0

    .line 2373
    .local v0, "translatedReason":I
    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->reportStopped(I)V

    .line 2374
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mService:Landroid/system/virtualizationservice/IVirtualizationService;

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualizationService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2375
    return-void
.end method

.method public blacklist onError(IILjava/lang/String;)V
    .registers 7
    .param p1, "cid"    # I
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 2366
    invoke-direct {p0, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->getTranslatedError(I)I

    move-result v0

    .line 2367
    .local v0, "translatedError":I
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v2, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p3}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda1;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;ILjava/lang/String;)V

    invoke-static {v1, v2}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    .line 2368
    return-void
.end method

.method public blacklist onPayloadFinished(II)V
    .registers 5
    .param p1, "cid"    # I
    .param p2, "exitCode"    # I

    .line 2361
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda3;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;I)V

    invoke-static {v0, v1}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    .line 2362
    return-void
.end method

.method public blacklist onPayloadReady(I)V
    .registers 4
    .param p1, "cid"    # I

    .line 2356
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda4;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V

    invoke-static {v0, v1}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    .line 2357
    return-void
.end method

.method public blacklist onPayloadStarted(I)V
    .registers 4
    .param p1, "cid"    # I

    .line 2351
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda2;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V

    invoke-static {v0, v1}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    .line 2352
    return-void
.end method
