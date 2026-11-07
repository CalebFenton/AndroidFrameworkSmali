.class Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord$1;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 316
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;

    invoke-direct {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;-><init>()V

    .line 317
    .local v0, "info":Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;
    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;->-$$Nest$fgetmData(Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 318
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

    .line 314
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;
    .registers 3
    .param p1, "size"    # I

    .line 322
    new-array v0, p1, [Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;

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

    .line 314
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord$1;->newArray(I)[Landroid/net/connectivity/com/android/net/module/util/DnsSdTxtRecord;

    move-result-object p1

    return-object p1
.end method
