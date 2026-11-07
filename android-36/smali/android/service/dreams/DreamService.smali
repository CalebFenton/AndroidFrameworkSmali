.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DefaultInjector;,
        Landroid/service/dreams/DreamService$Injector;,
        Landroid/service/dreams/DreamService$WakefulHandler;,
        Landroid/service/dreams/DreamService$DreamServiceWrapper;,
        Landroid/service/dreams/DreamService$DreamMetadata;,
        Landroid/service/dreams/DreamService$DreamActivityCallbacks;,
        Landroid/service/dreams/DreamService$WakefulHandlerImpl;,
        Landroid/service/dreams/DreamService$DreamCategory;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DEFAULT_SHOW_COMPLICATIONS:Z = false

.field public static final blacklist DREAM_CATEGORY_DEFAULT:I = 0x0

.field public static final blacklist DREAM_CATEGORY_HOME_PANEL:I = 0x2

.field public static final blacklist DREAM_CATEGORY_LOW_LIGHT:I = 0x1

.field public static final whitelist DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field private static final blacklist DREAM_META_DATA_ROOT_TAG:Ljava/lang/String; = "dream"

.field public static final greylist-max-o DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field static final blacklist EXTRA_DREAM_OVERLAY_COMPONENT:Ljava/lang/String; = "android.service.dream.DreamService.dream_overlay_component"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private greylist-max-o mCanDoze:Z

.field private greylist-max-o mDebug:Z

.field private blacklist mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

.field private greylist-max-o mDozeScreenBrightness:I

.field private blacklist mDozeScreenBrightnessFloat:F

.field private greylist-max-o mDozeScreenState:I

.field private blacklist mDozeScreenStateReason:I

.field private greylist-max-o mDozing:Z

.field private blacklist mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

.field private blacklist mDreamComponent:Landroid/content/ComponentName;

.field private final blacklist mDreamManager:Landroid/service/dreams/IDreamManager;

.field private blacklist mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

.field private blacklist mDreamToken:Landroid/os/IBinder;

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFullscreen:Z

.field private final blacklist mInjector:Landroid/service/dreams/DreamService$Injector;

.field private greylist-max-o mInteractive:Z

.field private blacklist mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

.field private blacklist mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

.field private blacklist mPreviewMode:Z

.field private blacklist mRedirectWake:Z

.field private greylist-max-o mScreenBright:Z

.field private blacklist mShouldShowComplications:Z

.field private greylist-max-o mStarted:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTrackingConfirmKey:Ljava/lang/Integer;

.field private blacklist mUseNormalBrightnessForDoze:Z

.field private greylist-max-o mWaking:Z

.field private greylist-max-o mWindow:Landroid/view/Window;

