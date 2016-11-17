.class final Landroid/security/keymaster/OperationResult$1;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/OperationResult;
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
        "Landroid/security/keymaster/OperationResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/OperationResult;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/security/keymaster/OperationResult;

    #@2
    invoke-direct {v0, p1}, Landroid/security/keymaster/OperationResult;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/security/keymaster/OperationResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/OperationResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/security/keymaster/OperationResult;
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 45
    new-array v0, p1, [Landroid/security/keymaster/OperationResult;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 44
    invoke-virtual {p0, p1}, Landroid/security/keymaster/OperationResult$1;->newArray(I)[Landroid/security/keymaster/OperationResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
