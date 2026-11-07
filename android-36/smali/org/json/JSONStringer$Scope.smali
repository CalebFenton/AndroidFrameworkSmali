.class final enum Lorg/json/JSONStringer$Scope;
.super Ljava/lang/Enum;
.source "JSONStringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/json/JSONStringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/json/JSONStringer$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lorg/json/JSONStringer$Scope;

.field public static final enum greylist-max-o DANGLING_KEY:Lorg/json/JSONStringer$Scope;

.field public static final enum greylist-max-o EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

.field public static final enum greylist-max-o EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

.field public static final enum greylist-max-o NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

.field public static final enum greylist-max-o NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

.field public static final enum greylist-max-o NULL:Lorg/json/JSONStringer$Scope;


# direct methods
.method private static synthetic blacklist $values()[Lorg/json/JSONStringer$Scope;
    .registers 6

    .line 73
    sget-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    sget-object v2, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    sget-object v3, Lorg/json/JSONStringer$Scope;->DANGLING_KEY:Lorg/json/JSONStringer$Scope;

    sget-object v4, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    sget-object v5, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    filled-new-array/range {v0 .. v5}, [Lorg/json/JSONStringer$Scope;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 79
    new-instance v0, Lorg/json/JSONStringer$Scope;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    .line 85
    new-instance v0, Lorg/json/JSONStringer$Scope;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    .line 91
    new-instance v0, Lorg/json/JSONStringer$Scope;

    const-string v1, "EMPTY_OBJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    .line 97
    new-instance v0, Lorg/json/JSONStringer$Scope;

    const-string v1, "DANGLING_KEY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/json/JSONStringer$Scope;->DANGLING_KEY:Lorg/json/JSONStringer$Scope;

    .line 103
    new-instance v0, Lorg/json/JSONStringer$Scope;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    .line 109
    new-instance v0, Lorg/json/JSONStringer$Scope;

    const-string v1, "NULL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/json/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    .line 73
    invoke-static {}, Lorg/json/JSONStringer$Scope;->$values()[Lorg/json/JSONStringer$Scope;

    move-result-object v0

    sput-object v0, Lorg/json/JSONStringer$Scope;->$VALUES:[Lorg/json/JSONStringer$Scope;

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

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Lorg/json/JSONStringer$Scope;
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

    .line 73
    const-class v0, Lorg/json/JSONStringer$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/json/JSONStringer$Scope;

    return-object v0
.end method

.method public static greylist-max-o values()[Lorg/json/JSONStringer$Scope;
    .registers 1

    .line 73
    sget-object v0, Lorg/json/JSONStringer$Scope;->$VALUES:[Lorg/json/JSONStringer$Scope;

    invoke-virtual {v0}, [Lorg/json/JSONStringer$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/json/JSONStringer$Scope;

    return-object v0
.end method
