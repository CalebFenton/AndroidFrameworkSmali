.class Lcom/android/internal/app/ToolbarActionBar$2;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ToolbarActionBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ToolbarActionBar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$2;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 65
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$2;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
