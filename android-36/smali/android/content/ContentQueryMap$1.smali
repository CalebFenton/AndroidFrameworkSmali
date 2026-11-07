.class Landroid/content/ContentQueryMap$1;
.super Landroid/database/ContentObserver;
.source "ContentQueryMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/ContentQueryMap;


# direct methods
.method constructor blacklist <init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Landroid/content/ContentQueryMap;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 104
    iget-object v0, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->countObservers()I

    move-result v0

    if-eqz v0, :cond_e

    .line 105
    iget-object v0, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->requery()V

    goto :goto_14

    .line 107
    :cond_e
    iget-object v0, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/ContentQueryMap;->-$$Nest$fputmDirty(Landroid/content/ContentQueryMap;Z)V

    .line 109
    :goto_14
    return-void
.end method
