.class public final Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedComponentInfo"
.end annotation


# instance fields
.field private blacklist mFixedAtTop:Z

.field private final blacklist mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPinned:Z

.field private final blacklist mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist name:Landroid/content/ComponentName;


# direct methods
.method public constructor blacklist <init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .line 2487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    .line 2483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    .line 2488
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 2489
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 2490
    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .line 2493
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2494
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2495
    return-void
.end method

.method public blacklist findIntent(Landroid/content/Intent;)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2510
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "N":I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 2511
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2512
    return v0

    .line 2510
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2515
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist findResolveInfo(Landroid/content/pm/ResolveInfo;)I
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 2519
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "N":I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 2520
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2521
    return v0

    .line 2519
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2524
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCount()I
    .registers 2

    .line 2498
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getIntentAt(I)Landroid/content/Intent;
    .registers 3
    .param p1, "index"    # I

    .line 2502
    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;
    .registers 3
    .param p1, "index"    # I

    .line 2506
    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist isFixedAtTop()Z
    .registers 2

    .line 2536
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mFixedAtTop:Z

    return v0
.end method

.method public blacklist isPinned()Z
    .registers 2

    .line 2528
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mPinned:Z

    return v0
.end method

.method public blacklist setFixedAtTop(Z)V
    .registers 2
    .param p1, "isFixedAtTop"    # Z

    .line 2540
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mFixedAtTop:Z

    .line 2541
    return-void
.end method

.method public blacklist setPinned(Z)V
    .registers 2
    .param p1, "pinned"    # Z

    .line 2532
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mPinned:Z

    .line 2533
    return-void
.end method
