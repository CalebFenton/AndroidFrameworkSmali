.class final Landroid/view/inputmethod/EditorInfo$1;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/EditorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/inputmethod/EditorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/EditorInfo;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 473
    new-instance v1, Landroid/view/inputmethod/EditorInfo;

    #@2
    invoke-direct {v1}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    #@5
    .line 474
    .local v1, "res":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@b
    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v2

    #@f
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@11
    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    #@17
    .line 477
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@19
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/CharSequence;

    #@1f
    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@21
    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v2

    #@25
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    #@27
    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v2

    #@2b
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@2d
    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v2

    #@31
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@33
    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v2

    #@37
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    #@39
    .line 482
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Ljava/lang/CharSequence;

    #@41
    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@43
    .line 483
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@45
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48
    move-result-object v2

    #@49
    check-cast v2, Ljava/lang/CharSequence;

    #@4b
    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    #@4d
    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@53
    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v2

    #@57
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    #@59
    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    #@5f
    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@62
    move-result-object v2

    #@63
    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@65
    .line 488
    sget-object v2, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@67
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6a
    move-result-object v0

    #@6b
    check-cast v0, Landroid/os/LocaleList;

    #@6d
    .line 489
    .local v0, "hintLocales":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_0

    #@73
    const/4 v0, 0x0

    #@74
    .end local v0    # "hintLocales":Landroid/os/LocaleList;
    :cond_0
    iput-object v0, v1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    #@76
    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    #@7c
    .line 491
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 472
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/EditorInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/inputmethod/EditorInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 495
    new-array v0, p1, [Landroid/view/inputmethod/EditorInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 494
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorInfo$1;->newArray(I)[Landroid/view/inputmethod/EditorInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
