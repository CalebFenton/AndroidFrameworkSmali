.class Lcom/android/internal/view/menu/CascadingMenuPopup$3;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@0
    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 12
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 132
    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@2
    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get3(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    #@5
    move-result-object v8

    #@6
    const/4 v9, 0x0

    #@7
    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@a
    .line 135
    const/4 v2, -0x1

    #@b
    .line 136
    .local v2, "menuIndex":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@e
    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get1(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    #@11
    move-result-object v8

    #@12
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@15
    move-result v0

    #@16
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@18
    .line 137
    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@1a
    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get1(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    #@1d
    move-result-object v8

    #@1e
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v8

    #@22
    check-cast v8, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@24
    iget-object v8, v8, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@26
    if-ne p1, v8, :cond_1

    #@28
    .line 138
    move v2, v1

    #@29
    .line 143
    :cond_0
    const/4 v8, -0x1

    #@2a
    if-ne v2, v8, :cond_2

    #@2c
    .line 144
    return-void

    #@2d
    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 148
    :cond_2
    add-int/lit8 v3, v2, 0x1

    #@32
    .line 149
    .local v3, "nextIndex":I
    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@34
    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get1(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    #@37
    move-result-object v8

    #@38
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@3b
    move-result v8

    #@3c
    if-ge v3, v8, :cond_3

    #@3e
    .line 150
    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@40
    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get1(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    #@43
    move-result-object v8

    #@44
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@4a
    .line 155
    :goto_1
    new-instance v5, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;

    #@4c
    invoke-direct {v5, p0, v4, p2, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup$3;Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@4f
    .line 174
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@52
    move-result-wide v8

    #@53
    const-wide/16 v10, 0xc8

    #@55
    add-long v6, v8, v10

    #@57
    .line 175
    .local v6, "uptimeMillis":J
    iget-object v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@59
    invoke-static {v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get3(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8, v5, p1, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    #@60
    .line 130
    return-void

    #@61
    .line 152
    .end local v5    # "runnable":Ljava/lang/Runnable;
    .end local v6    # "uptimeMillis":J
    :cond_3
    const/4 v4, 0x0

    #@62
    .local v4, "nextInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    goto :goto_1
.end method

.method public onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    #@2
    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->-get3(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@9
    .line 121
    return-void
.end method
