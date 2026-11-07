.class Landroid/hardware/keymaster/VerificationToken$1;
.super Ljava/lang/Object;
.source "VerificationToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/keymaster/VerificationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/keymaster/VerificationToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/keymaster/VerificationToken;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 22
    new-instance v0, Landroid/hardware/keymaster/VerificationToken;

    invoke-direct {v0}, Landroid/hardware/keymaster/VerificationToken;-><init>()V

    .line 23
    .local v0, "_aidl_out":Landroid/hardware/keymaster/VerificationToken;
    invoke-virtual {v0, p1}, Landroid/hardware/keymaster/VerificationToken;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
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

    .line 19
    invoke-virtual {p0, p1}, Landroid/hardware/keymaster/VerificationToken$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/keymaster/VerificationToken;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/keymaster/VerificationToken;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 28
    new-array v0, p1, [Landroid/hardware/keymaster/VerificationToken;

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

    .line 19
    invoke-virtual {p0, p1}, Landroid/hardware/keymaster/VerificationToken$1;->newArray(I)[Landroid/hardware/keymaster/VerificationToken;

    move-result-object p1

    return-object p1
.end method
