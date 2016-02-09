.class Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$RunQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAction"
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field delay:J


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$RunQueue$HandlerAction;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 6914
    if-ne p0, p1, :cond_0

    #@4
    return v2

    #@5
    .line 6915
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 6917
    check-cast v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    #@15
    .line 6918
    .local v0, "that":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iget-object v3, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@17
    if-eqz v3, :cond_5

    #@19
    iget-object v3, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@1b
    iget-object v4, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_4

    #@23
    :cond_3
    move v1, v2

    #@24
    :cond_4
    :goto_0
    return v1

    #@25
    :cond_5
    iget-object v3, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@27
    if-eqz v3, :cond_3

    #@29
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    .line 6924
    iget-object v1, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    #@6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@9
    move-result v0

    #@a
    .line 6925
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    #@c
    iget-wide v2, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    #@e
    iget-wide v4, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    #@10
    const/16 v6, 0x20

    #@12
    ushr-long/2addr v4, v6

    #@13
    xor-long/2addr v2, v4

    #@14
    long-to-int v2, v2

    #@15
    add-int v0, v1, v2

    #@17
    .line 6926
    return v0

    #@18
    .line 6924
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    #@19
    .restart local v0    # "result":I
    goto :goto_0
.end method
