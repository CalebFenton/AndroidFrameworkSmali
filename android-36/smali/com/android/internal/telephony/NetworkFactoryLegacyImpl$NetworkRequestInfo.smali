.class Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "NetworkFactoryLegacyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkFactoryLegacyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkRequestInfo"
.end annotation


# instance fields
.field public blacklist providerId:I

.field public final blacklist request:Landroid/net/NetworkRequest;

.field public blacklist requested:Z

.field public blacklist score:I


# direct methods
.method constructor blacklist <init>(Landroid/net/NetworkRequest;II)V
    .registers 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 190
    iput p2, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    .line 192
    iput p3, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->providerId:I

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkFactoryLegacyImpl$NetworkRequestInfo;->requested:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
