.class Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;
.super Ljava/lang/Object;
.source "ResolverRankerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->train(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

.field final synthetic blacklist val$selectedPosition:I

.field final synthetic blacklist val$targets:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;Ljava/util/List;I)V
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

    .line 174
    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    iput-object p2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->val$targets:Ljava/util/List;

    iput p3, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->val$selectedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    iget-object v0, v0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->val$targets:Ljava/util/List;

    iget v2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$2;->val$selectedPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/service/resolver/ResolverRankerService;->onTrainRankingModel(Ljava/util/List;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 184
    goto :goto_26

    .line 182
    :catch_c
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrainRankingModel failed; skip train: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverRankerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method
