.class Landroid/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/CursorAdapter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/CursorAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 496
    iput-object p1, p0, Landroid/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/widget/CursorAdapter;

    .line 497
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 498
    return-void
.end method


# virtual methods
.method public whitelist deliverSelfNotifications()Z
    .registers 2

    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 507
    iget-object v0, p0, Landroid/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 508
    return-void
.end method
