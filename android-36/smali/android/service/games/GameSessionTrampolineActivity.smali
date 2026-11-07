.class public final Landroid/service/games/GameSessionTrampolineActivity;
.super Landroid/app/Activity;
.source "GameSessionTrampolineActivity.java"


# static fields
.field static final blacklist FUTURE_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.future"

.field private static final blacklist HAS_LAUNCHED_INTENT_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.hasLaunchedIntent"

.field static final blacklist INTENT_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.intent"

.field static final blacklist OPTIONS_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.options"

.field private static final blacklist REQUEST_CODE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GameSessionTrampoline"


# instance fields
.field private blacklist mHasLaunchedIntent:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    return-void
.end method

.method public static blacklist createIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)Landroid/content/Intent;
    .registers 7
    .param p0, "targetIntent"    # Landroid/content/Intent;
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/games/GameSessionActivityResult;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 71
    .local p2, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameSessionActivityResult;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "trampolineIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "android.service.games.GameSessionTrampolineActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    const-string v1, "GameSessionTrampolineActivity.intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    const-string v1, "GameSessionTrampolineActivity.options"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    const-string v1, "GameSessionTrampolineActivity.future"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    return-object v0
.end method


# virtual methods
.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 120
    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 125
    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GameSessionTrampolineActivity.future"

    const-class v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AndroidFuture;

    .line 127
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameSessionActivityResult;>;"
    new-instance v1, Landroid/service/games/GameSessionActivityResult;

    invoke-direct {v1, p2, p3}, Landroid/service/games/GameSessionActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->finish()V

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/service/games/GameSessionTrampolineActivity;->overridePendingTransition(II)V

    .line 130
    return-void

    .line 122
    .end local v0    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameSessionActivityResult;>;"
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_d

    .line 87
    const-string v0, "GameSessionTrampolineActivity.hasLaunchedIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    .line 90
    :cond_d
    iget-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    if-eqz v0, :cond_12

    .line 91
    return-void

    .line 93
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    .line 96
    nop

    .line 97
    :try_start_16
    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GameSessionTrampolineActivity.intent"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GameSessionTrampolineActivity.options"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 100
    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getUserId()I

    move-result v5
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_3c

    .line 96
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    :try_start_36
    invoke-virtual/range {v1 .. v6}, Landroid/service/games/GameSessionTrampolineActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    .line 109
    goto :goto_5d

    .line 102
    :catch_3a
    move-exception v0

    goto :goto_3e

    :catch_3c
    move-exception v0

    move-object v1, p0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    :goto_3e
    const-string v2, "GameSessionTrampoline"

    const-string v3, "Unable to launch activity from game session"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "GameSessionTrampolineActivity.future"

    const-class v4, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 106
    .local v2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameSessionActivityResult;>;"
    invoke-virtual {v2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 107
    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->finish()V

    .line 108
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Landroid/service/games/GameSessionTrampolineActivity;->overridePendingTransition(II)V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameSessionActivityResult;>;"
    :goto_5d
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "GameSessionTrampolineActivity.hasLaunchedIntent"

    iget-boolean v1, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    return-void
.end method
