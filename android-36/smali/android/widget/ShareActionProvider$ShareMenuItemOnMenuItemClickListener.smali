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
.field final synthetic blacklist this$0:Landroid/widget/ShareActionProvider;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ShareActionProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 294
    iput-object p1, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public whitelist onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 297
    iget-object v0, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    invoke-static {v0}, Landroid/widget/ShareActionProvider;->-$$Nest$fgetmContext(Landroid/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    invoke-static {v1}, Landroid/widget/ShareActionProvider;->-$$Nest$fgetmShareHistoryFileName(Landroid/widget/ShareActionProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 299
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 300
    .local v1, "itemId":I
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 301
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_3c

    .line 302
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 304
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 305
    :cond_2e
    const/high16 v4, 0x8080000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    :cond_33
    iget-object v4, p0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/widget/ShareActionProvider;

    invoke-static {v4}, Landroid/widget/ShareActionProvider;->-$$Nest$fgetmContext(Landroid/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    .end local v3    # "action":Ljava/lang/String;
    :cond_3c
    const/4 v3, 0x1

    return v3
.end method
