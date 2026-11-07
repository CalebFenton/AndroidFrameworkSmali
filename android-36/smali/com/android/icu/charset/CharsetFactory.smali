.class public Lcom/android/icu/charset/CharsetFactory;
.super Ljava/lang/Object;
.source "CharsetFactory.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/android/icu/charset/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getAvailableCharsetNames()[Ljava/lang/String;
    .registers 1

    .line 40
    invoke-static {}, Lcom/android/icu/charset/NativeConverter;->getAvailableCharsetNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
