.class public Ljava/text/AttributedCharacterIterator$Attribute;
.super Ljava/lang/Object;
.source "AttributedCharacterIterator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedCharacterIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# static fields
.field public static final INPUT_METHOD_SEGMENT:Ljava/text/AttributedCharacterIterator$Attribute;

.field public static final LANGUAGE:Ljava/text/AttributedCharacterIterator$Attribute;

.field public static final READING:Ljava/text/AttributedCharacterIterator$Attribute;

.field private static final serialVersionUID:J = -0x7ee18bd932b8e8a4L


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@2
    const-string/jumbo v1, "input_method_segment"

    #@5
    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->INPUT_METHOD_SEGMENT:Ljava/text/AttributedCharacterIterator$Attribute;

    #@a
    .line 57
    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@c
    const-string/jumbo v1, "language"

    #@f
    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->LANGUAGE:Ljava/text/AttributedCharacterIterator$Attribute;

    #@14
    .line 65
    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@16
    const-string/jumbo v1, "reading"

    #@19
    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->READING:Ljava/text/AttributedCharacterIterator$Attribute;

    #@1e
    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    #@5
    .line 75
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 91
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 112
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@7
    move-result-object v4

    #@8
    const/4 v3, 0x0

    #@9
    array-length v5, v4

    #@a
    :goto_0
    if-ge v3, v5, :cond_1

    #@c
    aget-object v2, v4, v3

    #@e
    .line 131
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v7

    #@16
    if-ne v6, v7, :cond_0

    #@18
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    #@1b
    move-result v6

    #@1c
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_0

    #@22
    .line 132
    const/4 v6, 0x0

    #@23
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@29
    .line 133
    .local v0, "candidate":Ljava/text/AttributedCharacterIterator$Attribute;
    iget-object v6, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    #@2b
    iget-object v7, v0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_0

    #@33
    .line 134
    return-object v0

    #@34
    .line 130
    .end local v0    # "candidate":Ljava/text/AttributedCharacterIterator$Attribute;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_0

    #@37
    .line 138
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    #@38
    .line 140
    :cond_1
    new-instance v3, Ljava/io/InvalidObjectException;

    #@3a
    new-instance v4, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v5, "Failed to resolve "

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@51
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const/16 v1, 0x28

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const/16 v1, 0x29

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
