.class Landroid/widget/SlidingDrawer$1;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SlidingDrawer;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SlidingDrawer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SlidingDrawer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 982
    iput-object p1, p0, Landroid/widget/SlidingDrawer$1;->this$0:Landroid/widget/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 985
    iget-object v0, p0, Landroid/widget/SlidingDrawer$1;->this$0:Landroid/widget/SlidingDrawer;

    invoke-static {v0}, Landroid/widget/SlidingDrawer;->-$$Nest$mdoAnimation(Landroid/widget/SlidingDrawer;)V

    .line 986
    return-void
.end method
