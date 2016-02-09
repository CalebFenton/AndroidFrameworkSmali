.class public final Lcom/android/dex/MethodId;
.super Ljava/lang/Object;
.source "MethodId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dex/MethodId;",
        ">;"
    }
.end annotation


# instance fields
.field private final declaringClassIndex:I

.field private final dex:Lcom/android/dex/Dex;

.field private final nameIndex:I

.field private final protoIndex:I


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;III)V
    .locals 0
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "declaringClassIndex"    # I
    .param p3, "protoIndex"    # I
    .param p4, "nameIndex"    # I

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    #@5
    .line 29
    iput p2, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    #@7
    .line 30
    iput p3, p0, Lcom/android/dex/MethodId;->protoIndex:I

    #@9
    .line 31
    iput p4, p0, Lcom/android/dex/MethodId;->nameIndex:I

    #@b
    .line 27
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/MethodId;)I
    .locals 2
    .param p1, "other"    # Lcom/android/dex/MethodId;

    #@0
    .prologue
    .line 47
    iget v0, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    #@2
    iget v1, p1, Lcom/android/dex/MethodId;->declaringClassIndex:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 48
    iget v0, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    #@8
    iget v1, p1, Lcom/android/dex/MethodId;->declaringClassIndex:I

    #@a
    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 50
    :cond_0
    iget v0, p0, Lcom/android/dex/MethodId;->nameIndex:I

    #@11
    iget v1, p1, Lcom/android/dex/MethodId;->nameIndex:I

    #@13
    if-eq v0, v1, :cond_1

    #@15
    .line 51
    iget v0, p0, Lcom/android/dex/MethodId;->nameIndex:I

    #@17
    iget v1, p1, Lcom/android/dex/MethodId;->nameIndex:I

    #@19
    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 53
    :cond_1
    iget v0, p0, Lcom/android/dex/MethodId;->protoIndex:I

    #@20
    iget v1, p1, Lcom/android/dex/MethodId;->protoIndex:I

    #@22
    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 46
    check-cast p1, Lcom/android/dex/MethodId;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dex/MethodId;->compareTo(Lcom/android/dex/MethodId;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeclaringClassIndex()I
    .locals 1

    #@0
    .prologue
    .line 35
    iget v0, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    #@2
    return v0
.end method

.method public getNameIndex()I
    .locals 1

    #@0
    .prologue
    .line 43
    iget v0, p0, Lcom/android/dex/MethodId;->nameIndex:I

    #@2
    return v0
.end method

.method public getProtoIndex()I
    .locals 1

    #@0
    .prologue
    .line 39
    iget v0, p0, Lcom/android/dex/MethodId;->protoIndex:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget v1, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, " "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Lcom/android/dex/MethodId;->protoIndex:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, " "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget v1, p0, Lcom/android/dex/MethodId;->nameIndex:I

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0

    #@2e
    .line 66
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    iget-object v0, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    #@35
    invoke-virtual {v0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    #@38
    move-result-object v0

    #@39
    iget v2, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    #@3b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/lang/String;

    #@41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 67
    const-string/jumbo v1, "."

    #@48
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 67
    iget-object v0, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    #@4e
    invoke-virtual {v0}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    #@51
    move-result-object v0

    #@52
    iget v2, p0, Lcom/android/dex/MethodId;->nameIndex:I

    #@54
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Ljava/lang/String;

    #@5a
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 68
    iget-object v2, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    #@60
    iget-object v0, p0, Lcom/android/dex/MethodId;->dex:Lcom/android/dex/Dex;

    #@62
    invoke-virtual {v0}, Lcom/android/dex/Dex;->protoIds()Ljava/util/List;

    #@65
    move-result-object v0

    #@66
    iget v3, p0, Lcom/android/dex/MethodId;->protoIndex:I

    #@68
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v0

    #@6c
    check-cast v0, Lcom/android/dex/ProtoId;

    #@6e
    invoke-virtual {v0}, Lcom/android/dex/ProtoId;->getParametersOffset()I

    #@71
    move-result v0

    #@72
    invoke-virtual {v2, v0}, Lcom/android/dex/Dex;->readTypeList(I)Lcom/android/dex/TypeList;

    #@75
    move-result-object v0

    #@76
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    return-object v0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1
    .param p1, "out"    # Lcom/android/dex/Dex$Section;

    #@0
    .prologue
    .line 57
    iget v0, p0, Lcom/android/dex/MethodId;->declaringClassIndex:I

    #@2
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    #@5
    .line 58
    iget v0, p0, Lcom/android/dex/MethodId;->protoIndex:I

    #@7
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    #@a
    .line 59
    iget v0, p0, Lcom/android/dex/MethodId;->nameIndex:I

    #@c
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@f
    .line 56
    return-void
.end method
