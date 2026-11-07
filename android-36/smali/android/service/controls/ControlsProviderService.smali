.class public abstract Landroid/service/controls/ControlsProviderService;
.super Landroid/app/Service;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/ControlsProviderService$RequestHandler;,
        Landroid/service/controls/ControlsProviderService$SubscribeMessage;,
        Landroid/service/controls/ControlsProviderService$ActionMessage;,
        Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;,
        Landroid/service/controls/ControlsProviderService$SubscriberProxy;,
        Landroid/service/controls/ControlsProviderService$ControlsSurface;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ADD_CONTROL:Ljava/lang/String; = "android.service.controls.action.ADD_CONTROL"

.field public static final blacklist CALLBACK_BUNDLE:Ljava/lang/String; = "CALLBACK_BUNDLE"

.field public static final blacklist CALLBACK_TOKEN:Ljava/lang/String; = "CALLBACK_TOKEN"

.field public static final whitelist CONTROLS_SURFACE_ACTIVITY_PANEL:I = 0x0

.field public static final whitelist CONTROLS_SURFACE_DREAM:I = 0x1

.field public static final blacklist EXTRA_CONTROL:Ljava/lang/String; = "android.service.controls.extra.CONTROL"

.field public static final whitelist EXTRA_CONTROLS_SURFACE:Ljava/lang/String; = "android.service.controls.extra.CONTROLS_SURFACE"

.field public static final whitelist EXTRA_LOCKSCREEN_ALLOW_TRIVIAL_CONTROLS:Ljava/lang/String; = "android.service.controls.extra.LOCKSCREEN_ALLOW_TRIVIAL_CONTROLS"

.field public static final whitelist META_DATA_PANEL_ACTIVITY:Ljava/lang/String; = "android.service.controls.META_DATA_PANEL_ACTIVITY"

.field public static final whitelist SERVICE_CONTROLS:Ljava/lang/String; = "android.service.controls.ControlsProviderService"

.field public static final whitelist TAG:Ljava/lang/String; = "ControlsProviderService"


# instance fields
.field private blacklist mHandler:Landroid/service/controls/ControlsProviderService$RequestHandler;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/controls/ControlsProviderService;)Landroid/service/controls/ControlsProviderService$RequestHandler;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/ControlsProviderService;->mHandler:Landroid/service/controls/ControlsProviderService$RequestHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/ControlsProviderService;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisStatelessControl(Landroid/service/controls/Control;)Z
    .registers 1

    invoke-static {p0}, Landroid/service/controls/ControlsProviderService;->isStatelessControl(Landroid/service/controls/Control;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static blacklist isStatelessControl(Landroid/service/controls/Control;)Z
    .registers 2
    .param p0, "control"    # Landroid/service/controls/Control;

    .line 317
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatus()I

    move-result v0

    if-nez v0, :cond_1c

    .line 318
    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlTemplate;->getTemplateType()I

    move-result v0

    if-nez v0, :cond_1c

    .line 320
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 317
    :goto_1d
    return v0
.end method

.method public static whitelist requestAddControl(Landroid/content/Context;Landroid/content/ComponentName;Landroid/service/controls/Control;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "control"    # Landroid/service/controls/Control;

    .line 414
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const v0, 0x104021b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "controlsPackage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.controls.action.ADD_CONTROL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-static {p2}, Landroid/service/controls/ControlsProviderService;->isStatelessControl(Landroid/service/controls/Control;)Z

    move-result v2

    const-string v3, "android.service.controls.extra.CONTROL"

    if-eqz v2, :cond_2b

    .line 423
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_37

    .line 425
    :cond_2b
    new-instance v2, Landroid/service/controls/Control$StatelessBuilder;

    invoke-direct {v2, p2}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Landroid/service/controls/Control;)V

    invoke-virtual {v2}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 427
    :goto_37
    const-string v2, "android.permission.BIND_CONTROLS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 428
    return-void
.end method


# virtual methods
.method public abstract whitelist createPublisherFor(Ljava/util/List;)Ljava/util/concurrent/Flow$Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist createPublisherForAllAvailable()Ljava/util/concurrent/Flow$Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist createPublisherForSuggested()Ljava/util/concurrent/Flow$Publisher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 210
    new-instance v0, Landroid/service/controls/ControlsProviderService$RequestHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/controls/ControlsProviderService$RequestHandler;-><init>(Landroid/service/controls/ControlsProviderService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/controls/ControlsProviderService;->mHandler:Landroid/service/controls/ControlsProviderService$RequestHandler;

    .line 212
    const-string v0, "CALLBACK_BUNDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "CALLBACK_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/ControlsProviderService;->mToken:Landroid/os/IBinder;

    .line 215
    new-instance v1, Landroid/service/controls/ControlsProviderService$1;

    invoke-direct {v1, p0}, Landroid/service/controls/ControlsProviderService$1;-><init>(Landroid/service/controls/ControlsProviderService;)V

    return-object v1
.end method

.method public final whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/ControlsProviderService;->mHandler:Landroid/service/controls/ControlsProviderService$RequestHandler;

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist performControlAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/controls/actions/ControlAction;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
