.class Landroid/widget/RemoteViews$3;
.super Landroid/content/ContextWrapper;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViews;

.field final synthetic val$contextForResources:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "val$contextForResources"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2740
    iput-object p1, p0, Landroid/widget/RemoteViews$3;->this$0:Landroid/widget/RemoteViews;

    #@2
    iput-object p3, p0, Landroid/widget/RemoteViews$3;->val$contextForResources:Landroid/content/Context;

    #@4
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@7
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2751
    iget-object v0, p0, Landroid/widget/RemoteViews$3;->val$contextForResources:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 2743
    iget-object v0, p0, Landroid/widget/RemoteViews$3;->val$contextForResources:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    #@0
    .prologue
    .line 2747
    iget-object v0, p0, Landroid/widget/RemoteViews$3;->val$contextForResources:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
