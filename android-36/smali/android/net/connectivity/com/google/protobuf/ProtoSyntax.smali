.class public final enum Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;
.super Ljava/lang/Enum;
.source "ProtoSyntax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

.field public static final enum blacklist PROTO2:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

.field public static final enum blacklist PROTO3:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;
    .registers 2

    .line 34
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->PROTO2:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->PROTO3:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    filled-new-array {v0, v1}, [Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->PROTO2:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    .line 37
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    const-string v1, "PROTO3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->PROTO3:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    .line 34
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->$values()[Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->$VALUES:[Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

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

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;
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
    const-class v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public static blacklist values()[Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;
    .registers 1

    .line 34
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->$VALUES:[Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    invoke-virtual {v0}, [Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    return-object v0
.end method
