.class Landroid/widget/TextView$Marquee$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView$Marquee;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TextView$Marquee;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16426
    iput-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .registers 5
    .param p1, "frameTimeNanos"    # J

    .line 16429
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-$$Nest$fgetmStatus(Landroid/widget/TextView$Marquee;)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 16430
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-$$Nest$fgetmRepeatLimit(Landroid/widget/TextView$Marquee;)I

    move-result v0

    if-ltz v0, :cond_1c

    .line 16431
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-$$Nest$fgetmRepeatLimit(Landroid/widget/TextView$Marquee;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/widget/TextView$Marquee;->-$$Nest$fputmRepeatLimit(Landroid/widget/TextView$Marquee;I)V

    .line 16433
    :cond_1c
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    iget-object v1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {v1}, Landroid/widget/TextView$Marquee;->-$$Nest$fgetmRepeatLimit(Landroid/widget/TextView$Marquee;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    .line 16435
    :cond_27
    return-void
.end method
