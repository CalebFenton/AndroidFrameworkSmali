.class final Landroid/view/MagnificationSpec$1;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MagnificationSpec;
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
        "Landroid/view/MagnificationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/MagnificationSpec;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 118
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "spec":Landroid/view/MagnificationSpec;
    invoke-static {v0, p1}, Landroid/view/MagnificationSpec;->-wrap0(Landroid/view/MagnificationSpec;Landroid/os/Parcel;)V

    #@7
    .line 120
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/view/MagnificationSpec$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/MagnificationSpec;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/MagnificationSpec;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 113
    new-array v0, p1, [Landroid/view/MagnificationSpec;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/view/MagnificationSpec$1;->newArray(I)[Landroid/view/MagnificationSpec;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
