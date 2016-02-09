.class Landroid/text/method/CharacterPickerDialog$OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CharacterPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/CharacterPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/CharacterPickerDialog;


# direct methods
.method public constructor <init>(Landroid/text/method/CharacterPickerDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroid/text/method/CharacterPickerDialog;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #@2
    .line 119
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 118
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #@2
    invoke-static {v0}, Landroid/text/method/CharacterPickerDialog;->-get1(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #@2
    invoke-static {v0}, Landroid/text/method/CharacterPickerDialog;->-get1(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 139
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 124
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #@2
    invoke-static {v1}, Landroid/text/method/CharacterPickerDialog;->-get0(Landroid/text/method/CharacterPickerDialog;)Landroid/view/LayoutInflater;

    #@5
    move-result-object v1

    #@6
    const v2, 0x109003d

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 123
    check-cast v0, Landroid/widget/Button;

    #@10
    .line 125
    .local v0, "b":Landroid/widget/Button;
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #@12
    invoke-static {v1}, Landroid/text/method/CharacterPickerDialog;->-get1(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v1

    #@1a
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@21
    .line 126
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@26
    .line 127
    return-object v0
.end method
