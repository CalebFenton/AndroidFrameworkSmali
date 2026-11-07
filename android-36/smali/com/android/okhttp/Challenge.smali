.class public final Lcom/android/okhttp/Challenge;
.super Ljava/lang/Object;
.source "Challenge.java"


# instance fields
.field private final greylist-max-o realm:Ljava/lang/String;

.field private final greylist-max-o scheme:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 43
    instance-of v0, p1, Lcom/android/okhttp/Challenge;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    check-cast p1, Lcom/android/okhttp/Challenge;

    iget-object v1, p1, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    .line 44
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    .line 45
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o getRealm()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getScheme()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/16 v2, 0x383

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 51
    iget-object p0, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_18
    add-int/2addr v2, v1

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
