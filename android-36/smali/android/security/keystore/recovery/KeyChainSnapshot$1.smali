.class Landroid/security/keystore/recovery/KeyChainSnapshot$1;
.super Ljava/lang/Object;
.source "KeyChainSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/KeyChainSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keystore/recovery/KeyChainSnapshot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 154
    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-direct {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;-><init>(Landroid/os/Parcel;)V

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

    .line 152
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 3
    .param p1, "length"    # I

    .line 158
    new-array v0, p1, [Landroid/security/keystore/recovery/KeyChainSnapshot;

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

    .line 152
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot$1;->newArray(I)[Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p1

    return-object p1
.end method
