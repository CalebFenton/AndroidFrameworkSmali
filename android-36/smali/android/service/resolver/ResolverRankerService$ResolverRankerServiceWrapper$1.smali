.class Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;
.super Ljava/lang/Object;
.source "ResolverRankerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

.field final synthetic blacklist val$result:Landroid/service/resolver/IResolverRankerResult;

.field final synthetic blacklist val$targets:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .registers 4
    .param p1, "this$1"    # Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    iput-object p2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$targets:Ljava/util/List;

    iput-object p3, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$result:Landroid/service/resolver/IResolverRankerResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    iget-object v0, v0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$targets:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/service/resolver/ResolverRankerService;->onPredictSharingProbabilities(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$targets:Ljava/util/List;

    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$result:Landroid/service/resolver/IResolverRankerResult;

    invoke-static {v0, v1}, Landroid/service/resolver/ResolverRankerService;->-$$Nest$smsendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 162
    goto :goto_31

    .line 159
    :catch_11
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPredictSharingProbabilities failed; send null results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverRankerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$result:Landroid/service/resolver/IResolverRankerResult;

    invoke-static {v1, v2}, Landroid/service/resolver/ResolverRankerService;->-$$Nest$smsendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method
