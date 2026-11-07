.class public Landroid/net/connectivity/org/chromium/net/impl/ImplVersion;
.super Ljava/lang/Object;
.source "ImplVersion.java"


# static fields
.field private static final blacklist API_LEVEL:I = 0x22

.field private static final blacklist CRONET_VERSION:Ljava/lang/String; = "133.0.6876.3"

.field private static final blacklist LAST_CHANGE:Ljava/lang/String; = "db0fc2a7da3d23cb1adc085bbbb714b02fa0d27b"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getApiLevel()I
    .registers 1

    .line 45
    const/16 v0, 0x22

    return v0
.end method

.method public static blacklist getCronetVersion()Ljava/lang/String;
    .registers 1

    .line 49
    const-string v0, "133.0.6876.3"

    return-object v0
.end method

.method public static blacklist getCronetVersionWithLastChange()Ljava/lang/String;
    .registers 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "133.0.6876.3@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, "db0fc2a7da3d23cb1adc085bbbb714b02fa0d27b"

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLastChange()Ljava/lang/String;
    .registers 1

    .line 53
    const-string v0, "db0fc2a7da3d23cb1adc085bbbb714b02fa0d27b"

    return-object v0
.end method
