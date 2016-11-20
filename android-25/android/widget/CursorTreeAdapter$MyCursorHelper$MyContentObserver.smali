.class Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method public constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V
    .locals 1
    .param p1, "this$1"    # Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@0
    .prologue
    .line 489
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    .line 490
    iget-object v0, p1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    #@4
    invoke-static {v0}, Landroid/widget/CursorTreeAdapter;->-get1(Landroid/widget/CursorTreeAdapter;)Landroid/os/Handler;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@b
    .line 489
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    #@0
    .prologue
    .line 495
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    #@4
    invoke-static {v0}, Landroid/widget/CursorTreeAdapter;->-get0(Landroid/widget/CursorTreeAdapter;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@c
    invoke-static {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-get0(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_0

    #@12
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@14
    invoke-static {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-get0(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 499
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 503
    :cond_1
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@21
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@23
    invoke-static {v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-get0(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    #@2a
    move-result v1

    #@2b
    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-set0(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    #@2e
    goto :goto_0
.end method
