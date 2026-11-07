.class Landroid/app/admin/MostRestrictive$1;
.super Ljava/lang/Object;
.source "MostRestrictive.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/MostRestrictive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/MostRestrictive<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/MostRestrictive;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/app/admin/MostRestrictive<",
            "*>;"
        }
    .end annotation

    .line 106
    new-instance v0, Landroid/app/admin/MostRestrictive;

    invoke-direct {v0, p1}, Landroid/app/admin/MostRestrictive;-><init>(Landroid/os/Parcel;)V

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

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/admin/MostRestrictive$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/MostRestrictive;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/MostRestrictive;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/app/admin/MostRestrictive<",
            "*>;"
        }
    .end annotation

    .line 111
    new-array v0, p1, [Landroid/app/admin/MostRestrictive;

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

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/admin/MostRestrictive$1;->newArray(I)[Landroid/app/admin/MostRestrictive;

    move-result-object p1

    return-object p1
.end method
