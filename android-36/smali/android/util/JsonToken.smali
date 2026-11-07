.class public final enum Landroid/util/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/util/JsonToken;

.field public static final enum whitelist BEGIN_ARRAY:Landroid/util/JsonToken;

.field public static final enum whitelist BEGIN_OBJECT:Landroid/util/JsonToken;

.field public static final enum whitelist BOOLEAN:Landroid/util/JsonToken;

.field public static final enum whitelist END_ARRAY:Landroid/util/JsonToken;

.field public static final enum whitelist END_DOCUMENT:Landroid/util/JsonToken;

.field public static final enum whitelist END_OBJECT:Landroid/util/JsonToken;

.field public static final enum whitelist NAME:Landroid/util/JsonToken;

.field public static final enum whitelist NULL:Landroid/util/JsonToken;

.field public static final enum whitelist NUMBER:Landroid/util/JsonToken;

.field public static final enum whitelist STRING:Landroid/util/JsonToken;


# direct methods
.method private static synthetic blacklist $values()[Landroid/util/JsonToken;
    .registers 10

    .line 22
    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    sget-object v3, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    sget-object v4, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    sget-object v5, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    sget-object v6, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    sget-object v7, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    sget-object v8, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    sget-object v9, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    filled-new-array/range {v0 .. v9}, [Landroid/util/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    .line 34
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "END_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    .line 40
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "BEGIN_OBJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 46
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "END_OBJECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    .line 53
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "NAME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    .line 58
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 64
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 69
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    .line 74
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    .line 81
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    .line 22
    invoke-static {}, Landroid/util/JsonToken;->$values()[Landroid/util/JsonToken;

    move-result-object v0

    sput-object v0, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/util/JsonToken;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    const-class v0, Landroid/util/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/JsonToken;

    return-object v0
.end method

.method public static whitelist values()[Landroid/util/JsonToken;
    .registers 1

    .line 22
    sget-object v0, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

    invoke-virtual {v0}, [Landroid/util/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/JsonToken;

    return-object v0
.end method
