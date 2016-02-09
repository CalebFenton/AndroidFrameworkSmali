.class Landroid/widget/TextView$Marquee$2;
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
.field final synthetic this$1:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/TextView$Marquee;

    #@0
    .prologue
    .line 10023
    iput-object p1, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 10026
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-static {v0, v1}, Landroid/widget/TextView$Marquee;->-set2(Landroid/widget/TextView$Marquee;B)B

    #@6
    .line 10027
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    #@8
    iget-object v1, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    #@a
    invoke-static {v1}, Landroid/widget/TextView$Marquee;->-get0(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    #@11
    move-result-wide v2

    #@12
    invoke-static {v0, v2, v3}, Landroid/widget/TextView$Marquee;->-set0(Landroid/widget/TextView$Marquee;J)J

    #@15
    .line 10028
    iget-object v0, p0, Landroid/widget/TextView$Marquee$2;->this$1:Landroid/widget/TextView$Marquee;

    #@17
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->tick()V

    #@1a
    .line 10025
    return-void
.end method
