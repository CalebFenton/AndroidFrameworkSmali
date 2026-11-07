.class public final enum Lcom/android/framework/protobuf/WireFormat$JavaType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JavaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/WireFormat$JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/WireFormat$JavaType;

.field public static final enum blacklist BOOLEAN:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field public static final enum blacklist BYTE_STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field public static final enum blacklist DOUBLE:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field public static final enum blacklist ENUM:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field public static final enum blacklist FLOAT:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field public static final enum blacklist INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field public static final enum blacklist LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field public static final enum blacklist MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field public static final enum blacklist STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;


# instance fields
.field private final blacklist defaultDefault:Ljava/lang/Object;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/framework/protobuf/WireFormat$JavaType;
    .registers 9

    .line 84
    sget-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    sget-object v3, Lcom/android/framework/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    sget-object v4, Lcom/android/framework/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/android/framework/protobuf/WireFormat$JavaType;

    sget-object v5, Lcom/android/framework/protobuf/WireFormat$JavaType;->STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    sget-object v6, Lcom/android/framework/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    sget-object v7, Lcom/android/framework/protobuf/WireFormat$JavaType;->ENUM:Lcom/android/framework/protobuf/WireFormat$JavaType;

    sget-object v8, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    filled-new-array/range {v0 .. v8}, [Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 85
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/framework/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 86
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/android/framework/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 87
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "FLOAT"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v2}, Lcom/android/framework/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 88
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "DOUBLE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v2}, Lcom/android/framework/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 89
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    const/4 v2, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/framework/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 90
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    const/4 v1, 0x5

    const-string v2, ""

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/framework/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 91
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    const/4 v1, 0x6

    sget-object v2, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    const-string v3, "BYTE_STRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/framework/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 92
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/framework/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->ENUM:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 93
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/framework/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 84
    invoke-static {}, Lcom/android/framework/protobuf/WireFormat$JavaType;->$values()[Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/android/framework/protobuf/WireFormat$JavaType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .param p3, "defaultDefault"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/android/framework/protobuf/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/WireFormat$JavaType;
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

    .line 84
    const-class v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/WireFormat$JavaType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/WireFormat$JavaType;
    .registers 1

    .line 84
    sget-object v0, Lcom/android/framework/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/WireFormat$JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/WireFormat$JavaType;

    return-object v0
.end method


# virtual methods
.method blacklist getDefaultDefault()Ljava/lang/Object;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/framework/protobuf/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method
