.class public Landroid/support/v4/media/MediaDescriptionCompatApi21;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 59
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 39
    check-cast p0, Landroid/media/MediaDescription;

    #@2
    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    check-cast p0, Landroid/media/MediaDescription;

    #@2
    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getIconBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 43
    check-cast p0, Landroid/media/MediaDescription;

    #@2
    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getIconUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 47
    check-cast p0, Landroid/media/MediaDescription;

    #@2
    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getMediaId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 27
    check-cast p0, Landroid/media/MediaDescription;

    #@2
    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSubtitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 35
    check-cast p0, Landroid/media/MediaDescription;

    #@2
    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 31
    check-cast p0, Landroid/media/MediaDescription;

    #@2
    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static writeToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0
    .param p0, "descriptionObj"    # Ljava/lang/Object;
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 55
    check-cast p0, Landroid/media/MediaDescription;

    #@2
    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 54
    return-void
.end method
