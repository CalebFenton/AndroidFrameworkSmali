.class Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/widget/ShareActionProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ShareActionProvider;

    #@0
    .prologue
    .line 294
    iput-object p1, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ShareActionProvider;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/widget/ShareActionProvider;)V

    #@3
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 297
    iget-object v4, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    #@2
    invoke-static {v4}, Landroid/widget/ShareActionProvider;->-get0(Landroid/widget/ShareActionProvider;)Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    .line 298
    iget-object v5, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    #@8
    invoke-static {v5}, Landroid/widget/ShareActionProvider;->-get2(Landroid/widget/ShareActionProvider;)Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 297
    invoke-static {v4, v5}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    #@f
    move-result-object v1

    #@10
    .line 299
    .local v1, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    #@13
    move-result v2

    #@14
    .line 300
    .local v2, "itemId":I
    invoke-virtual {v1, v2}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    #@17
    move-result-object v3

    #@18
    .line 301
    .local v3, "launchIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    #@1a
    .line 302
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 303
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.SEND"

    #@21
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_0

    #@27
    .line 304
    const-string/jumbo v4, "android.intent.action.SEND_MULTIPLE"

    #@2a
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    .line 303
    if-eqz v4, :cond_1

    #@30
    .line 305
    :cond_0
    const/high16 v4, 0x8080000

    #@32
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@35
    .line 308
    :cond_1
    iget-object v4, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    #@37
    invoke-static {v4}, Landroid/widget/ShareActionProvider;->-get0(Landroid/widget/ShareActionProvider;)Landroid/content/Context;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@3e
    .line 310
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    #@3f
    return v4
.end method
