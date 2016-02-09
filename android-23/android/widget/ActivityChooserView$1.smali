.class Landroid/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;

    #@0
    .prologue
    .line 122
    iput-object p1, p0, Landroid/widget/ActivityChooserView$1;->this$0:Landroid/widget/ActivityChooserView;

    #@2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    #@0
    .prologue
    .line 126
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    #@3
    .line 127
    iget-object v0, p0, Landroid/widget/ActivityChooserView$1;->this$0:Landroid/widget/ActivityChooserView;

    #@5
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    #@c
    .line 125
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    #@0
    .prologue
    .line 131
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    #@3
    .line 132
    iget-object v0, p0, Landroid/widget/ActivityChooserView$1;->this$0:Landroid/widget/ActivityChooserView;

    #@5
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-get0(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetInvalidated()V

    #@c
    .line 130
    return-void
.end method
