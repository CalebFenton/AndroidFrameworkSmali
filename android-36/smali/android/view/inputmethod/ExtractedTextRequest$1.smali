.class Landroid/view/inputmethod/ExtractedTextRequest$1;
.super Ljava/lang/Object;
.source "ExtractedTextRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ExtractedTextRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/ExtractedTextRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ExtractedTextRequest;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 69
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 70
    .local v0, "res":Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 74
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ExtractedTextRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ExtractedTextRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/inputmethod/ExtractedTextRequest;
    .registers 3
    .param p1, "size"    # I

    .line 78
    new-array v0, p1, [Landroid/view/inputmethod/ExtractedTextRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ExtractedTextRequest$1;->newArray(I)[Landroid/view/inputmethod/ExtractedTextRequest;

    move-result-object p1

    return-object p1
.end method
