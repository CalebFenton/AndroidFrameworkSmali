.class final Landroid/app/PendingIntent$1;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1023
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    .line 1024
    .local v0, "target":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@7
    new-instance v1, Landroid/app/PendingIntent;

    #@9
    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    #@c
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1022
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/app/PendingIntent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1028
    new-array v0, p1, [Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1027
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent$1;->newArray(I)[Landroid/app/PendingIntent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
