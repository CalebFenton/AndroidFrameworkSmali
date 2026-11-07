.class public final synthetic Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda3;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda3;->f$2:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/app/role/RoleControllerManager;->lambda$propagateCallback$12(Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void
.end method
