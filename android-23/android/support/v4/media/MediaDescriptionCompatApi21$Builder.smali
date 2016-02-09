.class public Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaDescriptionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 97
    check-cast p0, Landroid/media/MediaDescription$Builder;

    #@2
    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static newInstance()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/media/MediaDescription$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    #@5
    return-object v0
.end method

.method public static setDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 81
    check-cast p0, Landroid/media/MediaDescription$Builder;

    #@2
    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    #@5
    .line 80
    return-void
.end method

.method public static setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 93
    check-cast p0, Landroid/media/MediaDescription$Builder;

    #@2
    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    #@5
    .line 92
    return-void
.end method

.method public static setIconBitmap(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "iconBitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 85
    check-cast p0, Landroid/media/MediaDescription$Builder;

    #@2
    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    #@5
    .line 84
    return-void
.end method

.method public static setIconUri(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "iconUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 89
    check-cast p0, Landroid/media/MediaDescription$Builder;

    #@2
    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    #@5
    .line 88
    return-void
.end method

.method public static setMediaId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "mediaId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    check-cast p0, Landroid/media/MediaDescription$Builder;

    #@2
    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    #@5
    .line 68
    return-void
.end method

.method public static setSubtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 77
    check-cast p0, Landroid/media/MediaDescription$Builder;

    #@2
    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    #@5
    .line 76
    return-void
.end method

.method public static setTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 73
    check-cast p0, Landroid/media/MediaDescription$Builder;

    #@2
    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    #@5
    .line 72
    return-void
.end method
