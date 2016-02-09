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
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 177
    .local p3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    #@3
    .line 178
    iput-object p3, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    #@5
    .line 180
    const-string/jumbo v0, "layout_inflater"

    #@8
    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/LayoutInflater;

    #@e
    iput-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@10
    .line 176
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 187
    if-nez p2, :cond_0

    #@3
    .line 188
    iget-object v1, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@5
    const v2, 0x109003f

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@b
    move-result-object p2

    #@c
    .line 189
    new-instance v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;

    #@e
    invoke-direct {v0, v3}, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;-><init>(Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;)V

    #@11
    .line 190
    .local v0, "holder":Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;
    const v1, 0x1020313

    #@14
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/widget/TextView;

    #@1a
    iput-object v1, v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;->text:Landroid/widget/TextView;

    #@1c
    .line 191
    const v1, 0x1020312

    #@1f
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/widget/ImageView;

    #@25
    iput-object v1, v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    #@27
    .line 192
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@2a
    .line 197
    :goto_0
    iget-object v2, v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;->text:Landroid/widget/TextView;

    #@2c
    iget-object v1, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    #@34
    iget-object v1, v1, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->name:Ljava/lang/String;

    #@36
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@39
    .line 198
    iget-object v2, v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    #@3b
    iget-object v1, p0, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    #@43
    iget-object v1, v1, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->drawable:Landroid/graphics/drawable/Drawable;

    #@45
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@48
    .line 200
    return-object p2

    #@49
    .line 194
    .end local v0    # "holder":Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;

    #@4f
    .restart local v0    # "holder":Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;
    goto :goto_0
.end method
