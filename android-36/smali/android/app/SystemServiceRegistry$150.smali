.class Landroid/app/SystemServiceRegistry$150;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "TTServiceClass;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$serviceProducer:Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;


# direct methods
.method constructor blacklist <init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
    .registers 2

    .line 2254
    iput-object p1, p0, Landroid/app/SystemServiceRegistry$150;->val$serviceProducer:Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TTServiceClass;"
        }
    .end annotation

    .line 2257
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$150;->val$serviceProducer:Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;->createService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
