.class public final Landroid/nfc/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mConnectedTechnology:I

.field final blacklist mCookie:J

.field final greylist-max-r mId:[B

.field final greylist-max-o mServiceHandle:I

.field final greylist-max-o mTagService:Landroid/nfc/INfcTag;

.field final greylist-max-o mTechExtras:[Landroid/os/Bundle;

.field final greylist-max-o mTechList:[I

.field final greylist-max-o mTechStringList:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 448
    new-instance v0, Landroid/nfc/Tag$1;

    invoke-direct {v0}, Landroid/nfc/Tag$1;-><init>()V

    sput-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>([B[I[Landroid/os/Bundle;IJLandroid/nfc/INfcTag;)V
    .registers 10
    .param p1, "id"    # [B
    .param p2, "techList"    # [I
    .param p3, "techListExtras"    # [Landroid/os/Bundle;
    .param p4, "serviceHandle"    # I
    .param p5, "cookie"    # J
    .param p7, "tagService"    # Landroid/nfc/INfcTag;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-eqz p2, :cond_2a

    .line 135
    iput-object p1, p0, Landroid/nfc/Tag;->mId:[B

    .line 136
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    .line 137
    invoke-direct {p0, p2}, Landroid/nfc/Tag;->generateTechStringList([I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    .line 139
    array-length v0, p2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    iput-object v0, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    .line 140
    iput p4, p0, Landroid/nfc/Tag;->mServiceHandle:I

    .line 141
    iput-wide p5, p0, Landroid/nfc/Tag;->mCookie:J

    .line 142
    iput-object p7, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    .line 145
    if-nez p7, :cond_29

    .line 146
    return-void

    .line 148
    :cond_29
    return-void

    .line 133
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawTargets cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createMockTag([B[I[Landroid/os/Bundle;J)Landroid/nfc/Tag;
    .registers 13
    .param p0, "id"    # [B
    .param p1, "techList"    # [I
    .param p2, "techListExtras"    # [Landroid/os/Bundle;
    .param p3, "cookie"    # J

    .line 163
    new-instance v0, Landroid/nfc/Tag;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    .end local p0    # "id":[B
    .end local p1    # "techList":[I
    .end local p2    # "techListExtras":[Landroid/os/Bundle;
    .end local p3    # "cookie":J
    .local v1, "id":[B
    .local v2, "techList":[I
    .local v3, "techListExtras":[Landroid/os/Bundle;
    .local v5, "cookie":J
    invoke-direct/range {v0 .. v7}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;IJLandroid/nfc/INfcTag;)V

    return-object v0
.end method

.method private greylist-max-o generateTechStringList([I)[Ljava/lang/String;
    .registers 8
    .param p1, "techList"    # [I

    .line 167
    array-length v0, p1

    .line 168
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 169
    .local v1, "strings":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_83

    .line 170
    aget v3, p1, v2

    packed-switch v3, :pswitch_data_84

    .line 202
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tech type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :pswitch_26
    const-class v3, Landroid/nfc/tech/NfcBarcode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 200
    goto :goto_80

    .line 178
    :pswitch_2f
    const-class v3, Landroid/nfc/tech/MifareUltralight;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 179
    goto :goto_80

    .line 175
    :pswitch_38
    const-class v3, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 176
    goto :goto_80

    .line 184
    :pswitch_41
    const-class v3, Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 185
    goto :goto_80

    .line 181
    :pswitch_4a
    const-class v3, Landroid/nfc/tech/Ndef;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 182
    goto :goto_80

    .line 196
    :pswitch_53
    const-class v3, Landroid/nfc/tech/NfcV;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 197
    goto :goto_80

    .line 193
    :pswitch_5c
    const-class v3, Landroid/nfc/tech/NfcF;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 194
    goto :goto_80

    .line 172
    :pswitch_65
    const-class v3, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 173
    goto :goto_80

    .line 190
    :pswitch_6e
    const-class v3, Landroid/nfc/tech/NfcB;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 191
    goto :goto_80

    .line 187
    :pswitch_77
    const-class v3, Landroid/nfc/tech/NfcA;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 188
    nop

    .line 169
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 205
    .end local v2    # "i":I
    :cond_83
    return-object v1

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_77
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_4a
        :pswitch_41
        :pswitch_38
        :pswitch_2f
        :pswitch_26
    .end packed-switch
.end method

.method static greylist-max-o getTechCodesFromStrings([Ljava/lang/String;)[I
    .registers 8
    .param p0, "techStringList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 209
    if-eqz p0, :cond_3c

    .line 212
    array-length v0, p0

    new-array v0, v0, [I

    .line 213
    .local v0, "techIntList":[I
    invoke-static {}, Landroid/nfc/Tag;->getTechStringToCodeMap()Ljava/util/HashMap;

    move-result-object v1

    .line 214
    .local v1, "stringToCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_3b

    .line 215
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 217
    .local v3, "code":Ljava/lang/Integer;
    if-eqz v3, :cond_20

    .line 221
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 214
    .end local v3    # "code":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 218
    .restart local v3    # "code":Ljava/lang/Integer;
    :cond_20
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tech type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    .end local v2    # "i":I
    .end local v3    # "code":Ljava/lang/Integer;
    :cond_3b
    return-object v0

    .line 210
    .end local v0    # "techIntList":[I
    .end local v1    # "stringToCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getTechStringToCodeMap()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v0, "techStringToCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-class v1, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-class v1, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-class v1, Landroid/nfc/tech/MifareUltralight;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-class v1, Landroid/nfc/tech/Ndef;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-class v1, Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-class v1, Landroid/nfc/tech/NfcA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-class v1, Landroid/nfc/tech/NfcB;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-class v1, Landroid/nfc/tech/NfcF;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-class v1, Landroid/nfc/tech/NfcV;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-class v1, Landroid/nfc/tech/NfcBarcode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-object v0
.end method

.method static greylist-max-o readBytesWithNull(Landroid/os/Parcel;)[B
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 408
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    .local v0, "len":I
    const/4 v1, 0x0

    .line 410
    .local v1, "result":[B
    if-ltz v0, :cond_c

    .line 411
    new-array v1, v0, [B

    .line 412
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 414
    :cond_c
    return-object v1
.end method

.method static greylist-max-o writeBytesWithNull(Landroid/os/Parcel;[B)V
    .registers 3
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "b"    # [B

    .line 418
    if-nez p1, :cond_7

    .line 419
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    return-void

    .line 422
    :cond_7
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 424
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getConnectedTechnology()I
    .registers 2

    .line 497
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    return v0
.end method

.method public whitelist getId()[B
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/nfc/Tag;->mId:[B

    return-object v0
.end method

.method public greylist getServiceHandle()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/nfc/Tag;->mServiceHandle:I

    return v0
.end method

.method public greylist getTagService()Landroid/nfc/INfcTag;
    .registers 6

    .line 370
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    if-nez v0, :cond_6

    .line 371
    const/4 v0, 0x0

    return-object v0

    .line 375
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    iget-wide v1, p0, Landroid/nfc/Tag;->mCookie:J

    invoke-interface {v0, v1, v2}, Landroid/nfc/INfcTag;->isTagUpToDate(J)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 376
    const-string v0, ""

    .line 377
    .local v0, "id_str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Landroid/nfc/Tag;->mId:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3f

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02X "

    iget-object v4, p0, Landroid/nfc/Tag;->mId:[B

    aget-byte v4, v4, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 380
    .end local v1    # "i":I
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Tag ( ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is out of date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/Tag;
    throw v2
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_5e} :catch_62

    .line 385
    .end local v0    # "id_str":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    .restart local p0    # "this":Landroid/nfc/Tag;
    :cond_5e
    nop

    .line 386
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    return-object v0

    .line 383
    :catch_62
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getTechCodeList()[I
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    return-object v0
.end method

.method public greylist-max-o getTechExtras(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "tech"    # I

    .line 353
    const/4 v0, -0x1

    .line 354
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_2
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 355
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_f

    .line 356
    move v0, v1

    .line 357
    goto :goto_12

    .line 354
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 360
    .end local v1    # "idx":I
    :cond_12
    :goto_12
    if-gez v0, :cond_16

    .line 361
    const/4 v1, 0x0

    return-object v1

    .line 364
    :cond_16
    iget-object v1, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public whitelist getTechList()[Ljava/lang/String;
    .registers 2

    .line 293
    iget-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o hasTech(I)Z
    .registers 7
    .param p1, "techType"    # I

    .line 345
    iget-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget v4, v0, v3

    .line 346
    .local v4, "tech":I
    if-ne v4, p1, :cond_d

    const/4 v0, 0x1

    return v0

    .line 345
    .end local v4    # "tech":I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 348
    :cond_10
    return v2
.end method

.method public greylist-max-o rediscover()Landroid/nfc/Tag;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    .line 327
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    if-eqz v0, :cond_29

    .line 331
    :try_start_b
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/nfc/INfcTag;->rediscover(I)Landroid/nfc/Tag;

    move-result-object v0

    .line 332
    .local v0, "newTag":Landroid/nfc/Tag;
    if-eqz v0, :cond_18

    .line 333
    return-object v0

    .line 335
    :cond_18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to rediscover tag"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/Tag;
    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_20} :catch_20

    .line 337
    .end local v0    # "newTag":Landroid/nfc/Tag;
    .restart local p0    # "this":Landroid/nfc/Tag;
    :catch_20
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NFC service dead"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mock tags don\'t support this operation."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close connection to the technology first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized blacklist setConnectedTechnology(I)Z
    .registers 4
    .param p1, "technology"    # I

    monitor-enter p0

    .line 484
    :try_start_1
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 485
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 487
    :cond_9
    :try_start_9
    iput p1, p0, Landroid/nfc/Tag;->mConnectedTechnology:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_e

    .line 488
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 483
    .end local p0    # "this":Landroid/nfc/Tag;
    .end local p1    # "technology":I
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public greylist-max-o setTechnologyDisconnected()V
    .registers 2

    .line 506
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    .line 507
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TAG: Tech ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "techList":[Ljava/lang/String;
    array-length v2, v1

    .line 397
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_20

    .line 398
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1d

    .line 400
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 403
    .end local v3    # "i":I
    :cond_20
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 434
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 436
    .local v0, "isMock":I
    :goto_8
    iget-object v2, p0, Landroid/nfc/Tag;->mId:[B

    invoke-static {p1, v2}, Landroid/nfc/Tag;->writeBytesWithNull(Landroid/os/Parcel;[B)V

    .line 437
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 439
    iget-object v2, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 440
    iget v1, p0, Landroid/nfc/Tag;->mServiceHandle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget-wide v1, p0, Landroid/nfc/Tag;->mCookie:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 442
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    if-nez v0, :cond_35

    .line 444
    iget-object v1, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    invoke-interface {v1}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 446
    :cond_35
    return-void
.end method
