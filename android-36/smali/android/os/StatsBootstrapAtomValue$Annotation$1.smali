.class Landroid/os/StatsBootstrapAtomValue$Annotation$1;
.super Ljava/lang/Object;
.source "StatsBootstrapAtomValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StatsBootstrapAtomValue$Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/StatsBootstrapAtomValue$Annotation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/StatsBootstrapAtomValue$Annotation;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 347
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Annotation;

    invoke-direct {v0}, Landroid/os/StatsBootstrapAtomValue$Annotation;-><init>()V

    .line 348
    .local v0, "_aidl_out":Landroid/os/StatsBootstrapAtomValue$Annotation;
    invoke-virtual {v0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation;->readFromParcel(Landroid/os/Parcel;)V

    .line 349
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

    .line 344
    invoke-virtual {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/StatsBootstrapAtomValue$Annotation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/StatsBootstrapAtomValue$Annotation;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 353
    new-array v0, p1, [Landroid/os/StatsBootstrapAtomValue$Annotation;

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

    .line 344
    invoke-virtual {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$1;->newArray(I)[Landroid/os/StatsBootstrapAtomValue$Annotation;

    move-result-object p1

    return-object p1
.end method
