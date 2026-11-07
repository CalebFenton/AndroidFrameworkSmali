.class Landroid/app/admin/DnsEvent$1;
.super Ljava/lang/Object;
.source "DnsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DnsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/DnsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DnsEvent;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    .line 109
    return-object v2

    .line 111
    :cond_9
    new-instance v0, Landroid/app/admin/DnsEvent;

    invoke-direct {v0, p1, v2}, Landroid/app/admin/DnsEvent;-><init>(Landroid/os/Parcel;Landroid/app/admin/DnsEvent-IA;)V

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

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/admin/DnsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DnsEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/DnsEvent;
    .registers 3
    .param p1, "size"    # I

    .line 116
    new-array v0, p1, [Landroid/app/admin/DnsEvent;

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

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/admin/DnsEvent$1;->newArray(I)[Landroid/app/admin/DnsEvent;

    move-result-object p1

    return-object p1
.end method
