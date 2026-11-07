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
.field final synthetic blacklist this$0:Landroid/print/PrintServiceRecommendationsLoader;


# direct methods
.method constructor blacklist <init>(Landroid/print/PrintServiceRecommendationsLoader;)V
    .registers 2
    .param p1, "this$0"    # Landroid/print/PrintServiceRecommendationsLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Landroid/print/PrintServiceRecommendationsLoader$1;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPrintServiceRecommendationsChanged()V
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader$1;->this$0:Landroid/print/PrintServiceRecommendationsLoader;

    invoke-static {v0}, Landroid/print/PrintServiceRecommendationsLoader;->-$$Nest$mqueueNewResult(Landroid/print/PrintServiceRecommendationsLoader;)V

    .line 78
    return-void
.end method
