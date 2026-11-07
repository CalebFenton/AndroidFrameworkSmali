.class Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive$1;
.super Ljava/lang/Object;
.source "StatsBootstrapAtomValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 464
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;-><init>(Landroid/os/Parcel;Landroid/os/StatsBootstrapAtomValue-IA;)V

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

    .line 461
    invoke-virtual {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 468
    new-array v0, p1, [Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

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

    .line 461
    invoke-virtual {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive$1;->newArray(I)[Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    move-result-object p1

    return-object p1
.end method
