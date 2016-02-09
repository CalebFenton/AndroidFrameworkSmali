.class Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareActivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/widget/ShareActionProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ShareActionProvider;

    #@0
    .prologue
    .line 332
    iput-object p1, p0, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/widget/ShareActionProvider;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ShareActionProvider;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/widget/ShareActionProvider;)V

    #@3
    return-void
.end method


# virtual methods
.method public onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "host"    # Landroid/widget/ActivityChooserModel;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/widget/ShareActionProvider;

    #@2
    invoke-static {v0}, Landroid/widget/ShareActionProvider;->-get1(Landroid/widget/ShareActionProvider;)Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 336
    iget-object v0, p0, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/widget/ShareActionProvider;

    #@a
    invoke-static {v0}, Landroid/widget/ShareActionProvider;->-get1(Landroid/widget/ShareActionProvider;)Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    #@d
    move-result-object v0

    #@e
    .line 337
    iget-object v1, p0, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/widget/ShareActionProvider;

    #@10
    .line 336
    invoke-interface {v0, v1, p2}, Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z

    #@13
    .line 339
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method
