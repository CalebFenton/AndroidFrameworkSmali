.class final enum Lcom/android/framework/protobuf/FieldType$Collection;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Collection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/FieldType$Collection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/FieldType$Collection;

.field public static final enum blacklist MAP:Lcom/android/framework/protobuf/FieldType$Collection;

.field public static final enum blacklist PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

.field public static final enum blacklist SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

.field public static final enum blacklist VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;


# instance fields
.field private final blacklist isList:Z


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/framework/protobuf/FieldType$Collection;
    .registers 4

    .line 327
    sget-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v2, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v3, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/framework/protobuf/FieldType$Collection;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 328
    new-instance v0, Lcom/android/framework/protobuf/FieldType$Collection;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/framework/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    .line 329
    new-instance v0, Lcom/android/framework/protobuf/FieldType$Collection;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/framework/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    .line 330
    new-instance v0, Lcom/android/framework/protobuf/FieldType$Collection;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/framework/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    .line 331
    new-instance v0, Lcom/android/framework/protobuf/FieldType$Collection;

    const-string v1, "MAP"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/framework/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    .line 327
    invoke-static {}, Lcom/android/framework/protobuf/FieldType$Collection;->$values()[Lcom/android/framework/protobuf/FieldType$Collection;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->$VALUES:[Lcom/android/framework/protobuf/FieldType$Collection;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p3, "isList"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 336
    iput-boolean p3, p0, Lcom/android/framework/protobuf/FieldType$Collection;->isList:Z

    .line 337
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/FieldType$Collection;
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

    .line 327
    const-class v0, Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldType$Collection;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/FieldType$Collection;
    .registers 1

    .line 327
    sget-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->$VALUES:[Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/FieldType$Collection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/FieldType$Collection;

    return-object v0
.end method


# virtual methods
.method public blacklist isList()Z
    .registers 2

    .line 341
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldType$Collection;->isList:Z

    return v0
.end method
