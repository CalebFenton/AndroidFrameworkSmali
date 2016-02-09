.class final Landroid/print/PrintJobId$1;
.super Ljava/lang/Object;
.source "PrintJobId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintJobId;
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
        "Landroid/print/PrintJobId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintJobId;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 114
    new-instance v0, Landroid/print/PrintJobId;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 113
    invoke-virtual {p0, p1}, Landroid/print/PrintJobId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintJobId;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/print/PrintJobId;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 119
    new-array v0, p1, [Landroid/print/PrintJobId;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/print/PrintJobId$1;->newArray(I)[Landroid/print/PrintJobId;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
