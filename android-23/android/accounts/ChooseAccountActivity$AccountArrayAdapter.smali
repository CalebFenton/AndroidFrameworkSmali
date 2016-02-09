.class Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/ChooseAccountActivity$AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Landroid/accounts/ChooseAccountActivity$AccountInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "infos"    # [Landroid/accounts/ChooseAccountActivity$AccountInfo;

    #@0
    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #@3
    .line 161
    iput-object p3, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

    #@5
    .line 163
    const-string/jumbo v0, "layout_inflater"

    #@8
    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/LayoutInflater;

    #@e
    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@10
    .line 159
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
    .line 170
    if-nez p2, :cond_0

    #@3
    .line 171
    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@5
    const v2, 0x109003f

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@b
    move-result-object p2

    #@c
    .line 172
    new-instance v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;

    #@e
    invoke-direct {v0, v3}, Landroid/accounts/ChooseAccountActivity$ViewHolder;-><init>(Landroid/accounts/ChooseAccountActivity$ViewHolder;)V

    #@11
    .line 173
    .local v0, "holder":Landroid/accounts/ChooseAccountActivity$ViewHolder;
    const v1, 0x1020313

    #@14
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/widget/TextView;

    #@1a
    iput-object v1, v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    #@1c
    .line 174
    const v1, 0x1020312

    #@1f
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/widget/ImageView;

    #@25
    iput-object v1, v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    #@27
    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@2a
    .line 180
    :goto_0
    iget-object v1, v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    #@2c
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

    #@2e
    aget-object v2, v2, p1

    #@30
    iget-object v2, v2, Landroid/accounts/ChooseAccountActivity$AccountInfo;->name:Ljava/lang/String;

    #@32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@35
    .line 181
    iget-object v1, v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    #@37
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;->mInfos:[Landroid/accounts/ChooseAccountActivity$AccountInfo;

    #@39
    aget-object v2, v2, p1

    #@3b
    iget-object v2, v2, Landroid/accounts/ChooseAccountActivity$AccountInfo;->drawable:Landroid/graphics/drawable/Drawable;

    #@3d
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@40
    .line 183
    return-object p2

    #@41
    .line 177
    .end local v0    # "holder":Landroid/accounts/ChooseAccountActivity$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/accounts/ChooseAccountActivity$ViewHolder;

    #@47
    .restart local v0    # "holder":Landroid/accounts/ChooseAccountActivity$ViewHolder;
    goto :goto_0
.end method
