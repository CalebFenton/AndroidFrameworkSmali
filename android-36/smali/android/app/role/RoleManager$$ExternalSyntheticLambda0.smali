.class public final synthetic Landroid/app/role/RoleManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Bundle;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Bundle;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/role/RoleManager$$ExternalSyntheticLambda0;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Landroid/app/role/RoleManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/role/RoleManager$$ExternalSyntheticLambda0;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/role/RoleManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/app/role/RoleManager;->lambda$createRemoteCallback$0(Landroid/os/Bundle;Ljava/util/function/Consumer;)V

    return-void
.end method
