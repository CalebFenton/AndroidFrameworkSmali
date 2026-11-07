.class Landroid/os/storage/CrateInfo$1;
.super Ljava/lang/Object;
.source "CrateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/CrateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/storage/CrateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/CrateInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 241
    new-instance v0, Landroid/os/storage/CrateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/storage/CrateInfo;-><init>(Landroid/os/storage/CrateInfo-IA;)V

    .line 242
    .local v0, "crateInfo":Landroid/os/storage/CrateInfo;
    invoke-virtual {v0, p1}, Landroid/os/storage/CrateInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 243
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

    .line 237
    invoke-virtual {p0, p1}, Landroid/os/storage/CrateInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/CrateInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/storage/CrateInfo;
    .registers 3
    .param p1, "size"    # I

    .line 249
    new-array v0, p1, [Landroid/os/storage/CrateInfo;

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

    .line 237
    invoke-virtual {p0, p1}, Landroid/os/storage/CrateInfo$1;->newArray(I)[Landroid/os/storage/CrateInfo;

    move-result-object p1

    return-object p1
.end method
