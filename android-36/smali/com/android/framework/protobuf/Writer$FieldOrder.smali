.class public final enum Lcom/android/framework/protobuf/Writer$FieldOrder;
.super Ljava/lang/Enum;
.source "Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/Writer$FieldOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/Writer$FieldOrder;

.field public static final enum blacklist ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

.field public static final enum blacklist DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/framework/protobuf/Writer$FieldOrder;
    .registers 2

    .line 43
    sget-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    filled-new-array {v0, v1}, [Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    .line 48
    new-instance v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    const-string v1, "DESCENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    .line 43
    invoke-static {}, Lcom/android/framework/protobuf/Writer$FieldOrder;->$values()[Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/android/framework/protobuf/Writer$FieldOrder;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/Writer$FieldOrder;
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

    .line 43
    const-class v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/Writer$FieldOrder;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/android/framework/protobuf/Writer$FieldOrder;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/Writer$FieldOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method
