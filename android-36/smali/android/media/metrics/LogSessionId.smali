.class public final Landroid/media/metrics/LogSessionId;
.super Ljava/lang/Object;
.source "LogSessionId.java"


# static fields
.field public static final whitelist LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;


# instance fields
.field private final blacklist mSessionId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Landroid/media/metrics/LogSessionId;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/media/metrics/LogSessionId;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/metrics/LogSessionId;->mSessionId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 56
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 57
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/media/metrics/LogSessionId;

    .line 58
    .local v0, "that":Landroid/media/metrics/LogSessionId;
    iget-object v1, p0, Landroid/media/metrics/LogSessionId;->mSessionId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/metrics/LogSessionId;->mSessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 56
    .end local v0    # "that":Landroid/media/metrics/LogSessionId;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getStringId()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/media/metrics/LogSessionId;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/media/metrics/LogSessionId;->mSessionId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/media/metrics/LogSessionId;->mSessionId:Ljava/lang/String;

    return-object v0
.end method
