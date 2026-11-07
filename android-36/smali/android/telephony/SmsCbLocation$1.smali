.class Landroid/telephony/SmsCbLocation$1;
.super Ljava/lang/Object;
.source "SmsCbLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsCbLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/SmsCbLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsCbLocation;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 197
    new-instance v0, Landroid/telephony/SmsCbLocation;

    invoke-direct {v0, p1}, Landroid/telephony/SmsCbLocation;-><init>(Landroid/os/Parcel;)V

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

    .line 194
    invoke-virtual {p0, p1}, Landroid/telephony/SmsCbLocation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsCbLocation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/SmsCbLocation;
    .registers 3
    .param p1, "size"    # I

    .line 202
    new-array v0, p1, [Landroid/telephony/SmsCbLocation;

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

    .line 194
    invoke-virtual {p0, p1}, Landroid/telephony/SmsCbLocation$1;->newArray(I)[Landroid/telephony/SmsCbLocation;

    move-result-object p1

    return-object p1
.end method
