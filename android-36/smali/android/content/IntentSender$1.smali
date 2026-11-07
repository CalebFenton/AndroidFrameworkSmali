.class Landroid/content/IntentSender$1;
.super Ljava/lang/Object;
.source "IntentSender.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/IntentSender;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 405
    .local v0, "target":Landroid/os/IBinder;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
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

    .line 402
    invoke-virtual {p0, p1}, Landroid/content/IntentSender$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/IntentSender;
    .registers 3
    .param p1, "size"    # I

    .line 409
    new-array v0, p1, [Landroid/content/IntentSender;

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

    .line 402
    invoke-virtual {p0, p1}, Landroid/content/IntentSender$1;->newArray(I)[Landroid/content/IntentSender;

    move-result-object p1

    return-object p1
.end method
