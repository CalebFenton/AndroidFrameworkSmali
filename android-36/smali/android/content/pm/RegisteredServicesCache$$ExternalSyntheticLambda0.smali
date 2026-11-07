.class public final synthetic Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/pm/RegisteredServicesCacheListener;

.field public final synthetic blacklist f$1:Ljava/lang/Object;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/RegisteredServicesCacheListener;

    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/RegisteredServicesCacheListener;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget v2, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean v3, p0, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/RegisteredServicesCache;->lambda$notifyListener$0(Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V

    return-void
.end method
