.class public final synthetic Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Throwable;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$2:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->lambda$executeCallback$0(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method