.field private greylist-max-o mWindowless:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$-ly1KCRltkyDEba6oneTHM4elGs(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$comeToFront$5(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4S92DeQpI6HjdZjZ4icdbHUcVFQ(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->lambda$wakeUp$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4qGFWUbzzz6pe2dPUrAB59USTzo(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$attach$7(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YqWkX-fytSRhL11dzq_Gpezekeg(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->finishInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$c0CsXjK5-VedsrzAEPiiHPET7Fc(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$onWakeUp$2(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eFKpgXAYjI1j0t-LLk_kjFfV6PY(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->lambda$stopDozing$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ffUp1g8kkq40sAoMrvapwWIovx8(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->lambda$updateDoze$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hX1rOepY6Nbl8kLbN0Pk7CEHZ-w(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$wakeUp$6(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oqkOSnvhzTi34X8YGJoTHxQQ87E(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$finishInternal$3(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$t4Atpdc2GEC_gxL1AJOZlgAoQAw(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService;->lambda$dump$8(Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDispatchAfterOnAttachedToWindow(Landroid/service/dreams/DreamService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDreamComponent(Landroid/service/dreams/DreamService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mDreamComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayCallback(Landroid/service/dreams/DreamService;)Landroid/service/dreams/IDreamOverlayCallback;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewMode(Landroid/service/dreams/DreamService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldShowComplications(Landroid/service/dreams/DreamService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/dreams/DreamService;->mShouldShowComplications:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindow(Landroid/service/dreams/DreamService;)Landroid/view/Window;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivity(Landroid/service/dreams/DreamService;Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRedirectWake(Landroid/service/dreams/DreamService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mRedirectWake:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindow(Landroid/service/dreams/DreamService;Landroid/view/Window;)V
    .registers 2

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomeToFront(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->comeToFront()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetach(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishInternal(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->finishInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monActivityCreated(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamActivity;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamService;->onActivityCreated(Landroid/service/dreams/DreamActivity;Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monActivityDestroyed(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->onActivityDestroyed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostIfNeeded(Landroid/service/dreams/DreamService;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->postIfNeeded(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwakeUp(Landroid/service/dreams/DreamService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smfetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 2

    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->fetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 183
    const-class v0, Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    .line 185
    sget-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/service/dreams/DreamService;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 474
    new-instance v0, Landroid/service/dreams/DreamService$DefaultInjector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/dreams/DreamService$DefaultInjector;-><init>(Landroid/service/dreams/DreamService-IA;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;-><init>(Landroid/service/dreams/DreamService$Injector;)V

    .line 475
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/dreams/DreamService$Injector;)V
    .registers 4
    .param p1, "injector"    # Landroid/service/dreams/DreamService$Injector;

    .line 484
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 272
    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    .line 273
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 274
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightnessFloat:F

    .line 279
    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    .line 485
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    .line 486
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0, p0}, Landroid/service/dreams/DreamService$Injector;->init(Landroid/content/Context;)V

    .line 487
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 488
    return-void
.end method

.method private greylist-max-o applyFlags(III)I
    .registers 6
    .param p1, "oldFlags"    # I
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .line 1863
    not-int v0, p3

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o applyWindowFlags(II)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 1849
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_26

    .line 1850
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1851
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1852
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1853
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1855
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_26
    return-void
.end method

.method private blacklist attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 11
    .param p1, "dreamToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z
    .param p3, "isPreviewMode"    # Z
    .param p4, "started"    # Landroid/os/IRemoteCallback;

    .line 1682
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-eqz v0, :cond_25

    .line 1683
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach() called when dream with token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already attached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    return-void

    .line 1687
    :cond_25
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_c7

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-eqz v0, :cond_2f

    goto/16 :goto_c7

    .line 1701
    :cond_2f
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 1702
    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 1703
    iput-boolean p3, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    .line 1704
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    if-eqz v0, :cond_3c

    .line 1706
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 1710
    :cond_3c
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-nez v0, :cond_53

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->isCallerSystemUi()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_53

    .line 1711
    :cond_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only doze or SystemUI dreams can be windowless."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1714
    :cond_53
    :goto_53
    new-instance v0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p4}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda9;-><init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    .line 1733
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v0, :cond_c1

    .line 1734
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1735
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v1}, Landroid/service/dreams/DreamService$Injector;->getDreamActivityComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1736
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v1}, Landroid/service/dreams/DreamService$Injector;->getDreamPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1737
    const/high16 v1, 0x10040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1738
    new-instance v1, Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Landroid/service/dreams/DreamService$DreamActivityCallbacks;-><init>(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    invoke-static {v0, v1}, Landroid/service/dreams/DreamActivity;->setCallback(Landroid/content/Intent;Landroid/service/dreams/DreamService$DreamActivityCallbacks;)V

    .line 1740
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v1}, Landroid/service/dreams/DreamService$Injector;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 1741
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v2}, Landroid/service/dreams/DreamService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    .line 1742
    invoke-interface {v3}, Landroid/service/dreams/DreamService$Injector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1741
    invoke-static {v2, v3, v1, p3}, Landroid/service/dreams/DreamService;->fetchDreamLabel(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/pm/ServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1744
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v0, v2}, Landroid/service/dreams/DreamActivity;->setTitle(Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1747
    :try_start_a2
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3, v0}, Landroid/service/dreams/IDreamManager;->startDreamActivity(Landroid/content/Intent;)V
    :try_end_a7
    .catch Ljava/lang/SecurityException; {:try_start_a2 .. :try_end_a7} :catch_b4
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a7} :catch_a8

    goto :goto_bf

    .line 1753
    :catch_a8
    move-exception v3

    .line 1754
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v5, "Could not connect to activity task manager to start dream activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_c0

    .line 1748
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_b4
    move-exception v3

    .line 1749
    .local v3, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v5, "Received SecurityException trying to start DreamActivity. Aborting dream start."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 1756
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_bf
    nop

    .line 1757
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :goto_c0
    goto :goto_c6

    .line 1758
    :cond_c1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1760
    :goto_c6
    return-void

    .line 1688
    :cond_c7
    :goto_c7
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "attach() called after dream already finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :try_start_ce
    invoke-static {}, Landroid/service/dreams/Flags;->startAndStopDozingInBackground()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_db

    .line 1691
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1, v1}, Landroid/service/dreams/IDreamManager;->finishSelfOneway(Landroid/os/IBinder;Z)V

    goto :goto_e0

    .line 1693
    :cond_db
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1, v1}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_e0} :catch_e1

    .line 1697
    :goto_e0
    goto :goto_e2

    .line 1695
    :catch_e1
    move-exception v0

    .line 1698
    :goto_e2
    return-void
.end method

.method private static greylist-max-o clampAbsoluteBrightness(I)I
    .registers 3
    .param p0, "value"    # I

    .line 1940
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static blacklist clampAbsoluteBrightnessFloat(F)F
    .registers 3
    .param p0, "value"    # F

    .line 1944
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_7

    .line 1945
    return p0

    .line 1947
    :cond_7
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private blacklist comeToFront()V
    .registers 3

    .line 1470
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-nez v0, :cond_5

    .line 1471
    return-void

    .line 1473
    :cond_5
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda7;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    .line 1480
    return-void
.end method

.method private static blacklist convertToComponentName(Ljava/lang/String;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .registers 8
    .param p0, "flattenedString"    # Ljava/lang/String;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 1619
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1620
    return-object v0

    .line 1624
    :cond_4
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1625
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_18

    .line 1626
    :cond_11
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    nop

    .line 1628
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_1c

    .line 1629
    return-object v0

    .line 1634
    :cond_1c
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 1635
    sget-object v2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent package name in component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1636
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", should be: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1635
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    return-object v0

    .line 1642
    :cond_51
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_7a

    .line 1643
    sget-object v2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dream settings activity not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    return-object v0

    .line 1647
    :cond_7a
    return-object v1
.end method

.method private greylist-max-o detach()V
    .registers 4

    .line 1656
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1657
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "detach(): Calling onDreamingStopped()"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_10
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    .line 1659
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 1662
    :cond_15
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1663
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_2a

    .line 1665
    :cond_27
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->finishInternal()V

    .line 1668
    :goto_2a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 1669
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 1670
    return-void
.end method

.method private static blacklist fetchDreamLabel(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/pm/ServiceInfo;Z)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p3, "isPreviewMode"    # Z

    .line 1886
    if-nez p2, :cond_4

    .line 1887
    const/4 v0, 0x0

    return-object v0

    .line 1889
    :cond_4
    invoke-virtual {p2, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1890
    .local v0, "dreamLabel":Ljava/lang/CharSequence;
    if-eqz p3, :cond_19

    if-nez v0, :cond_d

    goto :goto_19

    .line 1894
    :cond_d
    const v1, 0x104036d

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1891
    :cond_19
    :goto_19
    return-object v0
.end method

.method private static blacklist fetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1899
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1902
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 1903
    const-wide/16 v1, 0x80

    :try_start_7
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v1

    .line 1902
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v1

    .line 1904
    :catch_10
    move-exception v1

    .line 1905
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Landroid/service/dreams/DreamService;->DEBUG:Z

    if-eqz v2, :cond_31

    sget-object v2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist fetchShouldShowComplications(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Z
    .registers 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1873
    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;

    move-result-object v0

    .line 1874
    .local v0, "metadata":Landroid/service/dreams/DreamService$DreamMetadata;
    if-eqz v0, :cond_9

    .line 1875
    iget-boolean v1, v0, Landroid/service/dreams/DreamService$DreamMetadata;->showComplications:Z

    return v1

    .line 1877
    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist finishInternal()V
    .registers 5

    .line 1408
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_e

    .line 1409
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda8;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    .line 1420
    :cond_e
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish(): mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_2c
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    .line 1423
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3a

    .line 1424
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_39

    .line 1426
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 1428
    :cond_39
    return-void

    .line 1431
    :cond_3a
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v1, :cond_3f

    .line 1432
    return-void

    .line 1434
    :cond_3f
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    .line 1436
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-nez v2, :cond_55

    .line 1437
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_51

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "finish() called when not attached."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_51
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V

    .line 1439
    return-void

    .line 1445
    :cond_55
    :try_start_55
    invoke-static {}, Landroid/service/dreams/Flags;->startAndStopDozingInBackground()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1446
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v1}, Landroid/service/dreams/IDreamManager;->finishSelfOneway(Landroid/os/IBinder;Z)V

    goto :goto_6a

    .line 1448
    :cond_63
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v1}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_6a} :catch_6b

    .line 1452
    :goto_6a
    goto :goto_6c

    .line 1450
    :catch_6b
    move-exception v1

    .line 1453
    :goto_6c
    return-void
.end method

.method public static blacklist getDreamMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1574
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/service/dreams/DreamService;->getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;
    .registers 10
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1588
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1590
    :cond_4
    const-string v1, "dream"

    sget-object v2, Lcom/android/internal/R$styleable;->Dream:[I

    const-string v3, "android.service.dream"

    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/content/pm/PackageManager;->extractPackageItemInfoAttributes(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1593
    .local v1, "rawMetadata":Landroid/content/res/TypedArray;
    if-nez v1, :cond_16

    .line 1611
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 1593
    :cond_15
    return-object v0

    .line 1595
    :cond_16
    :try_start_16
    new-instance v2, Landroid/service/dreams/DreamService$DreamMetadata;

    .line 1597
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1596
    invoke-static {v4, p1, p0}, Landroid/service/dreams/DreamService;->convertToComponentName(Ljava/lang/String;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1601
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1603
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1605
    const/4 v7, 0x3

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-direct {v2, v4, v5, v6, v3}, Landroid/service/dreams/DreamService$DreamMetadata;-><init>(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;ZI)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_3b
    .catchall {:try_start_16 .. :try_end_33} :catchall_39

    .line 1611
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 1595
    :cond_38
    return-object v2

    .line 1590
    :catchall_39
    move-exception v0

    goto :goto_4a

    .line 1607
    :catch_3b
    move-exception v2

    .line 1608
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_3c
    sget-object v3, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to create read metadata"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_39

    .line 1609
    nop

    .line 1611
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 1609
    :cond_49
    return-object v0

    .line 1590
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_4a
    if-eqz v1, :cond_54

    :try_start_4c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw v0
.end method

.method private greylist-max-o getWindowFlagValue(IZ)Z
    .registers 4
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .line 1845
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_6

    move v0, p2

    goto :goto_14

    :cond_6
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private blacklist isCallerSystemUi()Z
    .registers 2

    .line 1858
    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic blacklist lambda$attach$7(Landroid/os/IRemoteCallback;)V
    .registers 4
    .param p1, "started"    # Landroid/os/IRemoteCallback;

    .line 1715
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v0, :cond_13

    .line 1716
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    .line 1718
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1a

    .line 1721
    :try_start_f
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 1724
    nop

    .line 1727
    :cond_13
    return-void

    .line 1722
    :catch_14
    move-exception v0

    .line 1723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1720
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1a
    move-exception v1

    .line 1721
    :try_start_1b
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 1724
    nop

    .line 1725
    throw v1

    .line 1722
    :catch_20
    move-exception v0

    .line 1723
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private synthetic blacklist lambda$comeToFront$5(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 6
    .param p1, "overlay"    # Landroid/service/dreams/IDreamOverlayClient;

    .line 1475
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->comeToFront()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1478
    goto :goto_1d

    .line 1476
    :catch_4
    move-exception v0

    .line 1477
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not tell overlay to come to front:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private synthetic blacklist lambda$dump$8(Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw1"    # Ljava/io/PrintWriter;
    .param p4, "prefix"    # Ljava/lang/String;

    .line 1913
    invoke-virtual {p0, p1, p3, p2}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$finishInternal$3(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 6
    .param p1, "overlay"    # Landroid/service/dreams/IDreamOverlayClient;

    .line 1411
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->endDream()V

    .line 1412
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-virtual {v0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->unbind()V

    .line 1413
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1416
    goto :goto_25

    .line 1414
    :catch_c
    move-exception v0

    .line 1415
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not inform overlay of dream end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private synthetic blacklist lambda$onWakeUp$2(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 5
    .param p1, "overlay"    # Landroid/service/dreams/IDreamOverlayClient;

    .line 1348
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->wakeUp()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_a
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 1352
    nop

    :goto_4
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 1353
    goto :goto_14

    .line 1352
    :catchall_8
    move-exception v0

    goto :goto_15

    .line 1349
    :catch_a
    move-exception v0

    .line 1350
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_b
    sget-object v1, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Error waking the overlay service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_8

    .line 1352
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 1354
    :goto_14
    return-void

    .line 1352
    :goto_15
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 1353
    throw v0
.end method

.method private synthetic blacklist lambda$stopDozing$1()V
    .registers 3

    .line 1053
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 1054
    return-void

    .line 1057
    :cond_5
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_15

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 1060
    :try_start_c
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 1063
    goto :goto_15

    .line 1061
    :catch_14
    move-exception v0

    .line 1065
    :cond_15
    :goto_15
    return-void
.end method

.method private synthetic blacklist lambda$updateDoze$0()V
    .registers 16

    .line 1011
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1012
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Updating doze without a dream token."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-void

    .line 1016
    :cond_c
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_6d

    .line 1018
    :try_start_10
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateDoze mDozeScreenState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDozeScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDozeScreenBrightnessFloat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightnessFloat:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static {}, Landroid/service/dreams/Flags;->startAndStopDozingInBackground()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1022
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v4, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    iget v5, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightnessFloat:F

    iget v6, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    iget-boolean v7, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    invoke-interface/range {v1 .. v7}, Landroid/service/dreams/IDreamManager;->startDozingOneway(Landroid/os/IBinder;IIFIZ)V

    goto :goto_6b

    .line 1027
    :cond_5a
    iget-object v8, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v9, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    iget v10, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v11, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    iget v12, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightnessFloat:F

    iget v13, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    iget-boolean v14, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    invoke-interface/range {v8 .. v14}, Landroid/service/dreams/IDreamManager;->startDozing(Landroid/os/IBinder;IIFIZ)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_6b} :catch_6c

    .line 1034
    :goto_6b
    goto :goto_6d

    .line 1032
    :catch_6c
    move-exception v0

    .line 1036
    :cond_6d
    :goto_6d
    return-void
.end method

.method private synthetic blacklist lambda$wakeUp$4()V
    .registers 2

    .line 1463
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$wakeUp$6(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 6
    .param p1, "overlay"    # Landroid/service/dreams/IDreamOverlayClient;

    .line 1500
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->onWakeRequested()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1503
    goto :goto_1d

    .line 1501
    :catch_4
    move-exception v0

    .line 1502
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not inform overlay of dream wakeup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private blacklist onActivityCreated(Landroid/service/dreams/DreamActivity;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "activity"    # Landroid/service/dreams/DreamActivity;
    .param p2, "dreamToken"    # Landroid/os/IBinder;

    .line 2019
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-ne p2, v0, :cond_28

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v0, :cond_9

    goto :goto_28

    .line 2027
    :cond_9
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1e

    .line 2028
    sget-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "A DreamActivity has already been started, finishing latest DreamActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2031
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->finishAndRemoveTask()V

    .line 2033
    :cond_1d
    return-void

    .line 2036
    :cond_1e
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    .line 2037
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->onWindowCreated(Landroid/view/Window;)V

    .line 2038
    return-void

    .line 2020
    :cond_28
    :goto_28
    sget-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "DreamActivity was created after the dream was finished or a new dream started, finishing DreamActivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_38

    .line 2023
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->finishAndRemoveTask()V

    .line 2025
    :cond_38
    return-void
.end method

.method private blacklist onActivityDestroyed()V
    .registers 2

    .line 2041
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    .line 2042
    iput-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 2043
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 2044
    return-void
.end method

.method private blacklist onWindowCreated(Landroid/view/Window;)V
    .registers 7
    .param p1, "w"    # Landroid/view/Window;

    .line 1763
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 1764
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 1765
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 1767
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1768
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1774
    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    const/16 v2, 0x400

    goto :goto_1e

    :cond_1d
    move v2, v3

    :goto_1e
    const v4, 0x1490101

    or-int/2addr v2, v4

    .line 1775
    iget-boolean v4, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v4, :cond_29

    const/16 v4, 0x80

    goto :goto_2a

    :cond_29
    move v4, v3

    :goto_2a
    or-int/2addr v2, v4

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1777
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1779
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1782
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1785
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 1786
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1787
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateAccessibilityMessage()V

    .line 1788
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/service/dreams/DreamService$3;

    invoke-direct {v2, p0}, Landroid/service/dreams/DreamService$3;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1833
    return-void
.end method

.method private blacklist postIfNeeded(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1003
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getWakefulHandler()Landroid/service/dreams/DreamService$WakefulHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/service/dreams/DreamService$WakefulHandler;->postIfNeeded(Ljava/lang/Runnable;)V

    .line 1004
    return-void
.end method

.method public static blacklist setDreamOverlayComponent(Landroid/content/Intent;Landroid/content/ComponentName;)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 2129
    const-string v0, "android.service.dream.DreamService.dream_overlay_component"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2130
    return-void
.end method

.method private blacklist updateAccessibilityMessage()V
    .registers 4

    .line 1836
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_5

    return-void

    .line 1837
    :cond_5
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

    if-nez v0, :cond_1b

    .line 1838
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1839
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Landroid/service/dreams/utils/DreamAccessibility;

    new-instance v2, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-direct {v1, p0, v0, v2}, Landroid/service/dreams/utils/DreamAccessibility;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroid/service/dreams/DreamService;->mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

    .line 1841
    .end local v0    # "rootView":Landroid/view/View;
    :cond_1b
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

    invoke-virtual {v0}, Landroid/service/dreams/utils/DreamAccessibility;->updateAccessibilityConfiguration()V

    .line 1842
    return-void
.end method

.method private greylist-max-o updateDoze()V
    .registers 2

    .line 1010
    new-instance v0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda10;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->postIfNeeded(Ljava/lang/Runnable;)V

    .line 1037
    return-void
.end method

.method private greylist-max-o wakeUp(Z)V
    .registers 5
    .param p1, "fromSystem"    # Z

    .line 1492
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_35

    .line 1493
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeUp(): fromSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWaking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_35
    if-nez p1, :cond_48

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getRedirectWake()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1498
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    .line 1506
    return-void

    .line 1509
    :cond_48
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-nez v0, :cond_8a

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_8a

    .line 1510
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    .line 1512
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5d

    .line 1520
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 1526
    :cond_5d
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    .line 1530
    if-nez p1, :cond_8a

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_8a

    .line 1531
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_72

    .line 1532
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "WakeUp was called before the dream was attached."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1535
    :cond_72
    :try_start_72
    invoke-static {}, Landroid/service/dreams/Flags;->startAndStopDozingInBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    .line 1536
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1}, Landroid/service/dreams/IDreamManager;->finishSelfOneway(Landroid/os/IBinder;Z)V

    goto :goto_88

    .line 1538
    :cond_81
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_88} :catch_89

    .line 1542
    :goto_88
    goto :goto_8a

    .line 1540
    :catch_89
    move-exception v0

    .line 1546
    :cond_8a
    :goto_8a
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 804
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    return-void
.end method

.method public greylist-max-p canDoze()Z
    .registers 2

    .line 958
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    return v0
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 600
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_15

    .line 601
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Waking up on genericMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 603
    const/4 v0, 0x1

    return v0

    .line 605
    :cond_15
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 501
    invoke-static {}, Landroid/service/dreams/Flags;->dreamHandlesConfirmKeys()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6c

    .line 503
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 504
    return v2

    .line 508
    :cond_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 509
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    goto :goto_6b

    .line 518
    :pswitch_27
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    .line 519
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v0, v3, :cond_38

    goto :goto_5a

    .line 523
    :cond_38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    .line 525
    const-class v0, Landroid/app/KeyguardManager;

    .line 526
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 529
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 530
    invoke-direct {p0, v1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 531
    return v2

    .line 534
    :cond_4d
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Landroid/service/dreams/DreamService$1;

    invoke-direct {v3, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_6b

    .line 520
    .end local v0    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_5a
    :goto_5a
    return v2

    .line 511
    :pswitch_5b
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    if-eqz v0, :cond_60

    .line 512
    return v2

    .line 515
    :cond_60
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    .line 516
    nop

    .line 546
    :goto_6b
    return v2

    .line 550
    :cond_6c
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_7f

    .line 551
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_7b

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v3, "Waking up on keyEvent"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_7b
    invoke-direct {p0, v1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 553
    return v2

    .line 554
    :cond_7f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_95

    .line 555
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_91

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v3, "Waking up on back key"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_91
    invoke-direct {p0, v1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 557
    return v2

    .line 559
    :cond_95
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_27
    .end packed-switch
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 565
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_15

    .line 566
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Waking up on keyShortcutEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 568
    const/4 v0, 0x1

    return v0

    .line 570
    :cond_15
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 578
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 579
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "Waking up on touchEvent"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 581
    return v1

    .line 583
    :cond_1b
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 589
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_15

    .line 590
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Waking up on trackballEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 592
    const/4 v0, 0x1

    return v0

    .line 594
    :cond_15
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1912
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getWakefulHandler()Landroid/service/dreams/DreamService$WakefulHandler;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/dreams/DreamService$WakefulHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, p3}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda11;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    const-string v4, ""

    const-wide/16 v5, 0x3e8

    move-object v3, p2

    .end local p2    # "pw":Ljava/io/PrintWriter;
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1914
    return-void
.end method

.method protected greylist-max-o dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1919
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v0, :cond_23

    .line 1920
    const-string/jumbo v0, "stopped"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42

    .line 1922
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "running (dreamToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1924
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    const-string v0, "  flags:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, " interactive"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1927
    :cond_6a
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, " fullscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1928
    :cond_75
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, " bright"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1929
    :cond_80
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isWindowless()Z

    move-result v0

    if-eqz v0, :cond_8b

    const-string v0, " windowless"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1930
    :cond_8b
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, " dozing"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a2

    .line 1931
    :cond_97
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, " candoze"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1932
    :cond_a2
    :goto_a2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1933
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  doze screen state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  doze screen brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    :cond_df
    return-void
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 827
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist finish()V
    .registers 2

    .line 1401
    new-instance v0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->postIfNeeded(Ljava/lang/Runnable;)V

    .line 1402
    return-void
.end method

.method public blacklist getActivity()Landroid/app/Activity;
    .registers 2

    .line 741
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public greylist-max-r getDozeScreenBrightness()I
    .registers 2

    .line 1195
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    return v0
.end method

.method public greylist-max-o getDozeScreenState()I
    .registers 2

    .line 1094
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    return v0
.end method

.method public blacklist getRedirectWake()Z
    .registers 2

    .line 1488
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mRedirectWake:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist getUseNormalBrightnessForDoze()Z
    .registers 2

    .line 1179
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .registers 2

    .line 728
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 718
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-p isDozing()Z
    .registers 2

    .line 1079
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    return v0
.end method

.method public whitelist isFullscreen()Z
    .registers 2

    .line 900
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    return v0
.end method

.method public whitelist isInteractive()Z
    .registers 2

    .line 876
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return v0
.end method

.method public whitelist isScreenBright()Z
    .registers 3

    .line 924
    const/16 v0, 0x80

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    invoke-direct {p0, v0, v1}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isWindowless()Z
    .registers 2

    .line 943
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 707
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 702
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 662
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1363
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind() intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_1d
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    .line 1365
    const-string v0, "android.service.dream.DreamService.dream_overlay_component"

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1369
    .local v0, "overlayComponent":Landroid/content/ComponentName;
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v1, :cond_51

    if-eqz v0, :cond_51

    .line 1370
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    new-instance v2, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda5;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-interface {v1, v0, v2}, Landroid/service/dreams/DreamService$Injector;->createOverlayConnection(Landroid/content/ComponentName;Ljava/lang/Runnable;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    .line 1373
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-virtual {v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->bind()Z

    move-result v1

    if-nez v1, :cond_51

    .line 1375
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    .line 1379
    :cond_51
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    return-object v1
.end method

.method public whitelist onContentChanged()V
    .registers 1

    .line 652
    return-void
.end method

.method public whitelist onCreate()V
    .registers 3

    .line 1284
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_c
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getDreamComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamComponent:Landroid/content/ComponentName;

    .line 1287
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    .line 1288
    invoke-interface {v1}, Landroid/service/dreams/DreamService$Injector;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 1287
    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->fetchShouldShowComplications(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mShouldShowComplications:Z

    .line 1289
    new-instance v0, Landroid/service/dreams/DreamService$2;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    .line 1312
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1313
    return-void
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .line 617
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 1551
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_c
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 1556
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    .line 1557
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1558
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 667
    return-void
.end method

.method public whitelist onDreamingStarted()V
    .registers 3

    .line 1319
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_c
    return-void
.end method

.method public whitelist onDreamingStopped()V
    .registers 3

    .line 1328
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_c
    return-void
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 672
    return-void
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested()Z
    .registers 2

    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/SearchEvent;

    .line 677
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1385
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_c

    .line 1386
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-virtual {v0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->unbind()V

    .line 1387
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    .line 1390
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onWakeUp()V
    .registers 3

    .line 1345
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_f

    .line 1346
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda3;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    goto :goto_12

    .line 1356
    :cond_f
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 1358
    :goto_12
    return-void
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 647
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .line 657
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 689
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 696
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 849
    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 850
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_7

    .line 854
    return-object v0

    .line 851
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this DreamService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .line 756
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 757
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 772
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 773
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 792
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    return-void
.end method

.method public greylist-max-o setDebug(Z)V
    .registers 2
    .param p1, "dbg"    # Z

    .line 494
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 495
    return-void
.end method

.method public greylist setDozeScreenBrightness(I)V
    .registers 3
    .param p1, "brightness"    # I

    .line 1227
    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    .line 1228
    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    move-result p1

    .line 1230
    :cond_7
    monitor-enter p0

    .line 1231
    :try_start_8
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v0, p1, :cond_11

    .line 1232
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 1233
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 1235
    :cond_11
    monitor-exit p0

    .line 1236
    return-void

    .line 1235
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public greylist setDozeScreenBrightnessFloat(F)V
    .registers 3
    .param p1, "brightness"    # F

    .line 1267
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1268
    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightnessFloat(F)F

    move-result p1

    .line 1271
    :cond_a
    monitor-enter p0

    .line 1272
    :try_start_b
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightnessFloat:F

    invoke-static {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1273
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightnessFloat:F

    .line 1274
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 1276
    :cond_18
    monitor-exit p0

    .line 1277
    return-void

    .line 1276
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public greylist setDozeScreenState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 1107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/service/dreams/DreamService;->setDozeScreenState(IIZ)V

    .line 1109
    return-void
.end method

.method public greylist setDozeScreenState(IIZ)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "reason"    # I
    .param p3, "useNormalBrightnessForDoze"    # Z

    .line 1157
    monitor-enter p0

    .line 1158
    :try_start_1
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-ne v0, p1, :cond_9

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    if-eq v0, p3, :cond_12

    .line 1160
    :cond_9
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 1161
    iput p2, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    .line 1162
    iput-boolean p3, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    .line 1163
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 1165
    :cond_12
    monitor-exit p0

    .line 1166
    return-void

    .line 1165
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public whitelist setFullscreen(Z)V
    .registers 4
    .param p1, "fullscreen"    # Z

    .line 887
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eq v0, p1, :cond_12

    .line 888
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    .line 889
    const/16 v0, 0x400

    .line 890
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v1, :cond_e

    move v1, v0

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 892
    .end local v0    # "flag":I
    :cond_12
    return-void
.end method

.method public whitelist setInteractive(Z)V
    .registers 2
    .param p1, "interactive"    # Z

    .line 867
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    .line 868
    return-void
.end method

.method public whitelist setScreenBright(Z)V
    .registers 4
    .param p1, "screenBright"    # Z

    .line 910
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eq v0, p1, :cond_16

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    if-nez v0, :cond_16

    .line 911
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 912
    const/16 v0, 0x80

    .line 913
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v1, :cond_12

    move v1, v0

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 915
    .end local v0    # "flag":I
    :cond_16
    return-void
.end method

.method public blacklist setWindowless(Z)V
    .registers 2
    .param p1, "windowless"    # Z

    .line 934
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    .line 935
    return-void
.end method

.method public greylist startDozing()V
    .registers 2

    .line 992
    monitor-enter p0

    .line 993
    :try_start_1
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-nez v0, :cond_f

    .line 994
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 995
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 997
    :cond_f
    monitor-exit p0

    .line 998
    return-void

    .line 997
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public greylist-max-p stopDozing()V
    .registers 2

    .line 1052
    new-instance v0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda4;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->postIfNeeded(Ljava/lang/Runnable;)V

    .line 1066
    return-void
.end method

.method public final whitelist wakeUp()V
    .registers 2

    .line 1463
    new-instance v0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda6;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->postIfNeeded(Ljava/lang/Runnable;)V

    .line 1464
    return-void
.end method
