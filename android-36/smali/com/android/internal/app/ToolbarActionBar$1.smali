.class Lcom/android/internal/app/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 54
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$1;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$1;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {v0}, Lcom/android/internal/app/ToolbarActionBar;->populateOptionsMenu()V

    .line 58
    return-void
.end method
