.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@0
    .prologue
    .line 901
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

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
    .line 904
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    #@3
    .line 905
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetChanged()V

    #@8
    .line 903
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    #@0
    .prologue
    .line 910
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    #@3
    .line 911
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetInvalidated()V

    #@8
    .line 909
    return-void
.end method
