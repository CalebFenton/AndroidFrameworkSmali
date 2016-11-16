.class public Landroid/text/style/ForegroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ForegroundColorSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 31
    iput p1, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    #@5
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    #@9
    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getForegroundColor()I
    .locals 1

    #@0
    .prologue
    .line 62
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    #@2
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 44
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 67
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    #@2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    #@5
    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/text/style/ForegroundColorSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 51
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 57
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 56
    return-void
.end method
