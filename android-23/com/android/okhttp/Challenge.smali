.class public final Lcom/android/okhttp/Challenge;
.super Ljava/lang/Object;
.source "Challenge.java"


# instance fields
.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    #@5
    .line 27
    iput-object p2, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    #@7
    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 41
    instance-of v0, p1, Lcom/android/okhttp/Challenge;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 42
    iget-object v1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    #@6
    move-object v0, p1

    #@7
    check-cast v0, Lcom/android/okhttp/Challenge;

    #@9
    iget-object v0, v0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    #@b
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    .line 41
    if-eqz v0, :cond_0

    #@11
    .line 43
    iget-object v0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    #@13
    check-cast p1, Lcom/android/okhttp/Challenge;

    #@15
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    #@17
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 41
    :goto_0
    return v0

    #@1c
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 48
    iget-object v1, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v1

    #@b
    :goto_0
    add-int/lit16 v0, v1, 0x383

    #@d
    .line 49
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@f
    iget-object v3, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    #@11
    if-eqz v3, :cond_0

    #@13
    iget-object v2, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    #@15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@18
    move-result v2

    #@19
    :cond_0
    add-int v0, v1, v2

    #@1b
    .line 50
    return v0

    #@1c
    .end local v0    # "result":I
    :cond_1
    move v1, v2

    #@1d
    .line 48
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, " realm=\""

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "\""

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
