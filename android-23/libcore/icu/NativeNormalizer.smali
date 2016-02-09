.class public final Llibcore/icu/NativeNormalizer;
.super Ljava/lang/Object;
.source "NativeNormalizer.java"


# static fields
.field private static synthetic -java_text_Normalizer$FormSwitchesValues:[I


# direct methods
.method private static synthetic -getjava_text_Normalizer$FormSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Llibcore/icu/NativeNormalizer;->-java_text_Normalizer$FormSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Llibcore/icu/NativeNormalizer;->-java_text_Normalizer$FormSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/text/Normalizer$Form;->values()[Ljava/text/Normalizer$Form;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    #@10
    invoke-virtual {v1}, Ljava/text/Normalizer$Form;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    #@19
    invoke-virtual {v1}, Ljava/text/Normalizer$Form;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    #@22
    invoke-virtual {v1}, Ljava/text/Normalizer$Form;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    #@2b
    invoke-virtual {v1}, Ljava/text/Normalizer$Form;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Llibcore/icu/NativeNormalizer;->-java_text_Normalizer$FormSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isNormalized(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Z
    .locals 2
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    #@0
    .prologue
    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Llibcore/icu/NativeNormalizer;->toUNormalizationMode(Ljava/text/Normalizer$Form;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Llibcore/icu/NativeNormalizer;->isNormalizedImpl(Ljava/lang/String;I)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private static native isNormalizedImpl(Ljava/lang/String;I)Z
.end method

.method public static normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "form"    # Ljava/text/Normalizer$Form;

    #@0
    .prologue
    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Llibcore/icu/NativeNormalizer;->toUNormalizationMode(Ljava/text/Normalizer$Form;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Llibcore/icu/NativeNormalizer;->normalizeImpl(Ljava/lang/String;I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static native normalizeImpl(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static toUNormalizationMode(Ljava/text/Normalizer$Form;)I
    .locals 3
    .param p0, "form"    # Ljava/text/Normalizer$Form;

    #@0
    .prologue
    .line 33
    invoke-static {}, Llibcore/icu/NativeNormalizer;->-getjava_text_Normalizer$FormSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/text/Normalizer$Form;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 39
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "unknown Normalizer.Form "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@26
    throw v0

    #@27
    .line 34
    :pswitch_0
    const/4 v0, 0x4

    #@28
    return v0

    #@29
    .line 35
    :pswitch_1
    const/4 v0, 0x2

    #@2a
    return v0

    #@2b
    .line 36
    :pswitch_2
    const/4 v0, 0x5

    #@2c
    return v0

    #@2d
    .line 37
    :pswitch_3
    const/4 v0, 0x3

    #@2e
    return v0

    #@2f
    .line 33
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
