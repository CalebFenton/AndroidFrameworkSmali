.class final Landroid/view/InputChannel$1;
.super Ljava/lang/Object;
.source "InputChannel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputChannel;
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
        "Landroid/view/InputChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/InputChannel;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 38
    new-instance v0, Landroid/view/InputChannel;

    #@2
    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    #@5
    .line 39
    .local v0, "result":Landroid/view/InputChannel;
    invoke-virtual {v0, p1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V

    #@8
    .line 40
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/InputChannel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/InputChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/InputChannel;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 44
    new-array v0, p1, [Landroid/view/InputChannel;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/InputChannel$1;->newArray(I)[Landroid/view/InputChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
