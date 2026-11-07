.class abstract Lcom/android/framework/protobuf/ListFieldSchema;
.super Ljava/lang/Object;
.source "ListFieldSchema.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;,
        Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;
    }
.end annotation


# static fields
.field private static final blacklist FULL_INSTANCE:Lcom/android/framework/protobuf/ListFieldSchema;

.field private static final blacklist LITE_INSTANCE:Lcom/android/framework/protobuf/ListFieldSchema;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V

    sput-object v0, Lcom/android/framework/protobuf/ListFieldSchema;->FULL_INSTANCE:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 47
    new-instance v0, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V

    sput-object v0, Lcom/android/framework/protobuf/ListFieldSchema;->LITE_INSTANCE:Lcom/android/framework/protobuf/ListFieldSchema;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/framework/protobuf/ListFieldSchema$1;

    .line 42
    invoke-direct {p0}, Lcom/android/framework/protobuf/ListFieldSchema;-><init>()V

    return-void
.end method

.method static blacklist full()Lcom/android/framework/protobuf/ListFieldSchema;
    .registers 1

    .line 56
    sget-object v0, Lcom/android/framework/protobuf/ListFieldSchema;->FULL_INSTANCE:Lcom/android/framework/protobuf/ListFieldSchema;

    return-object v0
.end method

.method static blacklist lite()Lcom/android/framework/protobuf/ListFieldSchema;
    .registers 1

    .line 60
    sget-object v0, Lcom/android/framework/protobuf/ListFieldSchema;->LITE_INSTANCE:Lcom/android/framework/protobuf/ListFieldSchema;

    return-object v0
.end method


# virtual methods
.method abstract blacklist makeImmutableListAt(Ljava/lang/Object;J)V
.end method

.method abstract blacklist mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract blacklist mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method
