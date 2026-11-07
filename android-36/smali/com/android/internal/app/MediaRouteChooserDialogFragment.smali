.class public Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# instance fields
.field private final blacklist ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

.field private blacklist mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 35
    const-string/jumbo v0, "routeTypes"

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 47
    const v0, 0x1030132

    goto :goto_19

    .line 48
    :cond_16
    const v0, 0x103012e

    :goto_19
    nop

    .line 50
    .local v0, "theme":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setCancelable(Z)V

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setStyle(II)V

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist getRouteTypes()I
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_e

    const-string/jumbo v1, "routeTypes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public blacklist onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 94
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;

    move-result-object v0

    .line 100
    .local v0, "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 101
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-object v0
.end method

.method public blacklist setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 76
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_11

    .line 77
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    .line 80
    .local v0, "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    if-eqz v0, :cond_11

    .line 81
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .end local v0    # "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    :cond_11
    return-void
.end method

.method public blacklist setRouteTypes(I)V
    .registers 4
    .param p1, "types"    # I

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    move-result v0

    if-eq p1, v0, :cond_26

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_12

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 65
    :cond_12
    const-string/jumbo v1, "routeTypes"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MediaRouteChooserDialog;

    .line 69
    .local v1, "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    if-eqz v1, :cond_26

    .line 70
    invoke-virtual {v1, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 73
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    :cond_26
    return-void
.end method
