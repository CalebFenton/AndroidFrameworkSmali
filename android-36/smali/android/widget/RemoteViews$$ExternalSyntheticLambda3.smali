.class public final synthetic Landroid/widget/RemoteViews$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    check-cast p1, Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->lambda$estimateIconMemoryUsage$8(Ljava/util/concurrent/atomic/AtomicLong;Landroid/graphics/drawable/Icon;)V

    return-void
.end method
