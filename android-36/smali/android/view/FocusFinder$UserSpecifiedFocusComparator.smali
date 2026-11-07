.class final Landroid/view/FocusFinder$UserSpecifiedFocusComparator;
.super Ljava/lang/Object;
.source "FocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserSpecifiedFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mHeadsOfChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIsConnectedTo:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mNextFoci:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

.field private final greylist-max-o mOriginalOrdinal:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoot:Landroid/view/View;


# direct methods
.method constructor greylist-max-o <init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V
    .registers 3
    .param p1, "nextFocusGetter"    # Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    .line 898
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    .line 899
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    .line 900
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    .line 909
    iput-object p1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    .line 910
    return-void
.end method

.method private greylist-max-o setHeadOfChain(Landroid/view/View;)V
    .registers 5
    .param p1, "head"    # Landroid/view/View;

    .line 945
    move-object v0, p1

    .local v0, "view":Landroid/view/View;
    :goto_1
    if-eqz v0, :cond_21

    .line 946
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 947
    .local v1, "otherHead":Landroid/view/View;
    if-eqz v1, :cond_12

    .line 948
    if-ne v1, p1, :cond_10

    .line 949
    return-void

    .line 953
    :cond_10
    move-object v0, p1

    .line 954
    move-object p1, v1

    .line 956
    :cond_12
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    .end local v1    # "otherHead":Landroid/view/View;
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 958
    .end local v0    # "view":Landroid/view/View;
    :cond_21
    return-void
.end method


# virtual methods
.method public greylist-max-o compare(Landroid/view/View;Landroid/view/View;)I
    .registers 10
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 961
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 962
    return v0

    .line 966
    :cond_4
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 967
    .local v1, "firstHead":Landroid/view/View;
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 968
    .local v2, "secondHead":Landroid/view/View;
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v2, :cond_2a

    if-eqz v1, :cond_2a

    .line 969
    if-ne p1, v1, :cond_1d

    .line 970
    return v4

    .line 971
    :cond_1d
    if-ne p2, v1, :cond_20

    .line 972
    return v3

    .line 973
    :cond_20
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 974
    return v4

    .line 976
    :cond_29
    return v3

    .line 979
    :cond_2a
    const/4 v5, 0x0

    .line 980
    .local v5, "involvesChain":Z
    if-eqz v1, :cond_2f

    .line 981
    move-object p1, v1

    .line 982
    const/4 v5, 0x1

    .line 984
    :cond_2f
    if-eqz v2, :cond_33

    .line 985
    move-object p2, v2

    .line 986
    const/4 v5, 0x1

    .line 989
    :cond_33
    if-eqz v5, :cond_51

    .line 991
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v0, v6, :cond_50

    move v3, v4

    :cond_50
    return v3

    .line 993
    :cond_51
    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 896
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o recycle()V
    .registers 2

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    .line 914
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 915
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 916
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 917
    iget-object v0, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 918
    return-void
.end method

.method public greylist-max-o setFocusables(Ljava/util/List;Landroid/view/View;)V
    .registers 7
    .param p2, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 921
    .local p1, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    .line 922
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 923
    iget-object v1, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 926
    .end local v0    # "i":I
    :cond_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_21
    if-ltz v0, :cond_48

    .line 927
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 928
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFocusGetter:Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mRoot:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;->get(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 929
    .local v2, "next":Landroid/view/View;
    if-eqz v2, :cond_45

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mOriginalOrdinal:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 930
    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 926
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "next":Landroid/view/View;
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 935
    .end local v0    # "i":I
    :cond_48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_4e
    if-ltz v0, :cond_6e

    .line 936
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 937
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mNextFoci:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 938
    .restart local v2    # "next":Landroid/view/View;
    if-eqz v2, :cond_6b

    iget-object v3, p0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->mIsConnectedTo:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 939
    invoke-direct {p0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setHeadOfChain(Landroid/view/View;)V

    .line 935
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "next":Landroid/view/View;
    :cond_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_4e

    .line 942
    .end local v0    # "i":I
    :cond_6e
    return-void
.end method
