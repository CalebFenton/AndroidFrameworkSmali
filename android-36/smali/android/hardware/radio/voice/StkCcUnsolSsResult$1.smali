.class Landroid/hardware/radio/voice/StkCcUnsolSsResult$1;
.super Ljava/lang/Object;
.source "StkCcUnsolSsResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/StkCcUnsolSsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/voice/StkCcUnsolSsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 37
    new-instance v0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;

    invoke-direct {v0}, Landroid/hardware/radio/voice/StkCcUnsolSsResult;-><init>()V

    .line 38
    .local v0, "_aidl_out":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    invoke-virtual {v0, p1}, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
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

    .line 34
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/StkCcUnsolSsResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/voice/StkCcUnsolSsResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 43
    new-array v0, p1, [Landroid/hardware/radio/voice/StkCcUnsolSsResult;

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

    .line 34
    invoke-virtual {p0, p1}, Landroid/hardware/radio/voice/StkCcUnsolSsResult$1;->newArray(I)[Landroid/hardware/radio/voice/StkCcUnsolSsResult;

    move-result-object p1

    return-object p1
.end method
