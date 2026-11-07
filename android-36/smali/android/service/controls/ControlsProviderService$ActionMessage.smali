.class Landroid/service/controls/ControlsProviderService$ActionMessage;
.super Ljava/lang/Object;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionMessage"
.end annotation


# instance fields
.field final blacklist mAction:Landroid/service/controls/actions/ControlAction;

.field final blacklist mCb:Landroid/service/controls/IControlsActionCallback;

.field final blacklist mControlId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Landroid/service/controls/IControlsActionCallback;)V
    .registers 4
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "action"    # Landroid/service/controls/actions/ControlAction;
    .param p3, "cb"    # Landroid/service/controls/IControlsActionCallback;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    .line 453
    iput-object p2, p0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mAction:Landroid/service/controls/actions/ControlAction;

    .line 454
    iput-object p3, p0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mCb:Landroid/service/controls/IControlsActionCallback;

    .line 455
    return-void
.end method
