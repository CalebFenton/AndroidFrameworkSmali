.class Landroid/security/identity/RequestEntryParcel$1;
.super Ljava/lang/Object;
.source "RequestEntryParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/RequestEntryParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/identity/RequestEntryParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/identity/RequestEntryParcel;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 17
    new-instance v0, Landroid/security/identity/RequestEntryParcel;

    invoke-direct {v0}, Landroid/security/identity/RequestEntryParcel;-><init>()V

    .line 18
    .local v0, "_aidl_out":Landroid/security/identity/RequestEntryParcel;
    invoke-virtual {v0, p1}, Landroid/security/identity/RequestEntryParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
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

    .line 14
    invoke-virtual {p0, p1}, Landroid/security/identity/RequestEntryParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/identity/RequestEntryParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/security/identity/RequestEntryParcel;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 23
    new-array v0, p1, [Landroid/security/identity/RequestEntryParcel;

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

    .line 14
    invoke-virtual {p0, p1}, Landroid/security/identity/RequestEntryParcel$1;->newArray(I)[Landroid/security/identity/RequestEntryParcel;

    move-result-object p1

    return-object p1
.end method
