.class final Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResolvedComponentInfo"
.end annotation


# instance fields
.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1566
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    #@a
    .line 1567
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    #@11
    .line 1570
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    #@13
    .line 1571
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    #@16
    .line 1569
    return-void
.end method


# virtual methods
.method public add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 1576
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    #@7
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 1574
    return-void
.end method

.method public findIntent(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1592
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1593
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p1, v2}, Landroid/content/Intent;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 1594
    return v1

    #@16
    .line 1592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1597
    :cond_1
    const/4 v2, -0x1

    #@1a
    return v2
.end method

.method public findResolveInfo(Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 1601
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1602
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 1603
    return v1

    #@16
    .line 1601
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1606
    :cond_1
    const/4 v2, -0x1

    #@1a
    return v2
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntentAt(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1584
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mIntents:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/content/Intent;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1588
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->mResolveInfos:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method
