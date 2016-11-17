.class public final enum Lcom/android/okhttp/TlsVersion;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/TlsVersion;

.field public static final enum SSL_3_0:Lcom/android/okhttp/TlsVersion;

.field public static final enum TLS_1_0:Lcom/android/okhttp/TlsVersion;

.field public static final enum TLS_1_1:Lcom/android/okhttp/TlsVersion;

.field public static final enum TLS_1_2:Lcom/android/okhttp/TlsVersion;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 25
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    #@6
    const-string/jumbo v1, "TLS_1_2"

    #@9
    const-string/jumbo v2, "TLSv1.2"

    #@c
    invoke-direct {v0, v1, v3, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@f
    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    #@11
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    #@13
    const-string/jumbo v1, "TLS_1_1"

    #@16
    .line 26
    const-string/jumbo v2, "TLSv1.1"

    #@19
    .line 25
    invoke-direct {v0, v1, v4, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1c
    .line 26
    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    #@1e
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    #@20
    const-string/jumbo v1, "TLS_1_0"

    #@23
    .line 27
    const-string/jumbo v2, "TLSv1"

    #@26
    .line 26
    invoke-direct {v0, v1, v5, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@29
    .line 27
    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    #@2b
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    #@2d
    const-string/jumbo v1, "SSL_3_0"

    #@30
    .line 28
    const-string/jumbo v2, "SSLv3"

    #@33
    .line 27
    invoke-direct {v0, v1, v6, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@36
    .line 28
    sput-object v0, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    #@38
    .line 24
    const/4 v0, 0x4

    #@39
    new-array v0, v0, [Lcom/android/okhttp/TlsVersion;

    #@3b
    sget-object v1, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    #@3d
    aput-object v1, v0, v3

    #@3f
    sget-object v1, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    #@41
    aput-object v1, v0, v4

    #@43
    sget-object v1, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    #@45
    aput-object v1, v0, v5

    #@47
    sget-object v1, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    #@49
    aput-object v1, v0, v6

    #@4b
    sput-object v0, Lcom/android/okhttp/TlsVersion;->$VALUES:[Lcom/android/okhttp/TlsVersion;

    #@4d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "javaName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 34
    iput-object p3, p0, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    #@5
    .line 33
    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;
    .locals 3
    .param p0, "javaName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "TLSv1.2"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 39
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    #@b
    return-object v0

    #@c
    .line 38
    :cond_0
    const-string/jumbo v0, "TLSv1.1"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 40
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    #@17
    return-object v0

    #@18
    .line 38
    :cond_1
    const-string/jumbo v0, "TLSv1"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 41
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    #@23
    return-object v0

    #@24
    .line 38
    :cond_2
    const-string/jumbo v0, "SSLv3"

    #@27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 42
    sget-object v0, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    #@2f
    return-object v0

    #@30
    .line 44
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "Unexpected TLS version: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    const-class v0, Lcom/android/okhttp/TlsVersion;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/okhttp/TlsVersion;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/TlsVersion;
    .locals 1

    #@0
    .prologue
    .line 24
    sget-object v0, Lcom/android/okhttp/TlsVersion;->$VALUES:[Lcom/android/okhttp/TlsVersion;

    #@2
    return-object v0
.end method


# virtual methods
.method public javaName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    #@2
    return-object v0
.end method
