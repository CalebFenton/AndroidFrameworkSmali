.class Landroid/print/PrintServiceRecommendationsLoader$1;
.super Ljava/lang/Object;
.source "PrintServiceRecommendationsLoader.java"

# interfaces
.implements Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PrintServiceRecommendationsLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintServiceRecommendationsLoader;


# direct methods
.method constructor <init>(Landroid/print/PrintServiceRecommendationsLoader;)V
    .locals 0
    .param p1, "this$0"    # Landroid/print/PrintServiceRecommendationsLoader;

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Landroid/print/PrintServiceRecommendationsLoader$1;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPrintServiceRecommendationsChanged()V
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader$1;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    #@2
    invoke-static {v0}, Landroid/print/PrintServiceRecommendationsLoader;->-wrap0(Landroid/print/PrintServiceRecommendationsLoader;)V

    #@5
    .line 75
    return-void
.end method
