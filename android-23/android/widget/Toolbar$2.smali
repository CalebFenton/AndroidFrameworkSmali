.class Landroid/widget/Toolbar$2;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Toolbar;

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Landroid/widget/Toolbar$2;->this$0:Landroid/widget/Toolbar;

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
    .line 178
    iget-object v0, p0, Landroid/widget/Toolbar$2;->this$0:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->showOverflowMenu()Z

    #@5
    .line 177
    return-void
.end method
