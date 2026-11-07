.class Landroid/text/FontConfig$Font$1;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig$Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/FontConfig$Font;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$Font;
    .registers 14
    .param p1, "source"    # Landroid/os/Parcel;

    .line 302
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 303
    .local v3, "path":Ljava/io/File;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "originalPathStr":Ljava/lang/String;
    if-nez v0, :cond_12

    const/4 v1, 0x0

    goto :goto_17

    :cond_12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_17
    move-object v4, v1

    .line 305
    .local v4, "originalPath":Ljava/io/File;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "postScriptName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .local v1, "weight":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 308
    .local v11, "slant":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 309
    .local v7, "index":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, "varSettings":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, "fallback":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 313
    .local v10, "varTypeAxes":I
    new-instance v2, Landroid/text/FontConfig$Font;

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v1, v11}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-direct/range {v2 .. v10}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 298
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$Font$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$Font;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/FontConfig$Font;
    .registers 3
    .param p1, "size"    # I

    .line 319
    new-array v0, p1, [Landroid/text/FontConfig$Font;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 298
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$Font$1;->newArray(I)[Landroid/text/FontConfig$Font;

    move-result-object p1

    return-object p1
.end method
