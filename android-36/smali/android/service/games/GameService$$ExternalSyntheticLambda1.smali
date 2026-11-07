.class public final synthetic Landroid/service/games/GameService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/games/GameService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/games/GameService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/games/GameService$$ExternalSyntheticLambda1;->f$0:Landroid/service/games/GameService;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/service/games/GameService$$ExternalSyntheticLambda1;->f$0:Landroid/service/games/GameService;

    invoke-static {v0}, Landroid/service/games/GameService;->$r8$lambda$hafe0B_OhjgaWEwxFqUl93NKFxo(Landroid/service/games/GameService;)V

    return-void
.end method
