.class final Landroid/print/PrinterCapabilitiesInfo$1;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterCapabilitiesInfo;
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
        "Landroid/print/PrinterCapabilitiesInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterCapabilitiesInfo;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 632
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/os/Parcel;Landroid/print/PrinterCapabilitiesInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 631
    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterCapabilitiesInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/print/PrinterCapabilitiesInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 637
    new-array v0, p1, [Landroid/print/PrinterCapabilitiesInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 636
    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo$1;->newArray(I)[Landroid/print/PrinterCapabilitiesInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
