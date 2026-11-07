.class final Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;
.super Landroid/service/displayhash/IDisplayHashingService$Stub;
.source "DisplayHashingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/displayhash/DisplayHashingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayHashingServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/displayhash/DisplayHashingService;


# direct methods
.method public static synthetic blacklist $r8$lambda$NV6g_6QNBhFMehF0NaRzYbUgOGU(Landroid/service/displayhash/DisplayHashingService;[BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/service/displayhash/DisplayHashingService;->-$$Nest$mverifyDisplayHash(Landroid/service/displayhash/DisplayHashingService;[BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_iuN6BGbI22m542jCqGOC_3SVAM(Landroid/service/displayhash/DisplayHashingService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/displayhash/DisplayHashingService;->-$$Nest$mgetDisplayHashAlgorithms(Landroid/service/displayhash/DisplayHashingService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hoWVx7Snpmn69XmSOHKJ4jAG2kc(Landroid/service/displayhash/DisplayHashingService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/displayhash/DisplayHashingService;->-$$Nest$mgetDurationBetweenRequestsMillis(Landroid/service/displayhash/DisplayHashingService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/displayhash/DisplayHashingService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->this$0:Landroid/service/displayhash/DisplayHashingService;

    invoke-direct {p0}, Landroid/service/displayhash/IDisplayHashingService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/displayhash/DisplayHashingService;Landroid/service/displayhash/DisplayHashingService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;-><init>(Landroid/service/displayhash/DisplayHashingService;)V

    return-void
.end method


# virtual methods
.method public blacklist generateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 14
    .param p1, "salt"    # [B
    .param p2, "buffer"    # Landroid/hardware/HardwareBuffer;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "hashAlgorithm"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/RemoteCallback;

    .line 162
    iget-object v0, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->this$0:Landroid/service/displayhash/DisplayHashingService;

    invoke-static {v0}, Landroid/service/displayhash/DisplayHashingService;->-$$Nest$fgetmHandler(Landroid/service/displayhash/DisplayHashingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->this$0:Landroid/service/displayhash/DisplayHashingService;

    new-instance v7, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;

    invoke-direct {v7, p0, p5}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;-><init>(Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;Landroid/os/RemoteCallback;)V

    .line 163
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "salt":[B
    .end local p2    # "buffer":Landroid/hardware/HardwareBuffer;
    .end local p3    # "bounds":Landroid/graphics/Rect;
    .end local p4    # "hashAlgorithm":Ljava/lang/String;
    .local v3, "salt":[B
    .local v4, "buffer":Landroid/hardware/HardwareBuffer;
    .local v5, "bounds":Landroid/graphics/Rect;
    .local v6, "hashAlgorithm":Ljava/lang/String;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 162
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    return-void
.end method

.method public blacklist getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 193
    iget-object v0, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->this$0:Landroid/service/displayhash/DisplayHashingService;

    invoke-static {v0}, Landroid/service/displayhash/DisplayHashingService;->-$$Nest$fgetmHandler(Landroid/service/displayhash/DisplayHashingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->this$0:Landroid/service/displayhash/DisplayHashingService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    return-void
.end method

.method public blacklist getIntervalBetweenRequestsMillis(Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 199
    iget-object v0, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->this$0:Landroid/service/displayhash/DisplayHashingService;

    invoke-static {v0}, Landroid/service/displayhash/DisplayHashingService;->-$$Nest$fgetmHandler(Landroid/service/displayhash/DisplayHashingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->this$0:Landroid/service/displayhash/DisplayHashingService;

    .line 200
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method public blacklist verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "salt"    # [B
    .param p2, "displayHash"    # Landroid/view/displayhash/DisplayHash;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 186
    iget-object v0, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->this$0:Landroid/service/displayhash/DisplayHashingService;

    invoke-static {v0}, Landroid/service/displayhash/DisplayHashingService;->-$$Nest$fgetmHandler(Landroid/service/displayhash/DisplayHashingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->this$0:Landroid/service/displayhash/DisplayHashingService;

    .line 187
    invoke-static {v1, v2, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method
