.class Landroid/widget/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toolbar;->ensureCollapseButtonView()V
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
    .line 1055
    iput-object p1, p0, Landroid/widget/Toolbar$3;->this$0:Landroid/widget/Toolbar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1058
    iget-object v0, p0, Landroid/widget/Toolbar$3;->this$0:Landroid/widget/Toolbar;

    #@2
    invoke-virtual {v0}, Landroid/widget/Toolbar;->collapseActionView()V

    #@5
    .line 1057
    return-void
.end method
