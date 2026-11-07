.class Landroid/widget/RemoteViews$ViewTree;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTree"
.end annotation


# static fields
.field private static final greylist-max-o INSERT_AT_END_INDEX:I = -0x1


# instance fields
.field private greylist-max-o mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$ViewTree;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoot:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChildren(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "root"    # Landroid/view/View;

    .line 9055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9056
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    .line 9057
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/widget/RemoteViews-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private greylist-max-o addViewChild(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 9158
    invoke-virtual {p1}, Landroid/view/View;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9159
    return-void

    .line 9165
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_19

    .line 9166
    new-instance v0, Landroid/widget/RemoteViews$ViewTree;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    .line 9167
    .local v0, "tree":Landroid/widget/RemoteViews$ViewTree;
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9168
    nop

    .line 9169
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    goto :goto_1a

    .line 9170
    .end local v0    # "target":Landroid/widget/RemoteViews$ViewTree;
    :cond_19
    move-object v0, p0

    .line 9173
    .restart local v0    # "target":Landroid/widget/RemoteViews$ViewTree;
    :goto_1a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3d

    .line 9174
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_3d

    .line 9175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 9176
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 9177
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 9178
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v2, :cond_3d

    .line 9179
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    .line 9178
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 9183
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_3d
    return-void
.end method


# virtual methods
.method public greylist-max-o addChild(Landroid/widget/RemoteViews$ViewTree;)V
    .registers 3
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;

    .line 9124
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    .line 9125
    return-void
.end method

.method public greylist-max-o addChild(Landroid/widget/RemoteViews$ViewTree;I)V
    .registers 4
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "index"    # I

    .line 9133
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 9134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 9136
    :cond_b
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 9138
    const/4 v0, -0x1

    if-ne p2, v0, :cond_17

    .line 9139
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9140
    return-void

    .line 9143
    :cond_17
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9144
    return-void
.end method

.method public greylist-max-o createTree()V
    .registers 5

    .line 9060
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 9061
    return-void

    .line 9064
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 9065
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    .line 9066
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 9067
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 9068
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_27

    .line 9069
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    .line 9068
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 9072
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_27
    return-void
.end method

.method public blacklist findChildIndex(ILjava/util/function/Predicate;)I
    .registers 6
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .line 9195
    .local p2, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 9196
    return v1

    .line 9199
    :cond_6
    move v0, p1

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 9200
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$ViewTree;

    iget-object v2, v2, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 9201
    return v0

    .line 9199
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 9204
    .end local v0    # "i":I
    :cond_23
    return v1
.end method

.method public blacklist findChildIndex(Ljava/util/function/Predicate;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .line 9187
    .local p1, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews$ViewTree;->findChildIndex(ILjava/util/function/Predicate;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o findViewById(I)Landroid/view/View;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 9116
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 9117
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 9119
    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 9120
    .local v0, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-nez v0, :cond_13

    const/4 v1, 0x0

    goto :goto_15

    :cond_13
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    :goto_15
    return-object v1
.end method

.method public greylist-max-o findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;
    .registers 6
    .param p1, "id"    # I

    .line 9076
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 9077
    return-object p0

    .line 9079
    :cond_9
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 9080
    return-object v1

    .line 9082
    :cond_f
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$ViewTree;

    .line 9083
    .local v2, "tree":Landroid/widget/RemoteViews$ViewTree;
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v3

    .line 9084
    .local v3, "result":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v3, :cond_28

    .line 9085
    return-object v3

    .line 9087
    .end local v2    # "tree":Landroid/widget/RemoteViews$ViewTree;
    .end local v3    # "result":Landroid/widget/RemoteViews$ViewTree;
    :cond_28
    goto :goto_15

    .line 9088
    :cond_29
    return-object v1
.end method

.method public blacklist findViewTreeParentOf(Landroid/widget/RemoteViews$ViewTree;)Landroid/widget/RemoteViews$ViewTree;
    .registers 6
    .param p1, "child"    # Landroid/widget/RemoteViews$ViewTree;

    .line 9093
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 9094
    return-object v1

    .line 9096
    :cond_6
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$ViewTree;

    .line 9097
    .local v2, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-ne v2, p1, :cond_1b

    .line 9098
    return-object p0

    .line 9100
    :cond_1b
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeParentOf(Landroid/widget/RemoteViews$ViewTree;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v3

    .line 9101
    .local v3, "result":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v3, :cond_22

    .line 9102
    return-object v3

    .line 9104
    .end local v2    # "tree":Landroid/widget/RemoteViews$ViewTree;
    .end local v3    # "result":Landroid/widget/RemoteViews$ViewTree;
    :cond_22
    goto :goto_c

    .line 9105
    :cond_23
    return-object v1
.end method

.method public blacklist removeChildren(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 9147
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 9148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_f

    .line 9149
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9148
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 9152
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public greylist-max-o replaceView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 9109
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    .line 9110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    .line 9111
    invoke-virtual {p0}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 9112
    return-void
.end method
