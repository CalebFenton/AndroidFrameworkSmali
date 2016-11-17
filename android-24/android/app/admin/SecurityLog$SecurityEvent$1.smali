.class final Landroid/app/admin/SecurityLog$SecurityEvent$1;
.super Ljava/lang/Object;
.source "SecurityLog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SecurityLog$SecurityEvent;
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
        "Landroid/app/admin/SecurityLog$SecurityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SecurityLog$SecurityEvent;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 168
    new-instance v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/app/admin/SecurityLog$SecurityEvent;-><init>([B)V

    #@9
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 167
    invoke-virtual {p0, p1}, Landroid/app/admin/SecurityLog$SecurityEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SecurityLog$SecurityEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/app/admin/SecurityLog$SecurityEvent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 173
    new-array v0, p1, [Landroid/app/admin/SecurityLog$SecurityEvent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 172
    invoke-virtual {p0, p1}, Landroid/app/admin/SecurityLog$SecurityEvent$1;->newArray(I)[Landroid/app/admin/SecurityLog$SecurityEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
