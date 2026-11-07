.class public final Landroid/service/controls/actions/CommandAction;
.super Landroid/service/controls/actions/ControlAction;
.source "CommandAction.java"


# static fields
.field private static final blacklist TYPE:I = 0x5


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "b"    # Landroid/os/Bundle;

    .line 57
    invoke-direct {p0, p1}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "templateId"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "challengeValue"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/service/controls/actions/ControlAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist getActionType()I
    .registers 2

    .line 65
    const/4 v0, 0x5

    return v0
.end method
