.class Landroid/app/admin/StringSetUnion$1;
.super Ljava/lang/Object;
.source "StringSetUnion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/StringSetUnion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/StringSetUnion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/StringSetUnion;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 72
    new-instance v0, Landroid/app/admin/StringSetUnion;

    invoke-direct {v0}, Landroid/app/admin/StringSetUnion;-><init>()V

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

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/admin/StringSetUnion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/StringSetUnion;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/StringSetUnion;
    .registers 3
    .param p1, "size"    # I

    .line 77
    new-array v0, p1, [Landroid/app/admin/StringSetUnion;

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

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/admin/StringSetUnion$1;->newArray(I)[Landroid/app/admin/StringSetUnion;

    move-result-object p1

    return-object p1
.end method
