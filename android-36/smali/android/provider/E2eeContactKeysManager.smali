.class public final Landroid/provider/E2eeContactKeysManager;
.super Ljava/lang/Object;
.source "E2eeContactKeysManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/E2eeContactKeysManager$E2eeContactKeys;,
        Landroid/provider/E2eeContactKeysManager$E2eeContactKey;,
        Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;,
        Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;,
        Landroid/provider/E2eeContactKeysManager$VerificationState;
    }
.end annotation


# static fields
.field private static final blacklist ARRAY_IS_NULL:I = -0x1

.field public static final blacklist AUTHORITY:Ljava/lang/String; = "com.android.contactkeys.contactkeysprovider"

.field public static final blacklist AUTHORITY_URI:Landroid/net/Uri;

.field private static final blacklist MAX_KEY_SIZE_BYTES:I = 0x1388

.field public static final whitelist VERIFICATION_STATE_UNVERIFIED:I = 0x0

.field public static final whitelist VERIFICATION_STATE_VERIFICATION_FAILED:I = 0x1

.field public static final whitelist VERIFICATION_STATE_VERIFIED:I = 0x2


# instance fields
.field private final blacklist mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    const-string v0, "content://com.android.contactkeys.contactkeysprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/E2eeContactKeysManager;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 109
    return-void
.end method

.method public static whitelist getMaxKeySizeBytes()I
    .registers 1

    .line 486
    const/16 v0, 0x1388

    return v0
.end method

