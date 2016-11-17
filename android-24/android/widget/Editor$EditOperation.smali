.class public Landroid/widget/Editor$EditOperation;
.super Landroid/content/UndoOperation;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$EditOperation$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation",
        "<",
        "Landroid/widget/Editor;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/widget/Editor$EditOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_DELETE:I = 0x1

.field private static final TYPE_INSERT:I = 0x0

.field private static final TYPE_REPLACE:I = 0x2


# instance fields
.field private mNewCursorPos:I

.field private mNewText:Ljava/lang/String;

.field private mNewTextStart:I

.field private mOldCursorPos:I

.field private mOldText:Ljava/lang/String;

.field private mOldTextStart:I

.field private mType:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z
    .locals 1
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 6141
    new-instance v0, Landroid/widget/Editor$EditOperation$1;

    #@2
    invoke-direct {v0}, Landroid/widget/Editor$EditOperation$1;-><init>()V

    #@5
    .line 6140
    sput-object v0, Landroid/widget/Editor$EditOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@7
    .line 5901
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 5945
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    .line 5946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@9
    .line 5947
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@f
    .line 5948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@15
    .line 5949
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@1b
    .line 5950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@21
    .line 5951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@27
    .line 5952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@2d
    .line 5944
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "oldText"    # Ljava/lang/String;
    .param p3, "dstart"    # I
    .param p4, "newText"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5920
    invoke-static {p1}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    #@8
    .line 5921
    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@a
    .line 5922
    iput-object p4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@c
    .line 5928
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    if-lez v0, :cond_0

    #@14
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 5929
    iput v1, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@1e
    .line 5930
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@20
    .line 5940
    :goto_0
    invoke-static {p1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@2a
    .line 5941
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2f
    move-result v0

    #@30
    add-int/2addr v0, p3

    #@31
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@33
    .line 5919
    return-void

    #@34
    .line 5931
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_1

    #@3c
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@3e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@41
    move-result v0

    #@42
    if-lez v0, :cond_1

    #@44
    .line 5932
    const/4 v0, 0x1

    #@45
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@47
    .line 5933
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@49
    goto :goto_0

    #@4a
    .line 5935
    :cond_1
    const/4 v0, 0x2

    #@4b
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@4d
    .line 5936
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@4f
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@51
    goto :goto_0
.end method

.method private getNewTextEnd()I
    .locals 2

    #@0
    .prologue
    .line 5967
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@2
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method private getOldTextEnd()I
    .locals 2

    #@0
    .prologue
    .line 5971
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@2
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 6117
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 6125
    const-string/jumbo v0, ""

    #@8
    return-object v0

    #@9
    .line 6119
    :pswitch_0
    const-string/jumbo v0, "insert"

    #@c
    return-object v0

    #@d
    .line 6121
    :pswitch_1
    const-string/jumbo v0, "delete"

    #@10
    return-object v0

    #@11
    .line 6123
    :pswitch_2
    const-string/jumbo v0, "replace"

    #@14
    return-object v0

    #@15
    .line 6117
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 4
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 6038
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    #@4
    if-eq v0, v3, :cond_0

    #@6
    .line 6039
    return v2

    #@7
    .line 6042
    :cond_0
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@9
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    #@c
    move-result v1

    #@d
    if-eq v0, v1, :cond_1

    #@f
    .line 6043
    return v2

    #@10
    .line 6045
    :cond_1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@12
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@14
    .line 6046
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@2b
    .line 6047
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@2d
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@2f
    .line 6048
    return v3
.end method

.method private mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 3
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6023
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 6024
    return v2

    #@6
    .line 6027
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    #@9
    move-result v0

    #@a
    iget v1, p1, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 6028
    return v2

    #@f
    .line 6030
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@26
    .line 6031
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@28
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@2a
    .line 6032
    const/4 v0, 0x1

    #@2b
    return v0
.end method

.method private mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 3
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6053
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    #@3
    if-nez v0, :cond_0

    #@5
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    #@8
    move-result v0

    #@9
    iget v1, p1, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@b
    if-eq v0, v1, :cond_1

    #@d
    .line 6054
    :cond_0
    return v2

    #@e
    .line 6056
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@25
    .line 6057
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@3c
    .line 6058
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@3e
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@40
    .line 6059
    const/4 v0, 0x1

    #@41
    return v0
.end method

.method private mergeWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 1
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    #@0
    .prologue
    .line 6009
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 6017
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 6011
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 6013
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 6015
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 6009
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "deleteFrom"    # I
    .param p2, "deleteTo"    # I
    .param p3, "newText"    # Ljava/lang/CharSequence;
    .param p4, "newTextInsertAt"    # I
    .param p5, "newCursorPos"    # I

    #@0
    .prologue
    .line 6099
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->-wrap7(Ljava/lang/CharSequence;II)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 6100
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@9
    move-result v0

    #@a
    sub-int v1, p2, p1

    #@c
    sub-int/2addr v0, v1

    #@d
    if-gt p4, v0, :cond_1

    #@f
    .line 6101
    if-eq p1, p2, :cond_0

    #@11
    .line 6102
    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@14
    .line 6104
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 6105
    invoke-interface {p0, p4, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    #@1d
    .line 6111
    :cond_1
    if-ltz p5, :cond_2

    #@1f
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@22
    move-result v0

    #@23
    if-gt p5, v0, :cond_2

    #@25
    .line 6112
    invoke-static {p0, p5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@28
    .line 6097
    :cond_2
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    #@0
    .prologue
    .line 5975
    return-void
.end method

.method public forceMergeWith(Landroid/widget/Editor$EditOperation;)V
    .locals 10
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 6068
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    #@4
    move-result-object v8

    #@5
    check-cast v8, Landroid/widget/Editor;

    #@7
    .line 6074
    .local v8, "editor":Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@e
    move-result-object v7

    #@f
    check-cast v7, Landroid/text/Editable;

    #@11
    .line 6075
    .local v7, "editable":Landroid/text/Editable;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@13
    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@1a
    .line 6078
    .local v0, "originalText":Landroid/text/Editable;
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@1c
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    #@1f
    move-result v2

    #@20
    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@22
    iget v4, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@24
    .line 6079
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@26
    .line 6078
    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    #@29
    .line 6082
    new-instance v1, Landroid/text/SpannableStringBuilder;

    #@2b
    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@32
    .line 6083
    .local v1, "finalText":Landroid/text/Editable;
    iget v2, p1, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@34
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    #@37
    move-result v3

    #@38
    iget-object v4, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@3a
    .line 6084
    iget v5, p1, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@3c
    iget v6, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@3e
    .line 6083
    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    #@41
    .line 6087
    const/4 v2, 0x2

    #@42
    iput v2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@44
    .line 6088
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@4a
    .line 6089
    iput v9, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@4c
    .line 6090
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    iput-object v2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@52
    .line 6091
    iput v9, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@54
    .line 6092
    iget v2, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@56
    iput v2, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@58
    .line 6066
    return-void
.end method

.method public redo()V
    .locals 7

    #@0
    .prologue
    .line 5992
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    #@3
    move-result-object v6

    #@4
    check-cast v6, Landroid/widget/Editor;

    #@6
    .line 5993
    .local v6, "editor":Landroid/widget/Editor;
    invoke-static {v6}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/text/Editable;

    #@10
    .line 5994
    .local v0, "text":Landroid/text/Editable;
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@12
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@18
    iget v4, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@1a
    .line 5995
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@1c
    .line 5994
    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    #@1f
    .line 5989
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 6131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[mType="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getTypeString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ", "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 6132
    const-string/jumbo v1, "mOldText="

    #@1e
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 6132
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@24
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 6132
    const-string/jumbo v1, ", "

    #@2b
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 6133
    const-string/jumbo v1, "mOldTextStart="

    #@32
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 6133
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@38
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 6133
    const-string/jumbo v1, ", "

    #@3f
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 6134
    const-string/jumbo v1, "mNewText="

    #@46
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 6134
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@4c
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 6134
    const-string/jumbo v1, ", "

    #@53
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 6135
    const-string/jumbo v1, "mNewTextStart="

    #@5a
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 6135
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@60
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 6135
    const-string/jumbo v1, ", "

    #@67
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 6136
    const-string/jumbo v1, "mOldCursorPos="

    #@6e
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    .line 6136
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@74
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    .line 6136
    const-string/jumbo v1, ", "

    #@7b
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    .line 6137
    const-string/jumbo v1, "mNewCursorPos="

    #@82
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    .line 6137
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@88
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 6137
    const-string/jumbo v1, "]"

    #@8f
    .line 6131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v0

    #@97
    return-object v0
.end method

.method public undo()V
    .locals 7

    #@0
    .prologue
    .line 5982
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    #@3
    move-result-object v6

    #@4
    check-cast v6, Landroid/widget/Editor;

    #@6
    .line 5983
    .local v6, "editor":Landroid/widget/Editor;
    invoke-static {v6}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/text/Editable;

    #@10
    .line 5984
    .local v0, "text":Landroid/text/Editable;
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@12
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@18
    iget v4, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@1a
    .line 5985
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@1c
    .line 5984
    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    #@1f
    .line 5979
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 5957
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 5958
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 5959
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 5960
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 5961
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 5962
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 5963
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 5956
    return-void
.end method
