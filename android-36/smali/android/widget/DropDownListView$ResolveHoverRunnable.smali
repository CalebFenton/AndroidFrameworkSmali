.class Landroid/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveHoverRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DropDownListView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/DropDownListView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 353
    iput-object p1, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 3

    .line 362
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->-$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V

    .line 363
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/DropDownListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method public greylist-max-o post()V
    .registers 2

    .line 367
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/DropDownListView;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 357
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/DropDownListView;->-$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V

    .line 358
    iget-object v0, p0, Landroid/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->drawableStateChanged()V

    .line 359
    return-void
.end method
