.class Landroid/app/ApplicationStartInfo$1;
.super Ljava/lang/Object;
.source "ApplicationStartInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationStartInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/ApplicationStartInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/ApplicationStartInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 819
    new-instance v0, Landroid/app/ApplicationStartInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationStartInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 816
    invoke-virtual {p0, p1}, Landroid/app/ApplicationStartInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ApplicationStartInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/ApplicationStartInfo;
    .registers 3
    .param p1, "size"    # I

    .line 824
    new-array v0, p1, [Landroid/app/ApplicationStartInfo;

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

    .line 816
    invoke-virtual {p0, p1}, Landroid/app/ApplicationStartInfo$1;->newArray(I)[Landroid/app/ApplicationStartInfo;

    move-result-object p1

    return-object p1
.end method