.method private blacklist nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 589
    :try_start_0
    sget-object v0, Landroid/provider/E2eeContactKeysManager;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_1d

    .line 590
    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, p2, v1, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_11

    .line 591
    if-eqz v0, :cond_10

    :try_start_d
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_1d

    .line 590
    :cond_10
    return-object v1

    .line 589
    :catchall_11
    move-exception v1

    if-eqz v0, :cond_1c

    :try_start_14
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v2

    :try_start_19
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/provider/E2eeContactKeysManager;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "extras":Landroid/os/Bundle;
    :cond_1c
    :goto_1c
    throw v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1d} :catch_1d

    .line 591
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "this":Landroid/provider/E2eeContactKeysManager;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :catch_1d
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static blacklist validateKeyLength([B)V
    .registers 4
    .param p0, "keyValue"    # [B

    .line 416
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    array-length v0, p0

    if-eqz v0, :cond_e

    array-length v0, p0

    invoke-static {}, Landroid/provider/E2eeContactKeysManager;->getMaxKeySizeBytes()I

    move-result v1

    if-gt v0, v1, :cond_e

    .line 421
    return-void

    .line 418
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key value length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Should be more than 0 and less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    invoke-static {}, Landroid/provider/E2eeContactKeysManager;->getMaxKeySizeBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateVerificationState(I)V
    .registers 4
    .param p0, "verificationState"    # I

    .line 358
    if-eqz p0, :cond_28

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    goto :goto_28

    .line 361
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verification state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public whitelist getAllE2eeContactKeys(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "lookupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/E2eeContactKeysManager$E2eeContactKey;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lookup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "getAllContactKeys"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 186
    .local v1, "response":Landroid/os/Bundle;
    if-nez v1, :cond_21

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 189
    :cond_21
    const-string/jumbo v2, "key_contact_keys"

    const-class v3, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 191
    .local v2, "value":Ljava/util/List;, "Ljava/util/List<Landroid/provider/E2eeContactKeysManager$E2eeContactKey;>;"
    if-nez v2, :cond_32

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 194
    :cond_32
    return-object v2
.end method

.method public whitelist getAllE2eeSelfKeys()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 527
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "getAllSelfKeys"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 530
    .local v1, "response":Landroid/os/Bundle;
    if-nez v1, :cond_15

    .line 531
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 533
    :cond_15
    const-string/jumbo v2, "key_contact_keys"

    const-class v3, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 535
    .local v2, "value":Ljava/util/List;, "Ljava/util/List<Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;>;"
    if-nez v2, :cond_26

    .line 536
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 538
    :cond_26
    return-object v2
.end method

.method public whitelist getE2eeContactKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
    .registers 8
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lookup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "getContactKey"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 162
    .local v1, "response":Landroid/os/Bundle;
    if-nez v1, :cond_33

    .line 163
    const/4 v2, 0x0

    return-object v2

    .line 165
    :cond_33
    const-string/jumbo v2, "key_contact_key"

    const-class v3, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    return-object v2
.end method

.method public whitelist getE2eeSelfKey(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
    .registers 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;

    .line 502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "getSelfKey"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 509
    .local v1, "response":Landroid/os/Bundle;
    if-nez v1, :cond_28

    .line 510
    const/4 v2, 0x0

    return-object v2

    .line 512
    :cond_28
    const-string/jumbo v2, "key_contact_key"

    const-class v3, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    return-object v2
.end method

.method public whitelist getOwnerE2eeContactKeys(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "lookupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/E2eeContactKeysManager$E2eeContactKey;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lookup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "getOwnerContactKeys"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 214
    .local v1, "response":Landroid/os/Bundle;
    if-nez v1, :cond_21

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 217
    :cond_21
    const-string/jumbo v2, "key_contact_keys"

    const-class v3, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 219
    .local v2, "value":Ljava/util/List;, "Ljava/util/List<Landroid/provider/E2eeContactKeysManager$E2eeContactKey;>;"
    if-nez v2, :cond_32

    .line 220
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 222
    :cond_32
    return-object v2
.end method

.method public whitelist getOwnerE2eeSelfKeys()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 552
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "getOwnerSelfKeys"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 555
    .local v1, "response":Landroid/os/Bundle;
    if-nez v1, :cond_15

    .line 556
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 558
    :cond_15
    const-string/jumbo v2, "key_contact_keys"

    const-class v3, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 560
    .local v2, "value":Ljava/util/List;, "Ljava/util/List<Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;>;"
    if-nez v2, :cond_26

    .line 561
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 563
    :cond_26
    return-object v2
.end method

.method public whitelist removeE2eeContactKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;

    .line 378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lookup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "removeContactKey"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 386
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_3d

    const-string/jumbo v2, "key_updated_rows"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    return v2
.end method

.method public whitelist removeE2eeSelfKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;

    .line 577
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "removeSelfKey"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 584
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_31

    const-string/jumbo v2, "key_updated_rows"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    return v2
.end method

.method public whitelist updateE2eeContactKeyLocalVerificationState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "localVerificationState"    # I

    .line 240
    invoke-static {p4}, Landroid/provider/E2eeContactKeysManager;->validateVerificationState(I)V

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lookup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v1, "local_verification_state"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "updateContactKeyLocalVerificationState"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 251
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_46

    const-string/jumbo v2, "key_updated_rows"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    :goto_47
    return v2
.end method

.method public whitelist updateE2eeContactKeyLocalVerificationState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "localVerificationState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 275
    invoke-static {p5}, Landroid/provider/E2eeContactKeysManager;->validateVerificationState(I)V

    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lookup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    nop

    .line 282
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 281
    const-string/jumbo v2, "owner_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string/jumbo v1, "local_verification_state"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "updateContactKeyLocalVerificationState"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 288
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_53

    const-string/jumbo v2, "key_updated_rows"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v2, 0x1

    goto :goto_54

    :cond_53
    const/4 v2, 0x0

    :goto_54
    return v2
.end method

.method public whitelist updateE2eeContactKeyRemoteVerificationState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "remoteVerificationState"    # I

    .line 306
    invoke-static {p4}, Landroid/provider/E2eeContactKeysManager;->validateVerificationState(I)V

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lookup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v1, "remote_verification_state"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "updateContactKeyRemoteVerificationState"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 317
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_46

    const-string/jumbo v2, "key_updated_rows"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    :goto_47
    return v2
.end method

.method public whitelist updateE2eeContactKeyRemoteVerificationState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "remoteVerificationState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 341
    invoke-static {p5}, Landroid/provider/E2eeContactKeysManager;->validateVerificationState(I)V

    .line 343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lookup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    nop

    .line 348
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    const-string/jumbo v2, "owner_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v1, "remote_verification_state"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "updateContactKeyRemoteVerificationState"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 354
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_53

    const-string/jumbo v2, "key_updated_rows"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v2, 0x1

    goto :goto_54

    :cond_53
    const/4 v2, 0x0

    :goto_54
    return v2
.end method

.method public whitelist updateE2eeSelfKeyRemoteVerificationState(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "remoteVerificationState"    # I

    .line 435
    invoke-static {p3}, Landroid/provider/E2eeContactKeysManager;->validateVerificationState(I)V

    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v1, "remote_verification_state"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "updateSelfKeyRemoteVerificationState"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 445
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_3a

    const-string/jumbo v2, "key_updated_rows"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    return v2
.end method

.method public whitelist updateE2eeSelfKeyRemoteVerificationState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "ownerPackageName"    # Ljava/lang/String;
    .param p4, "remoteVerificationState"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 467
    invoke-static {p4}, Landroid/provider/E2eeContactKeysManager;->validateVerificationState(I)V

    .line 469
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 470
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    nop

    .line 473
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 472
    const-string/jumbo v2, "owner_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string/jumbo v1, "remote_verification_state"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "updateSelfKeyRemoteVerificationState"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 479
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_47

    const-string/jumbo v2, "key_updated_rows"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x1

    goto :goto_48

    :cond_47
    const/4 v2, 0x0

    :goto_48
    return v2
.end method

.method public whitelist updateOrInsertE2eeContactKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "keyValue"    # [B

    .line 126
    invoke-static {p4}, Landroid/provider/E2eeContactKeysManager;->validateKeyLength([B)V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "lookup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string/jumbo v2, "key_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 134
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "updateOrInsertContactKey"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 136
    return-void
.end method

.method public whitelist updateOrInsertE2eeSelfKey(Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "keyValue"    # [B

    .line 402
    invoke-static {p3}, Landroid/provider/E2eeContactKeysManager;->validateKeyLength([B)V

    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string/jumbo v2, "key_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 409
    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "updateOrInsertSelfKey"

    invoke-direct {p0, v1, v2, v0}, Landroid/provider/E2eeContactKeysManager;->nullSafeCall(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 412
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_40

    const-string/jumbo v2, "key_updated_rows"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    return v2
.end method
