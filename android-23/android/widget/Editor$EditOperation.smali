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
    .line 5542
    new-instance v0, Landroid/widget/Editor$EditOperation$1;

    #@2
    invoke-direct {v0}, Landroid/widget/Editor$EditOperation$1;-><init>()V

    #@5
    .line 5541
    sput-object v0, Landroid/widget/Editor$EditOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@7
    .line 5302
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 5346
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@3
    .line 5347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@9
    .line 5348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@f
    .line 5349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@15
    .line 5350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@1b
    .line 5351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@21
    .line 5352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@27
    .line 5353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@2d
    .line 5345
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
    .line 5321
    invoke-static {p1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    #@8
    .line 5322
    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@a
    .line 5323
    iput-object p4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@c
    .line 5329
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
    .line 5330
    iput v1, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@1e
    .line 5331
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@20
    .line 5341
    :goto_0
    invoke-static {p1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@2a
    .line 5342
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
    .line 5320
    return-void

    #@34
    .line 5332
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
    .line 5333
    const/4 v0, 0x1

    #@45
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@47
    .line 5334
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@49
    goto :goto_0

    #@4a
    .line 5336
    :cond_1
    const/4 v0, 0x2

    #@4b
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@4d
    .line 5337
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
    .line 5368
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
    .line 5372
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
    .line 5518
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 5526
    const-string/jumbo v0, ""

    #@8
    return-object v0

    #@9
    .line 5520
    :pswitch_0
    const-string/jumbo v0, "insert"

    #@c
    return-object v0

    #@d
    .line 5522
    :pswitch_1
    const-string/jumbo v0, "delete"

    #@10
    return-object v0

    #@11
    .line 5524
    :pswitch_2
    const-string/jumbo v0, "replace"

    #@14
    return-object v0

    #@15
    .line 5518
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
    .line 5439
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    #@4
    if-eq v0, v3, :cond_0

    #@6
    .line 5440
    return v2

    #@7
    .line 5443
    :cond_0
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@9
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    #@c
    move-result v1

    #@d
    if-eq v0, v1, :cond_1

    #@f
    .line 5444
    return v2

    #@10
    .line 5446
    :cond_1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@12
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@14
    .line 5447
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
    .line 5448
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@2d
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@2f
    .line 5449
    return v3
.end method

.method private mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 3
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5424
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 5425
    return v2

    #@6
    .line 5428
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    #@9
    move-result v0

    #@a
    iget v1, p1, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 5429
    return v2

    #@f
    .line 5431
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
    .line 5432
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@28
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@2a
    .line 5433
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
    .line 5454
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
    .line 5455
    :cond_0
    return v2

    #@e
    .line 5457
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
    .line 5458
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
    .line 5459
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@3e
    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@40
    .line 5460
    const/4 v0, 0x1

    #@41
    return v0
.end method

.method private mergeWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 1
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    #@0
    .prologue
    .line 5410
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 5418
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 5412
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 5414
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 5416
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 5410
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
    .line 5500
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->-wrap7(Ljava/lang/CharSequence;II)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 5501
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
    .line 5502
    if-eq p1, p2, :cond_0

    #@11
    .line 5503
    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@14
    .line 5505
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 5506
    invoke-interface {p0, p4, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    #@1d
    .line 5512
    :cond_1
    if-ltz p5, :cond_2

    #@1f
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@22
    move-result v0

    #@23
    if-gt p5, v0, :cond_2

    #@25
    .line 5513
    invoke-static {p0, p5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@28
    .line 5498
    :cond_2
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    #@0
    .prologue
    .line 5376
    return-void
.end method

.method public forceMergeWith(Landroid/widget/Editor$EditOperation;)V
    .locals 10
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 5469
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    #@4
    move-result-object v8

    #@5
    check-cast v8, Landroid/widget/Editor;

    #@7
    .line 5475
    .local v8, "editor":Landroid/widget/Editor;
    invoke-static {v8}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@e
    move-result-object v7

    #@f
    check-cast v7, Landroid/text/Editable;

    #@11
    .line 5476
    .local v7, "editable":Landroid/text/Editable;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@13
    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@1a
    .line 5479
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
    .line 5480
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@26
    .line 5479
    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    #@29
    .line 5483
    new-instance v1, Landroid/text/SpannableStringBuilder;

    #@2b
    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@32
    .line 5484
    .local v1, "finalText":Landroid/text/Editable;
    iget v2, p1, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@34
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    #@37
    move-result v3

    #@38
    iget-object v4, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@3a
    .line 5485
    iget v5, p1, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@3c
    iget v6, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@3e
    .line 5484
    invoke-static/range {v1 .. v6}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    #@41
    .line 5488
    const/4 v2, 0x2

    #@42
    iput v2, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@44
    .line 5489
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@4a
    .line 5490
    iput v9, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@4c
    .line 5491
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    iput-object v2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@52
    .line 5492
    iput v9, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@54
    .line 5493
    iget v2, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@56
    iput v2, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@58
    .line 5467
    return-void
.end method

.method public redo()V
    .locals 7

    #@0
    .prologue
    .line 5393
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    #@3
    move-result-object v6

    #@4
    check-cast v6, Landroid/widget/Editor;

    #@6
    .line 5394
    .local v6, "editor":Landroid/widget/Editor;
    invoke-static {v6}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/text/Editable;

    #@10
    .line 5395
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
    .line 5396
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@1c
    .line 5395
    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    #@1f
    .line 5390
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 5532
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
    .line 5533
    const-string/jumbo v1, "mOldText="

    #@1e
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 5533
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@24
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 5533
    const-string/jumbo v1, ", "

    #@2b
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 5534
    const-string/jumbo v1, "mOldTextStart="

    #@32
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 5534
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@38
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 5534
    const-string/jumbo v1, ", "

    #@3f
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 5535
    const-string/jumbo v1, "mNewText="

    #@46
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 5535
    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@4c
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 5535
    const-string/jumbo v1, ", "

    #@53
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 5536
    const-string/jumbo v1, "mNewTextStart="

    #@5a
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 5536
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@60
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 5536
    const-string/jumbo v1, ", "

    #@67
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 5537
    const-string/jumbo v1, "mOldCursorPos="

    #@6e
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    .line 5537
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@74
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    .line 5537
    const-string/jumbo v1, ", "

    #@7b
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    .line 5538
    const-string/jumbo v1, "mNewCursorPos="

    #@82
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    .line 5538
    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@88
    .line 5532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 5538
    const-string/jumbo v1, "]"

    #@8f
    .line 5532
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
    .line 5383
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    #@3
    move-result-object v6

    #@4
    check-cast v6, Landroid/widget/Editor;

    #@6
    .line 5384
    .local v6, "editor":Landroid/widget/Editor;
    invoke-static {v6}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/text/Editable;

    #@10
    .line 5385
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
    .line 5386
    iget v5, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@1c
    .line 5385
    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    #@1f
    .line 5380
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 5358
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 5359
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 5360
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldTextStart:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 5361
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 5362
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewTextStart:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 5363
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 5364
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 5357
    return-void
.end method
