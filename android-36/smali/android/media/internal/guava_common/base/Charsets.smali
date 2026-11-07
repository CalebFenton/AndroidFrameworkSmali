.class public final Landroid/media/internal/guava_common/base/Charsets;
.super Ljava/lang/Object;
.source "Charsets.java"


# static fields
.field public static final blacklist ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final blacklist US_ASCII:Ljava/nio/charset/Charset;

.field public static final blacklist UTF_16:Ljava/nio/charset/Charset;

.field public static final blacklist UTF_16BE:Ljava/nio/charset/Charset;

.field public static final blacklist UTF_16LE:Ljava/nio/charset/Charset;

.field public static final blacklist UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/internal/guava_common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 58
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/internal/guava_common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 67
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/internal/guava_common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 78
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/internal/guava_common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 89
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/internal/guava_common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 101
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/internal/guava_common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    return-void
.end method
