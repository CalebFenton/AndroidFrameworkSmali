.class Landroid/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SearchView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SearchView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SearchView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 191
    iget-object v0, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSuggestionsAdapter(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSuggestionsAdapter(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v0, :cond_1c

    .line 192
    iget-object v0, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSuggestionsAdapter(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 194
    :cond_1c
    return-void
.end method
