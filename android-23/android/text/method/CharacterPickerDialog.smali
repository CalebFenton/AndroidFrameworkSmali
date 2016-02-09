.class public Landroid/text/method/CharacterPickerDialog;
.super Landroid/app/Dialog;
.source "CharacterPickerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/CharacterPickerDialog$OptionsAdapter;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInsert:Z

.field private mOptions:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Landroid/text/method/CharacterPickerDialog;)Landroid/view/LayoutInflater;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "text"    # Landroid/text/Editable;
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "insert"    # Z

    #@0
    .prologue
    .line 57
    const v0, 0x1030059

    #@3
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@6
    .line 59
    iput-object p2, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    #@8
    .line 60
    iput-object p3, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    #@a
    .line 61
    iput-object p4, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    #@c
    .line 62
    iput-boolean p5, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    #@e
    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    #@14
    .line 56
    return-void
.end method

.method private replaceCharacterAndClose(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "replace"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 94
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    #@2
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@5
    move-result v0

    #@6
    .line 95
    .local v0, "selEnd":I
    iget-boolean v1, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    #@8
    if-nez v1, :cond_0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 96
    :cond_0
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    #@e
    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    #@11
    .line 101
    :goto_0
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    #@14
    .line 93
    return-void

    #@15
    .line 98
    :cond_1
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    #@17
    add-int/lit8 v2, v0, -0x1

    #@19
    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@1c
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 108
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    #@2
    if-ne p1, v1, :cond_1

    #@4
    .line 109
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    #@7
    .line 107
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@8
    .line 110
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    instance-of v1, p1, Landroid/widget/Button;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 111
    check-cast p1, Landroid/widget/Button;

    #@e
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    #@11
    move-result-object v0

    #@12
    .line 112
    .local v0, "result":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    #@15
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 70
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@a
    move-result-object v1

    #@b
    .line 71
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    #@d
    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    #@10
    move-result-object v2

    #@11
    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@13
    .line 72
    const/16 v2, 0x3eb

    #@15
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@17
    .line 73
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@19
    or-int/lit8 v2, v2, 0x1

    #@1b
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1d
    .line 75
    const v2, 0x109003c

    #@20
    invoke-virtual {p0, v2}, Landroid/text/method/CharacterPickerDialog;->setContentView(I)V

    #@23
    .line 77
    const v2, 0x1020310

    #@26
    invoke-virtual {p0, v2}, Landroid/text/method/CharacterPickerDialog;->findViewById(I)Landroid/view/View;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/widget/GridView;

    #@2c
    .line 78
    .local v0, "grid":Landroid/widget/GridView;
    new-instance v2, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;

    #@2e
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, p0, v3}, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;-><init>(Landroid/text/method/CharacterPickerDialog;Landroid/content/Context;)V

    #@35
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@38
    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@3b
    .line 81
    const v2, 0x1020311

    #@3e
    invoke-virtual {p0, v2}, Landroid/text/method/CharacterPickerDialog;->findViewById(I)Landroid/view/View;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/widget/Button;

    #@44
    iput-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    #@46
    .line 82
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    #@48
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@4b
    .line 67
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    .line 89
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    #@2
    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 90
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    #@d
    .line 88
    return-void
.end method
