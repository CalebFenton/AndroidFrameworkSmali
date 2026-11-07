.class public final synthetic Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/role/RoleControllerManager$$ExternalSyntheticLambda0;->f$1:Landroid/os/RemoteCallback;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Landroid/app/role/RoleControllerManager;->lambda$propagateCallback$13(Ljava/lang/String;Landroid/os/RemoteCallback;Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void
.end method
