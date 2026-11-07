.class public Landroid/text/style/UnderlineSpan;
.super Landroid/text/style/CharacterStyle;
.source "UnderlineSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 43
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 53
    invoke-virtual {p0}, Landroid/text/style/UnderlineSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 59
    const/4 v0, 0x6

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "UnderlineSpan{}"

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 80
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/text/style/UnderlineSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 70
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    return-void
.end method
