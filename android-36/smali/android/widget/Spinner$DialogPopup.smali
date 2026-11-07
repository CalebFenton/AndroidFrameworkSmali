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
.field private greylist-max-o mListAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mPopup:Landroid/app/AlertDialog;

.field private greylist-max-o mPrompt:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Landroid/widget/Spinner;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Spinner;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1129
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Spinner;Landroid/widget/Spinner-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o dismiss()V
    .registers 2

    .line 1135
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 1136
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 1139
    :cond_c
    return-void
.end method

.method public greylist-max-o getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1199
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getHintText()Ljava/lang/CharSequence;
    .registers 2

    .line 1155
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getHorizontalOffset()I
    .registers 2

    .line 1209
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getVerticalOffset()I
    .registers 2

    .line 1204
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r isShowing()Z
    .registers 2

    .line 1143
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1175
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1176
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    iget-object v0, v0, Landroid/widget/Spinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_17

    .line 1177
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, v1, v2}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1179
    :cond_17
    invoke-virtual {p0}, Landroid/widget/Spinner$DialogPopup;->dismiss()V

    .line 1180
    return-void
.end method

.method public greylist-max-o setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 1147
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1148
    return-void
.end method

.method public greylist-max-o setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 1184
    const-string v0, "Spinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void
.end method

.method public greylist-max-o setHorizontalOffset(I)V
    .registers 4
    .param p1, "px"    # I

    .line 1194
    const-string v0, "Spinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void
.end method

.method public greylist-max-o setPromptText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1151
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 1152
    return-void
.end method

.method public greylist-max-o setVerticalOffset(I)V
    .registers 4
    .param p1, "px"    # I

    .line 1189
    const-string v0, "Spinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    return-void
.end method

.method public greylist-max-o show(II)V
    .registers 6
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 1159
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 1160
    return-void

    .line 1162
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1163
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_19

    .line 1164
    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1166
    :cond_19
    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    .line 1167
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 1166
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1167
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 1168
    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1169
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1170
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1171
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1172
    return-void
.end method
