.class Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method private constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@0
    .prologue
    .line 508
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V

    #@3
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    #@0
    .prologue
    .line 511
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-set0(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    #@6
    .line 512
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@8
    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    #@a
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    #@d
    .line 510
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-set0(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    #@6
    .line 518
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    #@8
    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    #@a
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    #@d
    .line 516
    return-void
.end method
