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
.field final synthetic this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ToolbarActionBar;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$1;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$1;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/ToolbarActionBar;->populateOptionsMenu()V

    #@5
    .line 54
    return-void
.end method
