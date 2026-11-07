.class Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->requestNetworkValidation(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$resultCodeCallback:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "this$1"    # Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
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

    .line 298
    iput-object p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1;->val$resultCodeCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "resultCodeCallback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # I

    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .registers 5
    .param p1, "result"    # I

    .line 301
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1;->val$resultCodeCallback:Ljava/util/function/Consumer;

    new-instance v2, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method
