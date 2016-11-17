.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$1;,
        Landroid/view/FocusFinder$SequentialFocusComparator;
    }
.end annotation


# static fields
.field private static final tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBestCandidateRect:Landroid/graphics/Rect;

.field final mFocusedRect:Landroid/graphics/Rect;

.field final mOtherRect:Landroid/graphics/Rect;

.field final mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

.field private final mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "id"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/view/FocusFinder;->isValidId(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Landroid/view/FocusFinder$1;

    #@2
    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    #@5
    .line 34
    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    #@7
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    #@a
    .line 50
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@11
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@18
    .line 52
    new-instance v0, Landroid/view/FocusFinder$SequentialFocusComparator;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-direct {v0, v1}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>(Landroid/view/FocusFinder$SequentialFocusComparator;)V

    #@1e
    iput-object v0, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@20
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@25
    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    #@27
    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    #@3
    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 7
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    #@0
    .prologue
    .line 85
    const/4 v6, 0x0

    #@1
    .line 86
    .local v6, "next":Landroid/view/View;
    if-eqz p2, :cond_0

    #@3
    .line 87
    invoke-direct {p0, p1, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@6
    move-result-object v6

    #@7
    .line 89
    .end local v6    # "next":Landroid/view/View;
    :cond_0
    if-eqz v6, :cond_1

    #@9
    .line 90
    return-object v6

    #@a
    .line 92
    :cond_1
    iget-object v5, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    #@c
    .line 94
    .local v5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@f
    .line 95
    invoke-virtual {p1, v5, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    #@12
    .line 96
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_2

    #@18
    move-object v0, p0

    #@19
    move-object v1, p1

    #@1a
    move-object v2, p2

    #@1b
    move-object v3, p3

    #@1c
    move v4, p4

    #@1d
    .line 97
    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v6

    #@21
    .line 100
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@24
    .line 102
    return-object v6

    #@25
    .line 99
    :catchall_0
    move-exception v0

    #@26
    .line 100
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@29
    .line 99
    throw v0
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    .locals 6
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .line 118
    .local p5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_2

    #@2
    .line 119
    if-nez p3, :cond_0

    #@4
    .line 120
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    #@6
    .line 123
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@9
    .line 124
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@c
    .line 157
    :cond_1
    :goto_0
    sparse-switch p4, :sswitch_data_0

    #@f
    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Unknown direction: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 126
    :cond_2
    if-nez p3, :cond_1

    #@2b
    .line 127
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    #@2d
    .line 129
    sparse-switch p4, :sswitch_data_1

    #@30
    goto :goto_0

    #@31
    .line 147
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 148
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@3a
    goto :goto_0

    #@3b
    .line 132
    :sswitch_1
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@3e
    goto :goto_0

    #@3f
    .line 135
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 136
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@48
    goto :goto_0

    #@49
    .line 138
    :cond_3
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@4c
    goto :goto_0

    #@4d
    .line 144
    :sswitch_3
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@50
    goto :goto_0

    #@51
    .line 150
    :cond_4
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@54
    goto :goto_0

    #@55
    :sswitch_4
    move-object v0, p0

    #@56
    move-object v1, p5

    #@57
    move-object v2, p1

    #@58
    move-object v3, p2

    #@59
    move-object v4, p3

    #@5a
    move v5, p4

    #@5b
    .line 160
    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    #@5e
    move-result-object v0

    #@5f
    return-object v0

    #@60
    :sswitch_5
    move-object v0, p0

    #@61
    move-object v1, p5

    #@62
    move-object v2, p1

    #@63
    move-object v3, p2

    #@64
    move-object v4, p3

    #@65
    move v5, p4

    #@66
    .line 166
    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    #@69
    move-result-object v0

    #@6a
    return-object v0

    #@6b
    .line 157
    nop

    #@6c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_5
        0x21 -> :sswitch_5
        0x42 -> :sswitch_5
        0x82 -> :sswitch_5
    .end sparse-switch

    #@86
    .line 129
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x11 -> :sswitch_3
        0x21 -> :sswitch_3
        0x42 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 3
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .line 177
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@2
    invoke-virtual {v1, p2}, Landroid/view/FocusFinder$SequentialFocusComparator;->setRoot(Landroid/view/ViewGroup;)V

    #@5
    .line 178
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    #@a
    move-result v2

    #@b
    invoke-virtual {v1, v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->setIsLayoutRtl(Z)V

    #@e
    .line 179
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@10
    invoke-virtual {v1, p1}, Landroid/view/FocusFinder$SequentialFocusComparator;->setFocusables(Ljava/util/ArrayList;)V

    #@13
    .line 180
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@15
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 182
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@1a
    invoke-virtual {v1}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    #@1d
    .line 185
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v0

    #@21
    .line 186
    .local v0, "count":I
    packed-switch p5, :pswitch_data_0

    #@24
    .line 192
    add-int/lit8 v1, v0, -0x1

    #@26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Landroid/view/View;

    #@2c
    return-object v1

    #@2d
    .line 181
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    #@2e
    .line 182
    iget-object v2, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@30
    invoke-virtual {v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    #@33
    .line 181
    throw v1

    #@34
    .line 188
    .restart local v0    # "count":I
    :pswitch_0
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    #@37
    move-result-object v1

    #@38
    return-object v1

    #@39
    .line 190
    :pswitch_1
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    #@3c
    move-result-object v1

    #@3d
    return-object v1

    #@3e
    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 107
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    .line 108
    .local v0, "userSetNextFocus":Landroid/view/View;
    if-eqz v0, :cond_1

    #@7
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 109
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    #@16
    move-result v1

    #@17
    .line 108
    if-eqz v1, :cond_1

    #@19
    .line 111
    :cond_0
    return-object v0

    #@1a
    .line 113
    :cond_1
    return-object v2
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .locals 1

    #@0
    .prologue
    .line 46
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/FocusFinder;

    #@8
    return-object v0
.end method

.method private static getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 248
    if-eqz p0, :cond_0

    #@4
    .line 249
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 250
    .local v0, "position":I
    if-ltz v0, :cond_0

    #@a
    add-int/lit8 v1, v0, 0x1

    #@c
    if-ge v1, p2, :cond_0

    #@e
    .line 251
    add-int/lit8 v1, v0, 0x1

    #@10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/view/View;

    #@16
    return-object v1

    #@17
    .line 254
    .end local v0    # "position":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 255
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/view/View;

    #@23
    return-object v1

    #@24
    .line 257
    :cond_1
    return-object v3
.end method

.method private static getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 3
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    #@1
    .line 261
    if-eqz p0, :cond_0

    #@3
    .line 262
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 263
    .local v0, "position":I
    if-lez v0, :cond_0

    #@9
    .line 264
    add-int/lit8 v1, v0, -0x1

    #@b
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/view/View;

    #@11
    return-object v1

    #@12
    .line 267
    .end local v0    # "position":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 268
    add-int/lit8 v1, p2, -0x1

    #@1a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/view/View;

    #@20
    return-object v1

    #@21
    .line 270
    :cond_1
    return-object v2
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 591
    sparse-switch p4, :sswitch_data_0

    #@5
    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 593
    :sswitch_0
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@10
    if-gt v2, p1, :cond_0

    #@12
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@14
    if-gt v2, p2, :cond_0

    #@16
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@18
    if-gt p2, v2, :cond_0

    #@1a
    :goto_0
    return v0

    #@1b
    :cond_0
    move v0, v1

    #@1c
    goto :goto_0

    #@1d
    .line 595
    :sswitch_1
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@1f
    if-lt v2, p1, :cond_1

    #@21
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@23
    if-gt v2, p2, :cond_1

    #@25
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@27
    if-gt p2, v2, :cond_1

    #@29
    :goto_1
    return v0

    #@2a
    :cond_1
    move v0, v1

    #@2b
    goto :goto_1

    #@2c
    .line 597
    :sswitch_2
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@2e
    if-gt v2, p2, :cond_2

    #@30
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@32
    if-gt v2, p1, :cond_2

    #@34
    iget v2, p3, Landroid/graphics/Rect;->right:I

    #@36
    if-gt p1, v2, :cond_2

    #@38
    :goto_2
    return v0

    #@39
    :cond_2
    move v0, v1

    #@3a
    goto :goto_2

    #@3b
    .line 599
    :sswitch_3
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@3d
    if-lt v2, p2, :cond_3

    #@3f
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@41
    if-gt v2, p1, :cond_3

    #@43
    iget v2, p3, Landroid/graphics/Rect;->right:I

    #@45
    if-gt p1, v2, :cond_3

    #@47
    :goto_3
    return v0

    #@48
    :cond_3
    move v0, v1

    #@49
    goto :goto_3

    #@4a
    .line 591
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private static final isValidId(I)Z
    .locals 2
    .param p0, "id"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 606
    if-eqz p0, :cond_0

    #@3
    const/4 v1, -0x1

    #@4
    if-eq p0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 436
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 440
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 442
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@e
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@10
    sub-int/2addr v0, v1

    #@11
    return v0

    #@12
    .line 444
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@14
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@16
    sub-int/2addr v0, v1

    #@17
    return v0

    #@18
    .line 446
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@1a
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@1c
    sub-int/2addr v0, v1

    #@1d
    return v0

    #@1e
    .line 448
    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    #@20
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@22
    sub-int/2addr v0, v1

    #@23
    return v0

    #@24
    .line 440
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 461
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 465
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 467
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@e
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@10
    sub-int/2addr v0, v1

    #@11
    return v0

    #@12
    .line 469
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    #@14
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@16
    sub-int/2addr v0, v1

    #@17
    return v0

    #@18
    .line 471
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@1a
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@1c
    sub-int/2addr v0, v1

    #@1d
    return v0

    #@1e
    .line 473
    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    #@20
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@22
    sub-int/2addr v0, v1

    #@23
    return v0

    #@24
    .line 465
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 488
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 493
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@e
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@11
    move-result v1

    #@12
    div-int/lit8 v1, v1, 0x2

    #@14
    add-int/2addr v0, v1

    #@15
    .line 494
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@17
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@1a
    move-result v2

    #@1b
    div-int/lit8 v2, v2, 0x2

    #@1d
    add-int/2addr v1, v2

    #@1e
    .line 493
    sub-int/2addr v0, v1

    #@1f
    .line 492
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@22
    move-result v0

    #@23
    return v0

    #@24
    .line 499
    :sswitch_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@26
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@29
    move-result v1

    #@2a
    div-int/lit8 v1, v1, 0x2

    #@2c
    add-int/2addr v0, v1

    #@2d
    .line 500
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@2f
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@32
    move-result v2

    #@33
    div-int/lit8 v2, v2, 0x2

    #@35
    add-int/2addr v1, v2

    #@36
    .line 499
    sub-int/2addr v0, v1

    #@37
    .line 498
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@3a
    move-result v0

    #@3b
    return v0

    #@3c
    .line 488
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    #@3
    move-result v2

    #@4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    #@7
    move-result v3

    #@8
    add-int v0, v2, v3

    #@a
    .line 197
    .local v0, "rootBottom":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    #@d
    move-result v2

    #@e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@11
    move-result v3

    #@12
    add-int v1, v2, v3

    #@14
    .line 198
    .local v1, "rootRight":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@17
    .line 195
    return-void
.end method

.method private setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    #@3
    move-result v1

    #@4
    .line 203
    .local v1, "rootTop":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    #@7
    move-result v0

    #@8
    .line 204
    .local v0, "rootLeft":I
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@b
    .line 201
    return-void
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 323
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@5
    move-result v0

    #@6
    .line 324
    .local v0, "rect1InSrcBeam":Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@9
    move-result v1

    #@a
    .line 327
    .local v1, "rect2InSrcBeam":Z
    if-nez v1, :cond_0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 337
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_1

    #@14
    .line 338
    return v2

    #@15
    .line 328
    :cond_0
    return v3

    #@16
    .line 342
    :cond_1
    const/16 v4, 0x11

    #@18
    if-eq p1, v4, :cond_2

    #@1a
    const/16 v4, 0x42

    #@1c
    if-ne p1, v4, :cond_3

    #@1e
    .line 343
    :cond_2
    return v2

    #@1f
    .line 350
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@22
    move-result v4

    #@23
    .line 351
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@26
    move-result v5

    #@27
    .line 350
    if-ge v4, v5, :cond_4

    #@29
    :goto_0
    return v2

    #@2a
    :cond_4
    move v2, v3

    #@2b
    goto :goto_0
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 400
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 403
    :sswitch_0
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    #@10
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@12
    if-lt v2, v3, :cond_0

    #@14
    iget v2, p3, Landroid/graphics/Rect;->top:I

    #@16
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    #@18
    if-gt v2, v3, :cond_0

    #@1a
    :goto_0
    return v0

    #@1b
    :cond_0
    move v0, v1

    #@1c
    goto :goto_0

    #@1d
    .line 406
    :sswitch_1
    iget v2, p3, Landroid/graphics/Rect;->right:I

    #@1f
    iget v3, p2, Landroid/graphics/Rect;->left:I

    #@21
    if-lt v2, v3, :cond_1

    #@23
    iget v2, p3, Landroid/graphics/Rect;->left:I

    #@25
    iget v3, p2, Landroid/graphics/Rect;->right:I

    #@27
    if-gt v2, v3, :cond_1

    #@29
    move v1, v0

    #@2a
    :cond_1
    return v1

    #@2b
    .line 400
    nop

    #@2c
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .locals 15
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "direction"    # I
    .param p5, "deltas"    # [I

    #@0
    .prologue
    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    #@3
    move-result-object v12

    #@4
    .line 519
    .local v12, "touchables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v8, 0x7fffffff

    #@7
    .line 520
    .local v8, "minDistance":I
    const/4 v3, 0x0

    #@8
    .line 522
    .local v3, "closest":Landroid/view/View;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v9

    #@c
    .line 524
    .local v9, "numTouchables":I
    move-object/from16 v0, p1

    #@e
    iget-object v13, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    #@10
    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@13
    move-result-object v13

    #@14
    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    #@17
    move-result v6

    #@18
    .line 526
    .local v6, "edgeSlop":I
    new-instance v4, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@1d
    .line 527
    .local v4, "closestBounds":Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@1f
    .line 529
    .local v11, "touchableBounds":Landroid/graphics/Rect;
    const/4 v7, 0x0

    #@20
    .end local v3    # "closest":Landroid/view/View;
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_3

    #@22
    .line 530
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v10

    #@26
    check-cast v10, Landroid/view/View;

    #@28
    .line 533
    .local v10, "touchable":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@2b
    .line 535
    const/4 v13, 0x1

    #@2c
    const/4 v14, 0x1

    #@2d
    move-object/from16 v0, p1

    #@2f
    invoke-virtual {v0, v10, v11, v13, v14}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    #@32
    .line 537
    move/from16 v0, p2

    #@34
    move/from16 v1, p3

    #@36
    move/from16 v2, p4

    #@38
    invoke-direct {p0, v0, v1, v11, v2}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    #@3b
    move-result v13

    #@3c
    if-nez v13, :cond_1

    #@3e
    .line 529
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@40
    goto :goto_0

    #@41
    .line 541
    :cond_1
    const v5, 0x7fffffff

    #@44
    .line 543
    .local v5, "distance":I
    sparse-switch p4, :sswitch_data_0

    #@47
    .line 558
    :goto_2
    if-ge v5, v6, :cond_0

    #@49
    .line 560
    if-eqz v3, :cond_2

    #@4b
    .line 561
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@4e
    move-result v13

    #@4f
    .line 560
    if-nez v13, :cond_2

    #@51
    .line 562
    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@54
    move-result v13

    #@55
    if-nez v13, :cond_0

    #@57
    if-ge v5, v8, :cond_0

    #@59
    .line 563
    :cond_2
    move v8, v5

    #@5a
    .line 564
    move-object v3, v10

    #@5b
    .line 565
    .local v3, "closest":Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5e
    .line 566
    sparse-switch p4, :sswitch_data_1

    #@61
    goto :goto_1

    #@62
    .line 568
    :sswitch_0
    neg-int v13, v5

    #@63
    const/4 v14, 0x0

    #@64
    aput v13, p5, v14

    #@66
    goto :goto_1

    #@67
    .line 545
    .end local v3    # "closest":Landroid/view/View;
    :sswitch_1
    iget v13, v11, Landroid/graphics/Rect;->right:I

    #@69
    sub-int v13, p2, v13

    #@6b
    add-int/lit8 v5, v13, 0x1

    #@6d
    .line 546
    goto :goto_2

    #@6e
    .line 548
    :sswitch_2
    iget v5, v11, Landroid/graphics/Rect;->left:I

    #@70
    goto :goto_2

    #@71
    .line 551
    :sswitch_3
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    #@73
    sub-int v13, p3, v13

    #@75
    add-int/lit8 v5, v13, 0x1

    #@77
    .line 552
    goto :goto_2

    #@78
    .line 554
    :sswitch_4
    iget v5, v11, Landroid/graphics/Rect;->top:I

    #@7a
    goto :goto_2

    #@7b
    .line 571
    .restart local v3    # "closest":Landroid/view/View;
    :sswitch_5
    const/4 v13, 0x0

    #@7c
    aput v5, p5, v13

    #@7e
    goto :goto_1

    #@7f
    .line 574
    :sswitch_6
    neg-int v13, v5

    #@80
    const/4 v14, 0x1

    #@81
    aput v13, p5, v14

    #@83
    goto :goto_1

    #@84
    .line 577
    :sswitch_7
    const/4 v13, 0x1

    #@85
    aput v5, p5, v13

    #@87
    goto :goto_1

    #@88
    .line 583
    .end local v3    # "closest":Landroid/view/View;
    .end local v5    # "distance":I
    .end local v10    # "touchable":Landroid/view/View;
    :cond_3
    return-object v3

    #@89
    .line 543
    nop

    #@8a
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_3
        0x42 -> :sswitch_2
        0x82 -> :sswitch_4
    .end sparse-switch

    #@9c
    .line 566
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 81
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {p0, p1, v1, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 7
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    #@1
    .line 211
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6
    .line 212
    sparse-switch p5, :sswitch_data_0

    #@9
    .line 226
    :goto_0
    const/4 v0, 0x0

    #@a
    .line 228
    .local v0, "closest":Landroid/view/View;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v3

    #@e
    .line 229
    .local v3, "numFocusables":I
    const/4 v2, 0x0

    #@f
    .end local v0    # "closest":Landroid/view/View;
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@11
    .line 230
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/view/View;

    #@17
    .line 233
    .local v1, "focusable":Landroid/view/View;
    if-eq v1, p3, :cond_0

    #@19
    if-ne v1, p2, :cond_1

    #@1b
    .line 229
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 214
    .end local v1    # "focusable":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "numFocusables":I
    :sswitch_0
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    #@23
    move-result v5

    #@24
    add-int/lit8 v5, v5, 0x1

    #@26
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    #@29
    goto :goto_0

    #@2a
    .line 217
    :sswitch_1
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@2c
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    #@2f
    move-result v5

    #@30
    add-int/lit8 v5, v5, 0x1

    #@32
    neg-int v5, v5

    #@33
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    #@36
    goto :goto_0

    #@37
    .line 220
    :sswitch_2
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@39
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    #@3c
    move-result v5

    #@3d
    add-int/lit8 v5, v5, 0x1

    #@3f
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    #@42
    goto :goto_0

    #@43
    .line 223
    :sswitch_3
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@45
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    #@48
    move-result v5

    #@49
    add-int/lit8 v5, v5, 0x1

    #@4b
    neg-int v5, v5

    #@4c
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    #@4f
    goto :goto_0

    #@50
    .line 236
    .restart local v1    # "focusable":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "numFocusables":I
    :cond_1
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@52
    invoke-virtual {v1, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@55
    .line 237
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@57
    invoke-virtual {p2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@5a
    .line 239
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@5c
    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@5e
    invoke-virtual {p0, p5, p4, v4, v5}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_0

    #@64
    .line 240
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@66
    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@68
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6b
    .line 241
    move-object v0, v1

    #@6c
    .local v0, "closest":Landroid/view/View;
    goto :goto_2

    #@6d
    .line 244
    .end local v0    # "closest":Landroid/view/View;
    .end local v1    # "focusable":Landroid/view/View;
    :cond_2
    return-object v0

    #@6e
    .line 212
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method getWeightedDistanceFor(II)I
    .locals 2
    .param p1, "majorAxisDistance"    # I
    .param p2, "minorAxisDistance"    # I

    #@0
    .prologue
    .line 360
    mul-int/lit8 v0, p1, 0xd

    #@2
    mul-int/2addr v0, p1

    #@3
    .line 361
    mul-int v1, p2, p2

    #@5
    .line 360
    add-int/2addr v0, v1

    #@6
    return v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 287
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 288
    return v1

    #@9
    .line 293
    :cond_0
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 294
    return v0

    #@10
    .line 298
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 299
    return v0

    #@17
    .line 303
    :cond_2
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_3

    #@1d
    .line 304
    return v1

    #@1e
    .line 309
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@21
    move-result v2

    #@22
    .line 310
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@25
    move-result v3

    #@26
    .line 308
    invoke-virtual {p0, v2, v3}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    #@29
    move-result v2

    #@2a
    .line 312
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@2d
    move-result v3

    #@2e
    .line 313
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@31
    move-result v4

    #@32
    .line 311
    invoke-virtual {p0, v3, v4}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    #@35
    move-result v3

    #@36
    .line 308
    if-ge v2, v3, :cond_4

    #@38
    :goto_0
    return v0

    #@39
    :cond_4
    move v0, v1

    #@3a
    goto :goto_0
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 373
    sparse-switch p3, :sswitch_data_0

    #@5
    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 375
    :sswitch_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@10
    iget v3, p2, Landroid/graphics/Rect;->right:I

    #@12
    if-gt v2, v3, :cond_0

    #@14
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@16
    iget v3, p2, Landroid/graphics/Rect;->right:I

    #@18
    if-lt v2, v3, :cond_1

    #@1a
    .line 376
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@1c
    iget v3, p2, Landroid/graphics/Rect;->left:I

    #@1e
    if-le v2, v3, :cond_2

    #@20
    :goto_0
    move v1, v0

    #@21
    .line 375
    :cond_1
    return v1

    #@22
    :cond_2
    move v0, v1

    #@23
    .line 376
    goto :goto_0

    #@24
    .line 378
    :sswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@26
    iget v3, p2, Landroid/graphics/Rect;->left:I

    #@28
    if-lt v2, v3, :cond_3

    #@2a
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@2c
    iget v3, p2, Landroid/graphics/Rect;->left:I

    #@2e
    if-gt v2, v3, :cond_4

    #@30
    .line 379
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@32
    iget v3, p2, Landroid/graphics/Rect;->right:I

    #@34
    if-ge v2, v3, :cond_5

    #@36
    :goto_1
    move v1, v0

    #@37
    .line 378
    :cond_4
    return v1

    #@38
    :cond_5
    move v0, v1

    #@39
    .line 379
    goto :goto_1

    #@3a
    .line 381
    :sswitch_2
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@3c
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    #@3e
    if-gt v2, v3, :cond_6

    #@40
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@42
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    #@44
    if-lt v2, v3, :cond_7

    #@46
    .line 382
    :cond_6
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@48
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@4a
    if-le v2, v3, :cond_8

    #@4c
    :goto_2
    move v1, v0

    #@4d
    .line 381
    :cond_7
    return v1

    #@4e
    :cond_8
    move v0, v1

    #@4f
    .line 382
    goto :goto_2

    #@50
    .line 384
    :sswitch_3
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@52
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@54
    if-lt v2, v3, :cond_9

    #@56
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@58
    iget v3, p2, Landroid/graphics/Rect;->top:I

    #@5a
    if-gt v2, v3, :cond_a

    #@5c
    .line 385
    :cond_9
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@5e
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    #@60
    if-ge v2, v3, :cond_b

    #@62
    :goto_3
    move v1, v0

    #@63
    .line 384
    :cond_a
    return v1

    #@64
    :cond_b
    move v0, v1

    #@65
    .line 385
    goto :goto_3

    #@66
    .line 373
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dest"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 416
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 418
    :sswitch_0
    iget v2, p2, Landroid/graphics/Rect;->left:I

    #@10
    iget v3, p3, Landroid/graphics/Rect;->right:I

    #@12
    if-lt v2, v3, :cond_0

    #@14
    :goto_0
    return v0

    #@15
    :cond_0
    move v0, v1

    #@16
    goto :goto_0

    #@17
    .line 420
    :sswitch_1
    iget v2, p2, Landroid/graphics/Rect;->right:I

    #@19
    iget v3, p3, Landroid/graphics/Rect;->left:I

    #@1b
    if-gt v2, v3, :cond_1

    #@1d
    :goto_1
    return v0

    #@1e
    :cond_1
    move v0, v1

    #@1f
    goto :goto_1

    #@20
    .line 422
    :sswitch_2
    iget v2, p2, Landroid/graphics/Rect;->top:I

    #@22
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    #@24
    if-lt v2, v3, :cond_2

    #@26
    :goto_2
    return v0

    #@27
    :cond_2
    move v0, v1

    #@28
    goto :goto_2

    #@29
    .line 424
    :sswitch_3
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    #@2b
    iget v3, p3, Landroid/graphics/Rect;->top:I

    #@2d
    if-gt v2, v3, :cond_3

    #@2f
    :goto_3
    return v0

    #@30
    :cond_3
    move v0, v1

    #@31
    goto :goto_3

    #@32
    .line 416
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method
