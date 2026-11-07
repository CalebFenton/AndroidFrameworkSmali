.class Lsun/nio/ch/UnixDomainSocketsUtil;
.super Ljava/lang/Object;
.source "UnixDomainSocketsUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getCharset()Ljava/nio/charset/Charset;
    .registers 1

    .line 42
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static blacklist getTempDir()Ljava/lang/String;
    .registers 1

    .line 74
    invoke-static {}, Ljdk/internal/util/StaticProperty;->javaIoTmpDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
