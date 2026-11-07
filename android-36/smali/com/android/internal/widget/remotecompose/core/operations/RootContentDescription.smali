.class public Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "RootContentDescription.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "RootContentDescription"

.field private static final blacklist OP_CODE:I = 0x67


# instance fields
.field blacklist mContentDescription:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "contentDescription"    # I

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    .line 47
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .registers 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "contentDescription"    # I

    .line 107
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 109
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 129
    const/16 v0, 0x67

    const-string v1, "RootContentDescription"

    const-string v2, "Protocol Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 130
    const-string v1, "Content description of root"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 131
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of Int"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 132
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 97
    const/16 v0, 0x67

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 88
    const-string v0, "RootContentDescription"

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

    .line 118
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 119
    .local v0, "contentDescription":I
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;-><init>(I)V

    .line 120
    .local v1, "header":Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setDocumentContentDescription(I)V

    .line 68
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isInterestingForSemantics()Z
    .registers 2

    .line 51
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 136
    const-string v0, "RootContentDescription"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contentDescriptionId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 137
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RootContentDescription "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 57
    return-void
.end method
