.class Landroid/adservices/ondevicepersonalization/EventLogRecord$1;
.super Ljava/lang/Object;
.source "EventLogRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/EventLogRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/adservices/ondevicepersonalization/EventLogRecord;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 288
    new-instance v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;

    invoke-direct {v0, p1}, Landroid/adservices/ondevicepersonalization/EventLogRecord;-><init>(Landroid/os/Parcel;)V

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

    .line 280
    invoke-virtual {p0, p1}, Landroid/adservices/ondevicepersonalization/EventLogRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/adservices/ondevicepersonalization/EventLogRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/adservices/ondevicepersonalization/EventLogRecord;
    .registers 3
    .param p1, "size"    # I

    .line 283
    new-array v0, p1, [Landroid/adservices/ondevicepersonalization/EventLogRecord;

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

    .line 280
    invoke-virtual {p0, p1}, Landroid/adservices/ondevicepersonalization/EventLogRecord$1;->newArray(I)[Landroid/adservices/ondevicepersonalization/EventLogRecord;

    move-result-object p1

    return-object p1
.end method
