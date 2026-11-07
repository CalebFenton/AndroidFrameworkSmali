.class Landroid/system/virtualizationservice/CpuOptions$CpuTopology$1;
.super Ljava/lang/Object;
.source "CpuOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/CpuOptions$CpuTopology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/virtualizationservice/CpuOptions$CpuTopology;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/CpuOptions$CpuTopology;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 126
    new-instance v0, Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/system/virtualizationservice/CpuOptions$CpuTopology;-><init>(Landroid/os/Parcel;Landroid/system/virtualizationservice/CpuOptions-IA;)V

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

    .line 123
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/CpuOptions$CpuTopology$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/virtualizationservice/CpuOptions$CpuTopology;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 130
    new-array v0, p1, [Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

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

    .line 123
    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/CpuOptions$CpuTopology$1;->newArray(I)[Landroid/system/virtualizationservice/CpuOptions$CpuTopology;

    move-result-object p1

    return-object p1
.end method
