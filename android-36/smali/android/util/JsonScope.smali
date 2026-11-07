.class final enum Landroid/util/JsonScope;
.super Ljava/lang/Enum;
.source "JsonScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/JsonScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/util/JsonScope;

.field public static final enum greylist-max-o CLOSED:Landroid/util/JsonScope;

.field public static final enum greylist-max-o DANGLING_NAME:Landroid/util/JsonScope;

.field public static final enum greylist-max-o EMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum greylist-max-o EMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum greylist-max-o EMPTY_OBJECT:Landroid/util/JsonScope;

.field public static final enum greylist-max-o NONEMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum greylist-max-o NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum greylist-max-o NONEMPTY_OBJECT:Landroid/util/JsonScope;


# direct methods
.method private static synthetic blacklist $values()[Landroid/util/JsonScope;
    .registers 8

    .line 22
    sget-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    sget-object v2, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    sget-object v3, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    sget-object v4, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    sget-object v5, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    sget-object v6, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    sget-object v7, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    filled-new-array/range {v0 .. v7}, [Landroid/util/JsonScope;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    .line 34
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    .line 40
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "EMPTY_OBJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    .line 46
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "DANGLING_NAME"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    .line 52
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    .line 57
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    .line 62
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    .line 67
    new-instance v0, Landroid/util/JsonScope;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    .line 22
    invoke-static {}, Landroid/util/JsonScope;->$values()[Landroid/util/JsonScope;

    move-result-object v0

    sput-object v0, Landroid/util/JsonScope;->$VALUES:[Landroid/util/JsonScope;

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

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/util/JsonScope;
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
    const-class v0, Landroid/util/JsonScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/util/JsonScope;
    .registers 1

    .line 22
    sget-object v0, Landroid/util/JsonScope;->$VALUES:[Landroid/util/JsonScope;

    invoke-virtual {v0}, [Landroid/util/JsonScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/JsonScope;

    return-object v0
.end method
