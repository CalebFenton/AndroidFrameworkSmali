.class Landroid/service/contentcapture/ActivityEvent$1;
.super Ljava/lang/Object;
.source "ActivityEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ActivityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/contentcapture/ActivityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/contentcapture/ActivityEvent;
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 166
    const-class v0, Landroid/content/ComponentName;

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 168
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .local v2, "eventType":I
    const-class v3, Landroid/app/assist/ActivityId;

    .line 170
    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/assist/ActivityId;

    .line 171
    .local v1, "activityId":Landroid/app/assist/ActivityId;
    new-instance v3, Landroid/service/contentcapture/ActivityEvent;

    invoke-direct {v3, v1, v0, v2}, Landroid/service/contentcapture/ActivityEvent;-><init>(Landroid/app/assist/ActivityId;Landroid/content/ComponentName;I)V

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

    .line 161
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ActivityEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/contentcapture/ActivityEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/contentcapture/ActivityEvent;
    .registers 3
    .param p1, "size"    # I

    .line 177
    new-array v0, p1, [Landroid/service/contentcapture/ActivityEvent;

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

    .line 161
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ActivityEvent$1;->newArray(I)[Landroid/service/contentcapture/ActivityEvent;

    move-result-object p1

    return-object p1
.end method
