.class final Landroid/support/v4/media/MediaDescriptionCompat$1;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaDescriptionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v4/media/MediaDescriptionCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 268
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Landroid/os/Parcel;Landroid/support/v4/media/MediaDescriptionCompat;)V

    #@c
    return-object v0

    #@d
    .line 270
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->fromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->fromMediaDescription(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 266
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 276
    new-array v0, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 275
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$1;->newArray(I)[Landroid/support/v4/media/MediaDescriptionCompat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
