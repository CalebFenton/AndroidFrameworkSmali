.class public abstract Landroid/service/ambientcontext/AmbientContextDetectionService;
.super Landroid/app/Service;
.source "AmbientContextDetectionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.ambientcontext.AmbientContextDetectionService"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/ambientcontext/AmbientContextDetectionService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-class v0, Landroid/service/ambientcontext/AmbientContextDetectionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/ambientcontext/AmbientContextDetectionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 70
    const-string v0, "android.service.ambientcontext.AmbientContextDetectionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 71
    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionService$1;

    invoke-direct {v0, p0}, Landroid/service/ambientcontext/AmbientContextDetectionService$1;-><init>(Landroid/service/ambientcontext/AmbientContextDetectionService;)V

    return-object v0

    .line 133
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onQueryServiceStatus([ILjava/lang/String;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onStartDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ambientcontext/AmbientContextEventRequest;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/ambientcontext/AmbientContextDetectionResult;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onStopDetection(Ljava/lang/String;)V
.end method
