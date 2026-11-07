.class Landroid/widget/TextView$Marquee$1;
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

    .line 16410
    iput-object p1, p0, Landroid/widget/TextView$Marquee$1;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .registers 4
    .param p1, "frameTimeNanos"    # J

    .line 16413
    iget-object v0, p0, Landroid/widget/TextView$Marquee$1;->this$0:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->tick()V

    .line 16414
    return-void
.end method
