.class public Landroid/text/style/ForegroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ForegroundColorSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final greylist-max-o mColor:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "color"    # I

    .line 51
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 52
    iput p1, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    .line 53
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getForegroundColor()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 64
    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 70
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForegroundColorSpan{color=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 103
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 104
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/text/style/ForegroundColorSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 81
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
