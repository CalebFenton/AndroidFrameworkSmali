.class Landroid/widget/DoubleDigitManager$1;
.super Ljava/lang/Object;
.source "DoubleDigitManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DoubleDigitManager;->reportDigit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DoubleDigitManager;


# direct methods
.method constructor <init>(Landroid/widget/DoubleDigitManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DoubleDigitManager;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 54
    iget-object v0, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    #@3
    invoke-static {v0}, Landroid/widget/DoubleDigitManager;->-get0(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 55
    iget-object v0, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    #@b
    invoke-static {v0}, Landroid/widget/DoubleDigitManager;->-get1(Landroid/widget/DoubleDigitManager;)Landroid/widget/DoubleDigitManager$CallBack;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    #@11
    invoke-static {v1}, Landroid/widget/DoubleDigitManager;->-get0(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v1

    #@19
    invoke-interface {v0, v1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitFinal(I)V

    #@1c
    .line 56
    iget-object v0, p0, Landroid/widget/DoubleDigitManager$1;->this$0:Landroid/widget/DoubleDigitManager;

    #@1e
    invoke-static {v0, v2}, Landroid/widget/DoubleDigitManager;->-set0(Landroid/widget/DoubleDigitManager;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@21
    .line 53
    :cond_0
    return-void
.end method
