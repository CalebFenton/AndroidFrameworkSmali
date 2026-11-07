.class Landroid/telephony/RadioAccessFamily$1;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/RadioAccessFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/RadioAccessFamily;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessFamily;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .local v0, "phoneId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .local v1, "radioAccessFamily":I
    new-instance v2, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v2, v0, v1}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

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

    .line 157
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessFamily$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessFamily;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/RadioAccessFamily;
    .registers 3
    .param p1, "size"    # I

    .line 169
    new-array v0, p1, [Landroid/telephony/RadioAccessFamily;

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

    .line 157
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessFamily$1;->newArray(I)[Landroid/telephony/RadioAccessFamily;

    move-result-object p1

    return-object p1
.end method
