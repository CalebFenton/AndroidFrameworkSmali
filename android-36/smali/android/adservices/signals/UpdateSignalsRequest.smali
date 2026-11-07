.class public final Landroid/adservices/signals/UpdateSignalsRequest;
.super Ljava/lang/Object;
.source "UpdateSignalsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/signals/UpdateSignalsRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mUpdateUri:Landroid/net/Uri;


# direct methods
.method private constructor blacklist <init>(Landroid/net/Uri;)V
    .registers 3
    .param p1, "updateUri"    # Landroid/net/Uri;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "updateUri must not be null in UpdateSignalsRequest"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Landroid/adservices/signals/UpdateSignalsRequest;->mUpdateUri:Landroid/net/Uri;

    .line 41
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Landroid/adservices/signals/UpdateSignalsRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/signals/UpdateSignalsRequest;-><init>(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p1, Landroid/adservices/signals/UpdateSignalsRequest;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 58
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/adservices/signals/UpdateSignalsRequest;

    .line 59
    .local v0, "other":Landroid/adservices/signals/UpdateSignalsRequest;
    iget-object v1, p0, Landroid/adservices/signals/UpdateSignalsRequest;->mUpdateUri:Landroid/net/Uri;

    iget-object v2, v0, Landroid/adservices/signals/UpdateSignalsRequest;->mUpdateUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getUpdateUri()Landroid/net/Uri;
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/adservices/signals/UpdateSignalsRequest;->mUpdateUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/adservices/signals/UpdateSignalsRequest;->mUpdateUri:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateSignalsRequest{updateUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/signals/UpdateSignalsRequest;->mUpdateUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
