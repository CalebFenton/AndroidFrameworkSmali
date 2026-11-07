.class public final Landroid/service/controls/templates/ToggleRangeTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "ToggleRangeTemplate.java"


# static fields
.field private static final blacklist KEY_BUTTON:Ljava/lang/String; = "key_button"

.field private static final blacklist KEY_RANGE:Ljava/lang/String; = "key_range"

.field private static final blacklist TYPE:I = 0x6


# instance fields
.field private final blacklist mControlButton:Landroid/service/controls/templates/ControlButton;

.field private final blacklist mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "b"    # Landroid/os/Bundle;

    .line 45
    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    .line 46
    const-string/jumbo v0, "key_button"

    const-class v1, Landroid/service/controls/templates/ControlButton;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/controls/templates/ControlButton;

    iput-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    .line 47
    new-instance v0, Landroid/service/controls/templates/RangeTemplate;

    const-string/jumbo v1, "key_range"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/controls/templates/RangeTemplate;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/service/controls/templates/ControlButton;Landroid/service/controls/templates/RangeTemplate;)V
    .registers 4
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/service/controls/templates/ControlButton;
    .param p3, "range"    # Landroid/service/controls/templates/RangeTemplate;

    .line 59
    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    .line 63
    iput-object p3, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ZLjava/lang/CharSequence;Landroid/service/controls/templates/RangeTemplate;)V
    .registers 6
    .param p1, "templateId"    # Ljava/lang/String;
    .param p2, "checked"    # Z
    .param p3, "actionDescription"    # Ljava/lang/CharSequence;
    .param p4, "range"    # Landroid/service/controls/templates/RangeTemplate;

    .line 78
    new-instance v0, Landroid/service/controls/templates/ControlButton;

    invoke-direct {v0, p2, p3}, Landroid/service/controls/templates/ControlButton;-><init>(ZLjava/lang/CharSequence;)V

    invoke-direct {p0, p1, v0, p4}, Landroid/service/controls/templates/ToggleRangeTemplate;-><init>(Ljava/lang/String;Landroid/service/controls/templates/ControlButton;Landroid/service/controls/templates/RangeTemplate;)V

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist getActionDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlButton;->getActionDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getDataBundle()Landroid/os/Bundle;
    .registers 4

    .line 90
    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "key_button"

    iget-object v2, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    iget-object v1, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    invoke-virtual {v1}, Landroid/service/controls/templates/RangeTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key_range"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 93
    return-object v0
.end method

.method public whitelist getRange()Landroid/service/controls/templates/RangeTemplate;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    return-object v0
.end method

.method public whitelist getTemplateType()I
    .registers 2

    .line 115
    const/4 v0, 0x6

    return v0
.end method

.method public whitelist isChecked()Z
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlButton;->isChecked()Z

    move-result v0

    return v0
.end method
