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

.field private static final instanceMap:Ljava/util/Map;

.field private static final serialVersionUID:J = -0x7ee18bd932b8e8a4L


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@6
    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->instanceMap:Ljava/util/Map;

    #@8
    .line 166
    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@a
    const-string/jumbo v1, "language"

    #@d
    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    #@10
    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->LANGUAGE:Ljava/text/AttributedCharacterIterator$Attribute;

    #@12
    .line 177
    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@14
    const-string/jumbo v1, "reading"

    #@17
    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    #@1a
    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->READING:Ljava/text/AttributedCharacterIterator$Attribute;

    #@1c
    .line 185
    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@1e
    const-string/jumbo v1, "input_method_segment"

    #@21
    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    #@24
    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->INPUT_METHOD_SEGMENT:Ljava/text/AttributedCharacterIterator$Attribute;

    #@26
    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    iput-object p1, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    #@5
    .line 107
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    const-class v1, Ljava/text/AttributedCharacterIterator$Attribute;

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 108
    sget-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->instanceMap:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 118
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 126
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    const-class v2, Ljava/text/AttributedCharacterIterator$Attribute;

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 150
    new-instance v1, Ljava/io/InvalidObjectException;

    #@a
    const-string/jumbo v2, "subclass didn\'t correctly implement readResolve"

    #@d
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 153
    :cond_0
    sget-object v1, Ljava/text/AttributedCharacterIterator$Attribute;->instanceMap:Ljava/util/Map;

    #@13
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@1d
    .line 154
    .local v0, "instance":Ljava/text/AttributedCharacterIterator$Attribute;
    if-eqz v0, :cond_1

    #@1f
    .line 155
    return-object v0

    #@20
    .line 157
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    #@22
    const-string/jumbo v2, "unknown attribute name"

    #@25
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 135
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
    const-string/jumbo v1, "("

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, ")"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
