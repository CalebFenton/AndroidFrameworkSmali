.class final Landroid/view/inputmethod/ExtractedTextRequest$1;
.super Ljava/lang/Object;
.source "ExtractedTextRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ExtractedTextRequest;
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
        "Landroid/view/inputmethod/ExtractedTextRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ExtractedTextRequest;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 69
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    #@5
    .line 70
    .local v0, "res":Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    #@b
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    #@11
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    #@17
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    #@1d
    .line 74
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ExtractedTextRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ExtractedTextRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/inputmethod/ExtractedTextRequest;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 78
    new-array v0, p1, [Landroid/view/inputmethod/ExtractedTextRequest;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ExtractedTextRequest$1;->newArray(I)[Landroid/view/inputmethod/ExtractedTextRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
