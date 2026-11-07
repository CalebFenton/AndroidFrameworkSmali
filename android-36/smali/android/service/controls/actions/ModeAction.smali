.class public final Landroid/service/controls/actions/ModeAction;
.super Landroid/service/controls/actions/ControlAction;
.source "ModeAction.java"


# static fields
.field private static final blacklist KEY_MODE:Ljava/lang/String; = "key_mode"

.field private static final blacklist TYPE:I = 0x4


# instance fields
.field private final blacklist mNewMode:I


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/Bundle;

    .line 73
    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    .line 74
    const-string/jumbo v0, "key_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/controls/actions/ModeAction;->mNewMode:I

    .line 75
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "newMode"    # I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/service/controls/actions/ModeAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "newMode"    # I
    .param p3, "challengeValue"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p3}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput p2, p0, Landroid/service/controls/actions/ModeAction;->mNewMode:I

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist getActionType()I
    .registers 2

    .line 43
    const/4 v0, 0x4

    return v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .registers 4

    .line 84
    invoke-super {p0}, Landroid/service/controls/actions/ControlAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "key_mode"

    iget v2, p0, Landroid/service/controls/actions/ModeAction;->mNewMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    return-object v0
.end method

.method public whitelist getNewMode()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/service/controls/actions/ModeAction;->mNewMode:I

    return v0
.end method
