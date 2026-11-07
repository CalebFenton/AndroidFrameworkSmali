.class public final Lcom/android/icu/charset/CharsetICU;
.super Ljava/nio/charset/Charset;
.source "CharsetICU.java"


# instance fields
.field private final blacklist icuCanonicalName:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "canonicalName"    # Ljava/lang/String;
    .param p2, "icuCanonName"    # Ljava/lang/String;
    .param p3, "aliases"    # [Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p3}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/android/icu/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/nio/charset/Charset;)Z
    .registers 4
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 44
    if-nez p1, :cond_4

    .line 45
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/icu/charset/CharsetICU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_c
    invoke-virtual {p0}, Lcom/android/icu/charset/CharsetICU;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/icu/charset/NativeConverter;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/icu/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/icu/charset/CharsetDecoderICU;->newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcom/android/icu/charset/CharsetDecoderICU;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/icu/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/icu/charset/CharsetEncoderICU;->newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcom/android/icu/charset/CharsetEncoderICU;

    move-result-object v0

    return-object v0
.end method
