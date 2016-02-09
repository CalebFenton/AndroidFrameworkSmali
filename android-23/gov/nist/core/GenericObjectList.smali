.class public abstract Lgov/nist/core/GenericObjectList;
.super Ljava/util/LinkedList;
.source "GenericObjectList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lgov/nist/core/GenericObject;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final AND:Ljava/lang/String; = "&"

.field protected static final AT:Ljava/lang/String; = "@"

.field protected static final COLON:Ljava/lang/String; = ":"

.field protected static final COMMA:Ljava/lang/String; = ","

.field protected static final DOT:Ljava/lang/String; = "."

.field protected static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field protected static final EQUALS:Ljava/lang/String; = "="

.field protected static final GREATER_THAN:Ljava/lang/String; = ">"

.field protected static final HT:Ljava/lang/String; = "\t"

.field protected static final LESS_THAN:Ljava/lang/String; = "<"

.field protected static final LPAREN:Ljava/lang/String; = "("

.field protected static final NEWLINE:Ljava/lang/String; = "\r\n"

.field protected static final PERCENT:Ljava/lang/String; = "%"

.field protected static final POUND:Ljava/lang/String; = "#"

.field protected static final QUESTION:Ljava/lang/String; = "?"

.field protected static final QUOTE:Ljava/lang/String; = "\'"

.field protected static final RETURN:Ljava/lang/String; = "\n"

.field protected static final RPAREN:Ljava/lang/String; = ")"

.field protected static final SEMICOLON:Ljava/lang/String; = ";"

.field protected static final SLASH:Ljava/lang/String; = "/"

.field protected static final SP:Ljava/lang/String; = " "

.field protected static final STAR:Ljava/lang/String; = "*"


# instance fields
.field protected indentation:I

.field protected listName:Ljava/lang/String;

.field protected myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private myListIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<+",
            "Lgov/nist/core/GenericObject;",
            ">;"
        }
    .end annotation
.end field

.field protected separator:Ljava/lang/String;

.field private stringRep:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    #@3
    .line 145
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    #@6
    .line 146
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@b
    .line 147
    const-string/jumbo v0, ";"

    #@e
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    #@10
    .line 143
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "lname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    #@3
    .line 152
    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    #@5
    .line 150
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "lname"    # Ljava/lang/String;
    .param p2, "objclass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 176
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    #@3
    .line 177
    iput-object p2, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    #@5
    .line 175
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "lname"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    #@3
    .line 163
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 160
    :goto_0
    return-void

    #@a
    .line 164
    :catch_0
    move-exception v0

    #@b
    .line 165
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@e
    goto :goto_0
.end method

.method protected static isCloneable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 116
    instance-of v0, p0, Ljava/lang/Cloneable;

    #@2
    return v0
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 120
    .local p0, "other":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lgov/nist/core/GenericObjectList;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private sprint(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 253
    if-nez p1, :cond_0

    #@2
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@1b
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string/jumbo v1, "<null>\n"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@33
    .line 256
    return-void

    #@34
    .line 259
    :cond_0
    const-string/jumbo v0, "}"

    #@37
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    const-string/jumbo v0, "]"

    #@40
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@43
    move-result v0

    #@44
    if-nez v0, :cond_2

    #@46
    .line 260
    :cond_1
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    #@48
    add-int/lit8 v0, v0, -0x1

    #@4a
    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    #@4c
    .line 262
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@65
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@7a
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    const-string/jumbo v1, "\n"

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@92
    .line 265
    const-string/jumbo v0, "{"

    #@95
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@98
    move-result v0

    #@99
    if-eqz v0, :cond_3

    #@9b
    const-string/jumbo v0, "["

    #@9e
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@a1
    move-result v0

    #@a2
    if-nez v0, :cond_4

    #@a4
    .line 266
    :cond_3
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    #@a6
    add-int/lit8 v0, v0, 0x1

    #@a8
    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    #@aa
    .line 252
    :cond_4
    return-void
.end method


# virtual methods
.method public addFirst(Lgov/nist/core/GenericObject;)V
    .locals 1
    .param p1, "objToAdd"    # Lgov/nist/core/GenericObject;

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 307
    invoke-virtual {p1}, Lgov/nist/core/GenericObject;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    #@a
    .line 305
    :goto_0
    return-void

    #@b
    .line 309
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@e
    goto :goto_0
.end method

.method public bridge synthetic addFirst(Ljava/lang/Object;)V
    .locals 0
    .param p1, "objToAdd"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 305
    check-cast p1, Lgov/nist/core/GenericObject;

    #@2
    .end local p1    # "objToAdd":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addFirst(Lgov/nist/core/GenericObject;)V

    #@5
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 128
    invoke-super {p0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Lgov/nist/core/GenericObjectList;

    #@6
    .line 129
    .local v2, "retval":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v2}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@9
    move-result-object v0

    #@a
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/core/GenericObject;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 130
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lgov/nist/core/GenericObject;

    #@16
    invoke-virtual {v3}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lgov/nist/core/GenericObject;

    #@1c
    .line 132
    .local v1, "obj":Lgov/nist/core/GenericObject;
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@1f
    goto :goto_0

    #@20
    .line 134
    .end local v1    # "obj":Lgov/nist/core/GenericObject;
    :cond_0
    return-object v2
.end method

.method protected concatenate(Lgov/nist/core/GenericObjectList;)V
    .locals 1
    .param p1, "objList"    # Lgov/nist/core/GenericObjectList;

    #@0
    .prologue
    .line 227
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;Z)V

    #@4
    .line 226
    return-void
