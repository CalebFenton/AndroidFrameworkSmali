.class public Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
.super Lcom/android/internal/app/chooser/DisplayResolveInfo;
.source "MultiDisplayResolveInfo.java"


# instance fields
.field final blacklist mBaseInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mSelected:I

.field blacklist mTargetInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "firstInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 42
    invoke-direct {p0, p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    .line 43
    iput-object p2, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mBaseInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 44
    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist addTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 3
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 57
    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public blacklist getExtendedInfo()Ljava/lang/CharSequence;
    .registers 2

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSelectedTarget()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 3

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public blacklist getTargets()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist hasSelected()Z
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist setSelected(I)V
    .registers 2
    .param p1, "selected"    # I

    .line 68
    iput p1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    .line 69
    return-void
.end method

.method public blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 87
    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .registers 6
    .param p1, "activity"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 92
    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 97
    iget-object v0, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mTargetInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->mSelected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method
