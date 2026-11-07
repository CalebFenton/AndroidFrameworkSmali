.class Landroid/view/DisplayAddress$Physical$1;
.super Ljava/lang/Object;
.source "DisplayAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAddress$Physical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/DisplayAddress$Physical;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayAddress$Physical;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    new-instance v0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/DisplayAddress$Physical;-><init>(JLandroid/view/DisplayAddress-IA;)V

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

    .line 178
    invoke-virtual {p0, p1}, Landroid/view/DisplayAddress$Physical$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayAddress$Physical;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/DisplayAddress$Physical;
    .registers 3
    .param p1, "size"    # I

    .line 186
    new-array v0, p1, [Landroid/view/DisplayAddress$Physical;

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

    .line 178
    invoke-virtual {p0, p1}, Landroid/view/DisplayAddress$Physical$1;->newArray(I)[Landroid/view/DisplayAddress$Physical;

    move-result-object p1

    return-object p1
.end method
