.class public final Landroid/text/style/SuggestionRangeSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionRangeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/SuggestionRangeSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mBackgroundColor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/text/style/SuggestionRangeSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionRangeSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionRangeSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBackgroundColor()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 74
    invoke-virtual {p0}, Landroid/text/style/SuggestionRangeSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 79
    const/16 v0, 0x15

    return v0
.end method

.method public whitelist setBackgroundColor(I)V
    .registers 2
    .param p1, "backgroundColor"    # I

    .line 83
    iput p1, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    .line 84
    return-void
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 92
    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 93
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionRangeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 65
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void
.end method
