.class Landroid/service/dreams/DreamOverlayService$OverlayClient;
.super Landroid/service/dreams/IDreamOverlayClient$Stub;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayClient"
.end annotation


# instance fields
.field private blacklist mDreamComponent:Landroid/content/ComponentName;

.field blacklist mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

.field private blacklist mIsPreview:Z

.field private final blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamOverlayService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShowComplications:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$1uIjb1iUnLzUD01_CdVaDy-WEtA(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/service/dreams/DreamOverlayService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->lambda$endDream$2(Landroid/service/dreams/DreamOverlayService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8F3_4_F93lM18N49iFgh7-BtiRQ(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/DreamOverlayService;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->lambda$startDream$0(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/DreamOverlayService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yi-XjfKpyGogsH5uyRFJYon192U(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/service/dreams/DreamOverlayService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->lambda$comeToFront$3(Landroid/service/dreams/DreamOverlayService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$u5MBh8NY8HtjzTJlMIdlaVkDPRY(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/service/dreams/DreamOverlayService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->lambda$wakeUp$1(Landroid/service/dreams/DreamOverlayService;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetComponent(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Landroid/content/ComponentName;
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDreamInPreviewMode(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Z
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->isDreamInPreviewMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mredirectWake(Landroid/service/dreams/DreamOverlayService$OverlayClient;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->redirectWake(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestExit(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->requestExit()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldShowComplications(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Z
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->shouldShowComplications()Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamOverlayService;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "service":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/service/dreams/DreamOverlayService;>;"
    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Ljava/lang/ref/WeakReference;

    .line 67
    return-void
.end method

.method private blacklist applyToDream(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/DreamOverlayService;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/DreamOverlayService;>;"
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamOverlayService;

    .line 72
    .local v0, "service":Landroid/service/dreams/DreamOverlayService;
    if-eqz v0, :cond_d

    .line 73
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 75
    :cond_d
    return-void
.end method

.method private blacklist getComponent()Landroid/content/ComponentName;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method private blacklist isDreamInPreviewMode()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mIsPreview:Z

    return v0
.end method

.method private synthetic blacklist lambda$comeToFront$3(Landroid/service/dreams/DreamOverlayService;)V
    .registers 2
    .param p1, "dreamOverlayService"    # Landroid/service/dreams/DreamOverlayService;

    .line 100
    invoke-static {p1, p0}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mcomeToFront(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method private synthetic blacklist lambda$endDream$2(Landroid/service/dreams/DreamOverlayService;)V
    .registers 2
    .param p1, "dreamOverlayService"    # Landroid/service/dreams/DreamOverlayService;

    .line 95
    invoke-static {p1, p0}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mendDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method private synthetic blacklist lambda$startDream$0(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/DreamOverlayService;)V
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "dreamOverlayService"    # Landroid/service/dreams/DreamOverlayService;

    .line 85
    invoke-static {p2, p0, p1}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mstartDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private synthetic blacklist lambda$wakeUp$1(Landroid/service/dreams/DreamOverlayService;)V
    .registers 2
    .param p1, "dreamOverlayService"    # Landroid/service/dreams/DreamOverlayService;

    .line 90
    invoke-static {p1, p0}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mwakeUp(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method private blacklist redirectWake(Z)V
    .registers 5
    .param p1, "redirect"    # Z

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamOverlayCallback;->onRedirectWake(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 123
    goto :goto_e

    .line 121
    :catch_6
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DreamOverlayService"

    const-string v2, "could not request redirect wake"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private blacklist requestExit()V
    .registers 4

    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-interface {v0}, Landroid/service/dreams/IDreamOverlayCallback;->onExitRequested()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 115
    goto :goto_1f

    .line 113
    :catch_6
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not request exit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DreamOverlayService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method private blacklist shouldShowComplications()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mShowComplications:Z

    return v0
.end method


# virtual methods
.method public blacklist comeToFront()V
    .registers 2

    .line 100
    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda3;-><init>(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    .line 101
    return-void
.end method

.method public blacklist endDream()V
    .registers 2

    .line 95
    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    .line 96
    return-void
.end method

.method public blacklist onWakeRequested()V
    .registers 2

    .line 105
    invoke-static {}, Landroid/service/dreams/Flags;->dreamWakeRedirect()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 106
    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    .line 108
    :cond_e
    return-void
.end method

.method public blacklist startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "callback"    # Landroid/service/dreams/IDreamOverlayCallback;
    .param p3, "dreamComponent"    # Ljava/lang/String;
    .param p4, "isPreview"    # Z
    .param p5, "shouldShowComplications"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamComponent:Landroid/content/ComponentName;

    .line 82
    iput-boolean p5, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mShowComplications:Z

    .line 83
    iput-boolean p4, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mIsPreview:Z

    .line 84
    iput-object p2, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    .line 85
    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    .line 86
    return-void
.end method

.method public blacklist wakeUp()V
    .registers 2

    .line 90
    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda4;-><init>(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    .line 91
    return-void
.end method
