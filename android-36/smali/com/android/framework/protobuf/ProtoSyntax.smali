.class public final enum Lcom/android/framework/protobuf/ProtoSyntax;
.super Ljava/lang/Enum;
.source "ProtoSyntax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/ProtoSyntax;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/ProtoSyntax;

.field public static final enum blacklist PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

.field public static final enum blacklist PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/framework/protobuf/ProtoSyntax;
    .registers 2

    .line 34
    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    sget-object v1, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    filled-new-array {v0, v1}, [Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/android/framework/protobuf/ProtoSyntax;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    .line 37
    new-instance v0, Lcom/android/framework/protobuf/ProtoSyntax;

    const-string v1, "PROTO3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    .line 34
    invoke-static {}, Lcom/android/framework/protobuf/ProtoSyntax;->$values()[Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->$VALUES:[Lcom/android/framework/protobuf/ProtoSyntax;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/ProtoSyntax;
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
    const-class v0, Lcom/android/framework/protobuf/ProtoSyntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/ProtoSyntax;
    .registers 1

    .line 34
    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->$VALUES:[Lcom/android/framework/protobuf/ProtoSyntax;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/ProtoSyntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/ProtoSyntax;

    return-object v0
.end method
