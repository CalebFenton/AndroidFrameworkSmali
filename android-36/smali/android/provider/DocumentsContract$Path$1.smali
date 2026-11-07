.class Landroid/provider/DocumentsContract$Path$1;
.super Ljava/lang/Object;
.source "DocumentsContract.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DocumentsContract$Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/DocumentsContract$Path;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/DocumentsContract$Path;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1865
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1866
    .local v0, "rootId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1867
    .local v1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/provider/DocumentsContract$Path;

    invoke-direct {v2, v0, v1}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

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

    .line 1862
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsContract$Path$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/DocumentsContract$Path;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/DocumentsContract$Path;
    .registers 3
    .param p1, "size"    # I

    .line 1872
    new-array v0, p1, [Landroid/provider/DocumentsContract$Path;

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

    .line 1862
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsContract$Path$1;->newArray(I)[Landroid/provider/DocumentsContract$Path;

    move-result-object p1

    return-object p1
.end method
