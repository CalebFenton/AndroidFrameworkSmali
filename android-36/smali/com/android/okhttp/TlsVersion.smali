.class public final enum Lcom/android/okhttp/TlsVersion;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/okhttp/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/okhttp/TlsVersion;

.field public static final enum greylist-max-o SSL_3_0:Lcom/android/okhttp/TlsVersion;

.field public static final enum greylist-max-o TLS_1_0:Lcom/android/okhttp/TlsVersion;

.field public static final enum greylist-max-o TLS_1_1:Lcom/android/okhttp/TlsVersion;

.field public static final enum greylist-max-o TLS_1_2:Lcom/android/okhttp/TlsVersion;

.field public static final enum blacklist TLS_1_3:Lcom/android/okhttp/TlsVersion;


# instance fields
.field final greylist-max-o javaName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/okhttp/TlsVersion;
    .registers 5

    .line 26
    sget-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_3:Lcom/android/okhttp/TlsVersion;

    sget-object v1, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    sget-object v3, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    sget-object v4, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/okhttp/TlsVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 27
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const/4 v1, 0x0

    const-string v2, "TLSv1.3"

    const-string v3, "TLS_1_3"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_3:Lcom/android/okhttp/TlsVersion;

    .line 28
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const/4 v1, 0x1

    const-string v2, "TLSv1.2"

    const-string v3, "TLS_1_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    .line 29
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const/4 v1, 0x2

    const-string v2, "TLSv1.1"

    const-string v3, "TLS_1_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    .line 30
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const/4 v1, 0x3

    const-string v2, "TLSv1"

    const-string v3, "TLS_1_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    .line 31
    new-instance v0, Lcom/android/okhttp/TlsVersion;

    const/4 v1, 0x4

    const-string v2, "SSLv3"

    const-string v3, "SSL_3_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    .line 26
    invoke-static {}, Lcom/android/okhttp/TlsVersion;->$values()[Lcom/android/okhttp/TlsVersion;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/TlsVersion;->$VALUES:[Lcom/android/okhttp/TlsVersion;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static greylist-max-o forJavaName(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;
    .registers 4

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6c

    goto :goto_42

    :sswitch_c
    const-string v1, "TLSv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_42

    :cond_15
    const/4 v0, 0x4

    goto :goto_42

    :sswitch_17
    const-string v1, "SSLv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_42

    :cond_20
    const/4 v0, 0x3

    goto :goto_42

    :sswitch_22
    const-string v1, "TLSv1.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v0, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v1, "TLSv1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_42

    :cond_36
    const/4 v0, 0x1

    goto :goto_42

    :sswitch_38
    const-string v1, "TLSv1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    packed-switch v0, :pswitch_data_82

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_5c
    sget-object p0, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    return-object p0

    .line 46
    :pswitch_5f
    sget-object p0, Lcom/android/okhttp/TlsVersion;->SSL_3_0:Lcom/android/okhttp/TlsVersion;

    return-object p0

    .line 42
    :pswitch_62
    sget-object p0, Lcom/android/okhttp/TlsVersion;->TLS_1_3:Lcom/android/okhttp/TlsVersion;

    return-object p0

    .line 43
    :pswitch_65
    sget-object p0, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    return-object p0

    .line 44
    :pswitch_68
    sget-object p0, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    return-object p0

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_38
        -0x1dfc3f26 -> :sswitch_2d
        -0x1dfc3f25 -> :sswitch_22
        0x4b88569 -> :sswitch_17
        0x4c38896 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
    .end packed-switch
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    const-class v0, Lcom/android/okhttp/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/okhttp/TlsVersion;

    return-object p0
.end method

.method public static greylist-max-o values()[Lcom/android/okhttp/TlsVersion;
    .registers 1

    .line 26
    sget-object v0, Lcom/android/okhttp/TlsVersion;->$VALUES:[Lcom/android/okhttp/TlsVersion;

    invoke-virtual {v0}, [Lcom/android/okhttp/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o javaName()Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    return-object p0
.end method
