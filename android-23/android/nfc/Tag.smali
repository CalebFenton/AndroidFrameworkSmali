.class public final Landroid/nfc/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/Tag$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mConnectedTechnology:I

.field final mId:[B

.field final mServiceHandle:I

.field final mTagService:Landroid/nfc/INfcTag;

.field final mTechExtras:[Landroid/os/Bundle;

.field final mTechList:[I

.field final mTechStringList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 421
    new-instance v0, Landroid/nfc/Tag$1;

    #@2
    invoke-direct {v0}, Landroid/nfc/Tag$1;-><init>()V

    #@5
    .line 420
    sput-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 112
    return-void
.end method

.method public constructor <init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V
    .locals 2
    .param p1, "id"    # [B
    .param p2, "techList"    # [I
    .param p3, "techListExtras"    # [Landroid/os/Bundle;
    .param p4, "serviceHandle"    # I
    .param p5, "tagService"    # Landroid/nfc/INfcTag;

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    if-nez p2, :cond_0

    #@5
    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "rawTargets cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 131
    :cond_0
    iput-object p1, p0, Landroid/nfc/Tag;->mId:[B

    #@10
    .line 132
    array-length v0, p2

    #@11
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    #@17
    .line 133
    invoke-direct {p0, p2}, Landroid/nfc/Tag;->generateTechStringList([I)[Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    #@1d
    .line 135
    array-length v0, p2

    #@1e
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, [Landroid/os/Bundle;

    #@24
    iput-object v0, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    #@26
    .line 136
    iput p4, p0, Landroid/nfc/Tag;->mServiceHandle:I

    #@28
    .line 137
    iput-object p5, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    #@2a
    .line 139
    const/4 v0, -0x1

    #@2b
    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    #@2d
    .line 127
    return-void
.end method

.method public static createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;
    .locals 6
    .param p0, "id"    # [B
    .param p1, "techList"    # [I
    .param p2, "techListExtras"    # [Landroid/os/Bundle;

    #@0
    .prologue
    .line 154
    new-instance v0, Landroid/nfc/Tag;

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    #@a
    return-object v0
.end method

.method private generateTechStringList([I)[Ljava/lang/String;
    .locals 6
    .param p1, "techList"    # [I

    #@0
    .prologue
    .line 158
    array-length v1, p1

    #@1
    .line 159
    .local v1, "size":I
    new-array v2, v1, [Ljava/lang/String;

    #@3
    .line 160
    .local v2, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@6
    .line 161
    aget v3, p1, v0

    #@8
    packed-switch v3, :pswitch_data_0

    #@b
    .line 193
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Unknown tech type "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    aget v5, p1, v0

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 163
    :pswitch_0
    const-class v3, Landroid/nfc/tech/IsoDep;

    #@29
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    aput-object v3, v2, v0

    #@2f
    .line 160
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 166
    :pswitch_1
    const-class v3, Landroid/nfc/tech/MifareClassic;

    #@34
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    aput-object v3, v2, v0

    #@3a
    goto :goto_1

    #@3b
    .line 169
    :pswitch_2
    const-class v3, Landroid/nfc/tech/MifareUltralight;

    #@3d
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    aput-object v3, v2, v0

    #@43
    goto :goto_1

    #@44
    .line 172
    :pswitch_3
    const-class v3, Landroid/nfc/tech/Ndef;

    #@46
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    aput-object v3, v2, v0

    #@4c
    goto :goto_1

    #@4d
    .line 175
    :pswitch_4
    const-class v3, Landroid/nfc/tech/NdefFormatable;

    #@4f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    aput-object v3, v2, v0

    #@55
    goto :goto_1

    #@56
    .line 178
    :pswitch_5
    const-class v3, Landroid/nfc/tech/NfcA;

    #@58
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    aput-object v3, v2, v0

    #@5e
    goto :goto_1

    #@5f
    .line 181
    :pswitch_6
    const-class v3, Landroid/nfc/tech/NfcB;

    #@61
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    aput-object v3, v2, v0

    #@67
    goto :goto_1

    #@68
    .line 184
    :pswitch_7
    const-class v3, Landroid/nfc/tech/NfcF;

    #@6a
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    aput-object v3, v2, v0

    #@70
    goto :goto_1

    #@71
    .line 187
    :pswitch_8
    const-class v3, Landroid/nfc/tech/NfcV;

    #@73
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    aput-object v3, v2, v0

    #@79
    goto :goto_1

    #@7a
    .line 190
    :pswitch_9
    const-class v3, Landroid/nfc/tech/NfcBarcode;

    #@7c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    aput-object v3, v2, v0

    #@82
    goto :goto_1

    #@83
    .line 196
    :cond_0
    return-object v2

    #@84
    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method static getTechCodesFromStrings([Ljava/lang/String;)[I
    .locals 7
    .param p0, "techStringList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    if-nez p0, :cond_0

    #@2
    .line 201
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "List cannot be null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 203
    :cond_0
    array-length v4, p0

    #@c
    new-array v3, v4, [I

    #@e
    .line 204
    .local v3, "techIntList":[I
    invoke-static {}, Landroid/nfc/Tag;->getTechStringToCodeMap()Ljava/util/HashMap;

    #@11
    move-result-object v2

    #@12
    .line 205
    .local v2, "stringToCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    array-length v4, p0

    #@14
    if-ge v1, v4, :cond_2

    #@16
    .line 206
    aget-object v4, p0, v1

    #@18
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/Integer;

    #@1e
    .line 208
    .local v0, "code":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@20
    .line 209
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "Unknown tech type "

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    aget-object v6, p0, v1

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v4

    #@3c
    .line 212
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3f
    move-result v4

    #@40
    aput v4, v3, v1

    #@42
    .line 205
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 214
    .end local v0    # "code":Ljava/lang/Integer;
    :cond_2
    return-object v3
.end method

.method private static getTechStringToCodeMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 218
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 220
    .local v0, "techStringToCodeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-class v1, Landroid/nfc/tech/IsoDep;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x3

    #@c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 221
    const-class v1, Landroid/nfc/tech/MifareClassic;

    #@15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    const/16 v2, 0x8

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 222
    const-class v1, Landroid/nfc/tech/MifareUltralight;

    #@24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    const/16 v2, 0x9

    #@2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 223
    const-class v1, Landroid/nfc/tech/Ndef;

    #@33
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    const/4 v2, 0x6

    #@38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 224
    const-class v1, Landroid/nfc/tech/NdefFormatable;

    #@41
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    const/4 v2, 0x7

    #@46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 225
    const-class v1, Landroid/nfc/tech/NfcA;

    #@4f
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    const/4 v2, 0x1

    #@54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 226
    const-class v1, Landroid/nfc/tech/NfcB;

    #@5d
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    const/4 v2, 0x2

    #@62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 227
    const-class v1, Landroid/nfc/tech/NfcF;

    #@6b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    const/4 v2, 0x4

    #@70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 228
    const-class v1, Landroid/nfc/tech/NfcV;

    #@79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    const/4 v2, 0x5

    #@7e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    .line 229
    const-class v1, Landroid/nfc/tech/NfcBarcode;

    #@87
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    const/16 v2, 0xa

    #@8d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    .line 231
    return-object v0
.end method

.method static readBytesWithNull(Landroid/os/Parcel;)[B
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 382
    .local v0, "len":I
    const/4 v1, 0x0

    #@5
    .line 383
    .local v1, "result":[B
    if-ltz v0, :cond_0

    #@7
    .line 384
    new-array v1, v0, [B

    #@9
    .line 385
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    #@c
    .line 387
    .end local v1    # "result":[B
    :cond_0
    return-object v1
.end method

.method static writeBytesWithNull(Landroid/os/Parcel;[B)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 391
    if-nez p1, :cond_0

    #@2
    .line 392
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 393
    return-void

    #@7
    .line 395
    :cond_0
    array-length v0, p1

    #@8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 396
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@e
    .line 390
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 401
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getConnectedTechnology()I
    .locals 1

    #@0
    .prologue
    .line 468
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    #@2
    return v0
.end method

.method public getId()[B
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/nfc/Tag;->mId:[B

    #@2
    return-object v0
.end method

.method public getServiceHandle()I
    .locals 1

    #@0
    .prologue
    .line 239
    iget v0, p0, Landroid/nfc/Tag;->mServiceHandle:I

    #@2
    return v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    #@2
    return-object v0
.end method

.method public getTechCodeList()[I
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    #@2
    return-object v0
.end method

.method public getTechExtras(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "tech"    # I

    #@0
    .prologue
    .line 343
    const/4 v1, -0x1

    #@1
    .line 344
    .local v1, "pos":I
    const/4 v0, 0x0

    #@2
    .local v0, "idx":I
    :goto_0
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 345
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    #@9
    aget v2, v2, v0

    #@b
    if-ne v2, p1, :cond_1

    #@d
    .line 346
    move v1, v0

    #@e
    .line 350
    :cond_0
    if-gez v1, :cond_2

    #@10
    .line 351
    const/4 v2, 0x0

    #@11
    return-object v2

    #@12
    .line 344
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 354
    :cond_2
    iget-object v2, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    #@17
    aget-object v2, v2, v1

    #@19
    return-object v2
.end method

.method public getTechList()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasTech(I)Z
    .locals 5
    .param p1, "techType"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 335
    iget-object v3, p0, Landroid/nfc/Tag;->mTechList:[I

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_1

    #@7
    aget v0, v3, v1

    #@9
    .line 336
    .local v0, "tech":I
    if-ne v0, p1, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 338
    .end local v0    # "tech":I
    :cond_1
    return v2
.end method

.method public rediscover()Landroid/nfc/Tag;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    #@3
    move-result v2

    #@4
    const/4 v3, -0x1

    #@5
    if-eq v2, v3, :cond_0

    #@7
    .line 314
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v3, "Close connection to the technology first!"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 317
    :cond_0
    iget-object v2, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    #@12
    if-nez v2, :cond_1

    #@14
    .line 318
    new-instance v2, Ljava/io/IOException;

    #@16
    const-string/jumbo v3, "Mock tags don\'t support this operation."

    #@19
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 321
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    #@1f
    invoke-virtual {p0}, Landroid/nfc/Tag;->getServiceHandle()I

    #@22
    move-result v3

    #@23
    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->rediscover(I)Landroid/nfc/Tag;

    #@26
    move-result-object v1

    #@27
    .line 322
    .local v1, "newTag":Landroid/nfc/Tag;
    if-eqz v1, :cond_2

    #@29
    .line 323
    return-object v1

    #@2a
    .line 325
    :cond_2
    new-instance v2, Ljava/io/IOException;

    #@2c
    const-string/jumbo v3, "Failed to rediscover tag"

    #@2f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 327
    .end local v1    # "newTag":Landroid/nfc/Tag;
    :catch_0
    move-exception v0

    #@34
    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    #@36
    const-string/jumbo v3, "NFC service dead"

    #@39
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2
.end method

.method public declared-synchronized setConnectedTechnology(I)V
    .locals 2
    .param p1, "technology"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 455
    :try_start_0
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    #@3
    const/4 v1, -0x1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 456
    iput p1, p0, Landroid/nfc/Tag;->mConnectedTechnology:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 454
    return-void

    #@a
    .line 458
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "Close other technology first!"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public setTechnologyDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 477
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    #@3
    .line 476
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v4, "TAG: Tech ["

    #@5
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 368
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 369
    .local v3, "techList":[Ljava/lang/String;
    array-length v1, v3

    #@d
    .line 370
    .local v1, "length":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@10
    .line 371
    aget-object v4, v3, v0

    #@12
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 372
    add-int/lit8 v4, v1, -0x1

    #@17
    if-ge v0, v4, :cond_0

    #@19
    .line 373
    const-string/jumbo v4, ", "

    #@1c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 370
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 376
    :cond_1
    const-string/jumbo v4, "]"

    #@25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 407
    iget-object v1, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    #@3
    if-nez v1, :cond_1

    #@5
    const/4 v0, 0x1

    #@6
    .line 409
    .local v0, "isMock":I
    :goto_0
    iget-object v1, p0, Landroid/nfc/Tag;->mId:[B

    #@8
    invoke-static {p1, v1}, Landroid/nfc/Tag;->writeBytesWithNull(Landroid/os/Parcel;[B)V

    #@b
    .line 410
    iget-object v1, p0, Landroid/nfc/Tag;->mTechList:[I

    #@d
    array-length v1, v1

    #@e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 411
    iget-object v1, p0, Landroid/nfc/Tag;->mTechList:[I

    #@13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@16
    .line 412
    iget-object v1, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    #@18
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1b
    .line 413
    iget v1, p0, Landroid/nfc/Tag;->mServiceHandle:I

    #@1d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 414
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 415
    if-nez v0, :cond_0

    #@25
    .line 416
    iget-object v1, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    #@27
    invoke-interface {v1}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2e
    .line 405
    :cond_0
    return-void

    #@2f
    .line 407
    .end local v0    # "isMock":I
    :cond_1
    const/4 v0, 0x0

    #@30
    .restart local v0    # "isMock":I
    goto :goto_0
.end method
