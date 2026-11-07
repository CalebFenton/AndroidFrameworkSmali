.class Landroid/view/DisplayShape$1;
.super Ljava/lang/Object;
.source "DisplayShape.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/DisplayShape;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayShape;
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "spec":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .local v2, "displayWidth":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 264
    .local v3, "displayHeight":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 265
    .local v4, "ratio":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 266
    .local v5, "rotation":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 267
    .local v6, "offsetX":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 268
    .local v7, "offsetY":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 269
    .local v8, "scale":F
    new-instance v0, Landroid/view/DisplayShape;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIFLandroid/view/DisplayShape-IA;)V

    return-object v0
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

    .line 258
    invoke-virtual {p0, p1}, Landroid/view/DisplayShape$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayShape;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/DisplayShape;
    .registers 3
    .param p1, "size"    # I

    .line 275
    new-array v0, p1, [Landroid/view/DisplayShape;

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

    .line 258
    invoke-virtual {p0, p1}, Landroid/view/DisplayShape$1;->newArray(I)[Landroid/view/DisplayShape;

    move-result-object p1

    return-object p1
.end method
