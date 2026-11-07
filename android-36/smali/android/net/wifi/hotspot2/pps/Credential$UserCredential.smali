.class public final Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserCredential"
.end annotation


# static fields
.field public static final greylist-max-o AUTH_METHOD_MSCHAP:Ljava/lang/String; = "MS-CHAP"

.field public static final greylist-max-o AUTH_METHOD_MSCHAPV2:Ljava/lang/String; = "MS-CHAP-V2"

.field public static final greylist-max-o AUTH_METHOD_PAP:Ljava/lang/String; = "PAP"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_PASSWORD_BYTES:I = 0xff

.field private static final greylist-max-o MAX_USERNAME_BYTES:I = 0xfd

.field private static final greylist-max-o SUPPORTED_AUTH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAbleToShare:Z

.field private greylist-max-o mEapType:I

.field private greylist-max-o mMachineManaged:Z

.field private greylist-max-o mNonEapInnerMethod:Ljava/lang/String;

.field private greylist-max-o mPassword:Ljava/lang/String;

.field private greylist-max-o mSoftTokenApp:Ljava/lang/String;

.field private greylist-max-o mUsername:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 171
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "MS-CHAP"

    const-string v2, "MS-CHAP-V2"

    const-string v3, "PAP"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->SUPPORTED_AUTH:Ljava/util/Set;

    .line 441
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    .line 236
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 253
    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 274
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    .line 300
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    .line 236
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 253
    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 274
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    .line 300
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 329
    if-eqz p1, :cond_33

    .line 330
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    .line 331
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 332
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    .line 333
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 334
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 335
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    .line 336
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 338
    :cond_33
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 358
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 359
    return v0

    .line 361
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 362
    return v2

    .line 365
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 366
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 367
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    if-ne v3, v4, :cond_48

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 369
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    if-ne v3, v4, :cond_48

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    if-ne v3, v4, :cond_48

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 372
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_49

    :cond_48
    move v0, v2

    .line 366
    :goto_49
    return v0
.end method

.method public greylist-max-o getAbleToShare()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    return v0
.end method

.method public whitelist getEapType()I
    .registers 2

    .line 294
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    return v0
.end method

.method public greylist-max-o getMachineManaged()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    return v0
.end method

.method public whitelist getNonEapInnerMethod()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSoftTokenApp()Ljava/lang/String;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniqueId()I
    .registers 2

    .line 469
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getUsername()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 377
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 378
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 377
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o setAbleToShare(Z)V
    .registers 2
    .param p1, "ableToShare"    # Z

    .line 258
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 259
    return-void
.end method

.method public whitelist setEapType(I)V
    .registers 2
    .param p1, "eapType"    # I

    .line 285
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    .line 286
    return-void
.end method

.method public greylist-max-o setMachineManaged(Z)V
    .registers 2
    .param p1, "machineManaged"    # Z

    .line 224
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    .line 225
    return-void
.end method

.method public whitelist setNonEapInnerMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "nonEapInnerMethod"    # Ljava/lang/String;

    .line 307
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public whitelist setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public greylist-max-o setSoftTokenApp(Ljava/lang/String;)V
    .registers 2
    .param p1, "softTokenApp"    # Ljava/lang/String;

    .line 241
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public whitelist setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, "MachineManaged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v1, "SoftTokenApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, "AbleToShare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, "EAPType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v1, "AuthMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()Z
    .registers 6

    .line 400
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Credential"

    if-eqz v0, :cond_11

    .line 401
    const-string v0, "Missing username"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return v1

    .line 404
    :cond_11
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0xfd

    if-le v0, v3, :cond_3e

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "username exceeding maximum length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v1

    .line 410
    :cond_3e
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 411
    const-string v0, "Missing password"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v1

    .line 414
    :cond_4c
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0xff

    if-le v0, v3, :cond_79

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "password exceeding maximum length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return v1

    .line 419
    :cond_79
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    if-eqz v0, :cond_a8

    .line 420
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v3, :cond_a8

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app name exceeding maximum length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 422
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v1

    .line 428
    :cond_a8
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    const/16 v3, 0x15

    if-eq v0, v3, :cond_c7

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid EAP Type for user credential: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v1

    .line 434
    :cond_c7
    sget-object v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->SUPPORTED_AUTH:Ljava/util/Set;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid non-EAP inner method for EAP-TTLS: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v1

    .line 438
    :cond_ea
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 347
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    return-void
.end method
