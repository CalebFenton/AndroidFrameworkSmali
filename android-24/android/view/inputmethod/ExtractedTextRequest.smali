.class public Landroid/view/inputmethod/ExtractedTextRequest;
.super Ljava/lang/Object;
.source "ExtractedTextRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/ExtractedTextRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/ExtractedTextRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public flags:I

.field public hintMaxChars:I

.field public hintMaxLines:I

.field public token:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest$1;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest$1;-><init>()V

    #@5
    .line 66
    sput-object v0, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 57
    iget v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 58
    iget v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 59
    iget v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 60
    iget v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 56
    return-void
.end method
