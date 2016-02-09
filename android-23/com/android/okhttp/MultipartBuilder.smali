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
.field public static final ALTERNATIVE:Lcom/android/okhttp/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lcom/android/okhttp/MediaType;

.field public static final FORM:Lcom/android/okhttp/MediaType;

.field public static final MIXED:Lcom/android/okhttp/MediaType;

.field public static final PARALLEL:Lcom/android/okhttp/MediaType;


# instance fields
.field private final boundary:Lcom/android/okhttp/okio/ByteString;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/android/okhttp/MediaType;


# direct methods
.method static synthetic -get0()[B
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->COLONSPACE:[B

    #@2
    return-object v0
.end method

.method static synthetic -get1()[B
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->CRLF:[B

    #@2
    return-object v0
.end method

.method static synthetic -get2()[B
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 38
    const-string/jumbo v0, "multipart/mixed"

    #@4
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->MIXED:Lcom/android/okhttp/MediaType;

    #@a
    .line 45
    const-string/jumbo v0, "multipart/alternative"

    #@d
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->ALTERNATIVE:Lcom/android/okhttp/MediaType;

    #@13
    .line 53
    const-string/jumbo v0, "multipart/digest"

    #@16
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->DIGEST:Lcom/android/okhttp/MediaType;

    #@1c
    .line 60
    const-string/jumbo v0, "multipart/parallel"

    #@1f
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@22
    move-result-object v0

    #@23
    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->PARALLEL:Lcom/android/okhttp/MediaType;

    #@25
    .line 68
    const-string/jumbo v0, "multipart/form-data"

    #@28
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->FORM:Lcom/android/okhttp/MediaType;

    #@2e
    .line 70
    new-array v0, v1, [B

    #@30
    fill-array-data v0, :array_0

    #@33
    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->COLONSPACE:[B

    #@35
    .line 71
    new-array v0, v1, [B

    #@37
    fill-array-data v0, :array_1

    #@3a
    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->CRLF:[B

    #@3c
    .line 72
    new-array v0, v1, [B

    #@3e
    fill-array-data v0, :array_2

    #@41
    sput-object v0, Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B

    #@43
    .line 31
    return-void

    #@44
    .line 70
    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    #@49
    .line 71
    nop

    #@4a
    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    #@4f
    .line 72
    nop

    #@50
    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Lcom/android/okhttp/MultipartBuilder;-><init>(Ljava/lang/String;)V

    #@b
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    sget-object v0, Lcom/android/okhttp/MultipartBuilder;->MIXED:Lcom/android/okhttp/MediaType;

    #@5
    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->type:Lcom/android/okhttp/MediaType;

    #@7
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    #@e
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    #@15
    .line 92
    invoke-static {p1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->boundary:Lcom/android/okhttp/okio/ByteString;

    #@1b
    .line 91
    return-void
.end method

.method private static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "target"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x22

    #@2
    .line 145
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5
    .line 146
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 148
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    #@13
    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 146
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 150
    :sswitch_0
    const-string/jumbo v3, "%0A"

    #@1c
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    goto :goto_1

    #@20
    .line 153
    :sswitch_1
    const-string/jumbo v3, "%0D"

    #@23
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_1

    #@27
    .line 156
    :sswitch_2
    const-string/jumbo v3, "%22"

    #@2a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_1

    #@2e
    .line 163
    .end local v0    # "ch":C
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 164
    return-object p0

    #@32
    .line 148
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/MultipartBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 169
    invoke-static {v1, p2}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/RequestBody;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "value"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 174
    if-nez p1, :cond_0

    #@2
    .line 175
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "name == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string/jumbo v1, "form-data; name="

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 178
    .local v0, "disposition":Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Lcom/android/okhttp/MultipartBuilder;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 180
    if-eqz p2, :cond_1

    #@18
    .line 181
    const-string/jumbo v1, "; filename="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 182
    invoke-static {v0, p2}, Lcom/android/okhttp/MultipartBuilder;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 185
    :cond_1
    const/4 v1, 0x2

    #@22
    new-array v1, v1, [Ljava/lang/String;

    #@24
    const-string/jumbo v2, "Content-Disposition"

    #@27
    const/4 v3, 0x0

    #@28
    aput-object v2, v1, v3

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    const/4 v3, 0x1

    #@2f
    aput-object v2, v1, v3

    #@31
    invoke-static {v1}, Lcom/android/okhttp/Headers;->of([Ljava/lang/String;)Lcom/android/okhttp/Headers;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0, v1, p3}, Lcom/android/okhttp/MultipartBuilder;->addPart(Lcom/android/okhttp/Headers;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method

.method public addPart(Lcom/android/okhttp/Headers;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;
    .locals 2
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .param p2, "body"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 118
    if-nez p2, :cond_0

    #@2
    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "body == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 121
    :cond_0
    if-eqz p1, :cond_1

    #@d
    const-string/jumbo v0, "Content-Type"

    #@10
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "Unexpected header: Content-Type"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 124
    :cond_1
    if-eqz p1, :cond_2

    #@21
    const-string/jumbo v0, "Content-Length"

    #@24
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v1, "Unexpected header: Content-Length"

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    #@35
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 129
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    #@3a
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    .line 130
    return-object p0
.end method

.method public addPart(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;
    .locals 1
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/MultipartBuilder;->addPart(Lcom/android/okhttp/Headers;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/MultipartBuilder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public build()Lcom/android/okhttp/RequestBody;
    .locals 5

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Multipart body must have at least one part."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 193
    :cond_0
    new-instance v0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;

    #@13
    iget-object v1, p0, Lcom/android/okhttp/MultipartBuilder;->type:Lcom/android/okhttp/MediaType;

    #@15
    iget-object v2, p0, Lcom/android/okhttp/MultipartBuilder;->boundary:Lcom/android/okhttp/okio/ByteString;

    #@17
    iget-object v3, p0, Lcom/android/okhttp/MultipartBuilder;->partHeaders:Ljava/util/List;

    #@19
    iget-object v4, p0, Lcom/android/okhttp/MultipartBuilder;->partBodies:Ljava/util/List;

    #@1b
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;-><init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;Ljava/util/List;Ljava/util/List;)V

    #@1e
    return-object v0
.end method

.method public type(Lcom/android/okhttp/MediaType;)Lcom/android/okhttp/MultipartBuilder;
    .locals 3
    .param p1, "type"    # Lcom/android/okhttp/MediaType;

    #@0
    .prologue
    .line 101
    if-nez p1, :cond_0

    #@2
    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "type == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/android/okhttp/MediaType;->type()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "multipart"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "multipart != "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 107
    :cond_1
    iput-object p1, p0, Lcom/android/okhttp/MultipartBuilder;->type:Lcom/android/okhttp/MediaType;

    #@34
    .line 108
    return-object p0
.end method
