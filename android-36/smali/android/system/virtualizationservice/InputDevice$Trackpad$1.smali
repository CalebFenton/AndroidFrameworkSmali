.class Landroid/system/virtualizationservice/InputDevice$Trackpad$1;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/InputDevice$Trackpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/virtualizationservice/InputDevice$Trackpad;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/InputDevice$Trackpad;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 588
    new-instance v0, Landroid/system/virtualizationservice/InputDevice$Trackpad;

    invoke-direct {v0}, Landroid/system/virtualizationservice/InputDevice$Trackpad;-><init>()V

    .line 589
    .local v0, "_aidl_out":Landroid/system/virtualizationservice/InputDevice$Trackpad;
    invoke-virtual {v0, p1}, Landroid/system/virtualizationservice/InputDevice$Trackpad;->readFromParcel(Landroid/os/Parcel;)V

    .line 590
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

    .line 585
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/InputDevice$Trackpad$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/InputDevice$Trackpad;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/virtualizationservice/InputDevice$Trackpad;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 594
    new-array v0, p1, [Landroid/system/virtualizationservice/InputDevice$Trackpad;

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

    .line 585
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/InputDevice$Trackpad$1;->newArray(I)[Landroid/system/virtualizationservice/InputDevice$Trackpad;

    move-result-object p1

    return-object p1
.end method
