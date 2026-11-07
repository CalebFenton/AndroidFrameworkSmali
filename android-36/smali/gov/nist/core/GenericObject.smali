.class public abstract Lgov/nist/core/GenericObject;
.super Ljava/lang/Object;
.source "GenericObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


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

.field static final greylist immutableClassNames:[Ljava/lang/String;

.field protected static final greylist immutableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected greylist indentation:I

.field protected greylist matchExpression:Lgov/nist/core/Match;

.field protected greylist stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 11

    .line 73
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    .line 74
    const-string v9, "Float"

    const-string v10, "Double"

    const-string v2, "String"

    const-string v3, "Character"

    const-string v4, "Boolean"

    const-string v5, "Byte"

    const-string v6, "Short"

    const-string v7, "Integer"

    const-string v8, "Long"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    :try_start_22
    sget-object v1, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4a

    .line 87
    sget-object v1, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java.lang."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_47} :catch_4c

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 90
    .end local v0    # "i":I
    :cond_4a
    nop

    .line 91
    return-void

    .line 88
    :catch_4c
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor greylist <init>()V
    .registers 2

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 294
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public static greylist getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 128
    :catch_5
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 130
    const/4 v1, 0x0

    return-object v1
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

    .line 136
    .local p0, "other":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lgov/nist/core/GenericObject;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static greylist makeClone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;

    .line 148
    if-eqz p0, :cond_d0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 151
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .line 152
    .local v1, "clone_obj":Ljava/lang/Object;
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 153
    return-object p0

    .line 154
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 156
    .local v2, "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_28

    .line 157
    move-object v3, p0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_86

    .line 159
    :cond_28
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_34

    .line 160
    move-object v3, p0

    check-cast v3, [C

    invoke-virtual {v3}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_3f

    .line 161
    :cond_34
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_3f

    .line 162
    move-object v3, p0

    check-cast v3, [Z

    invoke-virtual {v3}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    .line 163
    :cond_3f
    :goto_3f
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_4b

    .line 164
    move-object v3, p0

    check-cast v3, [B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_86

    .line 165
    :cond_4b
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_57

    .line 166
    move-object v3, p0

    check-cast v3, [S

    invoke-virtual {v3}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_86

    .line 167
    :cond_57
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_63

    .line 168
    move-object v3, p0

    check-cast v3, [I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_86

    .line 169
    :cond_63
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_6f

    .line 170
    move-object v3, p0

    check-cast v3, [J

    invoke-virtual {v3}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_86

    .line 171
    :cond_6f
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_7b

    .line 172
    move-object v3, p0

    check-cast v3, [F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_86

    .line 173
    :cond_7b
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_86

    .line 174
    move-object v3, p0

    check-cast v3, [D

    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    .line 176
    .end local v2    # "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_86
    :goto_86
    goto :goto_cf

    :cond_87
    const-class v2, Lgov/nist/core/GenericObject;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 177
    move-object v2, p0

    check-cast v2, Lgov/nist/core/GenericObject;

    invoke-virtual {v2}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_cf

    .line 178
    :cond_97
    const-class v2, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 179
    move-object v2, p0

    check-cast v2, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v2}, Lgov/nist/core/GenericObjectList;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_cf

    .line 180
    :cond_a7
    const-class v2, Ljava/lang/Cloneable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 184
    :try_start_af
    const-string v2, "clone"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 185
    .local v2, "meth":Ljava/lang/reflect/Method;
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_c0
    .catch Ljava/lang/SecurityException; {:try_start_af .. :try_end_c0} :catch_cd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_af .. :try_end_c0} :catch_c8
    .catch Ljava/lang/IllegalAccessException; {:try_start_af .. :try_end_c0} :catch_c6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_af .. :try_end_c0} :catch_c4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_af .. :try_end_c0} :catch_c2

    move-object v1, v3

    .line 192
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    :goto_c1
    goto :goto_cf

    .line 191
    :catch_c2
    move-exception v2

    goto :goto_cf

    .line 190
    :catch_c4
    move-exception v2

    goto :goto_c1

    .line 189
    :catch_c6
    move-exception v2

    goto :goto_c1

    .line 187
    :catch_c8
    move-exception v2

    .line 188
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_c1

    .line 186
    :catch_cd
    move-exception v2

    goto :goto_c1

    .line 194
    :cond_cf
    :goto_cf
    return-object v1

    .line 149
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clone_obj":Ljava/lang/Object;
    :cond_d0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null obj!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 201
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 202
    :catch_5
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected greylist dbgPrint()V
    .registers 2

    .line 394
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method protected greylist dbgPrint(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 401
    invoke-static {p1}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public greylist debugDump()Ljava/lang/String;
    .registers 14

    .line 594
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 595
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 596
    .local v0, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 597
    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 599
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    array-length v4, v2

    const-string v5, "}"

    if-ge v3, v4, :cond_1a2

    .line 600
    aget-object v4, v2, v3

    .line 602
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 603
    .local v6, "modifier":I
    and-int/lit8 v7, v6, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2b

    .line 604
    goto/16 :goto_19e

    .line 605
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 606
    .local v7, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 607
    .local v8, "fieldName":Ljava/lang/String;
    const-string v9, "stringRepresentation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3d

    .line 609
    goto/16 :goto_19e

    .line 611
    :cond_3d
    const-string v9, "indentation"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_47

    .line 613
    goto/16 :goto_19e

    .line 615
    :cond_47
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 618
    :try_start_5d
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 619
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 620
    .local v5, "fname":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 621
    const-string v9, "int"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8b

    .line 622
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    .line 623
    .local v9, "intfield":I
    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(I)V

    .line 624
    .end local v9    # "intfield":I
    goto :goto_ec

    :cond_8b
    const-string v9, "short"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9b

    .line 625
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v9

    .line 626
    .local v9, "shortField":S
    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(S)V

    .line 627
    .end local v9    # "shortField":S
    goto :goto_ec

    :cond_9b
    const-string v9, "char"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_ab

    .line 628
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v9

    .line 629
    .local v9, "charField":C
    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(C)V

    .line 630
    .end local v9    # "charField":C
    goto :goto_ec

    :cond_ab
    const-string v9, "long"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_bb

    .line 631
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v9

    .line 632
    .local v9, "longField":J
    invoke-virtual {p0, v9, v10}, Lgov/nist/core/GenericObject;->sprint(J)V

    .line 633
    .end local v9    # "longField":J
    goto :goto_ec

    :cond_bb
    const-string v9, "boolean"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_cb

    .line 634
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v9

    .line 635
    .local v9, "booleanField":Z
    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(Z)V

    .line 636
    .end local v9    # "booleanField":Z
    goto :goto_ec

    :cond_cb
    const-string v9, "double"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_db

    .line 637
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v9

    .line 638
    .local v9, "doubleField":D
    invoke-virtual {p0, v9, v10}, Lgov/nist/core/GenericObject;->sprint(D)V

    .end local v9    # "doubleField":D
    goto :goto_eb

    .line 639
    :cond_db
    const-string v9, "float"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_eb

    .line 640
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v9

    .line 641
    .local v9, "floatField":F
    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(F)V

    goto :goto_ec

    .line 639
    .end local v9    # "floatField":F
    :cond_eb
    :goto_eb
    nop

    .line 643
    .end local v5    # "fname":Ljava/lang/String;
    :goto_ec
    goto/16 :goto_196

    :cond_ee
    const-class v9, Lgov/nist/core/GenericObject;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9
    :try_end_f4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_f4} :catch_19c
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_f4} :catch_197

    const-string v11, "<null>"

    if-eqz v9, :cond_117

    .line 644
    :try_start_f8
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_112

    .line 645
    nop

    .line 646
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/core/GenericObject;

    iget v9, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v5

    .line 645
    invoke-virtual {p0, v5}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_196

    .line 649
    :cond_112
    invoke-virtual {p0, v11}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_196

    .line 652
    :cond_117
    const-class v9, Lgov/nist/core/GenericObjectList;

    .line 653
    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_13c

    .line 654
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_138

    .line 655
    nop

    .line 656
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/core/GenericObjectList;

    iget v9, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v5

    .line 655
    invoke-virtual {p0, v5}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_196

    .line 659
    :cond_138
    invoke-virtual {p0, v11}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_196

    .line 665
    :cond_13c
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_163

    .line 666
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_17b

    .line 668
    :cond_163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 671
    :goto_17b
    invoke-virtual {p0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_190

    .line 673
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_193

    .line 675
    :cond_190
    invoke-virtual {p0, v11}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 677
    :goto_193
    invoke-virtual {p0, v5}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V
    :try_end_196
    .catch Ljava/lang/IllegalAccessException; {:try_start_f8 .. :try_end_196} :catch_19c
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_196} :catch_197

    .line 683
    :goto_196
    goto :goto_19e

    .line 681
    :catch_197
    move-exception v5

    .line 682
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_19e

    .line 679
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_19c
    move-exception v5

    .line 680
    .local v5, "ex1":Ljava/lang/IllegalAccessException;
    nop

    .line 599
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v6    # "modifier":I
    .end local v7    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldName":Ljava/lang/String;
    :goto_19e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_19

    .line 685
    .end local v3    # "i":I
    :cond_1a2
    invoke-virtual {p0, v5}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method

.method public greylist debugDump(I)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # I

    .line 693
    iput p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 694
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "retval":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 696
    return-object v0
.end method

.method public abstract greylist encode()Ljava/lang/String;
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 710
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 21
    .param p1, "that"    # Ljava/lang/Object;

    .line 410
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_8

    return v3

    .line 411
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 412
    return v3

    .line 413
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 414
    .local v0, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v4

    move-object v4, v0

    .line 416
    .end local v0    # "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_21
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 417
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 418
    .local v7, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_2b
    array-length v0, v6

    const/4 v9, 0x1

    if-ge v8, v0, :cond_12e

    .line 419
    aget-object v10, v6, v8

    .line 420
    .local v10, "f":Ljava/lang/reflect/Field;
    aget-object v11, v7, v8

    .line 422
    .local v11, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 423
    .local v12, "modifier":I
    and-int/lit8 v0, v12, 0x2

    const/4 v13, 0x2

    if-ne v0, v13, :cond_3e

    .line 424
    goto/16 :goto_12a

    .line 425
    :cond_3e
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 426
    .local v13, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 427
    .local v14, "fieldName":Ljava/lang/String;
    const-string v0, "stringRepresentation"

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_50

    .line 428
    goto/16 :goto_12a

    .line 430
    :cond_50
    const-string v0, "indentation"

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5a

    .line 431
    goto/16 :goto_12a

    .line 435
    :cond_5a
    :try_start_5a
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 436
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "fname":Ljava/lang/String;
    const-string v9, "int"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_77

    .line 438
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    if-eq v9, v15, :cond_ef

    .line 439
    return v3

    .line 440
    :cond_77
    const-string v9, "short"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8a

    .line 441
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v9

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v9, v15, :cond_ef

    .line 442
    return v3

    .line 443
    :cond_8a
    const-string v9, "char"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9d

    .line 444
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v9

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v9, v15, :cond_ef

    .line 445
    return v3

    .line 446
    :cond_9d
    const-string v9, "long"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_b2

    .line 447
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v15

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    cmp-long v9, v15, v17

    if-eqz v9, :cond_ef

    .line 448
    return v3

    .line 449
    :cond_b2
    const-string v9, "boolean"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_c5

    .line 450
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v9, v15, :cond_ef

    .line 451
    return v3

    .line 452
    :cond_c5
    const-string v9, "double"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_da

    .line 453
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v15

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v17

    cmpl-double v9, v15, v17

    if-eqz v9, :cond_ef

    .line 454
    return v3

    .line 455
    :cond_da
    const-string v9, "float"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_ef

    .line 456
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v9

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v9, v9, v15

    if-eqz v9, :cond_ef

    .line 457
    return v3

    .line 459
    .end local v0    # "fname":Ljava/lang/String;
    :cond_ef
    goto :goto_125

    :cond_f0
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-ne v0, v15, :cond_fb

    .line 460
    return v9

    .line 461
    :cond_fb
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_102

    .line 462
    return v3

    .line 463
    :cond_102
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_109

    .line 464
    return v3

    .line 465
    :cond_109
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_116

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_116

    .line 466
    return v3

    .line 467
    :cond_116
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_122
    .catch Ljava/lang/IllegalAccessException; {:try_start_5a .. :try_end_122} :catch_126

    if-nez v0, :cond_125

    .line 468
    return v3

    .line 471
    :cond_125
    :goto_125
    goto :goto_12a

    .line 469
    :catch_126
    move-exception v0

    .line 470
    .local v0, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 418
    .end local v0    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v10    # "f":Ljava/lang/reflect/Field;
    .end local v11    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    .end local v13    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldName":Ljava/lang/String;
    :goto_12a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2b

    .line 473
    .end local v8    # "i":I
    :cond_12e
    const-class v0, Lgov/nist/core/GenericObject;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 474
    nop

    .line 481
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "hisfields":[Ljava/lang/reflect/Field;
    return v9

    .line 476
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    .restart local v7    # "hisfields":[Ljava/lang/reflect/Field;
    :cond_138
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 477
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 480
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    .end local v7    # "hisfields":[Ljava/lang/reflect/Field;
    goto/16 :goto_21
.end method

.method protected greylist getIndentation()Ljava/lang/String;
    .registers 3

    .line 298
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    new-array v0, v0, [C

    .line 299
    .local v0, "chars":[C
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 300
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public greylist getMatcher()Lgov/nist/core/Match;
    .registers 2

    .line 122
    iget-object v0, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    return-object v0
.end method

.method public greylist match(Ljava/lang/Object;)Z
    .registers 23
    .param p1, "other"    # Ljava/lang/Object;

    .line 494
    move-object/from16 v1, p0

    const/4 v2, 0x1

    if-nez p1, :cond_6

    .line 495
    return v2

    .line 496
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_16

    .line 497
    return v3

    .line 498
    :cond_16
    move-object/from16 v4, p1

    check-cast v4, Lgov/nist/core/GenericObject;

    .line 499
    .local v4, "that":Lgov/nist/core/GenericObject;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 500
    .local v5, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 501
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 502
    .local v7, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 503
    .local v8, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_2c
    array-length v0, v6

    if-ge v9, v0, :cond_189

    .line 504
    aget-object v10, v6, v9

    .line 505
    .local v10, "f":Ljava/lang/reflect/Field;
    aget-object v11, v8, v9

    .line 507
    .local v11, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    .line 508
    .local v12, "modifier":I
    and-int/lit8 v0, v12, 0x2

    const/4 v13, 0x2

    if-ne v0, v13, :cond_42

    .line 509
    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_181

    .line 510
    :cond_42
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 511
    .local v13, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    .line 512
    .local v14, "fieldName":Ljava/lang/String;
    const-string v0, "stringRepresentation"

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_58

    .line 513
    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_181

    .line 515
    :cond_58
    const-string v0, "indentation"

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_66

    .line 516
    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_181

    .line 520
    :cond_66
    :try_start_66
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 521
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "fname":Ljava/lang/String;
    const-string v15, "int"

    invoke-virtual {v0, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_85

    .line 523
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15
    :try_end_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_66 .. :try_end_7c} :catch_179

    move/from16 v16, v2

    :try_start_7e
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    if-eq v15, v2, :cond_ff

    .line 524
    return v3

    .line 525
    :cond_85
    move/from16 v16, v2

    const-string v2, "short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9a

    .line 526
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v15

    if-eq v2, v15, :cond_ff

    .line 527
    return v3

    .line 528
    :cond_9a
    const-string v2, "char"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ad

    .line 529
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v15

    if-eq v2, v15, :cond_ff

    .line 530
    return v3

    .line 531
    :cond_ad
    const-string v2, "long"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c2

    .line 532
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    cmp-long v2, v17, v19

    if-eqz v2, :cond_ff

    .line 533
    return v3

    .line 534
    :cond_c2
    const-string v2, "boolean"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d5

    .line 535
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v15

    if-eq v2, v15, :cond_ff

    .line 536
    return v3

    .line 537
    :cond_d5
    const-string v2, "double"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ea

    .line 538
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v17

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    cmpl-double v2, v17, v19

    if-eqz v2, :cond_ff

    .line 539
    return v3

    .line 540
    :cond_ea
    const-string v2, "float"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ff

    .line 541
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v15

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_ff

    .line 542
    return v3

    .line 544
    .end local v0    # "fname":Ljava/lang/String;
    :cond_ff
    move/from16 v17, v3

    goto/16 :goto_174

    .line 545
    :cond_103
    move/from16 v16, v2

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 546
    .local v0, "myObj":Ljava/lang/Object;
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 547
    .local v2, "hisObj":Ljava/lang/Object;
    if-eqz v2, :cond_112

    if-nez v0, :cond_112

    .line 548
    return v3

    .line 549
    :cond_112
    if-nez v2, :cond_11a

    if-eqz v0, :cond_11a

    .line 550
    move/from16 v17, v3

    goto/16 :goto_181

    .line 551
    :cond_11a
    if-nez v2, :cond_121

    if-nez v0, :cond_121

    .line 552
    move/from16 v17, v3

    goto :goto_181

    .line 553
    :cond_121
    instance-of v15, v2, Ljava/lang/String;

    if-eqz v15, :cond_148

    instance-of v15, v0, Ljava/lang/String;

    if-eqz v15, :cond_148

    .line 556
    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15
    :try_end_130
    .catch Ljava/lang/IllegalAccessException; {:try_start_7e .. :try_end_130} :catch_177

    move/from16 v17, v3

    :try_start_132
    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 557
    goto :goto_181

    .line 558
    :cond_13b
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 559
    invoke-virtual {v3, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_174

    .line 561
    return v17

    .line 553
    :cond_148
    move/from16 v17, v3

    .line 562
    nop

    .line 563
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_15f

    move-object v3, v0

    check-cast v3, Lgov/nist/core/GenericObject;

    .line 564
    invoke-virtual {v3, v2}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15f

    .line 565
    return v17

    .line 566
    :cond_15f
    nop

    .line 567
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_174

    move-object v3, v0

    check-cast v3, Lgov/nist/core/GenericObjectList;

    .line 568
    invoke-virtual {v3, v2}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z

    move-result v3
    :try_end_171
    .catch Ljava/lang/IllegalAccessException; {:try_start_132 .. :try_end_171} :catch_175

    if-nez v3, :cond_174

    .line 569
    return v17

    .line 574
    .end local v0    # "myObj":Ljava/lang/Object;
    .end local v2    # "hisObj":Ljava/lang/Object;
    :cond_174
    :goto_174
    goto :goto_181

    .line 572
    :catch_175
    move-exception v0

    goto :goto_17e

    :catch_177
    move-exception v0

    goto :goto_17c

    :catch_179
    move-exception v0

    move/from16 v16, v2

    :goto_17c
    move/from16 v17, v3

    .line 573
    .local v0, "ex1":Ljava/lang/IllegalAccessException;
    :goto_17e
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 503
    .end local v0    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v10    # "f":Ljava/lang/reflect/Field;
    .end local v11    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    .end local v13    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldName":Ljava/lang/String;
    :goto_181
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    goto/16 :goto_2c

    :cond_189
    move/from16 v16, v2

    .line 576
    .end local v9    # "i":I
    return v16
.end method

.method public greylist merge(Ljava/lang/Object;)V
    .registers 12
    .param p1, "mergeObject"    # Ljava/lang/Object;

    .line 219
    if-nez p1, :cond_3

    .line 220
    return-void

    .line 222
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 227
    .local v0, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_15
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 228
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, v1

    if-ge v2, v3, :cond_e5

    .line 229
    aget-object v3, v1, v2

    .line 230
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 231
    .local v4, "modifier":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 232
    goto/16 :goto_e1

    .line 233
    :cond_2b
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 234
    goto/16 :goto_e1

    .line 235
    :cond_33
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 236
    goto/16 :goto_e1

    .line 238
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 239
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "fname":Ljava/lang/String;
    :try_start_43
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 243
    const-string v7, "int"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5a

    .line 244
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 245
    .local v7, "intfield":I
    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 246
    .end local v7    # "intfield":I
    goto/16 :goto_db

    :cond_5a
    const-string v7, "short"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6b

    .line 247
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    .line 248
    .local v7, "shortField":S
    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    .line 249
    .end local v7    # "shortField":S
    goto/16 :goto_db

    :cond_6b
    const-string v7, "char"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7b

    .line 250
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v7

    .line 251
    .local v7, "charField":C
    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    .line 252
    .end local v7    # "charField":C
    goto :goto_db

    :cond_7b
    const-string v7, "long"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_8b

    .line 253
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    .line 254
    .local v7, "longField":J
    invoke-virtual {v3, p0, v7, v8}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 255
    .end local v7    # "longField":J
    goto :goto_db

    :cond_8b
    const-string v7, "boolean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9b

    .line 256
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    .line 257
    .local v7, "booleanField":Z
    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 258
    .end local v7    # "booleanField":Z
    goto :goto_db

    :cond_9b
    const-string v7, "double"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_ab

    .line 259
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v7

    .line 260
    .local v7, "doubleField":D
    invoke-virtual {v3, p0, v7, v8}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    .end local v7    # "doubleField":D
    goto :goto_bb

    .line 261
    :cond_ab
    const-string v7, "float"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_bb

    .line 262
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    .line 263
    .local v7, "floatField":F
    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 264
    .end local v7    # "floatField":F
    goto :goto_db

    .line 261
    :cond_bb
    :goto_bb
    goto :goto_db

    .line 266
    :cond_bc
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 267
    .local v7, "obj":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 268
    .local v8, "mobj":Ljava/lang/Object;
    if-nez v8, :cond_c7

    .line 269
    goto :goto_e1

    .line 270
    :cond_c7
    if-nez v7, :cond_cd

    .line 271
    invoke-virtual {v3, p0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    goto :goto_e1

    .line 274
    :cond_cd
    instance-of v9, v7, Lgov/nist/core/GenericObject;

    if-eqz v9, :cond_d8

    .line 275
    move-object v9, v7

    check-cast v9, Lgov/nist/core/GenericObject;

    .line 276
    .local v9, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v9, v8}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    .line 277
    .end local v9    # "gobj":Lgov/nist/core/GenericObject;
    goto :goto_db

    .line 278
    :cond_d8
    invoke-virtual {v3, p0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_db
    .catch Ljava/lang/IllegalAccessException; {:try_start_43 .. :try_end_db} :catch_dc

    .line 284
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "mobj":Ljava/lang/Object;
    :goto_db
    goto :goto_e1

    .line 281
    :catch_dc
    move-exception v7

    .line 282
    .local v7, "ex1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 283
    nop

    .line 228
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "modifier":I
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fname":Ljava/lang/String;
    .end local v7    # "ex1":Ljava/lang/IllegalAccessException;
    :goto_e1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a

    .line 286
    .end local v2    # "i":I
    :cond_e5
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 287
    const-class v2, Lgov/nist/core/GenericObject;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 288
    nop

    .line 290
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    return-void

    .line 289
    :cond_f3
    goto/16 :goto_15

    .line 223
    .end local v0    # "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad override object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMatcher(Lgov/nist/core/Match;)V
    .registers 4
    .param p1, "matchExpression"    # Lgov/nist/core/Match;

    .line 113
    if-eqz p1, :cond_5

    .line 115
    iput-object p1, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    .line 116
    return-void

    .line 114
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null arg!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist sprint(C)V
    .registers 3
    .param p1, "charField"    # C

    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method protected greylist sprint(D)V
    .registers 4
    .param p1, "doubleField"    # D

    .line 378
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method protected greylist sprint(F)V
    .registers 3
    .param p1, "floatField"    # F

    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method protected greylist sprint(I)V
    .registers 3
    .param p1, "intField"    # I

    .line 338
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method protected greylist sprint(J)V
    .registers 4
    .param p1, "longField"    # J

    .line 362
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method protected greylist sprint(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method protected greylist sprint(Ljava/lang/String;)V
    .registers 4
    .param p1, "a"    # Ljava/lang/String;

    .line 308
    if-nez p1, :cond_33

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<null>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 311
    return-void

    .line 313
    :cond_33
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_49

    .line 314
    :cond_43
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 316
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 319
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a4

    .line 320
    :cond_9e
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 323
    :cond_a4
    return-void
.end method

.method protected greylist sprint(S)V
    .registers 3
    .param p1, "shortField"    # S

    .line 345
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method protected greylist sprint(Z)V
    .registers 3
    .param p1, "booleanField"    # Z

    .line 370
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 371
    return-void
.end method
