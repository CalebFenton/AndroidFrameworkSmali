.class public Lorg/apache/xml/utils/res/XResources_en;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_en.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 9

    .line 41
    const-string p0, "ui_language"

    const-string v0, "en"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string p0, "help_language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string p0, "language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v3

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_4e

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "alphabet"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v4

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_6c

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "tradAlphabet"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-string p0, "orientation"

    const-string v0, "LeftToRight"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-string p0, "numbering"

    const-string v0, "additive"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :array_4e
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_6c
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method
