.class final Landroid/net/Uri$1;
.super Ljava/lang/Object;
.source "Uri.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
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
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1771
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 1779
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Unknown URI type: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 1772
    :pswitch_0
    const/4 v1, 0x0

    #@22
    return-object v1

    #@23
    .line 1773
    :pswitch_1
    invoke-static {p1}, Landroid/net/Uri$StringUri;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 1774
    :pswitch_2
    invoke-static {p1}, Landroid/net/Uri$OpaqueUri;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri;

    #@2b
    move-result-object v1

    #@2c
    return-object v1

    #@2d
    .line 1776
    :pswitch_3
    invoke-static {p1}, Landroid/net/Uri$HierarchicalUri;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri;

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 1771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1769
    invoke-virtual {p0, p1}, Landroid/net/Uri$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/Uri;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1783
    new-array v0, p1, [Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1782
    invoke-virtual {p0, p1}, Landroid/net/Uri$1;->newArray(I)[Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
