.class Landroid/flags/SyncableFlag$1;
.super Ljava/lang/Object;
.source "SyncableFlag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/flags/SyncableFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/flags/SyncableFlag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/flags/SyncableFlag;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    new-instance v0, Landroid/flags/SyncableFlag;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 81
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

    .line 79
    invoke-virtual {p0, p1}, Landroid/flags/SyncableFlag$1;->createFromParcel(Landroid/os/Parcel;)Landroid/flags/SyncableFlag;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/flags/SyncableFlag;
    .registers 3
    .param p1, "size"    # I

    .line 90
    new-array v0, p1, [Landroid/flags/SyncableFlag;

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

    .line 79
    invoke-virtual {p0, p1}, Landroid/flags/SyncableFlag$1;->newArray(I)[Landroid/flags/SyncableFlag;

    move-result-object p1

    return-object p1
.end method
