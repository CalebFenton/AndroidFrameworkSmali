.class Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;
.super Landroid/service/resolver/IResolverRankerService$Stub;
.source "ResolverRankerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/resolver/ResolverRankerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverRankerServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/resolver/ResolverRankerService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/resolver/ResolverRankerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    invoke-direct {p0}, Landroid/service/resolver/IResolverRankerService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/resolver/ResolverRankerService;Landroid/service/resolver/ResolverRankerService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;-><init>(Landroid/service/resolver/ResolverRankerService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .registers 5
    .param p2, "result"    # Landroid/service/resolver/IResolverRankerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;",
            "Landroid/service/resolver/IResolverRankerResult;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    new-instance v0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;-><init>(Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    .line 165
    .local v0, "predictRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    invoke-static {v1}, Landroid/service/resolver/ResolverRankerService;->-$$Nest$fgetmHandler(Landroid/service/resolver/ResolverRankerService;)Landroid/os/Handler;

    move-result-object v1

    .line 166
    .local v1, "h":Landroid/os/Handler;
    if-eqz v1, :cond_10

    .line 167
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :cond_10
    return-void
.end method

.method public greylist-max-o train(Ljava/util/List;I)V
    .registers 5
    .param p2, "selectedPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    new-instance v0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;-><init>(Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;Ljava/util/List;I)V

    .line 187
    .local v0, "trainRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    invoke-static {v1}, Landroid/service/resolver/ResolverRankerService;->-$$Nest$fgetmHandler(Landroid/service/resolver/ResolverRankerService;)Landroid/os/Handler;

    move-result-object v1

    .line 188
    .local v1, "h":Landroid/os/Handler;
    if-eqz v1, :cond_10

    .line 189
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_10
    return-void
.end method
