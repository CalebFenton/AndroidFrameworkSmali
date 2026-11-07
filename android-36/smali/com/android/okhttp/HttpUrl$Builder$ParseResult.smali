.class final enum Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/okhttp/HttpUrl$Builder$ParseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum greylist-max-o INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum greylist-max-o INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum greylist-max-o MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum greylist-max-o SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum greylist-max-o UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .registers 5

    .line 973
    sget-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    sget-object v2, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    sget-object v4, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 974
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 975
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "MISSING_SCHEME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 976
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "UNSUPPORTED_SCHEME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 977
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "INVALID_PORT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 978
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string v1, "INVALID_HOST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 973
    invoke-static {}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->$values()[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->$VALUES:[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 973
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 973
    const-class v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object p0
.end method

.method public static greylist-max-o values()[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .registers 1

    .line 973
    sget-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->$VALUES:[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    invoke-virtual {v0}, [Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v0
.end method
