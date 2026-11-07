.class public abstract Landroid/service/textclassifier/TextClassifierService;
.super Landroid/app/Service;
.source "TextClassifierService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/TextClassifierService$Callback;,
        Landroid/service/textclassifier/TextClassifierService$ProxyCallback;,
        Landroid/service/textclassifier/TextClassifierService$ConnectionState;
    }
.end annotation


# static fields
.field public static final blacklist CONNECTED:I = 0x0

.field public static final blacklist DISCONNECTED:I = 0x1

.field private static final blacklist KEY_RESULT:Ljava/lang/String; = "key_result"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "TextClassifierService"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.textclassifier.TextClassifierService"


# instance fields
.field private final greylist-max-o mBinder:Landroid/service/textclassifier/ITextClassifierService$Stub;

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private final blacklist mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic blacklist $r8$lambda$MZz8bJGo4RoadVT2UpteuLHbVyo(Landroid/service/textclassifier/TextClassifierService;Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/ConversationActions$Request;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->lambda$onSuggestConversationActions$1(Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/ConversationActions$Request;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mY__VSAaZAyRJDjB8jIhjCHCRQM(Landroid/service/textclassifier/TextClassifierService;Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/TextLanguage$Request;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->lambda$onDetectLanguage$0(Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/TextLanguage$Request;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;

    .line 118
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/textclassifier/TextClassifierService;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 120
    new-instance v0, Landroid/service/textclassifier/TextClassifierService$1;

    invoke-direct {v0, p0}, Landroid/service/textclassifier/TextClassifierService$1;-><init>(Landroid/service/textclassifier/TextClassifierService;)V

    iput-object v0, p0, Landroid/service/textclassifier/TextClassifierService;->mBinder:Landroid/service/textclassifier/ITextClassifierService$Stub;

    return-void
.end method

.method public static whitelist getDefaultTextClassifierImplementation(Landroid/content/Context;)Landroid/view/textclassifier/TextClassifier;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 404
    nop

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "defaultTextClassifierPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 407
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v1

    .line 409
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 414
    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    .line 415
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassificationManager;

    .line 416
    .local v1, "tcm":Landroid/view/textclassifier/TextClassificationManager;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object v2

    return-object v2

    .line 410
    .end local v1    # "tcm":Landroid/view/textclassifier/TextClassificationManager;
    :cond_2a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The default text classifier itself should not call thegetDefaultTextClassifierImplementation() method."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 421
    const-string/jumbo v0, "key_result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getServiceComponentName(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resolveFlags"    # I

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 462
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    const-string v3, "TextClassifierService"

    if-eqz v1, :cond_43

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_1d

    goto :goto_43

    .line 468
    :cond_1d
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 470
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 471
    .local v5, "permission":Ljava/lang/String;
    const-string v6, "android.permission.BIND_TEXTCLASSIFIER_SERVICE"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 472
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 474
    :cond_2e
    nop

    .line 476
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    filled-new-array {v7, v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 474
    const-string v7, "Service %s should require %s permission. Found %s permission"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-object v2

    .line 463
    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "permission":Ljava/lang/String;
    :cond_43
    :goto_43
    nop

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 463
    const-string v5, "Package or service not found in package %s for user %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-object v2
.end method

.method private synthetic blacklist lambda$onDetectLanguage$0(Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/TextLanguage$Request;)V
    .registers 4
    .param p1, "callback"    # Landroid/service/textclassifier/TextClassifierService$Callback;
    .param p2, "request"    # Landroid/view/textclassifier/TextLanguage$Request;

    .line 311
    invoke-virtual {p0}, Landroid/service/textclassifier/TextClassifierService;->getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/textclassifier/TextClassifier;->detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/service/textclassifier/TextClassifierService$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSuggestConversationActions$1(Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/ConversationActions$Request;)V
    .registers 4
    .param p1, "callback"    # Landroid/service/textclassifier/TextClassifierService$Callback;
    .param p2, "request"    # Landroid/view/textclassifier/ConversationActions$Request;

    .line 329
    invoke-virtual {p0}, Landroid/service/textclassifier/TextClassifierService;->getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/textclassifier/TextClassifier;->suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/service/textclassifier/TextClassifierService$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation

    .line 426
    .local p1, "response":Landroid/os/Parcelable;, "TT;"
    const-string/jumbo v0, "key_result"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 427
    return-void
.end method


# virtual methods
.method public final whitelist getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 222
    const-string v0, "android.service.textclassifier.TextClassifierService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 223
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService;->mBinder:Landroid/service/textclassifier/ITextClassifierService$Stub;

    return-object v0

    .line 225
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextClassification$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onConnected()V
    .registers 1

    .line 238
    return-void
.end method

.method public whitelist onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 3
    .param p1, "context"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 373
    return-void
.end method

.method public whitelist onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 382
    return-void
.end method

.method public whitelist onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .registers 7
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLanguage$Request;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextLanguage$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextLanguage;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p4, "callback":Landroid/service/textclassifier/TextClassifierService$Callback;, "Landroid/service/textclassifier/TextClassifierService$Callback<Landroid/view/textclassifier/TextLanguage;>;"
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p4, p2}, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda1;-><init>(Landroid/service/textclassifier/TextClassifierService;Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/TextLanguage$Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 312
    return-void
.end method

.method public whitelist onDisconnected()V
    .registers 1

    .line 246
    return-void
.end method

.method public abstract whitelist onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextLinks$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextLinks;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .registers 3
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/SelectionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    return-void
.end method

.method public whitelist onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .registers 7
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/ConversationActions$Request;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/ConversationActions$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/ConversationActions;",
            ">;)V"
        }
    .end annotation

    .line 328
    .local p4, "callback":Landroid/service/textclassifier/TextClassifierService$Callback;, "Landroid/service/textclassifier/TextClassifierService$Callback<Landroid/view/textclassifier/ConversationActions;>;"
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p4, p2}, Landroid/service/textclassifier/TextClassifierService$$ExternalSyntheticLambda0;-><init>(Landroid/service/textclassifier/TextClassifierService;Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/ConversationActions$Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 330
    return-void
.end method

.method public abstract whitelist onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextSelection$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextSelection;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 3
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/TextClassifierEvent;

    .line 362
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 230
    invoke-virtual {p0}, Landroid/service/textclassifier/TextClassifierService;->onDisconnected()V

    .line 231
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
