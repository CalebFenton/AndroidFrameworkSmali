.class Landroid/view/ViewPropertyAnimator$PropertyBundle;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyBundle"
.end annotation


# instance fields
.field greylist-max-o mNameValuesHolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPropertyMask:I


# direct methods
.method constructor greylist-max-o <init>(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "propertyMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p2, "nameValuesHolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    .line 183
    iput-object p2, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    .line 184
    return-void
.end method


# virtual methods
.method greylist-max-o cancel(I)Z
    .registers 7
    .param p1, "propertyConstant"    # I

    .line 197
    iget v0, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    .line 198
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 199
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_2e

    .line 200
    iget-object v2, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 201
    .local v2, "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v3, v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    if-ne v3, p1, :cond_2b

    .line 202
    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    iget v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    not-int v4, p1

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    .line 204
    const/4 v3, 0x1

    return v3

    .line 199
    .end local v2    # "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 208
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method
