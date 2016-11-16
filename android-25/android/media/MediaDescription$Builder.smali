.class public Landroid/media/MediaDescription$Builder;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconUri:Landroid/net/Uri;

.field private mMediaId:Ljava/lang/String;

.field private mMediaUri:Landroid/net/Uri;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaDescription;
    .locals 10

    #@0
    .prologue
    .line 289
    new-instance v0, Landroid/media/MediaDescription;

    #@2
    iget-object v1, p0, Landroid/media/MediaDescription$Builder;->mMediaId:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/media/MediaDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    #@6
    iget-object v3, p0, Landroid/media/MediaDescription$Builder;->mSubtitle:Ljava/lang/CharSequence;

    #@8
    iget-object v4, p0, Landroid/media/MediaDescription$Builder;->mDescription:Ljava/lang/CharSequence;

    #@a
    iget-object v5, p0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    #@c
    iget-object v6, p0, Landroid/media/MediaDescription$Builder;->mIconUri:Landroid/net/Uri;

    #@e
    .line 290
    iget-object v7, p0, Landroid/media/MediaDescription$Builder;->mExtras:Landroid/os/Bundle;

    #@10
    iget-object v8, p0, Landroid/media/MediaDescription$Builder;->mMediaUri:Landroid/net/Uri;

    #@12
    .line 289
    const/4 v9, 0x0

    #@13
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaDescription;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;Landroid/media/MediaDescription;)V

    #@16
    return-object v0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 238
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mDescription:Ljava/lang/CharSequence;

    #@2
    .line 239
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 273
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    .line 274
    return-object p0
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 250
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    #@2
    .line 251
    return-object p0
.end method

.method public setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "iconUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 262
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mIconUri:Landroid/net/Uri;

    #@2
    .line 263
    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mMediaId:Ljava/lang/String;

    #@2
    .line 205
    return-object p0
.end method

.method public setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "mediaUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 284
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mMediaUri:Landroid/net/Uri;

    #@2
    .line 285
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 226
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mSubtitle:Ljava/lang/CharSequence;

    #@2
    .line 227
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 215
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 216
    return-object p0
.end method
