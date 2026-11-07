.class public Lcom/android/internal/net/eap/EapResult$EapSuccess;
.super Lcom/android/internal/net/eap/EapResult;
.source "EapResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/EapResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapSuccess"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public final blacklist emsk:[B

.field public final blacklist mEapInfo:Landroid/net/eap/EapInfo;

.field public final blacklist msk:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/EapResult$EapSuccess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([B[B)V
    .registers 4
    .param p1, "msk"    # [B
    .param p2, "emsk"    # [B

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/net/eap/EapResult$EapSuccess;-><init>([B[BLandroid/net/eap/EapInfo;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>([B[BLandroid/net/eap/EapInfo;)V
    .registers 8
    .param p1, "msk"    # [B
    .param p2, "emsk"    # [B
    .param p3, "eapInfo"    # Landroid/net/eap/EapInfo;

    .line 53
    invoke-direct {p0}, Lcom/android/internal/net/eap/EapResult;-><init>()V

    .line 54
    if-eqz p1, :cond_46

    if-eqz p2, :cond_46

    .line 57
    array-length v0, p1

    const/16 v1, 0x40

    if-lt v0, v1, :cond_f

    array-length v0, p2

    if-ge v0, v1, :cond_3f

    .line 58
    :cond_f
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v1, Lcom/android/internal/net/eap/EapResult$EapSuccess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSK or EMSK does not meet the required key length: MSK="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 61
    invoke-virtual {v3, p1}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EMSK="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 63
    invoke-virtual {v3, p2}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_3f
    iput-object p1, p0, Lcom/android/internal/net/eap/EapResult$EapSuccess;->msk:[B

    .line 66
    iput-object p2, p0, Lcom/android/internal/net/eap/EapResult$EapSuccess;->emsk:[B

    .line 67
    iput-object p3, p0, Lcom/android/internal/net/eap/EapResult$EapSuccess;->mEapInfo:Landroid/net/eap/EapInfo;

    .line 68
    return-void

    .line 55
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msk and emsk must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getEapInfo()Landroid/net/eap/EapInfo;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/internal/net/eap/EapResult$EapSuccess;->mEapInfo:Landroid/net/eap/EapInfo;

    return-object v0
.end method
