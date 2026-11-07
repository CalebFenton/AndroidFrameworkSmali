.class Landroid/telephony/CallState$1;
.super Ljava/lang/Object;
.source "CallState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CallState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 277
    new-instance v0, Landroid/telephony/CallState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/CallState;-><init>(Landroid/os/Parcel;Landroid/telephony/CallState-IA;)V

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

    .line 275
    invoke-virtual {p0, p1}, Landroid/telephony/CallState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CallState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CallState;
    .registers 3
    .param p1, "size"    # I

    .line 281
    new-array v0, p1, [Landroid/telephony/CallState;

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

    .line 275
    invoke-virtual {p0, p1}, Landroid/telephony/CallState$1;->newArray(I)[Landroid/telephony/CallState;

    move-result-object p1

    return-object p1
.end method
