.class public final synthetic Landroid/app/cloudsearch/CloudSearchManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

.field public final synthetic blacklist f$1:Landroid/app/cloudsearch/SearchRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/cloudsearch/CloudSearchManager$CallBack;Landroid/app/cloudsearch/SearchRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/cloudsearch/CloudSearchManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    iput-object p2, p0, Landroid/app/cloudsearch/CloudSearchManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/cloudsearch/SearchRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    iget-object v1, p0, Landroid/app/cloudsearch/CloudSearchManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/cloudsearch/SearchRequest;

    invoke-static {v0, v1}, Landroid/app/cloudsearch/CloudSearchManager;->lambda$search$0(Landroid/app/cloudsearch/CloudSearchManager$CallBack;Landroid/app/cloudsearch/SearchRequest;)V

    return-void
.end method
