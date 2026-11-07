.class public Lsun/util/PropertyResourceBundleCharset;
.super Ljava/nio/charset/Charset;
.source "PropertyResourceBundleCharset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;
    }
.end annotation


# instance fields
.field private blacklist strictUTF8:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetstrictUTF8(Lsun/util/PropertyResourceBundleCharset;)Z
    .registers 1

    iget-boolean p0, p0, Lsun/util/PropertyResourceBundleCharset;->strictUTF8:Z

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "canonicalName"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/PropertyResourceBundleCharset;->strictUTF8:Z

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 4
    .param p1, "strictUTF8"    # Z

    .line 50
    const-class v0, Lsun/util/PropertyResourceBundleCharset;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsun/util/PropertyResourceBundleCharset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    iput-boolean p1, p0, Lsun/util/PropertyResourceBundleCharset;->strictUTF8:Z

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/nio/charset/Charset;)Z
    .registers 3
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 3

    .line 65
    new-instance v0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, p0, v1, v1}, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;-><init>(Lsun/util/PropertyResourceBundleCharset;Ljava/nio/charset/Charset;FF)V

    return-object v0
.end method

.method public whitelist test-api newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Encoding is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
