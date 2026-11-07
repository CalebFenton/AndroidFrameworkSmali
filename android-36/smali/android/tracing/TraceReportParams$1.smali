.class Landroid/tracing/TraceReportParams$1;
.super Ljava/lang/Object;
.source "TraceReportParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tracing/TraceReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/tracing/TraceReportParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/tracing/TraceReportParams;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 47
    new-instance v0, Landroid/tracing/TraceReportParams;

    invoke-direct {v0}, Landroid/tracing/TraceReportParams;-><init>()V

    .line 48
    .local v0, "_aidl_out":Landroid/tracing/TraceReportParams;
    invoke-virtual {v0, p1}, Landroid/tracing/TraceReportParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
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

    .line 44
    invoke-virtual {p0, p1}, Landroid/tracing/TraceReportParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/tracing/TraceReportParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/tracing/TraceReportParams;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 53
    new-array v0, p1, [Landroid/tracing/TraceReportParams;

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

    .line 44
    invoke-virtual {p0, p1}, Landroid/tracing/TraceReportParams$1;->newArray(I)[Landroid/tracing/TraceReportParams;

    move-result-object p1

    return-object p1
.end method
