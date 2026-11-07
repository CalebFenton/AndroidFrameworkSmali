.class Landroid/nfc/TechListParcel$1;
.super Ljava/lang/Object;
.source "TechListParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/TechListParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/TechListParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TechListParcel;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "count":I
    new-array v1, v0, [[Ljava/lang/String;

    .line 55
    .local v1, "techLists":[[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_12

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 58
    .end local v2    # "i":I
    :cond_12
    new-instance v2, Landroid/nfc/TechListParcel;

    invoke-direct {v2, v1}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

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

    .line 50
    invoke-virtual {p0, p1}, Landroid/nfc/TechListParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TechListParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/TechListParcel;
    .registers 3
    .param p1, "size"    # I

    .line 63
    new-array v0, p1, [Landroid/nfc/TechListParcel;

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

    .line 50
    invoke-virtual {p0, p1}, Landroid/nfc/TechListParcel$1;->newArray(I)[Landroid/nfc/TechListParcel;

    move-result-object p1

    return-object p1
.end method
