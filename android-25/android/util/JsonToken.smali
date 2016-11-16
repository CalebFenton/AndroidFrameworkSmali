.class public final enum Landroid/util/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/util/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/JsonToken;

.field public static final enum BEGIN_ARRAY:Landroid/util/JsonToken;

.field public static final enum BEGIN_OBJECT:Landroid/util/JsonToken;

.field public static final enum BOOLEAN:Landroid/util/JsonToken;

.field public static final enum END_ARRAY:Landroid/util/JsonToken;

.field public static final enum END_DOCUMENT:Landroid/util/JsonToken;

.field public static final enum END_OBJECT:Landroid/util/JsonToken;

.field public static final enum NAME:Landroid/util/JsonToken;

.field public static final enum NULL:Landroid/util/JsonToken;

.field public static final enum NUMBER:Landroid/util/JsonToken;

.field public static final enum STRING:Landroid/util/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 24
    new-instance v0, Landroid/util/JsonToken;

    #@7
    const-string/jumbo v1, "BEGIN_ARRAY"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@d
    .line 28
    sput-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    #@f
    .line 30
    new-instance v0, Landroid/util/JsonToken;

    #@11
    const-string/jumbo v1, "END_ARRAY"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@17
    .line 34
    sput-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    #@19
    .line 36
    new-instance v0, Landroid/util/JsonToken;

    #@1b
    const-string/jumbo v1, "BEGIN_OBJECT"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@21
    .line 40
    sput-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    #@23
    .line 42
    new-instance v0, Landroid/util/JsonToken;

    #@25
    const-string/jumbo v1, "END_OBJECT"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 46
    sput-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    #@2d
    .line 48
    new-instance v0, Landroid/util/JsonToken;

    #@2f
    const-string/jumbo v1, "NAME"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@35
    .line 53
    sput-object v0, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    #@37
    .line 55
    new-instance v0, Landroid/util/JsonToken;

    #@39
    const-string/jumbo v1, "STRING"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@40
    .line 58
    sput-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@42
    .line 60
    new-instance v0, Landroid/util/JsonToken;

    #@44
    const-string/jumbo v1, "NUMBER"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 64
    sput-object v0, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    #@4d
    .line 66
    new-instance v0, Landroid/util/JsonToken;

    #@4f
    const-string/jumbo v1, "BOOLEAN"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@56
    .line 69
    sput-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    #@58
    .line 71
    new-instance v0, Landroid/util/JsonToken;

    #@5a
    const-string/jumbo v1, "NULL"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@62
    .line 74
    sput-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    #@64
    .line 76
    new-instance v0, Landroid/util/JsonToken;

    #@66
    const-string/jumbo v1, "END_DOCUMENT"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 81
    sput-object v0, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    #@70
    .line 22
    const/16 v0, 0xa

    #@72
    new-array v0, v0, [Landroid/util/JsonToken;

    #@74
    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    #@76
    aput-object v1, v0, v3

    #@78
    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    #@7a
    aput-object v1, v0, v4

    #@7c
    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    #@7e
    aput-object v1, v0, v5

    #@80
    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    #@82
    aput-object v1, v0, v6

    #@84
    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    #@86
    aput-object v1, v0, v7

    #@88
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@8a
    const/4 v2, 0x5

    #@8b
    aput-object v1, v0, v2

    #@8d
    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    #@8f
    const/4 v2, 0x6

    #@90
    aput-object v1, v0, v2

    #@92
    sget-object v1, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    #@94
    const/4 v2, 0x7

    #@95
    aput-object v1, v0, v2

    #@97
    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    #@99
    const/16 v2, 0x8

    #@9b
    aput-object v1, v0, v2

    #@9d
    sget-object v1, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    #@9f
    const/16 v2, 0x9

    #@a1
    aput-object v1, v0, v2

    #@a3
    sput-object v0, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

    #@a5
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/JsonToken;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 22
    const-class v0, Landroid/util/JsonToken;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/JsonToken;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/util/JsonToken;
    .locals 1

    #@0
    .prologue
    .line 22
    sget-object v0, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

    #@2
    return-object v0
.end method
