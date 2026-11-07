.class public final synthetic Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    check-cast p1, Lcom/android/ims/rcs/uce/request/UceRequest;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->$r8$lambda$2MYY7OmdfYLU_0fynNXaceARnOo(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;Lcom/android/ims/rcs/uce/request/UceRequest;)V

    return-void
.end method
