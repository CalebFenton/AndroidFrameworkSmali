.class Lcom/android/internal/telephony/cat/SelectItemParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mLoadTitleIcon:Z

.field mMenu:Lcom/android/internal/telephony/cat/Menu;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "menu"    # Lcom/android/internal/telephony/cat/Menu;
    .param p3, "loadTitleIcon"    # Z

    #@0
    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@3
    .line 152
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@6
    .line 153
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    #@9
    .line 157
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@b
    .line 158
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    #@d
    .line 155
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 163
    if-eqz p1, :cond_3

    #@2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@4
    if-eqz v2, :cond_3

    #@6
    .line 164
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    iget-object v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@c
    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    #@e
    if-nez v2, :cond_1

    #@10
    .line 165
    iget-object v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@12
    iput-object p1, v2, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    #@14
    .line 175
    :cond_0
    :goto_0
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@18
    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@1a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    #@2a
    .line 168
    .local v0, "item":Lcom/android/internal/telephony/cat/Item;
    iget-object v2, v0, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    #@2c
    if-nez v2, :cond_2

    #@2e
    .line 171
    iput-object p1, v0, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    #@30
    goto :goto_0

    #@31
    .line 177
    .end local v0    # "item":Lcom/android/internal/telephony/cat/Item;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v2, 0x0

    #@32
    return v2
.end method
