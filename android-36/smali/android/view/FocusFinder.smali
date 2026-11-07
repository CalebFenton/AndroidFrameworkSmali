.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator;,
        Landroid/view/FocusFinder$FocusSorter;
    }
.end annotation


# static fields
.field private static final greylist-max-o tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mBestCandidateRect:Landroid/graphics/Rect;

.field private final greylist-max-o mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

.field final greylist-max-o mFocusedRect:Landroid/graphics/Rect;

.field final greylist-max-o mOtherRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

.field private final greylist-max-o mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v1, Landroid/view/FocusFinder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/FocusFinder$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    .line 61
    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v1, Landroid/view/FocusFinder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/FocusFinder$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    .line 64
    new-instance v0, Landroid/view/FocusFinder$FocusSorter;

    invoke-direct {v0}, Landroid/view/FocusFinder$FocusSorter;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/FocusFinder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private greylist-max-o findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 13
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "next":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder;->getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 99
    .local v2, "effectiveRoot":Landroid/view/ViewGroup;
    if-eqz p2, :cond_d

    .line 100
    invoke-direct {p0, v2, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    goto :goto_e

    .line 99
    :cond_d
    move-object v7, v0

    .line 102
    .end local v0    # "next":Landroid/view/View;
    .local v7, "next":Landroid/view/View;
    :goto_e
    if-eqz v7, :cond_11

    .line 103
    return-object v7

    .line 105
    :cond_11
    iget-object v6, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 107
    .local v6, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 108
    invoke-virtual {v2, v6, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    .line 109
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_34

    if-nez v0, :cond_2c

    .line 110
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p2    # "focused":Landroid/view/View;
    .end local p3    # "focusedRect":Landroid/graphics/Rect;
    .end local p4    # "direction":I
    .local v3, "focused":Landroid/view/View;
    .local v4, "focusedRect":Landroid/graphics/Rect;
    .local v5, "direction":I
    :try_start_23
    invoke-direct/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;

    move-result-object p2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_29

    move-object v7, p2

    goto :goto_2f

    .line 113
    :catchall_29
    move-exception v0

    move-object p2, v0

    goto :goto_39

    .line 109
    .end local v3    # "focused":Landroid/view/View;
    .end local v4    # "focusedRect":Landroid/graphics/Rect;
    .end local v5    # "direction":I
    .restart local p2    # "focused":Landroid/view/View;
    .restart local p3    # "focusedRect":Landroid/graphics/Rect;
    .restart local p4    # "direction":I
    :cond_2c
    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 113
    .end local p2    # "focused":Landroid/view/View;
    .end local p3    # "focusedRect":Landroid/graphics/Rect;
    .end local p4    # "direction":I
    .restart local v3    # "focused":Landroid/view/View;
    .restart local v4    # "focusedRect":Landroid/graphics/Rect;
    .restart local v5    # "direction":I
    :goto_2f
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 114
    nop

    .line 115
    return-object v7

    .line 113
    .end local v3    # "focused":Landroid/view/View;
    .end local v4    # "focusedRect":Landroid/graphics/Rect;
    .end local v5    # "direction":I
    .restart local p2    # "focused":Landroid/view/View;
    .restart local p3    # "focusedRect":Landroid/graphics/Rect;
    .restart local p4    # "direction":I
    :catchall_34
    move-exception v0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object p2, v0

    .end local p2    # "focused":Landroid/view/View;
    .end local p3    # "focusedRect":Landroid/graphics/Rect;
    .end local p4    # "direction":I
    .restart local v3    # "focused":Landroid/view/View;
    .restart local v4    # "focusedRect":Landroid/graphics/Rect;
    .restart local v5    # "direction":I
    :goto_39
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 114
    throw p2
.end method

.method private greylist-max-o findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    .registers 13
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
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 220
    .local p5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_e

    .line 221
    if-nez p3, :cond_6

    .line 222
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 225
    :cond_6
    invoke-virtual {p2, p3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 226
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object v5, p3

    goto :goto_3c

    .line 228
    :cond_e
    if-nez p3, :cond_3b

    .line 229
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 231
    sparse-switch p4, :sswitch_data_70

    goto :goto_39

    .line 234
    :sswitch_16
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 235
    goto :goto_39

    .line 246
    :sswitch_1a
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 247
    goto :goto_39

    .line 237
    :sswitch_1e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 238
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_39

    .line 240
    :cond_28
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 242
    goto :goto_39

    .line 249
    :sswitch_2c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 250
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_39

    .line 252
    :cond_36
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 259
    :goto_39
    move-object v5, p3

    goto :goto_3c

    .line 228
    :cond_3b
    move-object v5, p3

    .line 259
    .end local p3    # "focusedRect":Landroid/graphics/Rect;
    .local v5, "focusedRect":Landroid/graphics/Rect;
    :goto_3c
    sparse-switch p4, :sswitch_data_8a

    .line 271
    move-object v3, p1

    move-object v4, p2

    move v6, p4

    .end local p1    # "root":Landroid/view/ViewGroup;
    .end local p2    # "focused":Landroid/view/View;
    .end local p4    # "direction":I
    .local v3, "root":Landroid/view/ViewGroup;
    .local v4, "focused":Landroid/view/View;
    .local v6, "direction":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown direction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    .end local v3    # "root":Landroid/view/ViewGroup;
    .end local v4    # "focused":Landroid/view/View;
    .end local v6    # "direction":I
    .restart local p1    # "root":Landroid/view/ViewGroup;
    .restart local p2    # "focused":Landroid/view/View;
    .restart local p4    # "direction":I
    :sswitch_5b
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v2, p5

    .end local p1    # "root":Landroid/view/ViewGroup;
    .end local p2    # "focused":Landroid/view/View;
    .end local p4    # "direction":I
    .end local p5    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v2, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v3    # "root":Landroid/view/ViewGroup;
    .restart local v4    # "focused":Landroid/view/View;
    .restart local v6    # "direction":I
    invoke-virtual/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 262
    .end local v2    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "root":Landroid/view/ViewGroup;
    .end local v4    # "focused":Landroid/view/View;
    .end local v6    # "direction":I
    .restart local p1    # "root":Landroid/view/ViewGroup;
    .restart local p2    # "focused":Landroid/view/View;
    .restart local p4    # "direction":I
    .restart local p5    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :sswitch_65
    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v2, p5

    .end local p1    # "root":Landroid/view/ViewGroup;
    .end local p2    # "focused":Landroid/view/View;
    .end local p4    # "direction":I
    .end local p5    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v2    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v3    # "root":Landroid/view/ViewGroup;
    .restart local v4    # "focused":Landroid/view/View;
    .restart local v6    # "direction":I
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_1e
        0x11 -> :sswitch_1a
        0x21 -> :sswitch_1a
        0x42 -> :sswitch_16
        0x82 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_65
        0x2 -> :sswitch_65
        0x11 -> :sswitch_5b
        0x21 -> :sswitch_5b
        0x42 -> :sswitch_5b
        0x82 -> :sswitch_5b
    .end sparse-switch
.end method

.method private greylist-max-o findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 11
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 307
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    .line 308
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_4a

    .line 310
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 311
    nop

    .line 313
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 314
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_19

    .line 315
    const/4 v1, 0x0

    return-object v1

    .line 317
    :cond_19
    const/4 v1, 0x0

    .line 318
    .local v1, "next":Landroid/view/View;
    const/4 v2, 0x1

    new-array v2, v2, [Z

    .line 319
    .local v2, "looped":[Z
    packed-switch p5, :pswitch_data_52

    goto :goto_2a

    .line 321
    :pswitch_21
    invoke-static {p3, p1, v0, v2}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I[Z)Landroid/view/View;

    move-result-object v1

    .line 322
    goto :goto_2a

    .line 324
    :pswitch_26
    invoke-static {p3, p1, v0, v2}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I[Z)Landroid/view/View;

    move-result-object v1

    .line 327
    :goto_2a
    if-eqz p2, :cond_3d

    iget-object v3, p2, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_3d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v3

    if-ne p2, v3, :cond_3d

    .line 328
    iget-object v3, p2, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    aget-boolean v4, v2, v4

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mNextFocusLooped:Z

    .line 330
    :cond_3d
    if-eqz v1, :cond_41

    move-object v3, v1

    goto :goto_49

    :cond_41
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    :goto_49
    return-object v3

    .line 310
    .end local v0    # "count":I
    .end local v1    # "next":Landroid/view/View;
    .end local v2    # "looped":[Z
    :catchall_4a
    move-exception v0

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 311
    throw v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_26
        :pswitch_21
    .end packed-switch
.end method

.method private greylist-max-o findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "currentCluster"    # Landroid/view/View;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 282
    .local p3, "clusters":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :try_start_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0, p3, p1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_3a

    .line 285
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 286
    nop

    .line 287
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 289
    .local v0, "count":I
    sparse-switch p4, :sswitch_data_42

    .line 299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :sswitch_30
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 297
    :sswitch_35
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 285
    .end local v0    # "count":I
    :catchall_3a
    move-exception v0

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 286
    throw v0

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_35
        0x2 -> :sswitch_30
        0x11 -> :sswitch_35
        0x21 -> :sswitch_35
        0x42 -> :sswitch_30
        0x82 -> :sswitch_30
    .end sparse-switch
.end method

.method private greylist-max-o findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 8
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 195
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "userSetNextFocus":Landroid/view/View;
    move-object v1, v0

    .line 197
    .local v1, "cycleCheck":Landroid/view/View;
    const/4 v2, 0x1

    .line 198
    .local v2, "cycleStep":Z
    :cond_6
    if-eqz v0, :cond_34

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 203
    :cond_20
    return-object v0

    .line 205
    :cond_21
    invoke-virtual {v0, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 206
    if-nez v2, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    move v2, v3

    if-eqz v3, :cond_6

    .line 207
    invoke-virtual {v1, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 208
    if-ne v1, v0, :cond_6

    .line 211
    nop

    .line 215
    :cond_34
    const/4 v3, 0x0

    return-object v3
.end method

.method private greylist-max-o findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "currentCluster"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 185
    nop

    .line 186
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "userSetNextCluster":Landroid/view/View;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 188
    return-object v0

    .line 190
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 8
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;

    .line 127
    if-eqz p2, :cond_3c

    if-ne p2, p1, :cond_5

    goto :goto_3c

    .line 130
    :cond_5
    const/4 v0, 0x0

    .line 131
    .local v0, "effective":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 132
    .local v1, "nextParent":Landroid/view/ViewParent;
    :goto_a
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3b

    .line 133
    if-ne v1, p1, :cond_16

    .line 134
    if-eqz v0, :cond_14

    move-object v2, v0

    goto :goto_15

    :cond_14
    move-object v2, p1

    :goto_15
    return-object v2

    .line 136
    :cond_16
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 137
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 140
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 143
    move-object v0, v2

    .line 145
    :cond_36
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 146
    .end local v2    # "vg":Landroid/view/ViewGroup;
    goto :goto_a

    .line 147
    :cond_3b
    return-object p1

    .line 128
    .end local v0    # "effective":Landroid/view/ViewGroup;
    .end local v1    # "nextParent":Landroid/view/ViewParent;
    :cond_3c
    :goto_3c
    return-object p1
.end method

.method public static whitelist getInstance()Landroid/view/FocusFinder;
    .registers 1

    .line 52
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private static blacklist getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I[Z)Landroid/view/View;
    .registers 6
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .param p3, "outLooped"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I[Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 387
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x2

    if-ge p2, v0, :cond_5

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 390
    :cond_5
    if-eqz p0, :cond_1a

    .line 391
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 392
    .local v0, "position":I
    if-ltz v0, :cond_1a

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_1a

    .line 393
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 396
    .end local v0    # "position":I
    :cond_1a
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p3, v0

    .line 397
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static greylist-max-o getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .registers 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 420
    .local p2, "clusters":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p1, :cond_a

    .line 424
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 427
    :cond_a
    invoke-interface {p2, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 428
    .local v0, "position":I
    if-ltz v0, :cond_1d

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_1d

    .line 430
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 435
    :cond_1d
    return-object p0
.end method

.method private static blacklist getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I[Z)Landroid/view/View;
    .registers 6
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .param p3, "outLooped"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I[Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 402
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x2

    if-ge p2, v0, :cond_5

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_5
    if-eqz p0, :cond_16

    .line 406
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 407
    .local v0, "position":I
    if-lez v0, :cond_16

    .line 408
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 411
    .end local v0    # "position":I
    :cond_16
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p3, v0

    .line 412
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static greylist-max-o getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .registers 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 443
    .local p2, "clusters":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p1, :cond_b

    .line 447
    add-int/lit8 v0, p3, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 450
    :cond_b
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 451
    .local v0, "position":I
    if-lez v0, :cond_1a

    .line 453
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 458
    :cond_1a
    return-object p0
.end method

.method private greylist-max-o isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .line 779
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p4, :sswitch_data_4a

    .line 789
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :sswitch_d
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-lt v2, p2, :cond_1a

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_1a

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0

    .line 783
    :sswitch_1c
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lt v2, p1, :cond_29

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_29

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 785
    :sswitch_2b
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_38

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_38

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v2, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    return v0

    .line 781
    :sswitch_3a
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_47

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_47

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_47

    goto :goto_48

    :cond_47
    move v0, v1

    :goto_48
    return v0

    nop

    :sswitch_data_4a
    .sparse-switch
        0x11 -> :sswitch_3a
        0x21 -> :sswitch_2b
        0x42 -> :sswitch_1c
        0x82 -> :sswitch_d
    .end sparse-switch
.end method

.method private static final greylist-max-o isValidId(I)Z
    .registers 2
    .param p0, "id"    # I

    .line 794
    if-eqz p0, :cond_7

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3
    .param p0, "r"    # Landroid/view/View;
    .param p1, "v"    # Landroid/view/View;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 59
    :goto_11
    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3
    .param p0, "r"    # Landroid/view/View;
    .param p1, "v"    # Landroid/view/View;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 62
    :goto_11
    return-object v0
.end method

.method static greylist-max-o majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 624
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static greylist-max-o majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 628
    sparse-switch p0, :sswitch_data_24

    .line 638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :sswitch_b
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 632
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 634
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 630
    :sswitch_1d
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_1d
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method static greylist-max-o majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 649
    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static greylist-max-o majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 653
    sparse-switch p0, :sswitch_data_24

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :sswitch_b
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 657
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 659
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0

    .line 655
    :sswitch_1d
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_1d
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method static greylist-max-o minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 676
    sparse-switch p0, :sswitch_data_3c

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 687
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 688
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 686
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 680
    :sswitch_23
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 681
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 682
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 680
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_23
        0x21 -> :sswitch_b
        0x42 -> :sswitch_23
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method private greylist-max-o setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .line 334
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    .local v0, "rootBottom":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 336
    .local v1, "rootRight":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 337
    return-void
.end method

.method private greylist-max-o setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .line 340
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    .line 341
    .local v0, "rootTop":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 342
    .local v1, "rootLeft":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 343
    return-void
.end method

.method public static blacklist sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .registers 12
    .param p0, "views"    # [Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "root"    # Landroid/view/ViewGroup;
    .param p4, "isRtl"    # Z

    .line 889
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, v0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    .end local p0    # "views":[Landroid/view/View;
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "root":Landroid/view/ViewGroup;
    .end local p4    # "isRtl":Z
    .local v2, "views":[Landroid/view/View;
    .local v3, "start":I
    .local v4, "end":I
    .local v5, "root":Landroid/view/ViewGroup;
    .local v6, "isRtl":Z
    invoke-virtual/range {v1 .. v6}, Landroid/view/FocusFinder$FocusSorter;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 890
    return-void
.end method


# virtual methods
.method greylist-max-o beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 11
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .line 511
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 512
    .local v0, "rect1InSrcBeam":Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 515
    .local v1, "rect2InSrcBeam":Z
    const/4 v2, 0x0

    if-nez v1, :cond_2c

    if-nez v0, :cond_e

    goto :goto_2c

    .line 525
    :cond_e
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_16

    .line 526
    return v4

    .line 530
    :cond_16
    const/16 v3, 0x11

    if-eq p1, v3, :cond_2b

    const/16 v3, 0x42

    if-ne p1, v3, :cond_1f

    goto :goto_2b

    .line 538
    :cond_1f
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 539
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-ge v3, v5, :cond_2a

    move v2, v4

    .line 538
    :cond_2a
    return v2

    .line 531
    :cond_2b
    :goto_2b
    return v4

    .line 516
    :cond_2c
    :goto_2c
    return v2
.end method

.method greylist-max-o beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "direction"    # I
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .line 588
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_2c

    .line 596
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :sswitch_d
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_1a

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0

    .line 591
    :sswitch_1c
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_29

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x11 -> :sswitch_1c
        0x21 -> :sswitch_d
        0x42 -> :sswitch_1c
        0x82 -> :sswitch_d
    .end sparse-switch
.end method

.method public whitelist findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .registers 23
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "direction"    # I
    .param p5, "deltas"    # [I

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v5

    .line 707
    .local v5, "touchables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v6, 0x7fffffff

    .line 708
    .local v6, "minDistance":I
    const/4 v7, 0x0

    .line 710
    .local v7, "closest":Landroid/view/View;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 712
    .local v8, "numTouchables":I
    iget-object v9, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v9

    .line 714
    .local v9, "edgeSlop":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 715
    .local v10, "closestBounds":Landroid/graphics/Rect;
    iget-object v11, v0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 717
    .local v11, "touchableBounds":Landroid/graphics/Rect;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_28
    if-ge v12, v8, :cond_92

    .line 718
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 721
    .local v13, "touchable":Landroid/view/View;
    invoke-virtual {v13, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 723
    const/4 v14, 0x1

    invoke-virtual {v1, v13, v11, v14, v14}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 725
    invoke-direct {v0, v2, v3, v11, v4}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v15

    if-nez v15, :cond_3e

    .line 726
    goto :goto_8f

    .line 729
    :cond_3e
    const v15, 0x7fffffff

    .line 731
    .local v15, "distance":I
    sparse-switch v4, :sswitch_data_94

    move/from16 v16, v14

    goto :goto_63

    .line 742
    :sswitch_47
    iget v15, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v14

    goto :goto_63

    .line 736
    :sswitch_4c
    iget v15, v11, Landroid/graphics/Rect;->left:I

    .line 737
    move/from16 v16, v14

    goto :goto_63

    .line 739
    :sswitch_51
    move/from16 v16, v14

    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v3, v14

    add-int/lit8 v15, v14, 0x1

    .line 740
    goto :goto_63

    .line 733
    :sswitch_5a
    move/from16 v16, v14

    iget v14, v11, Landroid/graphics/Rect;->right:I

    sub-int v14, v2, v14

    add-int/lit8 v15, v14, 0x1

    .line 734
    nop

    .line 746
    :goto_63
    if-ge v15, v9, :cond_8f

    .line 748
    if-eqz v7, :cond_75

    .line 749
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v14

    if-nez v14, :cond_75

    .line 750
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v14

    if-nez v14, :cond_8f

    if-ge v15, v6, :cond_8f

    .line 751
    :cond_75
    move v6, v15

    .line 752
    move-object v7, v13

    .line 753
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 754
    const/4 v14, 0x0

    sparse-switch v4, :sswitch_data_a6

    goto :goto_8f

    .line 765
    :sswitch_7f
    aput v15, p5, v16

    goto :goto_8f

    .line 759
    :sswitch_82
    aput v15, p5, v14

    .line 760
    goto :goto_8f

    .line 762
    :sswitch_85
    neg-int v14, v15

    aput v14, p5, v16

    .line 763
    goto :goto_8f

    .line 756
    :sswitch_89
    move/from16 v16, v14

    neg-int v14, v15

    aput v14, p5, v16

    .line 757
    nop

    .line 717
    .end local v13    # "touchable":Landroid/view/View;
    .end local v15    # "distance":I
    :cond_8f
    :goto_8f
    add-int/lit8 v12, v12, 0x1

    goto :goto_28

    .line 771
    .end local v12    # "i":I
    :cond_92
    return-object v7

    nop

    :sswitch_data_94
    .sparse-switch
        0x11 -> :sswitch_5a
        0x21 -> :sswitch_51
        0x42 -> :sswitch_4c
        0x82 -> :sswitch_47
    .end sparse-switch

    :sswitch_data_a6
    .sparse-switch
        0x11 -> :sswitch_89
        0x21 -> :sswitch_85
        0x42 -> :sswitch_82
        0x82 -> :sswitch_7f
    .end sparse-switch
.end method

.method public final whitelist findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 6
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .line 92
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 93
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 12
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 349
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 350
    const/4 v0, 0x0

    sparse-switch p5, :sswitch_data_70

    goto :goto_3c

    .line 361
    :sswitch_a
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3c

    .line 355
    :sswitch_17
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 356
    goto :goto_3c

    .line 358
    :sswitch_24
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 359
    goto :goto_3c

    .line 352
    :sswitch_30
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 353
    nop

    .line 364
    :goto_3c
    const/4 v0, 0x0

    .line 366
    .local v0, "closest":Landroid/view/View;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 367
    .local v1, "numFocusables":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    if-ge v2, v1, :cond_6e

    .line 368
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 371
    .local v3, "focusable":Landroid/view/View;
    if-eq v3, p3, :cond_6b

    if-ne v3, p2, :cond_4f

    goto :goto_6b

    .line 374
    :cond_4f
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 375
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 377
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, p4, v4, v5}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 378
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 379
    move-object v0, v3

    .line 367
    .end local v3    # "focusable":Landroid/view/View;
    :cond_6b
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 382
    .end local v2    # "i":I
    :cond_6e
    return-object v0

    nop

    :sswitch_data_70
    .sparse-switch
        0x11 -> :sswitch_30
        0x21 -> :sswitch_24
        0x42 -> :sswitch_17
        0x82 -> :sswitch_a
    .end sparse-switch
.end method

.method public whitelist findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "currentCluster"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "next":Landroid/view/View;
    if-eqz p2, :cond_a

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/view/FocusFinder;->findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_a

    .line 165
    return-object v0

    .line 169
    :cond_a
    iget-object v1, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 171
    .local v1, "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-virtual {p1, v1, p3}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 174
    invoke-direct {p0, p1, p2, v1, p3}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_22

    move-object v0, v2

    .line 178
    :cond_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    nop

    .line 180
    return-object v0

    .line 178
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    throw v2
.end method

.method greylist-max-o getWeightedDistanceFor(JJ)J
    .registers 9
    .param p1, "majorAxisDistance"    # J
    .param p3, "minorAxisDistance"    # J

    .line 548
    const-wide/16 v0, 0xd

    mul-long/2addr v0, p1

    mul-long/2addr v0, p1

    mul-long v2, p3, p3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method greylist-max-o isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 14
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .line 475
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 476
    return v1

    .line 481
    :cond_8
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 482
    return v2

    .line 486
    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 487
    return v2

    .line 491
    :cond_17
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 492
    return v1

    .line 496
    :cond_1e
    nop

    .line 497
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v3, v0

    .line 498
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v5, v0

    .line 496
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide v3

    .line 500
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v5, v0

    .line 501
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v7, v0

    .line 499
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_40

    move v1, v2

    .line 496
    :cond_40
    return v1
.end method

.method greylist-max-o isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 8
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .line 561
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_62

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :sswitch_d
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_19

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_20

    :cond_19
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_20

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    return v0

    .line 566
    :sswitch_22
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2e

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_35

    :cond_2e
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    return v0

    .line 569
    :sswitch_37
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_43

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_4a

    :cond_43
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    :goto_4b
    return v0

    .line 563
    :sswitch_4c
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_58

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_5f

    :cond_58
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v0, v1

    :goto_60
    return v0

    nop

    :sswitch_data_62
    .sparse-switch
        0x11 -> :sswitch_4c
        0x21 -> :sswitch_37
        0x42 -> :sswitch_22
        0x82 -> :sswitch_d
    .end sparse-switch
.end method

.method greylist-max-o isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "direction"    # I
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dest"    # Landroid/graphics/Rect;

    .line 604
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_32

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :sswitch_d
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    return v0

    .line 608
    :sswitch_16
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0

    .line 610
    :sswitch_1f
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 606
    :sswitch_28
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    return v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x11 -> :sswitch_28
        0x21 -> :sswitch_1f
        0x42 -> :sswitch_16
        0x82 -> :sswitch_d
    .end sparse-switch
.end method
