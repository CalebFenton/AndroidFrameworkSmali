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
.field final synthetic blacklist this$0:Landroid/widget/TabHost;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TabHost;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTabSelectionChanged(IZ)V
    .registers 5
    .param p1, "tabIndex"    # I
    .param p2, "clicked"    # Z

    .line 194
    iget-object v0, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 195
    if-eqz p2, :cond_11

    .line 196
    iget-object v0, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    invoke-static {v0}, Landroid/widget/TabHost;->-$$Nest$fgetmTabContent(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 198
    :cond_11
    return-void
.end method
