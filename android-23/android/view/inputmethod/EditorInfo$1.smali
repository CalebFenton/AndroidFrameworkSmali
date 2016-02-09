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
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/EditorInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 427
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    #@5
    .line 428
    .local v0, "res":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@b
    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@11
    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    #@17
    .line 431
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@19
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/CharSequence;

    #@1f
    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@21
    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v1

    #@25
    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    #@27
    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v1

    #@2b
    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@2d
    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v1

    #@31
    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@33
    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v1

    #@37
    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    #@39
    .line 436
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@3b
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Ljava/lang/CharSequence;

    #@41
    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@43
    .line 437
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@45
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Ljava/lang/CharSequence;

    #@4b
    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    #@4d
    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    #@53
    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v1

    #@57
    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    #@59
    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    #@5f
    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@62
    move-result-object v1

    #@63
    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@65
    .line 442
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 426
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
    .line 446
    new-array v0, p1, [Landroid/view/inputmethod/EditorInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 445
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorInfo$1;->newArray(I)[Landroid/view/inputmethod/EditorInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
