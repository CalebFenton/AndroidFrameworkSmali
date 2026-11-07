.class public Landroid/view/inputmethod/ExtractedTextRequest;
.super Ljava/lang/Object;
.source "ExtractedTextRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/ExtractedTextRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist flags:I

.field public whitelist hintMaxChars:I

.field public whitelist hintMaxLines:I

.field public whitelist token:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest$1;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    iget v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