.end method

.method protected concatenate(Lgov/nist/core/GenericObjectList;Z)V
    .locals 1
    .param p1, "objList"    # Lgov/nist/core/GenericObjectList;
    .param p2, "topFlag"    # Z

    #@0
    .prologue
    .line 240
    if-nez p2, :cond_0

    #@2
    .line 241
    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 239
    :goto_0
    return-void

    #@6
    .line 244
    :cond_0
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0, p1}, Lgov/nist/core/GenericObjectList;->addAll(ILjava/util/Collection;)Z

    #@a
    goto :goto_0
.end method

.method public debugDump()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 275
    const-string/jumbo v1, ""

    #@3
    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@5
    .line 276
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    #@8
    move-result-object v0

    #@9
    .line 277
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@b
    .line 278
    const-string/jumbo v1, "<null>"

    #@e
    return-object v1

    #@f
    .line 279
    :cond_0
    const-string/jumbo v1, "listName:"

    #@12
    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    #@15
    .line 280
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    #@17
    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    #@1a
    .line 281
    const-string/jumbo v1, "{"

    #@1d
    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    #@20
    .line 282
    :goto_0
    if-eqz v0, :cond_1

    #@22
    .line 283
    const-string/jumbo v1, "["

    #@25
    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    #@28
    .line 284
    check-cast v0, Lgov/nist/core/GenericObject;

    #@2a
    .end local v0    # "obj":Ljava/lang/Object;
    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    #@2c
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    #@33
    .line 285
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    #@36
    move-result-object v0

    #@37
    .line 286
    .restart local v0    # "obj":Ljava/lang/Object;
    const-string/jumbo v1, "]"

    #@3a
    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    #@3d
    goto :goto_0

    #@3e
    .line 288
    :cond_1
    const-string/jumbo v1, "}"

    #@41
    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    #@44
    .line 289
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    #@46
    return-object v1
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # I

    #@0
    .prologue
    .line 298
    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    #@2
    .line 299
    .local v1, "save":I
    iput p1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    #@4
    .line 300
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->debugDump()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 301
    .local v0, "retval":Ljava/lang/String;
    iput v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    #@a
    .line 302
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 348
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->isEmpty()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 349
    const-string/jumbo v4, ""

    #@9
    return-object v4

    #@a
    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@f
    .line 351
    .local v0, "encoding":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@12
    move-result-object v2

    #@13
    .line 352
    .local v2, "iterator":Ljava/util/ListIterator;
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 354
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    .line 355
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lgov/nist/core/GenericObject;

    #@1f
    if-eqz v4, :cond_1

    #@21
    move-object v1, v3

    #@22
    .line 356
    check-cast v1, Lgov/nist/core/GenericObject;

    #@24
    .line 357
    .local v1, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 361
    .end local v1    # "gobj":Lgov/nist/core/GenericObject;
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 362
    iget-object v4, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    goto :goto_0

    #@37
    .line 359
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    goto :goto_1

    #@3f
    .line 367
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 401
    if-nez p1, :cond_0

    #@3
    return v8

    #@4
    .line 402
    :cond_0
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v6

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v7

    #@c
    invoke-virtual {v6, v7}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v6

    #@10
    if-nez v6, :cond_1

    #@12
    .line 403
    return v8

    #@13
    :cond_1
    move-object v5, p1

    #@14
    .line 404
    check-cast v5, Lgov/nist/core/GenericObjectList;

    #@16
    .line 405
    .local v5, "that":Lgov/nist/core/GenericObjectList;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->size()I

    #@19
    move-result v6

    #@1a
    invoke-virtual {v5}, Lgov/nist/core/GenericObjectList;->size()I

    #@1d
    move-result v7

    #@1e
    if-eq v6, v7, :cond_2

    #@20
    .line 406
    return v8

    #@21
    .line 407
    :cond_2
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@24
    move-result-object v3

    #@25
    .line 408
    .local v3, "myIterator":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_4

    #@2b
    .line 409
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    .line 410
    .local v4, "myobj":Ljava/lang/Object;
    invoke-virtual {v5}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@32
    move-result-object v1

    #@33
    .line 413
    .local v1, "hisIterator":Ljava/util/ListIterator;
    :cond_3
    :try_start_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    .line 414
    .local v2, "hisobj":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_3

    #@3d
    goto :goto_0

    #@3e
    .line 417
    .end local v2    # "hisobj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@3f
    .line 418
    .local v0, "ex":Ljava/util/NoSuchElementException;
    return v8

    #@40
    .line 421
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .end local v1    # "hisIterator":Ljava/util/ListIterator;
    .end local v4    # "myobj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v5}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@43
    move-result-object v1

    #@44
    .line 422
    .restart local v1    # "hisIterator":Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@47
    move-result v6

    #@48
    if-eqz v6, :cond_6

    #@4a
    .line 423
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    .line 424
    .restart local v2    # "hisobj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@51
    move-result-object v3

    #@52
    .line 427
    :cond_5
    :try_start_1
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v4

    #@56
    .line 428
    .restart local v4    # "myobj":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_5

    #@5c
    goto :goto_1

    #@5d
    .line 431
    .end local v4    # "myobj":Ljava/lang/Object;
    :catch_1
    move-exception v0

    #@5e
    .line 432
    .restart local v0    # "ex":Ljava/util/NoSuchElementException;
    return v8

    #@5f
    .line 435
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .end local v2    # "hisobj":Ljava/lang/Object;
    :cond_6
    const/4 v6, 0x1

    #@60
    return v6
