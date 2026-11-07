.class Lcom/android/internal/app/ChooserActivity$1;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mWrittenOnce:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 737
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$1;->mWrittenOnce:Z

    return-void
.end method


# virtual methods
.method public blacklist onCollapsedChanged(Z)V
    .registers 3
    .param p1, "isCollapsed"    # Z

    .line 744
    if-nez p1, :cond_e

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$1;->mWrittenOnce:Z

    if-nez v0, :cond_e

    .line 745
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mincrementNumSheetExpansions(Lcom/android/internal/app/ChooserActivity;)V

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$1;->mWrittenOnce:Z

    .line 748
    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    .line 749
    invoke-interface {v0, p1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetExpansionChanged(Z)V

    .line 750
    return-void
.end method
