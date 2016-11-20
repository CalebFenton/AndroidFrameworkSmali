.class final Landroid/view/inputmethod/ExtractedText$1;
.super Ljava/lang/Object;
.source "ExtractedText.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ExtractedText;
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
        "Landroid/view/inputmethod/ExtractedText;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 111
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    #@5
    .line 112
    .local v0, "res":Landroid/view/inputmethod/ExtractedText;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/lang/CharSequence;

    #@d
    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@f
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v1

    #@13
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    #@15
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v1

    #@19
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@1b
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v1

    #@1f
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    #@21
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v1

    #@25
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    #@27
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v1

    #@2b
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    #@2d
    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v1

    #@31
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@33
    .line 119
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ExtractedText$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ExtractedText;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 123
    new-array v0, p1, [Landroid/view/inputmethod/ExtractedText;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 122
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ExtractedText$1;->newArray(I)[Landroid/view/inputmethod/ExtractedText;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
