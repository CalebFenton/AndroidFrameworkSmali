.class public final enum Lcom/android/okhttp/internal/framed/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/okhttp/internal/framed/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist COMPRESSION_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist CONNECT_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist ENHANCE_YOUR_CALM:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist FRAME_TOO_LARGE:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist HTTP_1_1_REQUIRED:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist INADEQUATE_SECURITY:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist INVALID_CREDENTIALS:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist REFUSED_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist STREAM_ALREADY_CLOSED:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist STREAM_CLOSED:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist STREAM_IN_USE:Lcom/android/okhttp/internal/framed/ErrorCode;

.field public static final enum blacklist UNSUPPORTED_VERSION:Lcom/android/okhttp/internal/framed/ErrorCode;


# instance fields
.field public final blacklist httpCode:I

.field public final blacklist spdyGoAwayCode:I

.field public final blacklist spdyRstCode:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 19

    .line 23
    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->UNSUPPORTED_VERSION:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v5, Lcom/android/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v6, Lcom/android/okhttp/internal/framed/ErrorCode;->STREAM_ALREADY_CLOSED:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v7, Lcom/android/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v8, Lcom/android/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v9, Lcom/android/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v10, Lcom/android/okhttp/internal/framed/ErrorCode;->FRAME_TOO_LARGE:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v11, Lcom/android/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v12, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v13, Lcom/android/okhttp/internal/framed/ErrorCode;->COMPRESSION_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v14, Lcom/android/okhttp/internal/framed/ErrorCode;->CONNECT_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v15, Lcom/android/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v16, Lcom/android/okhttp/internal/framed/ErrorCode;->INADEQUATE_SECURITY:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v17, Lcom/android/okhttp/internal/framed/ErrorCode;->HTTP_1_1_REQUIRED:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v18, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_CREDENTIALS:Lcom/android/okhttp/internal/framed/ErrorCode;

    filled-new-array/range {v1 .. v18}, [Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 25
    new-instance v0, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 27
    new-instance v1, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 30
    new-instance v2, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v6, 0x2

    const/4 v7, -0x1

    const-string v3, "INVALID_STREAM"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 33
    new-instance v3, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v7, 0x4

    const/4 v8, -0x1

    const-string v4, "UNSUPPORTED_VERSION"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->UNSUPPORTED_VERSION:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 36
    new-instance v4, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/16 v8, 0x8

    const/4 v9, -0x1

    const-string v5, "STREAM_IN_USE"

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 39
    new-instance v5, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/16 v9, 0x9

    const/4 v10, -0x1

    const-string v6, "STREAM_ALREADY_CLOSED"

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/android/okhttp/internal/framed/ErrorCode;->STREAM_ALREADY_CLOSED:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 41
    new-instance v6, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v10, 0x6

    const/4 v11, 0x2

    const-string v7, "INTERNAL_ERROR"

    const/4 v8, 0x6

    const/4 v9, 0x2

    invoke-direct/range {v6 .. v11}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 43
    new-instance v0, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v4, 0x7

    const/4 v5, -0x1

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 45
    new-instance v1, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v6, -0x1

    const-string v2, "STREAM_CLOSED"

    const/16 v3, 0x8

    const/4 v4, 0x5

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 47
    new-instance v2, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/16 v6, 0xb

    const/4 v7, -0x1

    const-string v3, "FRAME_TOO_LARGE"

    const/16 v4, 0x9

    const/4 v5, 0x6

    invoke-direct/range {v2 .. v7}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->FRAME_TOO_LARGE:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 49
    new-instance v3, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v7, 0x3

    const/4 v8, -0x1

    const-string v4, "REFUSED_STREAM"

    const/16 v5, 0xa

    const/4 v6, 0x7

    invoke-direct/range {v3 .. v8}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 51
    new-instance v4, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v8, 0x5

    const/4 v9, -0x1

    const-string v5, "CANCEL"

    const/16 v6, 0xb

    const/16 v7, 0x8

    invoke-direct/range {v4 .. v9}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 53
    new-instance v5, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v10, -0x1

    const-string v6, "COMPRESSION_ERROR"

    const/16 v7, 0xc

    const/16 v8, 0x9

    invoke-direct/range {v5 .. v10}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/android/okhttp/internal/framed/ErrorCode;->COMPRESSION_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 55
    new-instance v6, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v11, -0x1

    const-string v7, "CONNECT_ERROR"

    const/16 v8, 0xd

    const/16 v9, 0xa

    invoke-direct/range {v6 .. v11}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/okhttp/internal/framed/ErrorCode;->CONNECT_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 57
    new-instance v0, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v1, "ENHANCE_YOUR_CALM"

    const/16 v2, 0xe

    const/16 v3, 0xb

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 59
    new-instance v1, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v6, -0x1

    const-string v2, "INADEQUATE_SECURITY"

    const/16 v3, 0xf

    const/16 v4, 0xc

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->INADEQUATE_SECURITY:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 61
    new-instance v2, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v7, -0x1

    const-string v3, "HTTP_1_1_REQUIRED"

    const/16 v4, 0x10

    const/16 v5, 0xd

    invoke-direct/range {v2 .. v7}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->HTTP_1_1_REQUIRED:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 63
    new-instance v3, Lcom/android/okhttp/internal/framed/ErrorCode;

    const/16 v7, 0xa

    const/4 v8, -0x1

    const-string v4, "INVALID_CREDENTIALS"

    const/16 v5, 0x11

    invoke-direct/range {v3 .. v8}, Lcom/android/okhttp/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_CREDENTIALS:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 23
    invoke-static {}, Lcom/android/okhttp/internal/framed/ErrorCode;->$values()[Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->$VALUES:[Lcom/android/okhttp/internal/framed/ErrorCode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    .line 71
    iput p4, p0, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    .line 72
    iput p5, p0, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    return-void
.end method

.method public static blacklist fromHttp2(I)Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 6

    .line 83
    invoke-static {}, Lcom/android/okhttp/internal/framed/ErrorCode;->values()[Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 84
    iget v4, v3, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist fromSpdy3Rst(I)Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 6

    .line 76
    invoke-static {}, Lcom/android/okhttp/internal/framed/ErrorCode;->values()[Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 77
    iget v4, v3, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist fromSpdyGoAway(I)Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 6

    .line 90
    invoke-static {}, Lcom/android/okhttp/internal/framed/ErrorCode;->values()[Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 91
    iget v4, v3, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    const-class v0, Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/okhttp/internal/framed/ErrorCode;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 1

    .line 23
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->$VALUES:[Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0}, [Lcom/android/okhttp/internal/framed/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/internal/framed/ErrorCode;

    return-object v0
.end method
