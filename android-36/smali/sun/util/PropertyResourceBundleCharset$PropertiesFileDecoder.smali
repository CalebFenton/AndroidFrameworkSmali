.class final Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "PropertyResourceBundleCharset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/PropertyResourceBundleCharset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PropertiesFileDecoder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist cdISO_8859_1:Ljava/nio/charset/CharsetDecoder;

.field private blacklist cdUTF_8:Ljava/nio/charset/CharsetDecoder;

.field final synthetic blacklist this$0:Lsun/util/PropertyResourceBundleCharset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const-class v0, Lsun/util/PropertyResourceBundleCharset;

    return-void
.end method

.method protected constructor blacklist <init>(Lsun/util/PropertyResourceBundleCharset;Ljava/nio/charset/Charset;FF)V
    .registers 6
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "averageCharsPerByte"    # F
    .param p4, "maxCharsPerByte"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;->this$0:Lsun/util/PropertyResourceBundleCharset;

    .line 83
    invoke-direct {p0, p2, p3, p4}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 76
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 77
    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 78
    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;->cdUTF_8:Ljava/nio/charset/CharsetDecoder;

    .line 79
    const/4 p1, 0x0

    iput-object p1, p0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;->cdISO_8859_1:Ljava/nio/charset/CharsetDecoder;

    .line 84
    return-void
.end method


# virtual methods
.method protected whitelist test-api decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 6
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;

    .line 87
    iget-object v0, p0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;->cdISO_8859_1:Ljava/nio/charset/CharsetDecoder;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 88
    iget-object v0, p0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;->cdISO_8859_1:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 90
    :cond_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 91
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 93
    iget-object v0, p0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;->cdUTF_8:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 94
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-nez v2, :cond_46

    iget-object v2, p0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;->this$0:Lsun/util/PropertyResourceBundleCharset;

    invoke-static {v2}, Lsun/util/PropertyResourceBundleCharset;->-$$Nest$fgetstrictUTF8(Lsun/util/PropertyResourceBundleCharset;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_46

    .line 101
    :cond_30
    nop

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 103
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    .line 106
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    iput-object v2, p0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;->cdISO_8859_1:Ljava/nio/charset/CharsetDecoder;

    .line 107
    iget-object v2, p0, Lsun/util/PropertyResourceBundleCharset$PropertiesFileDecoder;->cdISO_8859_1:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 96
    :cond_46
    :goto_46
    return-object v0
.end method
