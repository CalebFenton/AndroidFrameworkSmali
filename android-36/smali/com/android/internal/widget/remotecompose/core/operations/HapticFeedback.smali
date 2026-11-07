.class public Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "HapticFeedback.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "HapticFeedback"

.field private static final blacklist OP_CODE:I = 0xb1


# instance fields
.field private blacklist mHapticFeedbackType:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "hapticFeedbackType"    # I

    .line 39
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->mHapticFeedbackType:I

    .line 41
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .registers 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "hapticFeedbackType"    # I

    .line 80
    const/16 v0, 0xb1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 82
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 102
    const/16 v0, 0xb1

    const-string v1, "HapticFeedback"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 103
    const-string v1, "Generate an haptic feedback"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    const-string v2, "HapticFeedbackType"

    const-string v3, "Type of haptic feedback"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 105
    return-void
.end method

.method private blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 125
    const-string v0, "HAPTIC_FEEDBACK"

    return-object v0
.end method

.method public static blacklist id()I
    .registers 1

    .line 70
    const/16 v0, 0xb1

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 61
    const-string v0, "HapticFeedback"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 93
    .local v0, "hapticFeedbackType":I
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 109
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->mHapticFeedbackType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->hapticEffect(I)V

    .line 110
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 130
    const-string v0, "HapticFeedback"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->mHapticFeedbackType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hapticFeedbackType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 131
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->mHapticFeedbackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 121
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HapticFeedback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->mHapticFeedbackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 45
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->mHapticFeedbackType:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 46
    return-void
.end method
