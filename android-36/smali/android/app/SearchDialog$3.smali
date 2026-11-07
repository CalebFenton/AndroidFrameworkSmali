.class Landroid/app/SearchDialog$3;
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
.field final synthetic blacklist this$0:Landroid/app/SearchDialog;


# direct methods
.method constructor blacklist <init>(Landroid/app/SearchDialog;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/SearchDialog;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 683
    iput-object p1, p0, Landroid/app/SearchDialog$3;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClose()Z
    .registers 2

    .line 686
    iget-object v0, p0, Landroid/app/SearchDialog$3;->this$0:Landroid/app/SearchDialog;

    invoke-static {v0}, Landroid/app/SearchDialog;->-$$Nest$monClosePressed(Landroid/app/SearchDialog;)Z

    move-result v0

    return v0
.end method
