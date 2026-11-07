.class Landroid/accounts/Account$1;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/accounts/Account;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 146
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1}, Landroid/accounts/Account;-><init>(Landroid/os/Parcel;)V

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

    .line 144
    invoke-virtual {p0, p1}, Landroid/accounts/Account$1;->createFromParcel(Landroid/os/Parcel;)Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/accounts/Account;
    .registers 3
    .param p1, "size"    # I

    .line 150
    new-array v0, p1, [Landroid/accounts/Account;

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

    .line 144
    invoke-virtual {p0, p1}, Landroid/accounts/Account$1;->newArray(I)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method
