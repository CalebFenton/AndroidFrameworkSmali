.class public Lcom/android/internal/globalactions/ActionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionsAdapter.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

.field private final blacklist mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/globalactions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyguardShowing:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "deviceProvisioned"    # Ljava/util/function/BooleanSupplier;
    .param p4, "keyguardShowing"    # Ljava/util/function/BooleanSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/globalactions/Action;",
            ">;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            ")V"
        }
    .end annotation

    .line 38
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/globalactions/Action;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

    .line 42
    iput-object p4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mKeyguardShowing:Ljava/util/function/BooleanSupplier;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .registers 7

    .line 47
    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mKeyguardShowing:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    .line 48
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    .line 49
    .local v1, "deviceProvisioned":Z
    const/4 v2, 0x0

    .line 51
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 52
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/globalactions/Action;

    .line 54
    .local v4, "action":Lcom/android/internal/globalactions/Action;
    if-eqz v0, :cond_27

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showDuringKeyguard()Z

    move-result v5

    if-nez v5, :cond_27

    .line 55
    goto :goto_32

    .line 57
    :cond_27
    if-nez v1, :cond_30

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showBeforeProvisioning()Z

    move-result v5

    if-nez v5, :cond_30

    .line 58
    goto :goto_32

    .line 60
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 51
    .end local v4    # "action":Lcom/android/internal/globalactions/Action;
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 62
    .end local v3    # "i":I
    :cond_35
    return v2
.end method

.method public blacklist getItem(I)Lcom/android/internal/globalactions/Action;
    .registers 8
    .param p1, "position"    # I

    .line 77
    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mKeyguardShowing:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    .line 78
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mDeviceProvisioned:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    .line 80
    .local v1, "deviceProvisioned":Z
    const/4 v2, 0x0

    .line 81
    .local v2, "filteredPos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 82
    iget-object v4, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/globalactions/Action;

    .line 83
    .local v4, "action":Lcom/android/internal/globalactions/Action;
    if-eqz v0, :cond_27

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showDuringKeyguard()Z

    move-result v5

    if-nez v5, :cond_27

    .line 84
    goto :goto_35

    .line 86
    :cond_27
    if-nez v1, :cond_30

    invoke-interface {v4}, Lcom/android/internal/globalactions/Action;->showBeforeProvisioning()Z

    move-result v5

    if-nez v5, :cond_30

    .line 87
    goto :goto_35

    .line 89
    :cond_30
    if-ne v2, p1, :cond_33

    .line 90
    return-object v4

    .line 92
    :cond_33
    add-int/lit8 v2, v2, 0x1

    .line 81
    .end local v4    # "action":Lcom/android/internal/globalactions/Action;
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 95
    .end local v3    # "i":I
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range of showable actions, filtered count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/globalactions/ActionsAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", keyguardshowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", provisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    .line 110
    .local v0, "action":Lcom/android/internal/globalactions/Action;
    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/globalactions/ActionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/internal/globalactions/Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public whitelist isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/globalactions/Action;->isEnabled()Z

    move-result v0

    return v0
.end method
