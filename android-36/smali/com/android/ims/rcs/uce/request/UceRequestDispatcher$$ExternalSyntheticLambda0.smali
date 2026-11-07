.class public final synthetic Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Long;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Long;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Long;

    check-cast p1, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->lambda$onRequestFinished$1(Ljava/lang/Long;Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;)Z

    move-result p1

    return p1
.end method
