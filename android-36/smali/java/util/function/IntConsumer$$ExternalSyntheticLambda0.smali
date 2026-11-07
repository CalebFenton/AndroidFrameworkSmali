.class public final synthetic Ljava/util/function/IntConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntConsumer;

.field public final synthetic blacklist f$1:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/IntConsumer$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    iput-object p2, p0, Ljava/util/function/IntConsumer$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/function/IntConsumer$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    iget-object v1, p0, Ljava/util/function/IntConsumer$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/IntConsumer;

    invoke-static {v0, v1, p1}, Ljava/util/function/IntConsumer;->$r8$lambda$iLtxQh6jeJbOS7bKV7_uoG6XE30(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;I)V

    return-void
.end method
