.class public final synthetic Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/ArrayList;

.field public final synthetic blacklist f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-static {v0, v1}, Landroid/os/BinderProxy$ProxyMap;->lambda$getSortedInterfaceCounts$0(Ljava/util/ArrayList;Ljava/util/Map;)V

    return-void
.end method
