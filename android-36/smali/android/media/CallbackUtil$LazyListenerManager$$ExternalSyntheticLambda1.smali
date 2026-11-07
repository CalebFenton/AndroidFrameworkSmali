.class public final synthetic Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/media/CallbackUtil$DispatcherStub;

    invoke-static {p1}, Landroid/media/CallbackUtil$LazyListenerManager;->lambda$addListener$0(Landroid/media/CallbackUtil$DispatcherStub;)V

    return-void
.end method
