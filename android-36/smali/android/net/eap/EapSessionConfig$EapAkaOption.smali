.class public final Landroid/net/eap/EapSessionConfig$EapAkaOption;
.super Ljava/lang/Object;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EapAkaOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;
    }
.end annotation


# static fields
.field private static final blacklist REAUTH_ID_KEY:Ljava/lang/String; = "reauthId"


# instance fields
.field private final blacklist mReauthId:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "reauthId"    # [B

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    if-eqz p1, :cond_12

    .line 1045
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption;->mReauthId:[B

    .line 1046
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption;->mReauthId:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_15

    .line 1048
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption;->mReauthId:[B

    .line 1050
    :goto_15
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapAkaOption;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 1059
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1061
    new-instance v0, Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;

    invoke-direct {v0}, Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;-><init>()V

    .line 1062
    .local v0, "builder":Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;
    const-string v1, "reauthId"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1063
    .local v1, "reauthIdBundle":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_19

    .line 1064
    invoke-static {v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    .line 1065
    .local v2, "reauthId":[B
    invoke-virtual {v0, v2}, Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;->setReauthId([B)Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;

    .line 1068
    .end local v2    # "reauthId":[B
    :cond_19
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;->build()Landroid/net/eap/EapSessionConfig$EapAkaOption;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1106
    instance-of v0, p1, Landroid/net/eap/EapSessionConfig$EapAkaOption;

    if-nez v0, :cond_6

    .line 1107
    const/4 v0, 0x0

    return v0

    .line 1110
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapAkaOption;

    .line 1112
    .local v0, "other":Landroid/net/eap/EapSessionConfig$EapAkaOption;
    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption;->mReauthId:[B

    iget-object v2, v0, Landroid/net/eap/EapSessionConfig$EapAkaOption;->mReauthId:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist getReauthId()[B
    .registers 2

    .line 1094
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption;->mReauthId:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1100
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption;->mReauthId:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 1078
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 1080
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption;->mReauthId:[B

    if-eqz v1, :cond_14

    .line 1081
    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption;->mReauthId:[B

    .line 1082
    invoke-static {v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1081
    const-string v2, "reauthId"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1084
    :cond_14
    return-object v0
.end method
