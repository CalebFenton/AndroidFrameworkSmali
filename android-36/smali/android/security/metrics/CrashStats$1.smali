.class Landroid/security/metrics/CrashStats$1;
.super Ljava/lang/Object;
.source "CrashStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/metrics/CrashStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/metrics/CrashStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/metrics/CrashStats;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 17
    new-instance v0, Landroid/security/metrics/CrashStats;

    invoke-direct {v0}, Landroid/security/metrics/CrashStats;-><init>()V

    .line 18
    .local v0, "_aidl_out":Landroid/security/metrics/CrashStats;
    invoke-virtual {v0, p1}, Landroid/security/metrics/CrashStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
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

    .line 14
    invoke-virtual {p0, p1}, Landroid/security/metrics/CrashStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/metrics/CrashStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/security/metrics/CrashStats;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 23
    new-array v0, p1, [Landroid/security/metrics/CrashStats;

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

    .line 14
    invoke-virtual {p0, p1}, Landroid/security/metrics/CrashStats$1;->newArray(I)[Landroid/security/metrics/CrashStats;

    move-result-object p1

    return-object p1
.end method
