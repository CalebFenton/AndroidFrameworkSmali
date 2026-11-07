.class Landroid/adservices/ondevicepersonalization/OSVersion$1;
.super Ljava/lang/Object;
.source "OSVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/OSVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/adservices/ondevicepersonalization/OSVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/adservices/ondevicepersonalization/OSVersion;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    new-instance v0, Landroid/adservices/ondevicepersonalization/OSVersion;

    invoke-direct {v0, p1}, Landroid/adservices/ondevicepersonalization/OSVersion;-><init>(Landroid/os/Parcel;)V

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

    .line 170
    invoke-virtual {p0, p1}, Landroid/adservices/ondevicepersonalization/OSVersion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/adservices/ondevicepersonalization/OSVersion;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/adservices/ondevicepersonalization/OSVersion;
    .registers 3
    .param p1, "size"    # I

    .line 173
    new-array v0, p1, [Landroid/adservices/ondevicepersonalization/OSVersion;

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

    .line 170
    invoke-virtual {p0, p1}, Landroid/adservices/ondevicepersonalization/OSVersion$1;->newArray(I)[Landroid/adservices/ondevicepersonalization/OSVersion;

    move-result-object p1

    return-object p1
.end method
