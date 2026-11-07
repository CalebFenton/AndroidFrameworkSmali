.class Landroid/credentials/selection/AuthenticationEntry$1;
.super Ljava/lang/Object;
.source "AuthenticationEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/AuthenticationEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/credentials/selection/AuthenticationEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/credentials/selection/AuthenticationEntry;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 205
    new-instance v0, Landroid/credentials/selection/AuthenticationEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/credentials/selection/AuthenticationEntry;-><init>(Landroid/os/Parcel;Landroid/credentials/selection/AuthenticationEntry-IA;)V

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

    .line 202
    invoke-virtual {p0, p1}, Landroid/credentials/selection/AuthenticationEntry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/credentials/selection/AuthenticationEntry;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/credentials/selection/AuthenticationEntry;
    .registers 3
    .param p1, "size"    # I

    .line 210
    new-array v0, p1, [Landroid/credentials/selection/AuthenticationEntry;

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

    .line 202
    invoke-virtual {p0, p1}, Landroid/credentials/selection/AuthenticationEntry$1;->newArray(I)[Landroid/credentials/selection/AuthenticationEntry;

    move-result-object p1

    return-object p1
.end method
