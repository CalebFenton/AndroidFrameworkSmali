.class public final synthetic Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Throwable;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$3:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Throwable;

    iput-object p2, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    iput-object p4, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Throwable;

    iget-object v1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    iget-object v3, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Landroid/app/role/RoleControllerManager;->lambda$propagateCallback$11(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method
