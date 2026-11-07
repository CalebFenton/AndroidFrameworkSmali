.class public abstract Lgov/nist/core/GenericObjectList;
.super Ljava/util/LinkedList;
.source "GenericObjectList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lgov/nist/core/GenericObject;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final greylist AND:Ljava/lang/String; = "&"

.field protected static final greylist AT:Ljava/lang/String; = "@"

.field protected static final greylist COLON:Ljava/lang/String; = ":"

.field protected static final greylist COMMA:Ljava/lang/String; = ","

.field protected static final greylist DOT:Ljava/lang/String; = "."

.field protected static final greylist DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field protected static final greylist EQUALS:Ljava/lang/String; = "="

.field protected static final greylist GREATER_THAN:Ljava/lang/String; = ">"

.field protected static final greylist HT:Ljava/lang/String; = "\t"

.field protected static final greylist LESS_THAN:Ljava/lang/String; = "<"

.field protected static final greylist LPAREN:Ljava/lang/String; = "("

.field protected static final greylist NEWLINE:Ljava/lang/String; = "\r\n"

.field protected static final greylist PERCENT:Ljava/lang/String; = "%"

.field protected static final greylist POUND:Ljava/lang/String; = "#"

.field protected static final greylist QUESTION:Ljava/lang/String; = "?"

.field protected static final greylist QUOTE:Ljava/lang/String; = "\'"

.field protected static final greylist RETURN:Ljava/lang/String; = "\n"

.field protected static final greylist RPAREN:Ljava/lang/String; = ")"

.field protected static final greylist SEMICOLON:Ljava/lang/String; = ";"

.field protected static final greylist SLASH:Ljava/lang/String; = "/"

.field protected static final greylist SP:Ljava/lang/String; = " "

.field protected static final greylist STAR:Ljava/lang/String; = "*"


# instance fields
.field protected greylist indentation:I

.field protected greylist listName:Ljava/lang/String;

.field protected greylist myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist myListIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "+",
            "Lgov/nist/core/GenericObject;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist separator:Ljava/lang/String;

.field private greylist stringRep:Ljava/lang/String;


# direct methods
.method protected constructor greylist <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 147
    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    .line 148
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "lname"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lgov/nist/core/GenericObjectList;-><init>()V

    .line 152
    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .param p1, "lname"    # Ljava/lang/String;
    .param p2, "objclass"    # Ljava/lang/Class;

    .line 176
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    .line 177
    iput-object p2, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    .line 178
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "lname"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lgov/nist/core/GenericObjectList;-><init>(Ljava/lang/String;)V

    .line 163
    :try_start_3
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_9} :catch_a

    .line 166
    goto :goto_e

    .line 164
    :catch_a
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 168
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_e
    return-void
.end method

