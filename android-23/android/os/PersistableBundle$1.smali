.class final Landroid/os/PersistableBundle$1;
.super Ljava/lang/Object;
.source "PersistableBundle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PersistableBundle;
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
        "Landroid/os/PersistableBundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/PersistableBundle;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 173
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/PersistableBundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/os/PersistableBundle;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 179
    new-array v0, p1, [Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle$1;->newArray(I)[Landroid/os/PersistableBundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
