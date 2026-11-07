.class Landroid/app/admin/ManagedSubscriptionsPolicy$1;
.super Ljava/lang/Object;
.source "ManagedSubscriptionsPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ManagedSubscriptionsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/ManagedSubscriptionsPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ManagedSubscriptionsPolicy;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    new-instance v0, Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/admin/ManagedSubscriptionsPolicy;-><init>(I)V

    .line 83
    .local v0, "policy":Landroid/app/admin/ManagedSubscriptionsPolicy;
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

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/admin/ManagedSubscriptionsPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/ManagedSubscriptionsPolicy;
    .registers 3
    .param p1, "size"    # I

    .line 88
    new-array v0, p1, [Landroid/app/admin/ManagedSubscriptionsPolicy;

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

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/admin/ManagedSubscriptionsPolicy$1;->newArray(I)[Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object p1

    return-object p1
.end method
