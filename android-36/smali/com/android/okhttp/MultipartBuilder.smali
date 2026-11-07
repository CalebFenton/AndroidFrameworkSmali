.class public final Lcom/android/okhttp/MultipartBuilder;
.super Ljava/lang/Object;
.source "MultipartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;
    }
.end annotation


# static fields
.field public static final blacklist ALTERNATIVE:Lcom/android/okhttp/MediaType;

.field private static final blacklist COLONSPACE:[B

.field private static final blacklist CRLF:[B

.field private static final blacklist DASHDASH:[B

.field public static final blacklist DIGEST:Lcom/android/okhttp/MediaType;

.field public static final blacklist FORM:Lcom/android/okhttp/MediaType;

.field public static final blacklist MIXED:Lcom/android/okhttp/MediaType;

.field public static final blacklist PARALLEL:Lcom/android/okhttp/MediaType;


# instance fields
.field private final blacklist boundary:Lcom/android/okhttp/okio/ByteString;

.field private final blacklist partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist type:Lcom/android/okhttp/MediaType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->MIXED:Lcom/android/okhttp/MediaType;

    .line 47
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->ALTERNATIVE:Lcom/android/okhttp/MediaType;

    .line 55
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->DIGEST:Lcom/android/okhttp/MediaType;

    .line 62
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->PARALLEL:Lcom/android/okhttp/MediaType;

    .line 70
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->FORM:Lcom/android/okhttp/MediaType;

    const/4 v0, 0x2

    .line 72
    new-array v1, v0, [B

    fill-array-data v1, :array_40

    sput-object v1, Lcom/android/okhttp/MultipartBuilder;->COLONSPACE:[B

    .line 73
    new-array v1, v0, [B

    fill-array-data v1, :array_46

    sput-object v1, Lcom/android/okhttp/MultipartBuilder;->CRLF:[B

    .line 74
    new-array v0, v0, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B

    return-void

    nop

    :array_40
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_46
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/MultipartBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->MIXED:Lcom/android/okhttp/MediaType;

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->type:Lcom/android/okhttp/MediaType;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    .line 94
    invoke-static {p1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/MultipartBuilder;->boundary:Lcom/android/okhttp/okio/ByteString;

    return-void
.end method

.method static synthetic blacklist access$000()[B
    .registers 1

    .line 33
    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B

    return-object v0
.end method

.method static synthetic blacklist access$100()[B
    .registers 1

    .line 33
    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->CRLF:[B

    return-object v0
.end method

.method static synthetic blacklist access$200()[B
    .registers 1

    .line 33
    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->COLONSPACE:[B

    return-object v0
.end method

.method private static blacklist appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7

    const/16 v0, 0x22

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_32

    .line 149
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2a

    const/16 v4, 0xd

    if-eq v3, v4, :cond_24

    if-eq v3, v0, :cond_1e

    .line 161
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 158
    :cond_1e
    const-string v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 155
    :cond_24
    const-string v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 152
    :cond_2a
    const-string v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 165
    :cond_32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public blacklist addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/MultipartBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 171
    invoke-static {v0, p2}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/RequestBody;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;
    .registers 6

    if-eqz p1, :cond_29

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {v0, p1}, Lcom/android/okhttp/MultipartBuilder;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_16

    .line 183
    const-string p1, "; filename="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {v0, p2}, Lcom/android/okhttp/MultipartBuilder;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_16
    const-string p1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/Headers;->of([Ljava/lang/String;)Lcom/android/okhttp/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/okhttp/MultipartBuilder;->addPart(Lcom/android/okhttp/Headers;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;

    move-result-object p0

    return-object p0

    .line 177
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addPart(Lcom/android/okhttp/Headers;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;
    .registers 4

    if-eqz p2, :cond_33

    if-eqz p1, :cond_15

    .line 123
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 124
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    if-eqz p1, :cond_28

    .line 126
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_28

    .line 127
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object p1, p0, Lcom/android/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 121
    :cond_33
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist addPart(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;
    .registers 3

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/MultipartBuilder;->addPart(Lcom/android/okhttp/Headers;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist build()Lcom/android/okhttp/RequestBody;
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 195
    new-instance v0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;

    iget-object v1, p0, Lcom/android/okhttp/MultipartBuilder;->type:Lcom/android/okhttp/MediaType;

    iget-object v2, p0, Lcom/android/okhttp/MultipartBuilder;->boundary:Lcom/android/okhttp/okio/ByteString;

    iget-object v3, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    iget-object p0, p0, Lcom/android/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;-><init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 193
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Multipart body must have at least one part."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist type(Lcom/android/okhttp/MediaType;)Lcom/android/okhttp/MultipartBuilder;
    .registers 4

    if-eqz p1, :cond_28

    .line 106
    invoke-virtual {p1}, Lcom/android/okhttp/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    iput-object p1, p0, Lcom/android/okhttp/MultipartBuilder;->type:Lcom/android/okhttp/MediaType;

    return-object p0

    .line 107
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_28
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
