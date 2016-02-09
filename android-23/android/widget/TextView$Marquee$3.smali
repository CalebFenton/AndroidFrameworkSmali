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
.field final synthetic this$1:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/TextView$Marquee;

    #@0
    .prologue
    .line 10032
    iput-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 10035
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    #@2
    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-get2(Landroid/widget/TextView$Marquee;)B

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_1

    #@9
    .line 10036
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    #@b
    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-get1(Landroid/widget/TextView$Marquee;)I

    #@e
    move-result v0

    #@f
    if-ltz v0, :cond_0

    #@11
    .line 10037
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    #@13
    invoke-static {v0}, Landroid/widget/TextView$Marquee;->-get1(Landroid/widget/TextView$Marquee;)I

    #@16
    move-result v1

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    invoke-static {v0, v1}, Landroid/widget/TextView$Marquee;->-set1(Landroid/widget/TextView$Marquee;I)I

    #@1c
    .line 10039
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    #@1e
    iget-object v1, p0, Landroid/widget/TextView$Marquee$3;->this$1:Landroid/widget/TextView$Marquee;

    #@20
    invoke-static {v1}, Landroid/widget/TextView$Marquee;->-get1(Landroid/widget/TextView$Marquee;)I

    #@23
    move-result v1

    #@24
    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    #@27
    .line 10034
    :cond_1
    return-void
.end method
