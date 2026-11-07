.class public final synthetic Landroid/service/games/GameSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/games/GameSessionActivityCallback;

.field public final synthetic blacklist f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;->f$0:Landroid/service/games/GameSessionActivityCallback;

    iput-object p2, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;->f$0:Landroid/service/games/GameSessionActivityCallback;

    iget-object v1, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Landroid/service/games/GameSession;->lambda$startActivityFromGameSessionForResult$2(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V

    return-void
.end method
