.class Landroid/view/Surface$1;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 117
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    .line 118
    .local v0, "s":Landroid/view/Surface;
    invoke-virtual {v0, p1}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 119
    return-object v0

    .line 120
    .end local v0    # "s":Landroid/view/Surface;
    :catch_9
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Surface"

    const-string v2, "Exception creating surface from parcel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v1, 0x0

    return-object v1
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

    .line 113
    invoke-virtual {p0, p1}, Landroid/view/Surface$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/Surface;
    .registers 3
    .param p1, "size"    # I

    .line 128
    new-array v0, p1, [Landroid/view/Surface;

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

    .line 113
    invoke-virtual {p0, p1}, Landroid/view/Surface$1;->newArray(I)[Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method
