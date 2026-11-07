.class Landroid/app/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/LauncherActivity;->updateButtonText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/LauncherActivity;


# direct methods
.method constructor blacklist <init>(Landroid/app/LauncherActivity;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/LauncherActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 381
    iput-object p1, p0, Landroid/app/LauncherActivity$1;->this$0:Landroid/app/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 383
    iget-object v0, p0, Landroid/app/LauncherActivity$1;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v0}, Landroid/app/LauncherActivity;->finish()V

    .line 384
    return-void
.end method
