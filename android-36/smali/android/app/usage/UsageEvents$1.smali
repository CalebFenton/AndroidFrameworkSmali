.class Landroid/app/usage/UsageEvents$1;
.super Ljava/lang/Object;
.source "UsageEvents.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/usage/UsageEvents;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/UsageEvents;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1190
    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0, p1}, Landroid/app/usage/UsageEvents;-><init>(Landroid/os/Parcel;)V

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

    .line 1187
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/UsageEvents;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/usage/UsageEvents;
    .registers 3
    .param p1, "size"    # I

    .line 1195
    new-array v0, p1, [Landroid/app/usage/UsageEvents;

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

    .line 1187
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents$1;->newArray(I)[Landroid/app/usage/UsageEvents;

    move-result-object p1

    return-object p1
.end method
