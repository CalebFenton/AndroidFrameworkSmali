.class public final enum Landroid/net/connectivity/com/google/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "JavaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/com/google/protobuf/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist BOOLEAN:Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist BYTE_STRING:Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist DOUBLE:Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist ENUM:Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist FLOAT:Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist INT:Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist LONG:Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist MESSAGE:Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist STRING:Landroid/net/connectivity/com/google/protobuf/JavaType;

.field public static final enum blacklist VOID:Landroid/net/connectivity/com/google/protobuf/JavaType;


# instance fields
.field private final blacklist boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist defaultDefault:Ljava/lang/Object;

.field private final blacklist type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/com/google/protobuf/JavaType;
    .registers 10

    .line 34
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/JavaType;->VOID:Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/JavaType;->INT:Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v2, Landroid/net/connectivity/com/google/protobuf/JavaType;->LONG:Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v3, Landroid/net/connectivity/com/google/protobuf/JavaType;->FLOAT:Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v4, Landroid/net/connectivity/com/google/protobuf/JavaType;->DOUBLE:Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v5, Landroid/net/connectivity/com/google/protobuf/JavaType;->BOOLEAN:Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v6, Landroid/net/connectivity/com/google/protobuf/JavaType;->STRING:Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v7, Landroid/net/connectivity/com/google/protobuf/JavaType;->BYTE_STRING:Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v8, Landroid/net/connectivity/com/google/protobuf/JavaType;->ENUM:Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v9, Landroid/net/connectivity/com/google/protobuf/JavaType;->MESSAGE:Landroid/net/connectivity/com/google/protobuf/JavaType;

    filled-new-array/range {v0 .. v9}, [Landroid/net/connectivity/com/google/protobuf/JavaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 36
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/JavaType;

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    const-string v1, "VOID"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/JavaType;->VOID:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 37
    new-instance v1, Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "INT"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v1, Landroid/net/connectivity/com/google/protobuf/JavaType;->INT:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 38
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "LONG"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Landroid/net/connectivity/com/google/protobuf/JavaType;->LONG:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 39
    new-instance v3, Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v4, "FLOAT"

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v8}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v3, Landroid/net/connectivity/com/google/protobuf/JavaType;->FLOAT:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 40
    new-instance v4, Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v5, "DOUBLE"

    const/4 v6, 0x4

    invoke-direct/range {v4 .. v9}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v4, Landroid/net/connectivity/com/google/protobuf/JavaType;->DOUBLE:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 41
    new-instance v5, Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v6, "BOOLEAN"

    const/4 v7, 0x5

    invoke-direct/range {v5 .. v10}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Landroid/net/connectivity/com/google/protobuf/JavaType;->BOOLEAN:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 42
    new-instance v6, Landroid/net/connectivity/com/google/protobuf/JavaType;

    const-class v9, Ljava/lang/String;

    const-class v10, Ljava/lang/String;

    const-string v11, ""

    const-string v7, "STRING"

    const/4 v8, 0x6

    invoke-direct/range {v6 .. v11}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Landroid/net/connectivity/com/google/protobuf/JavaType;->STRING:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 43
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/JavaType;

    const-class v3, Landroid/net/connectivity/com/google/protobuf/ByteString;

    const-class v4, Landroid/net/connectivity/com/google/protobuf/ByteString;

    sget-object v5, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x7

    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/JavaType;->BYTE_STRING:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 44
    new-instance v1, Landroid/net/connectivity/com/google/protobuf/JavaType;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    const-string v2, "ENUM"

    const/16 v3, 0x8

    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v1, Landroid/net/connectivity/com/google/protobuf/JavaType;->ENUM:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 45
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/JavaType;

    const-class v5, Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v3, "MESSAGE"

    const/16 v4, 0x9

    invoke-direct/range {v2 .. v7}, Landroid/net/connectivity/com/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Landroid/net/connectivity/com/google/protobuf/JavaType;->MESSAGE:Landroid/net/connectivity/com/google/protobuf/JavaType;

    .line 34
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/JavaType;->$values()[Landroid/net/connectivity/com/google/protobuf/JavaType;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/JavaType;->$VALUES:[Landroid/net/connectivity/com/google/protobuf/JavaType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .param p5, "defaultDefault"    # Ljava/lang/Object;
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
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 51
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "boxedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Landroid/net/connectivity/com/google/protobuf/JavaType;->type:Ljava/lang/Class;

    .line 53
    iput-object p4, p0, Landroid/net/connectivity/com/google/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 54
    iput-object p5, p0, Landroid/net/connectivity/com/google/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/JavaType;
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

    .line 34
    const-class v0, Landroid/net/connectivity/com/google/protobuf/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/JavaType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/com/google/protobuf/JavaType;
    .registers 1

    .line 34
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/JavaType;->$VALUES:[Landroid/net/connectivity/com/google/protobuf/JavaType;

    invoke-virtual {v0}, [Landroid/net/connectivity/com/google/protobuf/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/com/google/protobuf/JavaType;

    return-object v0
.end method


# virtual methods
.method public blacklist getBoxedType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getDefaultDefault()Ljava/lang/Object;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/JavaType;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist isValidType(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 74
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/JavaType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
