.class Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 181
    iput-object p3, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    .line 182
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 184
    return-void
.end method


# virtual methods
.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 190
    if-nez p2, :cond_2b

    .line 191
    iget-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x109005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 192
    new-instance v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;

    invoke-direct {v0, v2}, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;-><init>(Landroid/accounts/ChooseAccountTypeActivity-IA;)V

    .line 193
    .local v0, "holder":Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;
    const v1, 0x10201d4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;->text:Landroid/widget/TextView;

    .line 194
    const v1, 0x10201d3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 195
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_31

    .line 197
    .end local v0    # "holder":Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;
    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;

    .line 200
    .restart local v0    # "holder":Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;
    :goto_31
    iget-object v1, v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    iget-object v2, v2, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    iget-object v2, v2, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-object p2
.end method
