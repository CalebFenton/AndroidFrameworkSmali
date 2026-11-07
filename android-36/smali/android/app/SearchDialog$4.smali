.class Landroid/app/SearchDialog$4;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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

    .line 691
    iput-object p1, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .param p1, "newText"    # Ljava/lang/String;

    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .line 694
    iget-object v0, p0, Landroid/app/SearchDialog$4;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->dismiss()V

    .line 695
    const/4 v0, 0x0

    return v0
.end method
