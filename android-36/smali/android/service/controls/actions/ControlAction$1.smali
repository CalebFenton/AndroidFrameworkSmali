.class Landroid/service/controls/actions/ControlAction$1;
.super Landroid/service/controls/actions/ControlAction;
.source "ControlAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/actions/ControlAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/controls/actions/ControlAction;-><init>(Landroid/service/controls/actions/ControlAction-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist getActionType()I
    .registers 2

    .line 75
    const/4 v0, -0x1

    return v0
.end method
