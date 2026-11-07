.class public abstract Landroid/service/assist/classification/FieldClassificationService;
.super Landroid/app/Service;
.source "FieldClassificationService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.assist.classification.FieldClassificationService"

.field private static final blacklist TAG:Ljava/lang/String;

.field static blacklist sDebug:Z

.field static blacklist sVerbose:Z


# instance fields
.field private blacklist mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleOnClassificationRequest(Landroid/service/assist/classification/FieldClassificationService;Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/assist/classification/FieldClassificationService;->handleOnClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnConnected(Landroid/service/assist/classification/FieldClassificationService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/assist/classification/FieldClassificationService;->handleOnConnected(ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDisconnected(Landroid/service/assist/classification/FieldClassificationService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/assist/classification/FieldClassificationService;->handleOnDisconnected()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/service/assist/classification/FieldClassificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/assist/classification/FieldClassificationService;->TAG:Ljava/lang/String;

    .line 53
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/service/assist/classification/FieldClassificationService;->sDebug:Z

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Landroid/service/assist/classification/FieldClassificationService;->sVerbose:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private blacklist handleOnClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V
    .registers 6
    .param p1, "request"    # Landroid/service/assist/classification/FieldClassificationRequest;
    .param p2, "callback"    # Landroid/service/assist/classification/IFieldClassificationCallback;

    .line 153
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 154
    .local v0, "transport":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 155
    .local v1, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v2, Landroid/service/assist/classification/FieldClassificationService$1;

    invoke-direct {v2, p0, p2}, Landroid/service/assist/classification/FieldClassificationService$1;-><init>(Landroid/service/assist/classification/FieldClassificationService;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    invoke-virtual {p0, p1, v1, v2}, Landroid/service/assist/classification/FieldClassificationService;->onClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V

    .line 176
    return-void
.end method

.method private blacklist handleOnConnected(ZZ)V
    .registers 6
    .param p1, "debug"    # Z
    .param p2, "verbose"    # Z

    .line 138
    sget-boolean v0, Landroid/service/assist/classification/FieldClassificationService;->sDebug:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_29

    .line 139
    :cond_6
    sget-object v0, Landroid/service/assist/classification/FieldClassificationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleOnConnected(): debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", verbose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_29
    sput-boolean p1, Landroid/service/assist/classification/FieldClassificationService;->sDebug:Z

    .line 142
    sput-boolean p2, Landroid/service/assist/classification/FieldClassificationService;->sVerbose:Z

    .line 143
    invoke-virtual {p0}, Landroid/service/assist/classification/FieldClassificationService;->onConnected()V

    .line 144
    return-void
.end method

.method private blacklist handleOnDisconnected()V
    .registers 1

    .line 147
    invoke-virtual {p0}, Landroid/service/assist/classification/FieldClassificationService;->onDisconnected()V

    .line 148
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 99
    const-string v0, "android.service.assist.classification.FieldClassificationService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/assist/classification/FieldClassificationService;->mServiceComponentName:Landroid/content/ComponentName;

    .line 101
    new-instance v0, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;

    invoke-direct {v0, p0, v1}, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;-><init>(Landroid/service/assist/classification/FieldClassificationService;Landroid/service/assist/classification/FieldClassificationService-IA;)V

    invoke-virtual {v0}, Landroid/service/assist/classification/FieldClassificationService$FieldClassificationServiceImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1d
    sget-object v0, Landroid/service/assist/classification/FieldClassificationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to bind to wrong intent (should be android.service.assist.classification.FieldClassificationService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object v1
.end method

.method public abstract whitelist onClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/assist/classification/FieldClassificationRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/assist/classification/FieldClassificationResponse;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onConnected()V
    .registers 1

    .line 113
    return-void
.end method

.method public whitelist onCreate()V
    .registers 2

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 94
    return-void
.end method

.method public whitelist onDisconnected()V
    .registers 1

    .line 135
    return-void
.end method
