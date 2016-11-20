.class public final Lcom/android/dex/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dex/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field private final dex:Lcom/android/dex/Dex;

.field private final encodedAnnotation:Lcom/android/dex/EncodedValue;

.field private final visibility:B


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;BLcom/android/dex/EncodedValue;)V
    .locals 0
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .param p2, "visibility"    # B
    .param p3, "encodedAnnotation"    # Lcom/android/dex/EncodedValue;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    iput-object p1, p0, Lcom/android/dex/Annotation;->dex:Lcom/android/dex/Dex;

    #@5
    .line 31
    iput-byte p2, p0, Lcom/android/dex/Annotation;->visibility:B

    #@7
    .line 32
    iput-object p3, p0, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    #@9
    .line 29
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/Annotation;)I
    .locals 2
    .param p1, "other"    # Lcom/android/dex/Annotation;

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    #@2
    iget-object v1, p1, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/dex/EncodedValue;->compareTo(Lcom/android/dex/EncodedValue;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 54
    check-cast p1, Lcom/android/dex/Annotation;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dex/Annotation;->compareTo(Lcom/android/dex/Annotation;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getReader()Lcom/android/dex/EncodedValueReader;
    .locals 3

    #@0
    .prologue
    .line 40
    new-instance v0, Lcom/android/dex/EncodedValueReader;

    #@2
    iget-object v1, p0, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    #@4
    const/16 v2, 0x1d

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/EncodedValue;I)V

    #@9
    return-object v0
.end method

.method public getTypeIndex()I
    .locals 2

    #@0
    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/dex/Annotation;->getReader()Lcom/android/dex/EncodedValueReader;

    #@3
    move-result-object v0

    #@4
    .line 45
    .local v0, "reader":Lcom/android/dex/EncodedValueReader;
    invoke-virtual {v0}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    #@7
    .line 46
    invoke-virtual {v0}, Lcom/android/dex/EncodedValueReader;->getAnnotationType()I

    #@a
    move-result v1

    #@b
    return v1
.end method

.method public getVisibility()B
    .locals 1

    #@0
    .prologue
    .line 36
    iget-byte v0, p0, Lcom/android/dex/Annotation;->visibility:B

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/dex/Annotation;->dex:Lcom/android/dex/Dex;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-byte v1, p0, Lcom/android/dex/Annotation;->visibility:B

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
    invoke-virtual {p0}, Lcom/android/dex/Annotation;->getTypeIndex()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 59
    :goto_0
    return-object v0

    #@23
    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    iget-byte v1, p0, Lcom/android/dex/Annotation;->visibility:B

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    const-string/jumbo v1, " "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget-object v0, p0, Lcom/android/dex/Annotation;->dex:Lcom/android/dex/Dex;

    #@37
    invoke-virtual {v0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {p0}, Lcom/android/dex/Annotation;->getTypeIndex()I

    #@3e
    move-result v2

    #@3f
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/lang/String;

    #@45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    goto :goto_0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1
    .param p1, "out"    # Lcom/android/dex/Dex$Section;

    #@0
    .prologue
    .line 50
    iget-byte v0, p0, Lcom/android/dex/Annotation;->visibility:B

    #@2
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeByte(I)V

    #@5
    .line 51
    iget-object v0, p0, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/dex/EncodedValue;->writeTo(Lcom/android/dex/Dex$Section;)V

    #@a
    .line 49
    return-void
.end method
