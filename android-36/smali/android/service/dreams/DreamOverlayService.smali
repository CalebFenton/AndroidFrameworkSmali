.class public abstract Landroid/service/dreams/DreamOverlayService;
.super Landroid/app/Service;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamOverlayService$OverlayClient;,
        Landroid/service/dreams/DreamOverlayService$DreamOverlay;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DreamOverlayService"


# instance fields
.field private blacklist mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

.field private blacklist mCurrentRedirectToWake:Ljava/lang/Boolean;

.field private final blacklist mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$1xf16oJYBA1fWs9kr10T5DqcknA(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->lambda$wakeUp$2(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6-su5lZIMqozAHf7Ai6EQl90kXU(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->lambda$comeToFront$3(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BaQB3Y3S2bmR-mJra1r17iLQeIM(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamOverlayService;->lambda$startDream$0(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ojEeljSqHOlL4_HLengzkVcpAnk(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->lambda$endDream$1(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomeToFront(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->comeToFront(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->endDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamOverlayService;->startDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwakeUp(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->wakeUp(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 206
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 204
    new-instance v0, Landroid/service/dreams/DreamOverlayService$DreamOverlay;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$DreamOverlay;-><init>(Landroid/service/dreams/DreamOverlayService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    .line 207
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 214
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 204
    new-instance v0, Landroid/service/dreams/DreamOverlayService$DreamOverlay;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$DreamOverlay;-><init>(Landroid/service/dreams/DreamOverlayService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    .line 215
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 216
    return-void
.end method

.method private blacklist comeToFront(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 4
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 178
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda3;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method private blacklist endDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 4
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 154
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method private blacklist endDreamInternal(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 3
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 158
    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eq p1, v0, :cond_7

    goto :goto_e

    .line 162
    :cond_7
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->onEndDream()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 164
    return-void

    .line 159
    :cond_e
    :goto_e
    return-void
.end method

.method private synthetic blacklist lambda$comeToFront$3(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 3
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 179
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eq v0, p1, :cond_5

    .line 180
    return-void

    .line 183
    :cond_5
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->onComeToFront()V

    .line 184
    return-void
.end method

.method private synthetic blacklist lambda$endDream$1(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 154
    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->endDreamInternal(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method private synthetic blacklist lambda$startDream$0(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 142
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService;->endDreamInternal(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    .line 143
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 144
    invoke-static {}, Landroid/service/dreams/Flags;->dreamWakeRedirect()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentRedirectToWake:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    .line 145
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentRedirectToWake:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mredirectWake(Landroid/service/dreams/DreamOverlayService$OverlayClient;Z)V

    .line 148
    :cond_1c
    invoke-virtual {p0, p2}, Landroid/service/dreams/DreamOverlayService;->onStartDream(Landroid/view/WindowManager$LayoutParams;)V

    .line 149
    return-void
.end method

.method private synthetic blacklist lambda$wakeUp$2(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 3
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 169
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eq v0, p1, :cond_5

    .line 170
    return-void

    .line 173
    :cond_5
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->onWakeUp()V

    .line 174
    return-void
.end method

.method private blacklist startDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 141
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method private blacklist wakeUp(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 4
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 168
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method


# virtual methods
.method public final blacklist getDreamComponent()Landroid/content/ComponentName;
    .registers 3

    .line 346
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_b

    .line 350
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mgetComponent(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 347
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested dream component when no dream active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist isDreamInPreviewMode()Z
    .registers 3

    .line 333
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_b

    .line 338
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$misDreamInPreviewMode(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Z

    move-result v0

    return v0

    .line 334
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested if preview when no dream active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 237
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    invoke-interface {v0}, Landroid/service/dreams/IDreamOverlay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onComeToFront()V
    .registers 1

    .line 264
    return-void
.end method

.method public whitelist onCreate()V
    .registers 2

    .line 220
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 221
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_d

    .line 224
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 226
    :cond_d
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 231
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 232
    return-void
.end method

.method public blacklist onEndDream()V
    .registers 1

    .line 274
    return-void
.end method

.method public abstract blacklist onStartDream(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public blacklist onWakeRequested()V
    .registers 1

    .line 314
    return-void
.end method

.method public blacklist onWakeUp()V
    .registers 1

    .line 257
    return-void
.end method

.method public final blacklist redirectWake(Z)V
    .registers 3
    .param p1, "redirect"    # Z

    .line 294
    invoke-static {}, Landroid/service/dreams/Flags;->dreamWakeRedirect()Z

    move-result v0

    if-nez v0, :cond_7

    .line 295
    return-void

    .line 298
    :cond_7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentRedirectToWake:Ljava/lang/Boolean;

    .line 300
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-nez v0, :cond_12

    .line 301
    return-void

    .line 304
    :cond_12
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mredirectWake(Landroid/service/dreams/DreamOverlayService$OverlayClient;Z)V

    .line 305
    return-void
.end method

.method public final blacklist requestExit()V
    .registers 3

    .line 280
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_a

    .line 284
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mrequestExit(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    .line 285
    return-void

    .line 281
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested exit with no dream present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist shouldShowComplications()Z
    .registers 3

    .line 320
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_b

    .line 325
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mshouldShowComplications(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Z

    move-result v0

    return v0

    .line 321
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested if should show complication when no dream active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
