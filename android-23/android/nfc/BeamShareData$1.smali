.class final Landroid/nfc/BeamShareData$1;
.super Ljava/lang/Object;
.source "BeamShareData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/BeamShareData;
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
        "Landroid/nfc/BeamShareData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/BeamShareData;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 49
    const/4 v3, 0x0

    #@1
    .line 50
    .local v3, "uris":[Landroid/net/Uri;
    const-class v5, Landroid/nfc/NdefMessage;

    #@3
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/nfc/NdefMessage;

    #@d
    .line 51
    .local v1, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v2

    #@11
    .line 52
    .local v2, "numUris":I
    if-lez v2, :cond_0

    #@13
    .line 53
    new-array v3, v2, [Landroid/net/Uri;

    #@15
    .line 54
    .local v3, "uris":[Landroid/net/Uri;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17
    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    #@1a
    .line 56
    .end local v3    # "uris":[Landroid/net/Uri;
    :cond_0
    const-class v5, Landroid/os/UserHandle;

    #@1c
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Landroid/os/UserHandle;

    #@26
    .line 57
    .local v4, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    .line 59
    .local v0, "flags":I
    new-instance v5, Landroid/nfc/BeamShareData;

    #@2c
    invoke-direct {v5, v1, v3, v4, v0}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    #@2f
    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/nfc/BeamShareData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/BeamShareData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/BeamShareData;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 64
    new-array v0, p1, [Landroid/nfc/BeamShareData;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/nfc/BeamShareData$1;->newArray(I)[Landroid/nfc/BeamShareData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
