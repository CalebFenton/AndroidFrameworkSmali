.class public final synthetic Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Spliterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Spliterator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;->f$0:Ljava/util/Spliterator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;->f$0:Ljava/util/Spliterator;

    invoke-static {v0}, Ljava/util/stream/AbstractPipeline;->lambda$wrapSpliterator$1(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
