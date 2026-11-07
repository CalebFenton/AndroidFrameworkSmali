.class Landroid/preference/PreferenceActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mLayoutResId:I

.field private greylist-max-o mRemoveIconIfEmpty:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutResId"    # I
    .param p4, "removeIconBehavior"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;IZ)V"
        }
    .end annotation

    .line 272
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 273
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 274
    iput p3, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    .line 275
    iput-boolean p4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    .line 276
    return-void
.end method


# virtual methods
.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 283
    const/4 v0, 0x0

    if-nez p2, :cond_36

    .line 284
    iget-object v1, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 285
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Landroid/preference/PreferenceActivity-IA;)V

    .line 286
    .local v2, "holder":Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v3, 0x1020006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 287
    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 288
    const v3, 0x1020010

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 289
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3d

    .line 291
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "holder":Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    :cond_36
    move-object v1, p2

    .line 292
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    .line 296
    .restart local v2    # "holder":Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    :goto_3d
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 297
    .local v3, "header":Landroid/preference/PreferenceActivity$Header;
    iget-boolean v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_60

    .line 298
    iget v4, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-nez v4, :cond_53

    .line 299
    iget-object v4, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_67

    .line 301
    :cond_53
    iget-object v4, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v4, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v6, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_67

    .line 305
    :cond_60
    iget-object v4, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v6, v3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    :goto_67
    iget-object v4, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 309
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_95

    .line 310
    iget-object v5, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9a

    .line 313
    :cond_95
    iget-object v0, v2, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    :goto_9a
    return-object v1
.end method
