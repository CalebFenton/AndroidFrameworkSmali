.class final Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/media/MediaRouter$RouteInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/MediaRouteChooserDialog;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialog;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/MediaRouteChooserDialog;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@2
    .line 184
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    #@6
    .line 185
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@c
    .line 183
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 203
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 213
    move-object v4, p2

    #@2
    .line 214
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    #@4
    .line 215
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@6
    const v6, 0x109007c

    #@9
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@c
    move-result-object v4

    #@d
    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    #@13
    .line 218
    .local v1, "route":Landroid/media/MediaRouter$RouteInfo;
    const v5, 0x1020014

    #@16
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/widget/TextView;

    #@1c
    .line 219
    .local v2, "text1":Landroid/widget/TextView;
    const v5, 0x1020015

    #@1f
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Landroid/widget/TextView;

    #@25
    .line 220
    .local v3, "text2":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2c
    .line 221
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    #@2f
    move-result-object v0

    #@30
    .line 222
    .local v0, "description":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_1

    #@36
    .line 223
    const/16 v5, 0x8

    #@38
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    #@3b
    .line 224
    const-string/jumbo v5, ""

    #@3e
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@41
    .line 229
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    #@44
    move-result v5

    #@45
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    #@48
    .line 230
    return-object v4

    #@49
    .line 226
    :cond_1
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@4c
    .line 227
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4f
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    #@6
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 235
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    #@6
    .line 236
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 237
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    #@f
    .line 238
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@11
    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->dismiss()V

    #@14
    .line 234
    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    #@0
    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->clear()V

    #@3
    .line 190
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@5
    invoke-static {v3}, Lcom/android/internal/app/MediaRouteChooserDialog;->-get0(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/media/MediaRouter;->getRouteCount()I

    #@c
    move-result v0

    #@d
    .line 191
    .local v0, "count":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 192
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@12
    invoke-static {v3}, Lcom/android/internal/app/MediaRouteChooserDialog;->-get0(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    #@19
    move-result-object v2

    #@1a
    .line 193
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@1c
    invoke-virtual {v3, v2}, Lcom/android/internal/app/MediaRouteChooserDialog;->onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 194
    invoke-virtual {p0, v2}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->add(Ljava/lang/Object;)V

    #@25
    .line 191
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 197
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    sget-object v3, Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;

    #@2a
    invoke-virtual {p0, v3}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->sort(Ljava/util/Comparator;)V

    #@2d
    .line 198
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->notifyDataSetChanged()V

    #@30
    .line 188
    return-void
.end method
