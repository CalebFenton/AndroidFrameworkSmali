.class Lcom/android/internal/telephony/cat/SelectItemParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mLoadTitleIcon:Z

.field blacklist mMenu:Lcom/android/internal/telephony/cat/Menu;


# direct methods
.method constructor greylist-max-r <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V
    .registers 4

    .line 176
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 177
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 178
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    return-void
.end method


# virtual methods
.method blacklist setIcon(Landroid/graphics/Bitmap;)Z
    .registers 4

    if-eqz p1, :cond_2c

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_2c

    .line 184
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    if-eqz p0, :cond_11

    iget-object p0, v0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-nez p0, :cond_11

    .line 185
    iput-object p1, v0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    goto :goto_2a

    .line 187
    :cond_11
    iget-object p0, v0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    .line 188
    iget-object v1, v0, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_28

    goto :goto_17

    .line 191
    :cond_28
    iput-object p1, v0, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method
