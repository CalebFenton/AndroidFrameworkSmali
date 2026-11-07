.class Landroid/os/ResultReceiver$1;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ResultReceiver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/ResultReceiver;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 132
    new-instance v0, Landroid/os/ResultReceiver;

    invoke-direct {v0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Parcel;)V

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

    .line 130
    invoke-virtual {p0, p1}, Landroid/os/ResultReceiver$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ResultReceiver;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/ResultReceiver;
    .registers 3
    .param p1, "size"    # I

    .line 135
    new-array v0, p1, [Landroid/os/ResultReceiver;

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

    .line 130
    invoke-virtual {p0, p1}, Landroid/os/ResultReceiver$1;->newArray(I)[Landroid/os/ResultReceiver;

    move-result-object p1

    return-object p1
.end method
