.class final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;,
        Lcom/android/server/hdmi/HdmiCecController$1;,
        Lcom/android/server/hdmi/HdmiCecController$2;
    }
.end annotation


# static fields
.field private static final EMPTY_BODY:[B

.field private static final NUM_LOGICAL_ADDRESS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HdmiCecController"


# instance fields
.field private mControlHandler:Landroid/os/Handler;

.field private mIoHandler:Landroid/os/Handler;

.field private final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNativePtr:J

.field private final mRemoteDeviceAddressPredicate:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSystemAudioAddressPredicate:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiCecController;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@2
    return-wide v0
.end method

.method static synthetic -wrap0(Lcom/android/server/hdmi/HdmiCecController;I)Z
    .locals 1
    .param p1, "address"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/hdmi/HdmiCecController;III)Z
    .locals 1
    .param p1, "sourceAddress"    # I
    .param p2, "destinationAddress"    # I
    .param p3, "retryCount"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(I[B)[B
    .locals 1
    .param p0, "opcode"    # I
    .param p1, "params"    # [B

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(JII[B)I
    .locals 2
    .param p0, "controllerPtr"    # J
    .param p2, "srcAddress"    # I
    .param p3, "dstAddress"    # I
    .param p4, "body"    # [B

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 0
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "sourceAddress"    # I
    .param p2, "candidates"    # Ljava/util/List;
    .param p3, "retryCount"    # I
    .param p4, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p5, "allocated"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@2
    sput-object v0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    #@4
    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    #@8
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Lcom/android/internal/util/Predicate;

    #@a
    .line 81
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$2;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    #@f
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Lcom/android/internal/util/Predicate;

    #@11
    .line 102
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@18
    .line 106
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1a
    .line 105
    return-void
.end method

.method private assertRunOnIoThread()V
    .locals 2

    #@0
    .prologue
    .line 484
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v1, "Should run on io thread."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 483
    :cond_0
    return-void
.end method

.method private assertRunOnServiceThread()V
    .locals 2

    #@0
    .prologue
    .line 490
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v1, "Should run on service thread."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 489
    :cond_0
    return-void
.end method

.method private static buildBody(I[B)[B
    .locals 4
    .param p0, "opcode"    # I
    .param p1, "params"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 220
    array-length v1, p1

    #@2
    add-int/lit8 v1, v1, 0x1

    #@4
    new-array v0, v1, [B

    #@6
    .line 221
    .local v0, "body":[B
    int-to-byte v1, p0

    #@7
    aput-byte v1, v0, v3

    #@9
    .line 222
    array-length v1, p1

    #@a
    const/4 v2, 0x1

    #@b
    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 223
    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .locals 6
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    .line 120
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    .line 121
    .local v0, "controller":Lcom/android/server/hdmi/HdmiCecController;
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@c
    move-result-object v1

    #@d
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J

    #@10
    move-result-wide v2

    #@11
    .line 122
    .local v2, "nativePtr":J
    const-wide/16 v4, 0x0

    #@13
    cmp-long v1, v2, v4

    #@15
    if-nez v1, :cond_0

    #@17
    .line 123
    const/4 v0, 0x0

    #@18
    .line 124
    .local v0, "controller":Lcom/android/server/hdmi/HdmiCecController;
    const/4 v1, 0x0

    #@19
    return-object v1

    #@1a
    .line 127
    .local v0, "controller":Lcom/android/server/hdmi/HdmiCecController;
    :cond_0
    invoke-direct {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->init(J)V

    #@1d
    .line 128
    return-object v0
.end method

.method private handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 12
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x10

    #@2
    const/16 v9, 0xf

    #@4
    const/4 v11, 0x1

    #@5
    const/4 v8, 0x3

    #@6
    .line 172
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    #@9
    .line 173
    move v6, p2

    #@a
    .line 176
    .local v6, "startAddress":I
    if-ne p2, v9, :cond_0

    #@c
    .line 177
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_0

    #@f
    .line 178
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    #@12
    move-result v7

    #@13
    if-ne p1, v7, :cond_2

    #@15
    .line 179
    move v6, v3

    #@16
    .line 185
    .end local v3    # "i":I
    :cond_0
    const/16 v5, 0xf

    #@18
    .line 187
    .local v5, "logicalAddress":I
    const/4 v3, 0x0

    #@19
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v10, :cond_4

    #@1b
    .line 188
    add-int v7, v6, v3

    #@1d
    rem-int/lit8 v1, v7, 0x10

    #@1f
    .line 189
    .local v1, "curAddress":I
    if-eq v1, v9, :cond_6

    #@21
    .line 190
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    #@24
    move-result v7

    #@25
    if-ne p1, v7, :cond_6

    #@27
    .line 191
    const/4 v2, 0x0

    #@28
    .line 192
    .local v2, "failedPollingCount":I
    const/4 v4, 0x0

    #@29
    .local v4, "j":I
    :goto_2
    if-ge v4, v8, :cond_3

    #@2b
    .line 193
    invoke-direct {p0, v1, v1, v11}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    #@2e
    move-result v7

    #@2f
    if-nez v7, :cond_1

    #@31
    .line 194
    add-int/lit8 v2, v2, 0x1

    #@33
    .line 192
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_2

    #@36
    .line 177
    .end local v1    # "curAddress":I
    .end local v2    # "failedPollingCount":I
    .end local v4    # "j":I
    .end local v5    # "logicalAddress":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_0

    #@39
    .line 199
    .restart local v1    # "curAddress":I
    .restart local v2    # "failedPollingCount":I
    .restart local v4    # "j":I
    .restart local v5    # "logicalAddress":I
    :cond_3
    mul-int/lit8 v7, v2, 0x2

    #@3b
    if-le v7, v8, :cond_6

    #@3d
    .line 200
    move v5, v1

    #@3e
    .line 206
    .end local v1    # "curAddress":I
    .end local v2    # "failedPollingCount":I
    .end local v4    # "j":I
    :cond_4
    move v0, v5

    #@3f
    .line 207
    .local v0, "assignedAddress":I
    const-string/jumbo v7, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    #@42
    new-array v8, v8, [Ljava/lang/Object;

    #@44
    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v9

    #@48
    const/4 v10, 0x0

    #@49
    aput-object v9, v8, v10

    #@4b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v9

    #@4f
    aput-object v9, v8, v11

    #@51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v9

    #@55
    const/4 v10, 0x2

    #@56
    aput-object v9, v8, v10

    #@58
    .line 207
    invoke-static {v7, v8}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@5b
    .line 209
    if-eqz p3, :cond_5

    #@5d
    .line 210
    new-instance v7, Lcom/android/server/hdmi/HdmiCecController$4;

    #@5f
    invoke-direct {v7, p0, p3, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V

    #@62
    invoke-direct {p0, v7}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@65
    .line 171
    :cond_5
    return-void

    #@66
    .line 187
    .end local v0    # "assignedAddress":I
    .restart local v1    # "curAddress":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@68
    goto :goto_1
.end method

.method private handleHotplug(IZ)V
    .locals 4
    .param p1, "port"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 613
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 614
    const-string/jumbo v0, "Hotplug event:[port:%d, connected:%b]"

    #@6
    const/4 v1, 0x2

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x0

    #@e
    aput-object v2, v1, v3

    #@10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x1

    #@15
    aput-object v2, v1, v3

    #@17
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1a
    .line 615
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@1c
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onHotplug(IZ)V

    #@1f
    .line 612
    return-void
.end method

.method private handleIncomingCecCommand(II[B)V
    .locals 3
    .param p1, "srcAddress"    # I
    .param p2, "dstAddress"    # I
    .param p3, "body"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 602
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 603
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    #@6
    move-result-object v0

    #@7
    .line 604
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "[R]:"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x0

    #@1c
    new-array v2, v2, [Ljava/lang/Object;

    #@1e
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@21
    .line 605
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@24
    .line 601
    return-void
.end method

.method private init(J)V
    .locals 3
    .param p1, "nativePtr"    # J

    #@0
    .prologue
    .line 132
    new-instance v0, Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@4
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@b
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    #@d
    .line 133
    new-instance v0, Landroid/os/Handler;

    #@f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@11
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@18
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    #@1a
    .line 134
    iput-wide p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@1c
    .line 131
    return-void
.end method

.method private isAcceptableAddress(I)Z
    .locals 1
    .param p1, "address"    # I

    #@0
    .prologue
    .line 521
    const/16 v0, 0xf

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 522
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 524
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private isAllocatedLocalDeviceAddress(I)Z
    .locals 2
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 426
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 427
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@14
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAddressOf(I)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 428
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 431
    :cond_1
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method private static native nativeAddLogicalAddress(JI)I
.end method

.method private static native nativeClearLogicalAddress(J)V
.end method

.method private static native nativeGetPhysicalAddress(J)I
.end method

.method private static native nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;
.end method

.method private static native nativeGetVendorId(J)I
.end method

.method private static native nativeGetVersion(J)I
.end method

.method private static native nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeIsConnected(JI)Z
.end method

.method private static native nativeSendCecCommand(JII[B)I
.end method

.method private static native nativeSetAudioReturnChannel(JIZ)V
.end method

.method private static native nativeSetOption(JII)V
.end method

.method private onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 529
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 530
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@6
    move-result v0

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->isAcceptableAddress(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 531
    return-void

    #@16
    .line 534
    :cond_0
    const/4 v0, 0x0

    #@17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    #@1a
    .line 528
    return-void
.end method

.method private pickPollCandidates(I)Ljava/util/List;
    .locals 6
    .param p1, "pickStrategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 389
    and-int/lit8 v4, p1, 0x3

    #@2
    .line 390
    .local v4, "strategy":I
    const/4 v2, 0x0

    #@3
    .line 391
    .local v2, "pickPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Ljava/lang/Integer;>;"
    packed-switch v4, :pswitch_data_0

    #@6
    .line 397
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Lcom/android/internal/util/Predicate;

    #@8
    .line 401
    .local v2, "pickPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Ljava/lang/Integer;>;"
    :goto_0
    const/high16 v5, 0x30000

    #@a
    and-int v1, p1, v5

    #@c
    .line 402
    .local v1, "iterationStrategy":I
    new-instance v3, Ljava/util/LinkedList;

    #@e
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    #@11
    .line 403
    .local v3, "pollingCandidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    packed-switch v1, :pswitch_data_1

    #@14
    .line 413
    const/16 v0, 0xe

    #@16
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    #@18
    .line 414
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v5

    #@1c
    invoke-interface {v2, v5}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@29
    .line 413
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_1

    #@2c
    .line 393
    .end local v0    # "i":I
    .end local v1    # "iterationStrategy":I
    .end local v3    # "pollingCandidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local v2, "pickPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Ljava/lang/Integer;>;"
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Lcom/android/internal/util/Predicate;

    #@2e
    .local v2, "pickPredicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Ljava/lang/Integer;>;"
    goto :goto_0

    #@2f
    .line 405
    .restart local v1    # "iterationStrategy":I
    .restart local v3    # "pollingCandidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :pswitch_1
    const/4 v0, 0x0

    #@30
    .restart local v0    # "i":I
    :goto_2
    const/16 v5, 0xe

    #@32
    if-gt v0, v5, :cond_2

    #@34
    .line 406
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v5

    #@38
    invoke-interface {v2, v5}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_1

    #@3e
    .line 407
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@45
    .line 405
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_2

    #@48
    .line 420
    :cond_2
    return-object v3

    #@49
    .line 391
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    #@50
    .line 403
    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_1
    .end packed-switch
.end method

.method private runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .locals 8
    .param p1, "sourceAddress"    # I
    .param p3, "retryCount"    # I
    .param p4, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "allocated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    #@1
    .line 438
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@4
    .line 439
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 440
    if-eqz p4, :cond_0

    #@c
    .line 441
    const-string/jumbo v0, "[P]:AllocatedAddress=%s"

    #@f
    const/4 v1, 0x1

    #@10
    new-array v1, v1, [Ljava/lang/Object;

    #@12
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    aput-object v2, v1, v4

    #@18
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1b
    .line 442
    invoke-interface {p4, p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    #@1e
    .line 444
    :cond_0
    return-void

    #@1f
    .line 447
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/Integer;

    #@25
    .line 450
    .local v3, "candidate":Ljava/lang/Integer;
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$5;

    #@27
    move-object v1, p0

    #@28
    move v2, p1

    #@29
    move v4, p3

    #@2a
    move-object v5, p5

    #@2b
    move-object v6, p2

    #@2c
    move-object v7, p4

    #@2d
    invoke-direct/range {v0 .. v7}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V

    #@30
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    #@33
    .line 437
    return-void
.end method

.method private runOnIoThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 498
    return-void
.end method

.method private runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 502
    return-void
.end method

.method private sendPollMessage(III)Z
    .locals 5
    .param p1, "sourceAddress"    # I
    .param p2, "destinationAddress"    # I
    .param p3, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 469
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    #@4
    .line 470
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    #@7
    .line 475
    iget-wide v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@9
    sget-object v1, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    #@b
    invoke-static {v2, v3, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeSendCecCommand(JII[B)I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 477
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 470
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 480
    :cond_1
    return v4
.end method


# virtual methods
.method addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 140
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@8
    .line 138
    return-void
.end method

.method addLogicalAddress(I)I
    .locals 2
    .param p1, "newLogicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 255
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 256
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@b
    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeAddLogicalAddress(JI)I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 258
    :cond_0
    const/4 v0, -0x1

    #@11
    return v0
.end method

.method allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 161
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$3;

    #@5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    #@b
    .line 158
    return-void
.end method

.method clearLocalDevices()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 279
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@8
    .line 277
    return-void
.end method

.method clearLogicalAddress()V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 270
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 271
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@14
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearAddress()V

    #@17
    .line 270
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 273
    :cond_0
    iget-wide v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@1c
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->nativeClearLogicalAddress(J)V

    #@1f
    .line 268
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 619
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "HdmiCecLocalDevice #"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, ":"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@27
    .line 621
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2a
    .line 622
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@32
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@35
    .line 623
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@38
    .line 619
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 618
    :cond_0
    return-void
.end method

.method flush(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 509
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$6;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    #@b
    .line 507
    return-void
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 1
    .param p1, "deviceType"    # I

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@8
    return-object v0
.end method

.method getLocalDeviceList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 385
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLocalDevices:Landroid/util/SparseArray;

    #@5
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method getPhysicalAddress()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 293
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@5
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPhysicalAddress(J)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 2

    #@0
    .prologue
    .line 228
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getVendorId()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 315
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@5
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVendorId(J)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method getVersion()I
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 304
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@5
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->nativeGetVersion(J)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method isConnected(I)Z
    .locals 2
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 352
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@5
    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController;->nativeIsConnected(JI)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    const/16 v3, 0xf

    #@2
    .line 539
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@5
    .line 541
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    #@8
    move-result v2

    #@9
    .line 542
    .local v2, "src":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@c
    move-result v0

    #@d
    .line 543
    .local v0, "dest":I
    if-eq v2, v3, :cond_0

    #@f
    if-ne v0, v3, :cond_1

    #@11
    .line 546
    :cond_0
    return-void

    #@12
    .line 548
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@15
    move-result v1

    #@16
    .line 549
    .local v1, "originalOpcode":I
    if-nez v1, :cond_2

    #@18
    .line 550
    return-void

    #@19
    .line 553
    :cond_2
    invoke-static {v2, v0, v1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    #@1c
    move-result-object v3

    #@1d
    .line 552
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@20
    .line 538
    return-void
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .locals 6
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 372
    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->pickPollCandidates(I)Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 373
    .local v2, "pollingCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@9
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@c
    .local v5, "allocated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, p0

    #@d
    move v1, p2

    #@e
    move v3, p4

    #@f
    move-object v4, p1

    #@10
    .line 374
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    #@13
    .line 368
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 559
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@7
    .line 557
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 1
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 566
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$7;

    #@5
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    #@b
    .line 564
    return-void
.end method

.method setAudioReturnChannel(IZ)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 340
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@5
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetAudioReturnChannel(JIZ)V

    #@8
    .line 338
    return-void
.end method

.method setOption(II)V
    .locals 4
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    #@3
    .line 327
    const-string/jumbo v0, "setOption: [flag:%d, value:%d]"

    #@6
    const/4 v1, 0x2

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x0

    #@e
    aput-object v2, v1, v3

    #@10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x1

    #@15
    aput-object v2, v1, v3

    #@17
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1a
    .line 328
    iget-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativePtr:J

    #@1c
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->nativeSetOption(JII)V

    #@1f
    .line 325
    return-void
.end method
