.class public Landroid/text/style/SuggestionRangeSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionRangeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mBackgroundColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    #@6
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    #@9
    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 44
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/text/style/SuggestionRangeSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 64
    const/16 v0, 0x15

    #@2
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    #@0
    .prologue
    .line 68
    iput p1, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    #@2
    .line 67
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 73
    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    #@2
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    #@4
    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionRangeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 48
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 54
    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 53
    return-void
.end method
