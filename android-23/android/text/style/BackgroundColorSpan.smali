.class public Landroid/text/style/BackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "BackgroundColorSpan.java"

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
    .line 29
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 30
    iput p1, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    #@5
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    #@9
    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    #@2
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 43
    const/16 v0, 0xc

    #@2
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 65
    iget v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    #@2
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    #@4
    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/text/style/BackgroundColorSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 50
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 56
    iget v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 55
    return-void
.end method
