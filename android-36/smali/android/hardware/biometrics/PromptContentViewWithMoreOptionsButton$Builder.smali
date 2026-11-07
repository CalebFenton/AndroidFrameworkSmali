.class public final Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;
.super Ljava/lang/Object;
.source "PromptContentViewWithMoreOptionsButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;
    .registers 6

    .line 191
    iget-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1d

    .line 197
    iget-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_15

    .line 202
    new-instance v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    iget-object v1, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mDescription:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton-IA;)V

    return-object v0

    .line 198
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The listener of more options button on prompt content must be set and non-null if PromptContentViewWithMoreOptionsButton is used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The executor for the listener of more options button on prompt content must be set and non-null if PromptContentViewWithMoreOptionsButton is used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;
    .registers 4
    .param p1, "description"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe1

    if-le v0, v1, :cond_f

    .line 156
    const-string v0, "PromptContentViewWithMoreOptionsButton"

    const-string v1, "The character number of description exceeds 225"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_f
    iput-object p1, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mDescription:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public whitelist setMoreOptionsButtonListener(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 175
    iput-object p1, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 176
    iput-object p2, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 177
    return-object p0
.end method
