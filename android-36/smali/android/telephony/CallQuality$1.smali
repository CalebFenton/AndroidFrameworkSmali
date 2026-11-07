.class Landroid/telephony/CallQuality$1;
.super Ljava/lang/Object;
.source "CallQuality.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CallQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CallQuality;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 522
    new-instance v0, Landroid/telephony/CallQuality;

    invoke-direct {v0, p1}, Landroid/telephony/CallQuality;-><init>(Landroid/os/Parcel;)V

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

    .line 520
    invoke-virtual {p0, p1}, Landroid/telephony/CallQuality$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CallQuality;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CallQuality;
    .registers 3
    .param p1, "size"    # I

    .line 526
    new-array v0, p1, [Landroid/telephony/CallQuality;

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

    .line 520
    invoke-virtual {p0, p1}, Landroid/telephony/CallQuality$1;->newArray(I)[Landroid/telephony/CallQuality;

    move-result-object p1

    return-object p1
.end method
