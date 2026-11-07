.class Landroid/os/instrumentation/ExecutableMethodFileOffsets$1;
.super Ljava/lang/Object;
.source "ExecutableMethodFileOffsets.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/instrumentation/ExecutableMethodFileOffsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/instrumentation/ExecutableMethodFileOffsets;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 26
    new-instance v0, Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    invoke-direct {v0}, Landroid/os/instrumentation/ExecutableMethodFileOffsets;-><init>()V

    .line 27
    .local v0, "_aidl_out":Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    invoke-virtual {v0, p1}, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
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

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/instrumentation/ExecutableMethodFileOffsets$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 32
    new-array v0, p1, [Landroid/os/instrumentation/ExecutableMethodFileOffsets;

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

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/instrumentation/ExecutableMethodFileOffsets$1;->newArray(I)[Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    move-result-object p1

    return-object p1
.end method
