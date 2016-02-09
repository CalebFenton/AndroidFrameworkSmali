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
.field mNameValuesHolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPropertyMask:I


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "propertyMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 181
    .local p2, "nameValuesHolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 182
    iput p1, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    #@5
    .line 183
    iput-object p2, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    #@7
    .line 181
    return-void
.end method


# virtual methods
.method cancel(I)Z
    .locals 5
    .param p1, "propertyConstant"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 197
    iget v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    #@3
    and-int/2addr v3, p1

    #@4
    if-eqz v3, :cond_1

    #@6
    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 198
    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v0

    #@10
    .line 199
    .local v0, "count":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@13
    .line 200
    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    #@1b
    .line 201
    .local v2, "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v3, v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    #@1d
    if-ne v3, p1, :cond_0

    #@1f
    .line 202
    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@24
    .line 203
    iget v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    #@26
    not-int v4, p1

    #@27
    and-int/2addr v3, v4

    #@28
    iput v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    #@2a
    .line 204
    const/4 v3, 0x1

    #@2b
    return v3

    #@2c
    .line 199
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 208
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "nameValuesHolder":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_1
    return v4
.end method
