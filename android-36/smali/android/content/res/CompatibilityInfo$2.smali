.class Landroid/content/res/CompatibilityInfo$2;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/res/CompatibilityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/res/CompatibilityInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 936
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo-IA;)V

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

    .line 933
    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo$2;->createFromParcel(Landroid/os/Parcel;)Landroid/content/res/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/res/CompatibilityInfo;
    .registers 3
    .param p1, "size"    # I

    .line 941
    new-array v0, p1, [Landroid/content/res/CompatibilityInfo;

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

    .line 933
    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo$2;->newArray(I)[Landroid/content/res/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method