.method protected static greylist isCloneable(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 116
    instance-of v0, p0, Ljava/lang/Cloneable;

    return v0
.end method

.method public static greylist isMySubclass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 120
    .local p0, "other":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private greylist sprint(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 253
    if-nez p1, :cond_33

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<null>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 256
    return-void

    .line 259
    :cond_33
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_49

    .line 260
    :cond_43
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    .line 262
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 265
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a4

    .line 266
    :cond_9e
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    .line 268
    :cond_a4
    return-void
.end method


# virtual methods
.method public greylist addFirst(Lgov/nist/core/GenericObject;)V
    .registers 3
    .param p1, "objToAdd"    # Lgov/nist/core/GenericObject;

    .line 306
    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    if-nez v0, :cond_b

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    goto :goto_e

    .line 309
    :cond_b
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 311
    :goto_e
    return-void
.end method

.method public bridge synthetic whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    check-cast p1, Lgov/nist/core/GenericObject;

    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addFirst(Lgov/nist/core/GenericObject;)V

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 128
    invoke-super {p0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/GenericObjectList;

    .line 129
    .local v0, "retval":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/core/GenericObject;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 130
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/GenericObject;

    .line 131
    invoke-virtual {v2}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/GenericObject;

    .line 132
    .local v2, "obj":Lgov/nist/core/GenericObject;
    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 133
    .end local v2    # "obj":Lgov/nist/core/GenericObject;
    goto :goto_a

    .line 134
    .end local v1    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/core/GenericObject;>;"
    :cond_20
    return-object v0
.end method

.method protected greylist concatenate(Lgov/nist/core/GenericObjectList;)V
    .registers 3
    .param p1, "objList"    # Lgov/nist/core/GenericObjectList;

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgov/nist/core/GenericObjectList;->concatenate(Lgov/nist/core/GenericObjectList;Z)V

    .line 228
    return-void
.end method

.method protected greylist concatenate(Lgov/nist/core/GenericObjectList;Z)V
    .registers 4
    .param p1, "objList"    # Lgov/nist/core/GenericObjectList;
    .param p2, "topFlag"    # Z

    .line 240
    if-nez p2, :cond_6

    .line 241
    invoke-virtual {p0, p1}, Lgov/nist/core/GenericObjectList;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    .line 244
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgov/nist/core/GenericObjectList;->addAll(ILjava/util/Collection;)Z

    .line 246
    :goto_a
    return-void
.end method

.method public greylist debugDump()Ljava/lang/String;
    .registers 4

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->first()Lgov/nist/core/GenericObject;

    move-result-object v0

    .line 277
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_d

    .line 278
    const-string v1, "<null>"

    return-object v1

    .line 279
    :cond_d
    const-string v1, "listName:"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->listName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 281
    const-string v1, "{"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 282
    :goto_1c
    if-eqz v0, :cond_39

    .line 283
    const-string v1, "["

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 284
    move-object v1, v0

    check-cast v1, Lgov/nist/core/GenericObject;

    iget v2, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    invoke-virtual {v1, v2}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->next()Lgov/nist/core/GenericObject;

    move-result-object v0

    .line 286
    const-string v1, "]"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    goto :goto_1c

    .line 288
    :cond_39
    const-string v1, "}"

    invoke-direct {p0, v1}, Lgov/nist/core/GenericObjectList;->sprint(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lgov/nist/core/GenericObjectList;->stringRep:Ljava/lang/String;

    return-object v1
.end method

.method public greylist debugDump(I)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # I

    .line 298
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    .line 299
    .local v0, "save":I
    iput p1, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    .line 300
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->debugDump()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "retval":Ljava/lang/String;
    iput v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    .line 302
    return-object v1
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 6

    .line 348
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 349
    const-string v0, ""

    return-object v0

    .line 350
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    .local v0, "encoding":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 352
    .local v1, "iterator":Ljava/util/ListIterator;
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 354
    :goto_18
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 355
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lgov/nist/core/GenericObject;

    if-eqz v3, :cond_2b

    .line 356
    move-object v3, v2

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 357
    .local v3, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v3}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    .end local v3    # "gobj":Lgov/nist/core/GenericObject;
    goto :goto_32

    .line 359
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    :goto_32
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 362
    iget-object v3, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    .end local v2    # "obj":Ljava/lang/Object;
    goto :goto_18

    .line 367
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 401
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 402
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 403
    return v0

    .line 404
    :cond_13
    move-object v1, p1

    check-cast v1, Lgov/nist/core/GenericObjectList;

    .line 405
    .local v1, "that":Lgov/nist/core/GenericObjectList;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->size()I

    move-result v2

    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->size()I

    move-result v3

    if-eq v2, v3, :cond_21

    .line 406
    return v0

    .line 407
    :cond_21
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 408
    .local v2, "myIterator":Ljava/util/ListIterator;
    :goto_25
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 409
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 410
    .local v3, "myobj":Ljava/lang/Object;
    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 413
    .local v4, "hisIterator":Ljava/util/ListIterator;
    :goto_33
    :try_start_33
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 414
    .local v5, "hisobj":Ljava/lang/Object;
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3b
    .catch Ljava/util/NoSuchElementException; {:try_start_33 .. :try_end_3b} :catch_41

    if-eqz v6, :cond_40

    .line 415
    nop

    .line 419
    .end local v5    # "hisobj":Ljava/lang/Object;
    nop

    .line 420
    .end local v3    # "myobj":Ljava/lang/Object;
    .end local v4    # "hisIterator":Ljava/util/ListIterator;
    goto :goto_25

    .line 416
    .restart local v3    # "myobj":Ljava/lang/Object;
    .restart local v4    # "hisIterator":Ljava/util/ListIterator;
    :cond_40
    goto :goto_33

    .line 417
    :catch_41
    move-exception v5

    .line 418
    .local v5, "ex":Ljava/util/NoSuchElementException;
    return v0

    .line 421
    .end local v3    # "myobj":Ljava/lang/Object;
    .end local v4    # "hisIterator":Ljava/util/ListIterator;
    .end local v5    # "ex":Ljava/util/NoSuchElementException;
    :cond_43
    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 422
    .local v3, "hisIterator":Ljava/util/ListIterator;
    :goto_47
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 423
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 424
    .local v4, "hisobj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 427
    :goto_55
    :try_start_55
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 428
    .local v5, "myobj":Ljava/lang/Object;
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5d
    .catch Ljava/util/NoSuchElementException; {:try_start_55 .. :try_end_5d} :catch_63

    if-eqz v6, :cond_62

    .line 429
    nop

    .line 433
    .end local v5    # "myobj":Ljava/lang/Object;
    nop

    .line 434
    .end local v4    # "hisobj":Ljava/lang/Object;
    goto :goto_47

    .line 430
    .restart local v4    # "hisobj":Ljava/lang/Object;
    :cond_62
    goto :goto_55

    .line 431
    :catch_63
    move-exception v5

    .line 432
    .local v5, "ex":Ljava/util/NoSuchElementException;
    return v0

    .line 435
    .end local v4    # "hisobj":Ljava/lang/Object;
    .end local v5    # "ex":Ljava/util/NoSuchElementException;
    :cond_65
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist first()Lgov/nist/core/GenericObject;
    .registers 3

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObjectList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    .line 198
    :try_start_7
    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/GenericObject;
    :try_end_f
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    .line 199
    :catch_10
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected greylist getIndentation()Ljava/lang/String;
    .registers 3

    .line 107
    iget v0, p0, Lgov/nist/core/GenericObjectList;->indentation:I

    new-array v0, v0, [C

    .line 108
    .local v0, "chars":[C
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 109
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 391
    const/16 v0, 0x2a

    return v0
.end method

.method public greylist match(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "other"    # Ljava/lang/Object;

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 449
    return v1

    .line 450
    :cond_10
    move-object v0, p1

    check-cast v0, Lgov/nist/core/GenericObjectList;

    .line 451
    .local v0, "that":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 452
    .local v2, "hisIterator":Ljava/util/ListIterator;
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 453
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 454
    .local v3, "hisobj":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 455
    .local v4, "myobj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 456
    .local v5, "myIterator":Ljava/util/ListIterator;
    :cond_26
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 457
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 458
    instance-of v6, v4, Lgov/nist/core/GenericObject;

    if-eqz v6, :cond_53

    .line 459
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to match  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Lgov/nist/core/GenericObject;

    .line 460
    invoke-virtual {v8}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 459
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    :cond_53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_67

    move-object v6, v4

    check-cast v6, Lgov/nist/core/GenericObject;

    .line 462
    invoke-virtual {v6, v3}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 463
    goto :goto_88

    .line 464
    :cond_67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_26

    move-object v6, v4

    check-cast v6, Lgov/nist/core/GenericObjectList;

    .line 465
    invoke-virtual {v6, v3}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 466
    goto :goto_88

    .line 468
    :cond_7b
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v7, v3

    check-cast v7, Lgov/nist/core/GenericObject;

    invoke-virtual {v7}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    return v1

    .line 471
    .end local v3    # "hisobj":Ljava/lang/Object;
    .end local v4    # "myobj":Ljava/lang/Object;
    .end local v5    # "myIterator":Ljava/util/ListIterator;
    :cond_88
    :goto_88
    const/4 v1, 0x1

    return v1
.end method

.method public greylist mergeObjects(Lgov/nist/core/GenericObjectList;)V
    .registers 6
    .param p1, "mergeList"    # Lgov/nist/core/GenericObjectList;

    .line 328
    if-nez p1, :cond_3

    .line 329
    return-void

    .line 330
    :cond_3
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 331
    .local v0, "it1":Ljava/util/Iterator;
    invoke-virtual {p1}, Lgov/nist/core/GenericObjectList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 332
    .local v1, "it2":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/GenericObject;

    .line 334
    .local v2, "outerObj":Lgov/nist/core/GenericObject;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 336
    .local v3, "innerObj":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    .line 337
    .end local v3    # "innerObj":Ljava/lang/Object;
    goto :goto_17

    .line 338
    .end local v2    # "outerObj":Lgov/nist/core/GenericObject;
    :cond_25
    goto :goto_b

    .line 339
    :cond_26
    return-void
.end method

.method protected greylist next()Lgov/nist/core/GenericObject;
    .registers 3

    .line 208
    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    if-nez v0, :cond_b

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObjectList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    .line 212
    :cond_b
    :try_start_b
    iget-object v0, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/GenericObject;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_13} :catch_14

    return-object v0

    .line 213
    :catch_14
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/core/GenericObjectList;->myListIterator:Ljava/util/ListIterator;

    .line 215
    return-object v1
.end method

.method protected greylist next(Ljava/util/ListIterator;)Lgov/nist/core/GenericObject;
    .registers 4
    .param p1, "iterator"    # Ljava/util/ListIterator;

    .line 185
    :try_start_0
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/GenericObject;
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 186
    :catch_7
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist setMyClass(Ljava/lang/Class;)V
    .registers 2
    .param p1, "cl"    # Ljava/lang/Class;

    .line 140
    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->myClass:Ljava/lang/Class;

    .line 141
    return-void
.end method

.method public greylist setSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "sep"    # Ljava/lang/String;

    .line 385
    iput-object p1, p0, Lgov/nist/core/GenericObjectList;->separator:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 374
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
