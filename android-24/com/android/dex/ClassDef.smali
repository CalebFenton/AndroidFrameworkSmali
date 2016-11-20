.class public final Lcom/android/dex/ClassDef;
.super Ljava/lang/Object;
.source "ClassDef.java"


# static fields
.field public static final NO_INDEX:I = -0x1


# instance fields
.field private final accessFlags:I

.field private final annotationsOffset:I

.field private final buffer:Lcom/android/dex/Dex;

.field private final classDataOffset:I

.field private final interfacesOffset:I

.field private final offset:I

.field private final sourceFileIndex:I

.field private final staticValuesOffset:I

.field private final supertypeIndex:I

.field private final typeIndex:I


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;IIIIIIIII)V
    .locals 0
    .param p1, "buffer"    # Lcom/android/dex/Dex;
    .param p2, "offset"    # I
    .param p3, "typeIndex"    # I
    .param p4, "accessFlags"    # I
    .param p5, "supertypeIndex"    # I
    .param p6, "interfacesOffset"    # I
    .param p7, "sourceFileIndex"    # I
    .param p8, "annotationsOffset"    # I
    .param p9, "classDataOffset"    # I
    .param p10, "staticValuesOffset"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    #@5
    .line 39
    iput p2, p0, Lcom/android/dex/ClassDef;->offset:I

    #@7
    .line 40
    iput p3, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    #@9
    .line 41
    iput p4, p0, Lcom/android/dex/ClassDef;->accessFlags:I

    #@b
    .line 42
    iput p5, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    #@d
    .line 43
    iput p6, p0, Lcom/android/dex/ClassDef;->interfacesOffset:I

    #@f
    .line 44
    iput p7, p0, Lcom/android/dex/ClassDef;->sourceFileIndex:I

    #@11
    .line 45
    iput p8, p0, Lcom/android/dex/ClassDef;->annotationsOffset:I

    #@13
    .line 46
    iput p9, p0, Lcom/android/dex/ClassDef;->classDataOffset:I

    #@15
    .line 47
    iput p10, p0, Lcom/android/dex/ClassDef;->staticValuesOffset:I

    #@17
    .line 37
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget v0, p0, Lcom/android/dex/ClassDef;->accessFlags:I

    #@2
    return v0
.end method

.method public getAnnotationsOffset()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget v0, p0, Lcom/android/dex/ClassDef;->annotationsOffset:I

    #@2
    return v0
.end method

.method public getClassDataOffset()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Lcom/android/dex/ClassDef;->classDataOffset:I

    #@2
    return v0
.end method

.method public getInterfaces()[S
    .locals 2

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    #@2
    iget v1, p0, Lcom/android/dex/ClassDef;->interfacesOffset:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->readTypeList(I)Lcom/android/dex/TypeList;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/android/dex/TypeList;->getTypes()[S

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getInterfacesOffset()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Lcom/android/dex/ClassDef;->interfacesOffset:I

    #@2
    return v0
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget v0, p0, Lcom/android/dex/ClassDef;->offset:I

    #@2
    return v0
.end method

.method public getSourceFileIndex()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Lcom/android/dex/ClassDef;->sourceFileIndex:I

    #@2
    return v0
.end method

.method public getStaticValuesOffset()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Lcom/android/dex/ClassDef;->staticValuesOffset:I

    #@2
    return v0
.end method

.method public getSupertypeIndex()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    #@2
    return v0
.end method

.method public getTypeIndex()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget v2, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, " "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget v2, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    .line 96
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    #@28
    invoke-virtual {v1}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    #@2b
    move-result-object v1

    #@2c
    iget v2, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    #@2e
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljava/lang/String;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 97
    iget v1, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    #@39
    const/4 v2, -0x1

    #@3a
    if-eq v1, v2, :cond_1

    #@3c
    .line 98
    const-string/jumbo v1, " extends "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    iget-object v1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    #@45
    invoke-virtual {v1}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    #@48
    move-result-object v1

    #@49
    iget v3, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    #@4b
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v1

    #@4f
    check-cast v1, Ljava/lang/String;

    #@51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    return-object v1
.end method
