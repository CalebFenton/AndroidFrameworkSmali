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
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResId:I

.field private mRemoveIconIfEmpty:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutResId"    # I
    .param p4, "removeIconBehavior"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 272
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    #@4
    .line 273
    const-string/jumbo v0, "layout_inflater"

    #@7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/LayoutInflater;

    #@d
    iput-object v0, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@f
    .line 274
    iput p3, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    #@11
    .line 275
    iput-boolean p4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    #@13
    .line 271
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/16 v7, 0x8

    #@3
    const/4 v6, 0x0

    #@4
    .line 283
    if-nez p2, :cond_0

    #@6
    .line 284
    iget-object v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@8
    iget v5, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mLayoutResId:I

    #@a
    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@d
    move-result-object v3

    #@e
    .line 285
    .local v3, "view":Landroid/view/View;
    new-instance v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    #@10
    invoke-direct {v1, v8}, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>(Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;)V

    #@13
    .line 286
    .local v1, "holder":Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    const v4, 0x1020006

    #@16
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/widget/ImageView;

    #@1c
    iput-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    #@1e
    .line 287
    const v4, 0x1020016

    #@21
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/widget/TextView;

    #@27
    iput-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    #@29
    .line 288
    const v4, 0x1020010

    #@2c
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Landroid/widget/TextView;

    #@32
    iput-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    #@34
    .line 289
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@37
    .line 296
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    #@3d
    .line 297
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    iget-boolean v4, p0, Landroid/preference/PreferenceActivity$HeaderAdapter;->mRemoveIconIfEmpty:Z

    #@3f
    if-eqz v4, :cond_2

    #@41
    .line 298
    iget v4, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    #@43
    if-nez v4, :cond_1

    #@45
    .line 299
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    #@47
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    #@4a
    .line 307
    :goto_1
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    #@4c
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5b
    .line 308
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@66
    move-result-object v2

    #@67
    .line 309
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6a
    move-result v4

    #@6b
    if-nez v4, :cond_3

    #@6d
    .line 310
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    #@6f
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@72
    .line 311
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    #@74
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@77
    .line 316
    :goto_2
    return-object v3

    #@78
    .line 291
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v1    # "holder":Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    .end local v2    # "summary":Ljava/lang/CharSequence;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v3, p2

    #@79
    .line 292
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@7c
    move-result-object v1

    #@7d
    check-cast v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;

    #@7f
    .restart local v1    # "holder":Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
    goto :goto_0

    #@80
    .line 301
    .restart local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    #@82
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    #@85
    .line 302
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    #@87
    iget v5, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    #@89
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    #@8c
    goto :goto_1

    #@8d
    .line 305
    :cond_2
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    #@8f
    iget v5, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    #@91
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    #@94
    goto :goto_1

    #@95
    .line 313
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, v1, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    #@97
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@9a
    goto :goto_2
.end method
