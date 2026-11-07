.class Landroid/app/admin/FactoryResetProtectionPolicy$1;
.super Ljava/lang/Object;
.source "FactoryResetProtectionPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/FactoryResetProtectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/FactoryResetProtectionPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "factoryResetProtectionAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .local v1, "accountsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 186
    .end local v2    # "i":I
    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 188
    .local v2, "factoryResetProtectionEnabled":Z
    new-instance v3, Landroid/app/admin/FactoryResetProtectionPolicy;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;ZLandroid/app/admin/FactoryResetProtectionPolicy-IA;)V

    return-object v3
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

    .line 177
    invoke-virtual {p0, p1}, Landroid/app/admin/FactoryResetProtectionPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/FactoryResetProtectionPolicy;
    .registers 3
    .param p1, "size"    # I

    .line 194
    new-array v0, p1, [Landroid/app/admin/FactoryResetProtectionPolicy;

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

    .line 177
    invoke-virtual {p0, p1}, Landroid/app/admin/FactoryResetProtectionPolicy$1;->newArray(I)[Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object p1

    return-object p1
.end method
