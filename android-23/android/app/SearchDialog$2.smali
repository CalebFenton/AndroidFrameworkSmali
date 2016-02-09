.class Landroid/app/SearchDialog$2;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/app/SearchDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SearchDialog;

    #@0
    .prologue
    .line 666
    iput-object p1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    #@0
    .prologue
    .line 669
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    #@2
    invoke-static {v0}, Landroid/app/SearchDialog;->-wrap0(Landroid/app/SearchDialog;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
