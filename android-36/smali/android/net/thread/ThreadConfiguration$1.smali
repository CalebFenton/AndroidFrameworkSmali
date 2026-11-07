.class Landroid/net/thread/ThreadConfiguration$1;
.super Ljava/lang/Object;
.source "ThreadConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ThreadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/thread/ThreadConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/thread/ThreadConfiguration;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 139
    new-instance v0, Landroid/net/thread/ThreadConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/thread/ThreadConfiguration$Builder;-><init>()V

    .line 140
    .local v0, "builder":Landroid/net/thread/ThreadConfiguration$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/thread/ThreadConfiguration$Builder;->setBorderRouterEnabled(Z)Landroid/net/thread/ThreadConfiguration$Builder;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/thread/ThreadConfiguration$Builder;->setNat64Enabled(Z)Landroid/net/thread/ThreadConfiguration$Builder;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/thread/ThreadConfiguration$Builder;->setDhcpv6PdEnabled(Z)Landroid/net/thread/ThreadConfiguration$Builder;

    .line 143
    invoke-virtual {v0}, Landroid/net/thread/ThreadConfiguration$Builder;->build()Landroid/net/thread/ThreadConfiguration;

    move-result-object v1

    return-object v1
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

    .line 136
    invoke-virtual {p0, p1}, Landroid/net/thread/ThreadConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/thread/ThreadConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/thread/ThreadConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 148
    new-array v0, p1, [Landroid/net/thread/ThreadConfiguration;

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

    .line 136
    invoke-virtual {p0, p1}, Landroid/net/thread/ThreadConfiguration$1;->newArray(I)[Landroid/net/thread/ThreadConfiguration;

    move-result-object p1

    return-object p1
.end method
