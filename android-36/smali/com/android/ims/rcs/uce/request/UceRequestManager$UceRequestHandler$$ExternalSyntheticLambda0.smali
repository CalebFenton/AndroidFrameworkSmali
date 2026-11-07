.class public final synthetic Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lcom/android/ims/SomeArgs;

    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->lambda$onDestroy$0(Ljava/lang/Long;Lcom/android/ims/SomeArgs;)V

    return-void
.end method
