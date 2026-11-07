.class Landroid/service/timezone/TimeZoneProviderEvent$1;
.super Ljava/lang/Object;
.source "TimeZoneProviderEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/timezone/TimeZoneProviderEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 178
    .local v2, "creationElapsedMillis":J
    nop

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v4, Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 178
    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 180
    .local v4, "suggestion":Landroid/service/timezone/TimeZoneProviderSuggestion;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "failureCause":Ljava/lang/String;
    nop

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v6, Landroid/service/timezone/TimeZoneProviderStatus;

    .line 181
    invoke-virtual {p1, v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/service/timezone/TimeZoneProviderStatus;

    .line 183
    .local v6, "status":Landroid/service/timezone/TimeZoneProviderStatus;
    new-instance v0, Landroid/service/timezone/TimeZoneProviderEvent;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderStatus;Landroid/service/timezone/TimeZoneProviderEvent-IA;)V

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

    .line 173
    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/timezone/TimeZoneProviderEvent;
    .registers 3
    .param p1, "size"    # I

    .line 189
    new-array v0, p1, [Landroid/service/timezone/TimeZoneProviderEvent;

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

    .line 173
    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderEvent$1;->newArray(I)[Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    return-object p1
.end method
