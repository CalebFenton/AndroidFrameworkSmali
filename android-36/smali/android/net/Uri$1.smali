.class Landroid/net/Uri$1;
.super Ljava/lang/Object;
.source "Uri.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/Uri;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1824
    .local v0, "type":I
    packed-switch v0, :pswitch_data_32

    .line 1832
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1829
    :pswitch_20
    invoke-static {p1}, Landroid/net/Uri$HierarchicalUri;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 1827
    :pswitch_25
    invoke-static {p1}, Landroid/net/Uri$OpaqueUri;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 1826
    :pswitch_2a
    invoke-static {p1}, Landroid/net/Uri$StringUri;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 1825
    :pswitch_2f
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1821
    invoke-virtual {p0, p1}, Landroid/net/Uri$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/Uri;
    .registers 3
    .param p1, "size"    # I

    .line 1836
    new-array v0, p1, [Landroid/net/Uri;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1821
    invoke-virtual {p0, p1}, Landroid/net/Uri$1;->newArray(I)[Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
