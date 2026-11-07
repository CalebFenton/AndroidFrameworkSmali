.class Landroid/graphics/fonts/FontUpdateRequest$Font$1;
.super Ljava/lang/Object;
.source "FontUpdateRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontUpdateRequest$Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/fonts/FontUpdateRequest$Font;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/fonts/FontUpdateRequest$Font;
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "fontName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, "weight":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .local v2, "slant":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 113
    .local v3, "index":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "varSettings":Ljava/lang/String;
    new-instance v5, Landroid/graphics/fonts/FontUpdateRequest$Font;

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v1, v2}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-direct {v5, v0, v6, v3, v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;-><init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;)V

    return-object v5
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

    .line 106
    invoke-virtual {p0, p1}, Landroid/graphics/fonts/FontUpdateRequest$Font$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/fonts/FontUpdateRequest$Font;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/fonts/FontUpdateRequest$Font;
    .registers 3
    .param p1, "size"    # I

    .line 119
    new-array v0, p1, [Landroid/graphics/fonts/FontUpdateRequest$Font;

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/graphics/fonts/FontUpdateRequest$Font$1;->newArray(I)[Landroid/graphics/fonts/FontUpdateRequest$Font;

    move-result-object p1

    return-object p1
.end method
