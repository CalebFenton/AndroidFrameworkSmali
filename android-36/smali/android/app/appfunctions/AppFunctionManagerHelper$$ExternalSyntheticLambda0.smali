.class public final synthetic Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/Executor;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->lambda$isAppFunctionEnabled$1(Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method