.end method

.method protected first()Lgov/nist/core/GenericObject;
    .locals 2

    #@0
    .prologue
    .line 196
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObjectList;->listIterator(I)Ljava/util/ListIterator;

    #@4
    move-result-object v1

    #@5
    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    #@7
    .line 198
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    #@9
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    return-object v1

    #@10
    .line 199
    :catch_0
    move-exception v0

    #@11
    .line 200
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method protected getIndentation()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 107
    iget v1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    #@2
    new-array v0, v1, [C

    #@4
    .line 108
    .local v0, "chars":[C
    const/16 v1, 0x20

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    #@9
    .line 109
    new-instance v1, Ljava/lang/String;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@e
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 391
    const/16 v0, 0x2a

    #@2
    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 448
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v6

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_0

    #@f
    .line 449
    return v8

    #@10
    :cond_0
    move-object v4, p1

    #@11
    .line 450
    check-cast v4, Lgov/nist/core/GenericObjectList;

    #@13
    .line 451
    .local v4, "that":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v4}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@16
    move-result-object v0

    #@17
    .line 452
    .local v0, "hisIterator":Ljava/util/ListIterator;
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_3

    #@1d
    .line 453
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    .line 454
    .local v1, "hisobj":Ljava/lang/Object;
    const/4 v3, 0x0

    #@22
    .line 455
    .local v3, "myobj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@25
    move-result-object v2

    #@26
    .line 456
    .end local v3    # "myobj":Ljava/lang/Object;
    .local v2, "myIterator":Ljava/util/ListIterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_5

    #@2c
    .line 457
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    .line 458
    .restart local v3    # "myobj":Ljava/lang/Object;
    instance-of v5, v3, Lgov/nist/core/GenericObject;

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 459
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@36
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v7, "Trying to match  = "

    #@3e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    move-object v5, v3

    #@43
    .line 460
    check-cast v5, Lgov/nist/core/GenericObject;

    #@45
    invoke-virtual {v5}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    .line 459
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 461
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@57
    move-result-object v5

    #@58
    invoke-static {v5}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@5b
    move-result v5

    #@5c
    if-eqz v5, :cond_4

    #@5e
    move-object v5, v3

    #@5f
    .line 462
    check-cast v5, Lgov/nist/core/GenericObject;

    #@61
    invoke-virtual {v5, v1}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    #@64
    move-result v5

    #@65
    .line 461
    if-eqz v5, :cond_4

    #@67
    .line 471
    .end local v1    # "hisobj":Ljava/lang/Object;
    .end local v2    # "myIterator":Ljava/util/ListIterator;
    .end local v3    # "myobj":Ljava/lang/Object;
    :cond_3
    :goto_0
    const/4 v5, 0x1

    #@68
    return v5

    #@69
    .line 464
    .restart local v1    # "hisobj":Ljava/lang/Object;
    .restart local v2    # "myIterator":Ljava/util/ListIterator;
    .restart local v3    # "myobj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6c
    move-result-object v5

    #@6d
    invoke-static {v5}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    #@70
    move-result v5

    #@71
    if-eqz v5, :cond_1

    #@73
    move-object v5, v3

    #@74
    .line 465
    check-cast v5, Lgov/nist/core/GenericObjectList;

    #@76
    invoke-virtual {v5, v1}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    #@79
    move-result v5

    #@7a
    .line 464
    if-eqz v5, :cond_1

    #@7c
    goto :goto_0

    #@7d
    .line 468
    .end local v3    # "myobj":Ljava/lang/Object;
    :cond_5
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7f
    check-cast v1, Lgov/nist/core/GenericObject;

    #@81
    .end local v1    # "hisobj":Ljava/lang/Object;
    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@88
    .line 469
    return v8
.end method

.method public mergeObjects(Lgov/nist/core/GenericObjectList;)V
    .locals 5
    .param p1, "mergeList"    # Lgov/nist/core/GenericObjectList;

    #@0
    .prologue
    .line 328
    if-nez p1, :cond_0

    #@2
    .line 329
    return-void

    #@3
    .line 330
    :cond_0
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@6
    move-result-object v1

    #@7
    .line 331
    .local v1, "it1":Ljava/util/Iterator;
    invoke-virtual {p1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    #@a
    move-result-object v2

    #@b
    .line 332
    .local v2, "it2":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_2

    #@11
    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lgov/nist/core/GenericObject;

    #@17
    .line 334
    .local v3, "outerObj":Lgov/nist/core/GenericObject;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    .line 336
    .local v0, "innerObj":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    #@24
    goto :goto_0

    #@25
    .line 326
    .end local v0    # "innerObj":Ljava/lang/Object;
    .end local v3    # "outerObj":Lgov/nist/core/GenericObject;
    :cond_2
    return-void
.end method

.method protected next()Lgov/nist/core/GenericObject;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 208
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 209
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObjectList;->listIterator(I)Ljava/util/ListIterator;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    #@c
    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    #@e
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    return-object v1

    #@15
    .line 213
    :catch_0
    move-exception v0

    #@16
    .line 214
    .local v0, "ex":Ljava/util/NoSuchElementException;
    iput-object v2, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    #@18
    .line 215
    return-object v2
.end method

.method protected next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;
    .locals 2
    .param p1, "iterator"    # Ljava/util/ListIterator;

    #@0
    .prologue
    .line 185
    :try_start_0
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lgov/nist/core/GenericObject;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 186
    :catch_0
    move-exception v0

    #@8
    .line 187
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public setMyClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "cl"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 140
    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    #@2
    .line 139
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sep"    # Ljava/lang/String;

    #@0
    .prologue
    .line 385
    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    #@2
    .line 384
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 374
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
