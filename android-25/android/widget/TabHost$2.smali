.class Landroid/widget/TabHost$2;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method constructor <init>(Landroid/widget/TabHost;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabHost;

    #@0
    .prologue
    .line 156
    iput-object p1, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .param p1, "tabIndex"    # I
    .param p2, "clicked"    # Z

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    #@5
    .line 159
    if-eqz p2, :cond_0

    #@7
    .line 160
    iget-object v0, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    #@9
    invoke-static {v0}, Landroid/widget/TabHost;->-get0(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x2

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    #@11
    .line 157
    :cond_0
    return-void
.end method
