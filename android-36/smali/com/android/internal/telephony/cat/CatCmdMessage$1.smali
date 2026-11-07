.class Lcom/android/internal/telephony/cat/CatCmdMessage$1;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/cat/CatCmdMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .registers 2

    .line 236
    new-instance p0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Landroid/os/Parcel;)V

    return-object p0
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

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/cat/CatCmdMessage;
    .registers 2

    .line 241
    new-array p0, p1, [Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p0
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

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;->newArray(I)[Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object p0

    return-object p0
.end method
