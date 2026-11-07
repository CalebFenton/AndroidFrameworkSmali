.class Landroid/os/IHintManager$SessionCreationReturn$1;
.super Ljava/lang/Object;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager$SessionCreationReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/IHintManager$SessionCreationReturn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/IHintManager$SessionCreationReturn;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 611
    new-instance v0, Landroid/os/IHintManager$SessionCreationReturn;

    invoke-direct {v0}, Landroid/os/IHintManager$SessionCreationReturn;-><init>()V

    .line 612
    .local v0, "_aidl_out":Landroid/os/IHintManager$SessionCreationReturn;
    invoke-virtual {v0, p1}, Landroid/os/IHintManager$SessionCreationReturn;->readFromParcel(Landroid/os/Parcel;)V

    .line 613
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

    .line 608
    invoke-virtual {p0, p1}, Landroid/os/IHintManager$SessionCreationReturn$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/IHintManager$SessionCreationReturn;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/IHintManager$SessionCreationReturn;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 617
    new-array v0, p1, [Landroid/os/IHintManager$SessionCreationReturn;

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

    .line 608
    invoke-virtual {p0, p1}, Landroid/os/IHintManager$SessionCreationReturn$1;->newArray(I)[Landroid/os/IHintManager$SessionCreationReturn;

    move-result-object p1

    return-object p1
.end method
