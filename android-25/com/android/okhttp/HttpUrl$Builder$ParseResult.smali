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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/HttpUrl$Builder$ParseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 1017
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@7
    const-string/jumbo v1, "SUCCESS"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@f
    .line 1018
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@11
    const-string/jumbo v1, "MISSING_SCHEME"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@19
    .line 1019
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@1b
    const-string/jumbo v1, "UNSUPPORTED_SCHEME"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@23
    .line 1020
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@25
    const-string/jumbo v1, "INVALID_PORT"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@2d
    .line 1021
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@2f
    const-string/jumbo v1, "INVALID_HOST"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@37
    .line 1016
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@3a
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->$VALUES:[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1016
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1016
    const-class v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .locals 1

    #@0
    .prologue
    .line 1016
    sget-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->$VALUES:[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    #@2
    return-object v0
.end method
