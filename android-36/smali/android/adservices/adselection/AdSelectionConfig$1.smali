.class Landroid/adservices/adselection/AdSelectionConfig$1;
.super Ljava/lang/Object;
.source "AdSelectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/AdSelectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/adservices/adselection/AdSelectionConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/adservices/adselection/AdSelectionConfig;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/adservices/adselection/AdSelectionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/adservices/adselection/AdSelectionConfig;-><init>(Landroid/os/Parcel;Landroid/adservices/adselection/AdSelectionConfig-IA;)V

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

    .line 64
    invoke-virtual {p0, p1}, Landroid/adservices/adselection/AdSelectionConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/adservices/adselection/AdSelectionConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/adservices/adselection/AdSelectionConfig;
    .registers 3
    .param p1, "size"    # I

    .line 73
    new-array v0, p1, [Landroid/adservices/adselection/AdSelectionConfig;

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

    .line 64
    invoke-virtual {p0, p1}, Landroid/adservices/adselection/AdSelectionConfig$1;->newArray(I)[Landroid/adservices/adselection/AdSelectionConfig;

    move-result-object p1

    return-object p1
.end method
