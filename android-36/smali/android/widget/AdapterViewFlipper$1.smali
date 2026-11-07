.class Landroid/widget/AdapterViewFlipper$1;
.super Ljava/lang/Object;
.source "AdapterViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/AdapterViewFlipper;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AdapterViewFlipper;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/AdapterViewFlipper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 241
    iput-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-static {v0}, Landroid/widget/AdapterViewFlipper;->-$$Nest$fgetmRunning(Landroid/widget/AdapterViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 245
    iget-object v0, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Landroid/widget/AdapterViewFlipper;->showNext()V

    .line 247
    :cond_d
    return-void
.end method
