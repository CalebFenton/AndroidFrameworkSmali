.class Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;
.super Ljava/lang/Object;
.source "PresRlmiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/uce/presence/PresRlmiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 218
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresRlmiInfo-IA;)V

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

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresRlmiInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    .registers 3
    .param p1, "size"    # I

    .line 222
    new-array v0, p1, [Lcom/android/ims/internal/uce/presence/PresRlmiInfo;

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

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;->newArray(I)[Lcom/android/ims/internal/uce/presence/PresRlmiInfo;

    move-result-object p1

    return-object p1
.end method
