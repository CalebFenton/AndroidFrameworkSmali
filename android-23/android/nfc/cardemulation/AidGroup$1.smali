.class final Landroid/nfc/cardemulation/AidGroup$1;
.super Ljava/lang/Object;
.source "AidGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/AidGroup;
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
        "Landroid/nfc/cardemulation/AidGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/AidGroup;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 117
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v2

    #@8
    .line 118
    .local v2, "listSize":I
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 119
    .local v0, "aidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v2, :cond_0

    #@f
    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@12
    .line 122
    :cond_0
    new-instance v3, Landroid/nfc/cardemulation/AidGroup;

    #@14
    invoke-direct {v3, v0, v1}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    #@17
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/AidGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/AidGroup;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/AidGroup;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 127
    new-array v0, p1, [Landroid/nfc/cardemulation/AidGroup;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/AidGroup$1;->newArray(I)[Landroid/nfc/cardemulation/AidGroup;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
