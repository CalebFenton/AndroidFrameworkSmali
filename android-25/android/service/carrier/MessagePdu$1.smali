.class final Landroid/service/carrier/MessagePdu$1;
.super Ljava/lang/Object;
.source "MessagePdu.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/MessagePdu;
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
        "Landroid/service/carrier/MessagePdu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/carrier/MessagePdu;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 81
    .local v2, "size":I
    const/4 v3, -0x1

    #@5
    if-ne v2, v3, :cond_1

    #@7
    .line 82
    const/4 v1, 0x0

    #@8
    .line 89
    :cond_0
    new-instance v3, Landroid/service/carrier/MessagePdu;

    #@a
    invoke-direct {v3, v1}, Landroid/service/carrier/MessagePdu;-><init>(Ljava/util/List;)V

    #@d
    return-object v3

    #@e
    .line 84
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    #@10
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    .line 85
    .local v1, "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@16
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@19
    move-result-object v3

    #@1a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    .line 85
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/service/carrier/MessagePdu$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/carrier/MessagePdu;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/service/carrier/MessagePdu;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 94
    new-array v0, p1, [Landroid/service/carrier/MessagePdu;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/service/carrier/MessagePdu$1;->newArray(I)[Landroid/service/carrier/MessagePdu;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
