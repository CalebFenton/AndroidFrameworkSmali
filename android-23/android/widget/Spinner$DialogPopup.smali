.class Landroid/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Spinner;

    #@0
    .prologue
    .line 1059
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Spinner;Landroid/widget/Spinner$DialogPopup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Spinner;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;)V

    #@3
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1065
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1066
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    #@7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@a
    .line 1067
    iput-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    #@c
    .line 1064
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 1128
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1084
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    #@0
    .prologue
    .line 1138
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    #@0
    .prologue
    .line 1133
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 1072
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    #@6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1104
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    #@3
    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    #@6
    .line 1105
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    #@8
    iget-object v0, v0, Landroid/widget/Spinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1106
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    #@e
    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    #@10
    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@13
    move-result-wide v2

    #@14
    invoke-virtual {v0, v4, p2, v2, v3}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    #@17
    .line 1108
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner$DialogPopup;->dismiss()V

    #@1a
    .line 1103
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    .line 1076
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    #@2
    .line 1075
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1113
    const-string/jumbo v0, "Spinner"

    #@3
    const-string/jumbo v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1112
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    #@0
    .prologue
    .line 1123
    const-string/jumbo v0, "Spinner"

    #@3
    const-string/jumbo v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1122
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1080
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    #@2
    .line 1079
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    #@0
    .prologue
    .line 1118
    const-string/jumbo v0, "Spinner"

    #@3
    const-string/jumbo v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1117
    return-void
.end method

.method public show(II)V
    .locals 4
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    #@0
    .prologue
    .line 1088
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1089
    return-void

    #@5
    .line 1091
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@7
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    #@9
    invoke-virtual {v2}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@10
    .line 1092
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1093
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    #@16
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@19
    .line 1095
    :cond_1
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    #@1b
    .line 1096
    iget-object v3, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    #@1d
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    #@20
    move-result v3

    #@21
    .line 1095
    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    #@2b
    .line 1097
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    #@2d
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    #@30
    move-result-object v1

    #@31
    .line 1098
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    #@34
    .line 1099
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    #@37
    .line 1100
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    #@39
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    #@3c
    .line 1087
    return-void
.end method
