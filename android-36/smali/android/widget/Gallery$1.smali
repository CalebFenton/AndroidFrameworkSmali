.class Landroid/widget/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Gallery;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Gallery;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/Gallery;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 137
    iget-object v0, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Gallery;->-$$Nest$fputmSuppressSelectionChanged(Landroid/widget/Gallery;Z)V

    .line 138
    iget-object v0, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->selectionChanged()V

    .line 139
    return-void
.end method
