.class Lcom/android/internal/app/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$1:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/android/internal/app/AlertController;

.field final synthetic val$listView:Lcom/android/internal/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/database/Cursor;
    .param p4, "$anonymous2"    # Z
    .param p5, "val$listView"    # Lcom/android/internal/app/AlertController$RecycleListView;
    .param p6, "val$dialog"    # Lcom/android/internal/app/AlertController;

    #@0
    .prologue
    .line 1050
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p5, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    #@4
    iput-object p6, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->val$dialog:Lcom/android/internal/app/AlertController;

    #@6
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    #@9
    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    #@c
    move-result-object v0

    #@d
    .line 1056
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@f
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    #@11
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->mLabelIndex:I

    #@17
    .line 1057
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@19
    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    #@1b
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    #@21
    .line 1050
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1062
    const v2, 0x1020014

    #@4
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/widget/CheckedTextView;

    #@a
    .line 1063
    .local v0, "text":Landroid/widget/CheckedTextView;
    iget v2, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->mLabelIndex:I

    #@c
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    #@13
    .line 1064
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    #@15
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    #@18
    move-result v3

    #@19
    .line 1065
    iget v4, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    #@1b
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    #@1e
    move-result v4

    #@1f
    if-ne v4, v1, :cond_0

    #@21
    .line 1064
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    #@24
    .line 1061
    return-void

    #@25
    .line 1065
    :cond_0
    const/4 v1, 0x0

    #@26
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    #@4
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$2;->val$dialog:Lcom/android/internal/app/AlertController;

    #@6
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get11(Lcom/android/internal/app/AlertController;)I

    #@9
    move-result v1

    #@a
    .line 1071
    const/4 v2, 0x0

    #@b
    .line 1070
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
