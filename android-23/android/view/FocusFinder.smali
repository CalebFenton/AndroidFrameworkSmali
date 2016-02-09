.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$SequentialFocusComparator;,
        Landroid/view/FocusFinder$1;
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
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    new-instance v0, Landroid/view/FocusFinder$1;

    #@2
    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    #@5
    .line 31
    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    #@7
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    #@a
    .line 47
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@11
    .line 48
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@18
    .line 49
    new-instance v0, Landroid/view/FocusFinder$SequentialFocusComparator;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-direct {v0, v1}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>(Landroid/view/FocusFinder$SequentialFocusComparator;)V

    #@1e
    iput-object v0, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@20
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #@22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@25
    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    #@27
    .line 54
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
    .line 82
    const/4 v6, 0x0

    #@1
    .line 83
    .local v6, "next":Landroid/view/View;
    if-eqz p2, :cond_0

    #@3
    .line 84
    invoke-direct {p0, p1, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@6
    move-result-object v6

    #@7
    .line 86
    .end local v6    # "next":Landroid/view/View;
    :cond_0
    if-eqz v6, :cond_1

    #@9
    .line 87
    return-object v6

    #@a
    .line 89
    :cond_1
    iget-object v5, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    #@c
    .line 91
    .local v5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@f
    .line 92
    invoke-virtual {p1, v5, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    #@12
    .line 93
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
    .line 94
    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v6

    #@21
    .line 97
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@24
    .line 99
    return-object v6

    #@25
    .line 96
    :catchall_0
    move-exception v0

    #@26
    .line 97
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@29
    .line 96
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
    .line 115
    .local p5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_2

    #@2
    .line 116
    if-nez p3, :cond_0

    #@4
    .line 117
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    #@6
    .line 120
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@9
    .line 121
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@c
    .line 154
    :cond_1
    :goto_0
    sparse-switch p4, :sswitch_data_0

    #@f
    .line 166
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
    .line 123
    :cond_2
    if-nez p3, :cond_1

    #@2b
    .line 124
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    #@2d
    .line 126
    sparse-switch p4, :sswitch_data_1

    #@30
    goto :goto_0

    #@31
    .line 144
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 145
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@3a
    goto :goto_0

    #@3b
    .line 129
    :sswitch_1
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@3e
    goto :goto_0

    #@3f
    .line 132
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 133
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@48
    goto :goto_0

    #@49
    .line 135
    :cond_3
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@4c
    goto :goto_0

    #@4d
    .line 141
    :sswitch_3
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    #@50
    goto :goto_0

    #@51
    .line 147
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
    .line 157
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
    .line 163
    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    #@69
    move-result-object v0

    #@6a
    return-object v0

    #@6b
    .line 154
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
    .line 126
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
    .line 174
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@2
    invoke-virtual {v1, p2}, Landroid/view/FocusFinder$SequentialFocusComparator;->setRoot(Landroid/view/ViewGroup;)V

    #@5
    .line 175
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    #@a
    move-result v2

    #@b
    invoke-virtual {v1, v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->setIsLayoutRtl(Z)V

    #@e
    .line 176
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@10
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 178
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@15
    invoke-virtual {v1}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    #@18
    .line 181
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v0

    #@1c
    .line 182
    .local v0, "count":I
    packed-switch p5, :pswitch_data_0

    #@1f
    .line 188
    add-int/lit8 v1, v0, -0x1

    #@21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Landroid/view/View;

    #@27
    return-object v1

    #@28
    .line 177
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    #@29
    .line 178
    iget-object v2, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    #@2b
    invoke-virtual {v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    #@2e
    .line 177
    throw v1

    #@2f
    .line 184
    .restart local v0    # "count":I
    :pswitch_0
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 186
    :pswitch_1
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    #@37
    move-result-object v1

    #@38
    return-object v1

    #@39
    .line 182
    nop

    #@3a
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
    .line 104
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    .line 105
    .local v0, "userSetNextFocus":Landroid/view/View;
    if-eqz v0, :cond_1

    #@7
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    #@16
    move-result v1

    #@17
    .line 105
    if-eqz v1, :cond_1

    #@19
    .line 108
    :cond_0
    return-object v0

    #@1a
    .line 110
    :cond_1
    return-object v2
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .locals 1

    #@0
    .prologue
    .line 43
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
    .line 244
    if-eqz p0, :cond_0

    #@4
    .line 245
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 246
    .local v0, "position":I
    if-ltz v0, :cond_0

    #@a
    add-int/lit8 v1, v0, 0x1

    #@c
    if-ge v1, p2, :cond_0

    #@e
    .line 247
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
    .line 250
    .end local v0    # "position":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 251
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/view/View;

    #@23
    return-object v1

    #@24
    .line 253
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
    .line 257
    if-eqz p0, :cond_0

    #@3
    .line 258
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 259
    .local v0, "position":I
    if-lez v0, :cond_0

    #@9
    .line 260
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
    .line 263
    .end local v0    # "position":I
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 264
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
    .line 266
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
    .line 587
    sparse-switch p4, :sswitch_data_0

    #@5
    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 589
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
    .line 591
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
    .line 593
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
    .line 595
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
    .line 587
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 432
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
    .line 436
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 438
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@e
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@10
    sub-int/2addr v0, v1

    #@11
    return v0

    #@12
    .line 440
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@14
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@16
    sub-int/2addr v0, v1

    #@17
    return v0

    #@18
    .line 442
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@1a
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@1c
    sub-int/2addr v0, v1

    #@1d
    return v0

    #@1e
    .line 444
    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    #@20
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@22
    sub-int/2addr v0, v1

    #@23
    return v0

    #@24
    .line 436
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
    .line 457
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
    .line 461
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 463
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@e
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@10
    sub-int/2addr v0, v1

    #@11
    return v0

    #@12
    .line 465
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    #@14
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@16
    sub-int/2addr v0, v1

    #@17
    return v0

    #@18
    .line 467
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@1a
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@1c
    sub-int/2addr v0, v1

    #@1d
    return v0

    #@1e
    .line 469
    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    #@20
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@22
    sub-int/2addr v0, v1

    #@23
    return v0

    #@24
    .line 461
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
    .line 484
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 489
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
    .line 490
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
    .line 489
    sub-int/2addr v0, v1

    #@1f
    .line 488
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@22
    move-result v0

    #@23
    return v0

    #@24
    .line 495
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
    .line 496
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
    .line 495
    sub-int/2addr v0, v1

    #@37
    .line 494
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@3a
    move-result v0

    #@3b
    return v0

    #@3c
    .line 484
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
    .line 192
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
    .line 193
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
    .line 194
    .local v1, "rootRight":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@17
    .line 191
    return-void
.end method

.method private setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    #@3
    move-result v1

    #@4
    .line 199
    .local v1, "rootTop":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    #@7
    move-result v0

    #@8
    .line 200
    .local v0, "rootLeft":I
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@b
    .line 197
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
    .line 319
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@5
    move-result v0

    #@6
    .line 320
    .local v0, "rect1InSrcBeam":Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@9
    move-result v1

    #@a
    .line 323
    .local v1, "rect2InSrcBeam":Z
    if-nez v1, :cond_0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 333
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_1

    #@14
    .line 334
    return v2

    #@15
    .line 324
    :cond_0
    return v3

    #@16
    .line 338
    :cond_1
    const/16 v4, 0x11

    #@18
    if-eq p1, v4, :cond_2

    #@1a
    const/16 v4, 0x42

    #@1c
    if-ne p1, v4, :cond_3

    #@1e
    .line 339
    :cond_2
    return v2

    #@1f
    .line 346
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@22
    move-result v4

    #@23
    .line 347
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@26
    move-result v5

    #@27
    .line 346
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
    .line 396
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 399
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
    .line 402
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
    .line 396
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
    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    #@3
    move-result-object v12

    #@4
    .line 515
    .local v12, "touchables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v8, 0x7fffffff

    #@7
    .line 516
    .local v8, "minDistance":I
    const/4 v3, 0x0

    #@8
    .line 518
    .local v3, "closest":Landroid/view/View;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v9

    #@c
    .line 520
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
    .line 522
    .local v6, "edgeSlop":I
    new-instance v4, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@1d
    .line 523
    .local v4, "closestBounds":Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@1f
    .line 525
    .local v11, "touchableBounds":Landroid/graphics/Rect;
    const/4 v7, 0x0

    #@20
    .end local v3    # "closest":Landroid/view/View;
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_3

    #@22
    .line 526
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v10

    #@26
    check-cast v10, Landroid/view/View;

    #@28
    .line 529
    .local v10, "touchable":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@2b
    .line 531
    const/4 v13, 0x1

    #@2c
    const/4 v14, 0x1

    #@2d
    move-object/from16 v0, p1

    #@2f
    invoke-virtual {v0, v10, v11, v13, v14}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    #@32
    .line 533
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
    .line 525
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@40
    goto :goto_0

    #@41
    .line 537
    :cond_1
    const v5, 0x7fffffff

    #@44
    .line 539
    .local v5, "distance":I
    sparse-switch p4, :sswitch_data_0

    #@47
    .line 554
    :goto_2
    if-ge v5, v6, :cond_0

    #@49
    .line 556
    if-eqz v3, :cond_2

    #@4b
    .line 557
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@4e
    move-result v13

    #@4f
    .line 556
    if-nez v13, :cond_2

    #@51
    .line 558
    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@54
    move-result v13

    #@55
    if-nez v13, :cond_0

    #@57
    if-ge v5, v8, :cond_0

    #@59
    .line 559
    :cond_2
    move v8, v5

    #@5a
    .line 560
    move-object v3, v10

    #@5b
    .line 561
    .local v3, "closest":Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5e
    .line 562
    sparse-switch p4, :sswitch_data_1

    #@61
    goto :goto_1

    #@62
    .line 564
    :sswitch_0
    neg-int v13, v5

    #@63
    const/4 v14, 0x0

    #@64
    aput v13, p5, v14

    #@66
    goto :goto_1

    #@67
    .line 541
    .end local v3    # "closest":Landroid/view/View;
    :sswitch_1
    iget v13, v11, Landroid/graphics/Rect;->right:I

    #@69
    sub-int v13, p2, v13

    #@6b
    add-int/lit8 v5, v13, 0x1

    #@6d
    .line 542
    goto :goto_2

    #@6e
    .line 544
    :sswitch_2
    iget v5, v11, Landroid/graphics/Rect;->left:I

    #@70
    goto :goto_2

    #@71
    .line 547
    :sswitch_3
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    #@73
    sub-int v13, p3, v13

    #@75
    add-int/lit8 v5, v13, 0x1

    #@77
    .line 548
    goto :goto_2

    #@78
    .line 550
    :sswitch_4
    iget v5, v11, Landroid/graphics/Rect;->top:I

    #@7a
    goto :goto_2

    #@7b
    .line 567
    .restart local v3    # "closest":Landroid/view/View;
    :sswitch_5
    const/4 v13, 0x0

    #@7c
    aput v5, p5, v13

    #@7e
    goto :goto_1

    #@7f
    .line 570
    :sswitch_6
    neg-int v13, v5

    #@80
    const/4 v14, 0x1

    #@81
    aput v13, p5, v14

    #@83
    goto :goto_1

    #@84
    .line 573
    :sswitch_7
    const/4 v13, 0x1

    #@85
    aput v5, p5, v13

    #@87
    goto :goto_1

    #@88
    .line 579
    .end local v3    # "closest":Landroid/view/View;
    .end local v5    # "distance":I
    .end local v10    # "touchable":Landroid/view/View;
    :cond_3
    return-object v3

    #@89
    .line 539
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
    .line 562
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
    .line 65
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
    .line 77
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 78
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
    .line 207
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6
    .line 208
    sparse-switch p5, :sswitch_data_0

    #@9
    .line 222
    :goto_0
    const/4 v0, 0x0

    #@a
    .line 224
    .local v0, "closest":Landroid/view/View;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v3

    #@e
    .line 225
    .local v3, "numFocusables":I
    const/4 v2, 0x0

    #@f
    .end local v0    # "closest":Landroid/view/View;
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@11
    .line 226
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/view/View;

    #@17
    .line 229
    .local v1, "focusable":Landroid/view/View;
    if-eq v1, p3, :cond_0

    #@19
    if-ne v1, p2, :cond_1

    #@1b
    .line 225
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 210
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
    .line 213
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
    .line 216
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
    .line 219
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
    .line 232
    .restart local v1    # "focusable":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "numFocusables":I
    :cond_1
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@52
    invoke-virtual {v1, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@55
    .line 233
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@57
    invoke-virtual {p2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@5a
    .line 235
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
    .line 236
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    #@66
    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    #@68
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@6b
    .line 237
    move-object v0, v1

    #@6c
    .local v0, "closest":Landroid/view/View;
    goto :goto_2

    #@6d
    .line 240
    .end local v0    # "closest":Landroid/view/View;
    .end local v1    # "focusable":Landroid/view/View;
    :cond_2
    return-object v0

    #@6e
    .line 208
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
    .line 356
    mul-int/lit8 v0, p1, 0xd

    #@2
    mul-int/2addr v0, p1

    #@3
    .line 357
    mul-int v1, p2, p2

    #@5
    .line 356
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
    .line 283
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 284
    return v1

    #@9
    .line 289
    :cond_0
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 290
    return v0

    #@10
    .line 294
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 295
    return v0

    #@17
    .line 299
    :cond_2
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_3

    #@1d
    .line 300
    return v1

    #@1e
    .line 305
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@21
    move-result v2

    #@22
    .line 306
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@25
    move-result v3

    #@26
    .line 304
    invoke-virtual {p0, v2, v3}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    #@29
    move-result v2

    #@2a
    .line 308
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@2d
    move-result v3

    #@2e
    .line 309
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@31
    move-result v4

    #@32
    .line 307
    invoke-virtual {p0, v3, v4}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    #@35
    move-result v3

    #@36
    .line 304
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
    .line 369
    sparse-switch p3, :sswitch_data_0

    #@5
    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 371
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
    .line 372
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
    .line 371
    :cond_1
    return v1

    #@22
    :cond_2
    move v0, v1

    #@23
    .line 372
    goto :goto_0

    #@24
    .line 374
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
    .line 375
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
    .line 374
    :cond_4
    return v1

    #@38
    :cond_5
    move v0, v1

    #@39
    .line 375
    goto :goto_1

    #@3a
    .line 377
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
    .line 378
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
    .line 377
    :cond_7
    return v1

    #@4e
    :cond_8
    move v0, v1

    #@4f
    .line 378
    goto :goto_2

    #@50
    .line 380
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
    .line 381
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
    .line 380
    :cond_a
    return v1

    #@64
    :cond_b
    move v0, v1

    #@65
    .line 381
    goto :goto_3

    #@66
    .line 369
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
    .line 412
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 414
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
    .line 416
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
    .line 418
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
    .line 420
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
    .line 412
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method
