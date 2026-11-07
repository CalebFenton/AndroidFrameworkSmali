.class public Lcom/android/icu/text/ExtendedIDNA;
.super Ljava/lang/Object;
.source "ExtendedIDNA.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 50
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 67
    invoke-static {p0, p1}, Landroid/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method
