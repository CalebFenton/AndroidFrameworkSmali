.class Landroid/nfc/cardemulation/NfcFServiceInfo$1;
.super Ljava/lang/Object;
.source "NfcFServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/NfcFServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/cardemulation/NfcFServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .registers 12
    .param p1, "source"    # Landroid/os/Parcel;

    .line 387
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 388
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "systemCode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 391
    .local v0, "dynamicSystemCode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1f

    .line 391
    :cond_1e
    move-object v5, v0

    .line 394
    .end local v0    # "dynamicSystemCode":Ljava/lang/String;
    .local v5, "dynamicSystemCode":Ljava/lang/String;
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "nfcid2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 396
    .local v0, "dynamicNfcid2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_31

    .line 396
    :cond_30
    move-object v7, v0

    .line 399
    .end local v0    # "dynamicNfcid2":Ljava/lang/String;
    .local v7, "dynamicNfcid2":Ljava/lang/String;
    :goto_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 400
    .local v8, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "t3tPmm":Ljava/lang/String;
    new-instance v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-direct/range {v1 .. v9}, Landroid/nfc/cardemulation/NfcFServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 403
    .local v1, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    return-object v1
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

    .line 384
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/cardemulation/NfcFServiceInfo;
    .registers 3
    .param p1, "size"    # I

    .line 408
    new-array v0, p1, [Landroid/nfc/cardemulation/NfcFServiceInfo;

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

    .line 384
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object p1

    return-object p1
.end method
