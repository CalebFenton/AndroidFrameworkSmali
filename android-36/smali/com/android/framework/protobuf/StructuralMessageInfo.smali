.class final Lcom/android/framework/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageInfo;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final blacklist checkInitialized:[I

.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final blacklist fields:[Lcom/android/framework/protobuf/FieldInfo;

.field private final blacklist messageSetWireFormat:Z

.field private final blacklist syntax:Lcom/android/framework/protobuf/ProtoSyntax;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/ProtoSyntax;Z[I[Lcom/android/framework/protobuf/FieldInfo;Ljava/lang/Object;)V
    .registers 7
    .param p1, "syntax"    # Lcom/android/framework/protobuf/ProtoSyntax;
    .param p2, "messageSetWireFormat"    # Z
    .param p3, "checkInitialized"    # [I
    .param p4, "fields"    # [Lcom/android/framework/protobuf/FieldInfo;
    .param p5, "defaultInstance"    # Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    .line 65
    iput-boolean p2, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    .line 66
    iput-object p3, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->checkInitialized:[I

    .line 67
    iput-object p4, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->fields:[Lcom/android/framework/protobuf/FieldInfo;

    .line 68
    const-string v0, "defaultInstance"

    invoke-static {p5, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 69
    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
    .registers 1

    .line 103
    new-instance v0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0}, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static blacklist newBuilder(I)Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
    .registers 2
    .param p0, "numFields"    # I

    .line 108
    new-instance v0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public blacklist getCheckInitialized()[I
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object v0
.end method

.method public blacklist getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method public blacklist getFields()[Lcom/android/framework/protobuf/FieldInfo;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->fields:[Lcom/android/framework/protobuf/FieldInfo;

    return-object v0
.end method

.method public blacklist getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public blacklist isMessageSetWireFormat()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return v0
.end method
