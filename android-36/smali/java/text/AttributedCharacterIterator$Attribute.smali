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
.field public static final whitelist test-api INPUT_METHOD_SEGMENT:Ljava/text/AttributedCharacterIterator$Attribute;

.field public static final whitelist test-api LANGUAGE:Ljava/text/AttributedCharacterIterator$Attribute;

.field public static final whitelist test-api READING:Ljava/text/AttributedCharacterIterator$Attribute;

.field private static final greylist-max-o instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x7ee18bd932b8e8a4L


# instance fields
.field private greylist-max-o name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 100
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->instanceMap:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    const-string v1, "language"

    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->LANGUAGE:Ljava/text/AttributedCharacterIterator$Attribute;

    .line 187
    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    const-string v1, "reading"

    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->READING:Ljava/text/AttributedCharacterIterator$Attribute;

    .line 195
    new-instance v0, Ljava/text/AttributedCharacterIterator$Attribute;

    const-string v1, "input_method_segment"

    invoke-direct {v0, v1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->INPUT_METHOD_SEGMENT:Ljava/text/AttributedCharacterIterator$Attribute;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/AttributedCharacterIterator$Attribute;

    if-ne v0, v1, :cond_12

    .line 110
    sget-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_12
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 120
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 128
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/AttributedCharacterIterator$Attribute;

    if-ne v0, v1, :cond_1f

    .line 162
    sget-object v0, Ljava/text/AttributedCharacterIterator$Attribute;->instanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 163
    .local v0, "instance":Ljava/text/AttributedCharacterIterator$Attribute;
    if-eqz v0, :cond_17

    .line 164
    return-object v0

    .line 166
    :cond_17
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v0    # "instance":Ljava/text/AttributedCharacterIterator$Attribute;
    :cond_1f
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/AttributedCharacterIterator$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
