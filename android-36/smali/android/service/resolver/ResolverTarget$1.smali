.class Landroid/service/resolver/ResolverTarget$1;
.super Ljava/lang/Object;
.source "ResolverTarget.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/resolver/ResolverTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/resolver/ResolverTarget;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/resolver/ResolverTarget;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 206
    new-instance v0, Landroid/service/resolver/ResolverTarget;

    invoke-direct {v0, p1}, Landroid/service/resolver/ResolverTarget;-><init>(Landroid/os/Parcel;)V

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

    .line 203
    invoke-virtual {p0, p1}, Landroid/service/resolver/ResolverTarget$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/resolver/ResolverTarget;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/resolver/ResolverTarget;
    .registers 3
    .param p1, "size"    # I

    .line 211
    new-array v0, p1, [Landroid/service/resolver/ResolverTarget;

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

    .line 203
    invoke-virtual {p0, p1}, Landroid/service/resolver/ResolverTarget$1;->newArray(I)[Landroid/service/resolver/ResolverTarget;

    move-result-object p1

    return-object p1
.end method
