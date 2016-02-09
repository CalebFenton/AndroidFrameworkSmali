.class public final Lcom/android/okhttp/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final hostnameToPins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/CertificatePinner$Builder;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 180
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    #@a
    .line 179
    return-void
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/okhttp/CertificatePinner$Builder;
    .locals 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "pins"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 188
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "hostname == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 190
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 191
    .local v1, "hostPins":Ljava/util/List;, "Ljava/util/List<Lokio/ByteString;>;"
    iget-object v4, p0, Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    #@12
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@15
    move-result-object v5

    #@16
    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Ljava/util/List;

    #@1c
    .line 192
    .local v3, "previousPins":Ljava/util/List;, "Ljava/util/List<Lokio/ByteString;>;"
    if-eqz v3, :cond_1

    #@1e
    .line 193
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@21
    .line 196
    :cond_1
    const/4 v4, 0x0

    #@22
    array-length v5, p2

    #@23
    :goto_0
    if-ge v4, v5, :cond_4

    #@25
    aget-object v2, p2, v4

    #@27
    .line 197
    .local v2, "pin":Ljava/lang/String;
    const-string/jumbo v6, "sha1/"

    #@2a
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2d
    move-result v6

    #@2e
    if-nez v6, :cond_2

    #@30
    .line 198
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@32
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v6, "pins must start with \'sha1/\': "

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v4

    #@4a
    .line 200
    :cond_2
    const-string/jumbo v6, "sha1/"

    #@4d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@50
    move-result v6

    #@51
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-static {v6}, Lcom/android/okhttp/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@58
    move-result-object v0

    #@59
    .line 201
    .local v0, "decodedPin":Lcom/android/okhttp/okio/ByteString;
    if-nez v0, :cond_3

    #@5b
    .line 202
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v6, "pins must be base64: "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v4

    #@75
    .line 204
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@78
    .line 196
    add-int/lit8 v4, v4, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 207
    .end local v0    # "decodedPin":Lcom/android/okhttp/okio/ByteString;
    .end local v2    # "pin":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method public build()Lcom/android/okhttp/CertificatePinner;
    .locals 2

    #@0
    .prologue
    .line 211
    new-instance v0, Lcom/android/okhttp/CertificatePinner;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/CertificatePinner;-><init>(Lcom/android/okhttp/CertificatePinner$Builder;Lcom/android/okhttp/CertificatePinner;)V

    #@6
    return-object v0
.end method
