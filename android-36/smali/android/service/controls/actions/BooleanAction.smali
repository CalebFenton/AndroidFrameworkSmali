.class public final Landroid/service/controls/actions/BooleanAction;
.super Landroid/service/controls/actions/ControlAction;
.source "BooleanAction.java"


# static fields
.field private static final blacklist KEY_NEW_STATE:Ljava/lang/String; = "key_new_state"

.field private static final blacklist TYPE:I = 0x1


# instance fields
.field private final blacklist mNewState:Z


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/Bundle;

    .line 65
    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    .line 66
    const-string/jumbo v0, "key_new_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    .line 67
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "newState"    # Z

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "newState"    # Z
    .param p3, "challengeValue"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p3}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-boolean p2, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist getActionType()I
    .registers 2

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .registers 4

    .line 93
    invoke-super {p0}, Landroid/service/controls/actions/ControlAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "key_new_state"

    iget-boolean v2, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    return-object v0
.end method

.method public whitelist getNewState()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroid/service/controls/actions/BooleanAction;->mNewState:Z

    return v0
.end method
