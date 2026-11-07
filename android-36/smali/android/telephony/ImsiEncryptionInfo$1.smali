.class Landroid/telephony/ImsiEncryptionInfo$1;
.super Ljava/lang/Object;
.source "ImsiEncryptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ImsiEncryptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ImsiEncryptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ImsiEncryptionInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 149
    new-instance v0, Landroid/telephony/ImsiEncryptionInfo;

    invoke-direct {v0, p1}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 146
    invoke-virtual {p0, p1}, Landroid/telephony/ImsiEncryptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/ImsiEncryptionInfo;
    .registers 3
    .param p1, "size"    # I

    .line 154
    new-array v0, p1, [Landroid/telephony/ImsiEncryptionInfo;

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

    .line 146
    invoke-virtual {p0, p1}, Landroid/telephony/ImsiEncryptionInfo$1;->newArray(I)[Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p1

    return-object p1
.end method
