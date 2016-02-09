.class public abstract Lgov/nist/core/GenericObject;
.super Ljava/lang/Object;
.source "GenericObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


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

.field static final immutableClassNames:[Ljava/lang/String;

.field protected static final immutableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected indentation:I

.field protected matchExpression:Lgov/nist/core/Match;

.field protected stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 73
    new-instance v2, Ljava/util/HashSet;

    #@2
    const/16 v3, 0xa

    #@4
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    #@7
    sput-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    #@9
    .line 74
    const/16 v2, 0x9

    #@b
    new-array v2, v2, [Ljava/lang/String;

    #@d
    .line 75
    const-string/jumbo v3, "String"

    #@10
    const/4 v4, 0x0

    #@11
    aput-object v3, v2, v4

    #@13
    const-string/jumbo v3, "Character"

    #@16
    const/4 v4, 0x1

    #@17
    aput-object v3, v2, v4

    #@19
    .line 76
    const-string/jumbo v3, "Boolean"

    #@1c
    const/4 v4, 0x2

    #@1d
    aput-object v3, v2, v4

    #@1f
    const-string/jumbo v3, "Byte"

    #@22
    const/4 v4, 0x3

    #@23
    aput-object v3, v2, v4

    #@25
    const-string/jumbo v3, "Short"

    #@28
    const/4 v4, 0x4

    #@29
    aput-object v3, v2, v4

    #@2b
    const-string/jumbo v3, "Integer"

    #@2e
    const/4 v4, 0x5

    #@2f
    aput-object v3, v2, v4

    #@31
    const-string/jumbo v3, "Long"

    #@34
    const/4 v4, 0x6

    #@35
    aput-object v3, v2, v4

    #@37
    .line 77
    const-string/jumbo v3, "Float"

    #@3a
    const/4 v4, 0x7

    #@3b
    aput-object v3, v2, v4

    #@3d
    const-string/jumbo v3, "Double"

    #@40
    const/16 v4, 0x8

    #@42
    aput-object v3, v2, v4

    #@44
    .line 74
    sput-object v2, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    #@46
    .line 86
    const/4 v1, 0x0

    #@47
    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    #@49
    array-length v2, v2

    #@4a
    if-ge v1, v2, :cond_0

    #@4c
    .line 87
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    #@4e
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v4, "java.lang."

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    sget-object v4, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    #@5c
    aget-object v4, v4, v1

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@69
    move-result-object v3

    #@6a
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 86
    add-int/lit8 v1, v1, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 88
    :catch_0
    move-exception v0

    #@71
    .line 89
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@73
    const-string/jumbo v3, "Internal error"

    #@76
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@79
    throw v2

    #@7a
    .line 48
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 293
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    #@6
    .line 294
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@b
    .line 292
    return-void
.end method

.method public static getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 128
    :catch_0
    move-exception v0

    #@6
    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@9
    .line 130
    const/4 v1, 0x0

    #@a
    return-object v1
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
    .line 136
    .local p0, "other":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lgov/nist/core/GenericObject;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static makeClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 148
    if-nez p0, :cond_0

    #@2
    .line 149
    new-instance v9, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v10, "null obj!"

    #@7
    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v9

    #@b
    .line 150
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    .line 151
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    #@10
    .line 152
    .local v1, "clone_obj":Ljava/lang/Object;
    sget-object v9, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    #@12
    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v9

    #@16
    if-eqz v9, :cond_1

    #@18
    .line 153
    return-object p0

    #@19
    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@1c
    move-result v9

    #@1d
    if-eqz v9, :cond_b

    #@1f
    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@22
    move-result-object v2

    #@23
    .line 156
    .local v2, "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    #@26
    move-result v9

    #@27
    if-nez v9, :cond_3

    #@29
    .line 157
    check-cast p0, [Ljava/lang/Object;

    #@2b
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    .line 194
    .end local v2    # "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_0
    return-object v1

    #@30
    .line 159
    .restart local v2    # "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@32
    if-ne v2, v9, :cond_5

    #@34
    move-object v9, p0

    #@35
    .line 160
    check-cast v9, [C

    #@37
    invoke-virtual {v9}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    .line 163
    :cond_4
    :goto_1
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@3d
    if-ne v2, v9, :cond_6

    #@3f
    .line 164
    check-cast p0, [B

    #@41
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    goto :goto_0

    #@46
    .line 161
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@48
    if-ne v2, v9, :cond_4

    #@4a
    move-object v9, p0

    #@4b
    .line 162
    check-cast v9, [Z

    #@4d
    invoke-virtual {v9}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    goto :goto_1

    #@52
    .line 165
    :cond_6
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@54
    if-ne v2, v9, :cond_7

    #@56
    .line 166
    check-cast p0, [S

    #@58
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    goto :goto_0

    #@5d
    .line 167
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_7
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@5f
    if-ne v2, v9, :cond_8

    #@61
    .line 168
    check-cast p0, [I

    #@63
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@66
    move-result-object v1

    #@67
    goto :goto_0

    #@68
    .line 169
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@6a
    if-ne v2, v9, :cond_9

    #@6c
    .line 170
    check-cast p0, [J

    #@6e
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@71
    move-result-object v1

    #@72
    goto :goto_0

    #@73
    .line 171
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@75
    if-ne v2, v9, :cond_a

    #@77
    .line 172
    check-cast p0, [F

    #@79
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7c
    move-result-object v1

    #@7d
    goto :goto_0

    #@7e
    .line 173
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_a
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@80
    if-ne v2, v9, :cond_2

    #@82
    .line 174
    check-cast p0, [D

    #@84
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@87
    move-result-object v1

    #@88
    goto :goto_0

    #@89
    .line 176
    .end local v2    # "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_b
    const-class v9, Lgov/nist/core/GenericObject;

    #@8b
    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@8e
    move-result v9

    #@8f
    if-eqz v9, :cond_c

    #@91
    .line 177
    check-cast p0, Lgov/nist/core/GenericObject;

    #@93
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    #@96
    move-result-object v1

    #@97
    goto :goto_0

    #@98
    .line 178
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_c
    const-class v9, Lgov/nist/core/GenericObjectList;

    #@9a
    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9d
    move-result v9

    #@9e
    if-eqz v9, :cond_d

    #@a0
    .line 179
    check-cast p0, Lgov/nist/core/GenericObjectList;

    #@a2
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->clone()Ljava/lang/Object;

    #@a5
    move-result-object v1

    #@a6
    goto :goto_0

    #@a7
    .line 180
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_d
    const-class v9, Ljava/lang/Cloneable;

    #@a9
    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@ac
    move-result v9

    #@ad
    if-eqz v9, :cond_2

    #@af
    .line 184
    :try_start_0
    const-string/jumbo v10, "clone"

    #@b2
    const/4 v9, 0x0

    #@b3
    check-cast v9, [Ljava/lang/Class;

    #@b5
    invoke-virtual {v0, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b8
    move-result-object v8

    #@b9
    .line 185
    .local v8, "meth":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    #@ba
    check-cast v9, [Ljava/lang/Object;

    #@bc
    invoke-virtual {v8, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    #@bf
    move-result-object v1

    #@c0
    goto/16 :goto_0

    #@c2
    .line 187
    .end local v8    # "meth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    #@c3
    .line 188
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 186
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    #@c9
    .local v6, "ex":Ljava/lang/SecurityException;
    goto/16 :goto_0

    #@cb
    .line 189
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    #@cc
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    goto/16 :goto_0

    #@ce
    .line 190
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v7

    #@cf
    .local v7, "ex":Ljava/lang/reflect/InvocationTargetException;
    goto/16 :goto_0

    #@d1
    .line 191
    .end local v7    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v5

    #@d2
    .local v5, "ex":Ljava/lang/NoSuchMethodException;
    goto/16 :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 201
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 202
    :catch_0
    move-exception v0

    #@6
    .line 203
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "Internal error"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1
.end method

.method protected dbgPrint()V
    .locals 1

    #@0
    .prologue
    .line 394
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    #@7
    .line 393
    return-void
.end method

.method protected dbgPrint(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 401
    invoke-static {p1}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    #@3
    .line 400
    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .locals 25

    #@0
    .prologue
    .line 594
    const-string/jumbo v23, ""

    #@3
    move-object/from16 v0, v23

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@9
    .line 595
    invoke-virtual/range {p0 .. p0}, Lgov/nist/core/GenericObject;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v21

    #@d
    .line 596
    .local v21, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10
    move-result-object v23

    #@11
    move-object/from16 v0, p0

    #@13
    move-object/from16 v1, v23

    #@15
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@18
    .line 597
    const-string/jumbo v23, "{"

    #@1b
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, v23

    #@1f
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@22
    .line 598
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@25
    move-result-object v13

    #@26
    .line 599
    .local v13, "fields":[Ljava/lang/reflect/Field;
    const/16 v16, 0x0

    #@28
    .local v16, "i":I
    :goto_0
    array-length v0, v13

    #@29
    move/from16 v23, v0

    #@2b
    move/from16 v0, v16

    #@2d
    move/from16 v1, v23

    #@2f
    if-ge v0, v1, :cond_f

    #@31
    .line 600
    aget-object v10, v13, v16

    #@33
    .line 602
    .local v10, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    #@36
    move-result v20

    #@37
    .line 603
    .local v20, "modifier":I
    and-int/lit8 v23, v20, 0x2

    #@39
    const/16 v24, 0x2

    #@3b
    move/from16 v0, v23

    #@3d
    move/from16 v1, v24

    #@3f
    if-ne v0, v1, :cond_1

    #@41
    .line 599
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    #@43
    goto :goto_0

    #@44
    .line 605
    :cond_1
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@47
    move-result-object v12

    #@48
    .line 606
    .local v12, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@4b
    move-result-object v11

    #@4c
    .line 607
    .local v11, "fieldName":Ljava/lang/String;
    const-string/jumbo v23, "stringRepresentation"

    #@4f
    move-object/from16 v0, v23

    #@51
    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@54
    move-result v23

    #@55
    if-eqz v23, :cond_0

    #@57
    .line 611
    const-string/jumbo v23, "indentation"

    #@5a
    move-object/from16 v0, v23

    #@5c
    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@5f
    move-result v23

    #@60
    if-eqz v23, :cond_0

    #@62
    .line 615
    new-instance v23, Ljava/lang/StringBuilder;

    #@64
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    move-object/from16 v0, v23

    #@69
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v23

    #@6d
    const-string/jumbo v24, ":"

    #@70
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v23

    #@74
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v23

    #@78
    move-object/from16 v0, p0

    #@7a
    move-object/from16 v1, v23

    #@7c
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@7f
    .line 618
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    #@82
    move-result v23

    #@83
    if-eqz v23, :cond_8

    #@85
    .line 619
    invoke-virtual {v12}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@88
    move-result-object v15

    #@89
    .line 620
    .local v15, "fname":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    move-object/from16 v0, v23

    #@90
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v23

    #@94
    const-string/jumbo v24, ":"

    #@97
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v23

    #@9b
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v23

    #@9f
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, v23

    #@a3
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@a6
    .line 621
    const-string/jumbo v23, "int"

    #@a9
    move-object/from16 v0, v23

    #@ab
    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@ae
    move-result v23

    #@af
    if-nez v23, :cond_2

    #@b1
    .line 622
    move-object/from16 v0, p0

    #@b3
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@b6
    move-result v17

    #@b7
    .line 623
    .local v17, "intfield":I
    move-object/from16 v0, p0

    #@b9
    move/from16 v1, v17

    #@bb
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(I)V

    #@be
    goto :goto_1

    #@bf
    .line 679
    .end local v15    # "fname":Ljava/lang/String;
    .end local v17    # "intfield":I
    :catch_0
    move-exception v9

    #@c0
    .local v9, "ex1":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@c1
    .line 624
    .end local v9    # "ex1":Ljava/lang/IllegalAccessException;
    .restart local v15    # "fname":Ljava/lang/String;
    :cond_2
    const-string/jumbo v23, "short"

    #@c4
    move-object/from16 v0, v23

    #@c6
    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@c9
    move-result v23

    #@ca
    if-nez v23, :cond_3

    #@cc
    .line 625
    move-object/from16 v0, p0

    #@ce
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@d1
    move-result v22

    #@d2
    .line 626
    .local v22, "shortField":S
    move-object/from16 v0, p0

    #@d4
    move/from16 v1, v22

    #@d6
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(S)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@d9
    goto/16 :goto_1

    #@db
    .line 681
    .end local v15    # "fname":Ljava/lang/String;
    .end local v22    # "shortField":S
    :catch_1
    move-exception v8

    #@dc
    .line 682
    .local v8, "ex":Ljava/lang/Exception;
    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@df
    goto/16 :goto_1

    #@e1
    .line 627
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v15    # "fname":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v23, "char"

    #@e4
    move-object/from16 v0, v23

    #@e6
    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@e9
    move-result v23

    #@ea
    if-nez v23, :cond_4

    #@ec
    .line 628
    move-object/from16 v0, p0

    #@ee
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@f1
    move-result v5

    #@f2
    .line 629
    .local v5, "charField":C
    move-object/from16 v0, p0

    #@f4
    invoke-virtual {v0, v5}, Lgov/nist/core/GenericObject;->sprint(C)V

    #@f7
    goto/16 :goto_1

    #@f9
    .line 630
    .end local v5    # "charField":C
    :cond_4
    const-string/jumbo v23, "long"

    #@fc
    move-object/from16 v0, v23

    #@fe
    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@101
    move-result v23

    #@102
    if-nez v23, :cond_5

    #@104
    .line 631
    move-object/from16 v0, p0

    #@106
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@109
    move-result-wide v18

    #@10a
    .line 632
    .local v18, "longField":J
    move-object/from16 v0, p0

    #@10c
    move-wide/from16 v1, v18

    #@10e
    invoke-virtual {v0, v1, v2}, Lgov/nist/core/GenericObject;->sprint(J)V

    #@111
    goto/16 :goto_1

    #@113
    .line 633
    .end local v18    # "longField":J
    :cond_5
    const-string/jumbo v23, "boolean"

    #@116
    move-object/from16 v0, v23

    #@118
    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@11b
    move-result v23

    #@11c
    if-nez v23, :cond_6

    #@11e
    .line 634
    move-object/from16 v0, p0

    #@120
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@123
    move-result v4

    #@124
    .line 635
    .local v4, "booleanField":Z
    move-object/from16 v0, p0

    #@126
    invoke-virtual {v0, v4}, Lgov/nist/core/GenericObject;->sprint(Z)V

    #@129
    goto/16 :goto_1

    #@12b
    .line 636
    .end local v4    # "booleanField":Z
    :cond_6
    const-string/jumbo v23, "double"

    #@12e
    move-object/from16 v0, v23

    #@130
    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@133
    move-result v23

    #@134
    if-nez v23, :cond_7

    #@136
    .line 637
    move-object/from16 v0, p0

    #@138
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@13b
    move-result-wide v6

    #@13c
    .line 638
    .local v6, "doubleField":D
    move-object/from16 v0, p0

    #@13e
    invoke-virtual {v0, v6, v7}, Lgov/nist/core/GenericObject;->sprint(D)V

    #@141
    goto/16 :goto_1

    #@143
    .line 639
    .end local v6    # "doubleField":D
    :cond_7
    const-string/jumbo v23, "float"

    #@146
    move-object/from16 v0, v23

    #@148
    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@14b
    move-result v23

    #@14c
    if-nez v23, :cond_0

    #@14e
    .line 640
    move-object/from16 v0, p0

    #@150
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@153
    move-result v14

    #@154
    .line 641
    .local v14, "floatField":F
    move-object/from16 v0, p0

    #@156
    invoke-virtual {v0, v14}, Lgov/nist/core/GenericObject;->sprint(F)V

    #@159
    goto/16 :goto_1

    #@15b
    .line 643
    .end local v14    # "floatField":F
    .end local v15    # "fname":Ljava/lang/String;
    :cond_8
    const-class v23, Lgov/nist/core/GenericObject;

    #@15d
    move-object/from16 v0, v23

    #@15f
    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@162
    move-result v23

    #@163
    if-eqz v23, :cond_a

    #@165
    .line 644
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16a
    move-result-object v23

    #@16b
    if-eqz v23, :cond_9

    #@16d
    .line 646
    move-object/from16 v0, p0

    #@16f
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@172
    move-result-object v23

    #@173
    check-cast v23, Lgov/nist/core/GenericObject;

    #@175
    .line 647
    move-object/from16 v0, p0

    #@177
    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    #@179
    move/from16 v24, v0

    #@17b
    add-int/lit8 v24, v24, 0x1

    #@17d
    .line 646
    invoke-virtual/range {v23 .. v24}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    #@180
    move-result-object v23

    #@181
    .line 645
    move-object/from16 v0, p0

    #@183
    move-object/from16 v1, v23

    #@185
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@188
    goto/16 :goto_1

    #@18a
    .line 649
    :cond_9
    const-string/jumbo v23, "<null>"

    #@18d
    move-object/from16 v0, p0

    #@18f
    move-object/from16 v1, v23

    #@191
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@194
    goto/16 :goto_1

    #@196
    .line 653
    :cond_a
    const-class v23, Lgov/nist/core/GenericObjectList;

    #@198
    move-object/from16 v0, v23

    #@19a
    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@19d
    move-result v23

    #@19e
    .line 652
    if-eqz v23, :cond_c

    #@1a0
    .line 654
    move-object/from16 v0, p0

    #@1a2
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a5
    move-result-object v23

    #@1a6
    if-eqz v23, :cond_b

    #@1a8
    .line 656
    move-object/from16 v0, p0

    #@1aa
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    move-result-object v23

    #@1ae
    check-cast v23, Lgov/nist/core/GenericObjectList;

    #@1b0
    .line 657
    move-object/from16 v0, p0

    #@1b2
    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    #@1b4
    move/from16 v24, v0

    #@1b6
    add-int/lit8 v24, v24, 0x1

    #@1b8
    .line 656
    invoke-virtual/range {v23 .. v24}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    #@1bb
    move-result-object v23

    #@1bc
    .line 655
    move-object/from16 v0, p0

    #@1be
    move-object/from16 v1, v23

    #@1c0
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@1c3
    goto/16 :goto_1

    #@1c5
    .line 659
    :cond_b
    const-string/jumbo v23, "<null>"

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    move-object/from16 v1, v23

    #@1cc
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@1cf
    goto/16 :goto_1

    #@1d1
    .line 665
    :cond_c
    move-object/from16 v0, p0

    #@1d3
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d6
    move-result-object v23

    #@1d7
    if-eqz v23, :cond_d

    #@1d9
    .line 666
    new-instance v23, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    move-object/from16 v0, p0

    #@1e0
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e3
    move-result-object v24

    #@1e4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1e7
    move-result-object v24

    #@1e8
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1eb
    move-result-object v24

    #@1ec
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v23

    #@1f0
    const-string/jumbo v24, ":"

    #@1f3
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v23

    #@1f7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v23

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    move-object/from16 v1, v23

    #@1ff
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@202
    .line 671
    :goto_2
    const-string/jumbo v23, "{"

    #@205
    move-object/from16 v0, p0

    #@207
    move-object/from16 v1, v23

    #@209
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@20c
    .line 672
    move-object/from16 v0, p0

    #@20e
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@211
    move-result-object v23

    #@212
    if-eqz v23, :cond_e

    #@214
    .line 673
    move-object/from16 v0, p0

    #@216
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@219
    move-result-object v23

    #@21a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21d
    move-result-object v23

    #@21e
    move-object/from16 v0, p0

    #@220
    move-object/from16 v1, v23

    #@222
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@225
    .line 677
    :goto_3
    const-string/jumbo v23, "}"

    #@228
    move-object/from16 v0, p0

    #@22a
    move-object/from16 v1, v23

    #@22c
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@22f
    goto/16 :goto_1

    #@231
    .line 668
    :cond_d
    new-instance v23, Ljava/lang/StringBuilder;

    #@233
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@236
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@239
    move-result-object v24

    #@23a
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v23

    #@23e
    const-string/jumbo v24, ":"

    #@241
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v23

    #@245
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@248
    move-result-object v23

    #@249
    move-object/from16 v0, p0

    #@24b
    move-object/from16 v1, v23

    #@24d
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@250
    goto :goto_2

    #@251
    .line 675
    :cond_e
    const-string/jumbo v23, "<null>"

    #@254
    move-object/from16 v0, p0

    #@256
    move-object/from16 v1, v23

    #@258
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@25b
    goto :goto_3

    #@25c
    .line 685
    .end local v10    # "f":Ljava/lang/reflect/Field;
    .end local v11    # "fieldName":Ljava/lang/String;
    .end local v12    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "modifier":I
    :cond_f
    const-string/jumbo v23, "}"

    #@25f
    move-object/from16 v0, p0

    #@261
    move-object/from16 v1, v23

    #@263
    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@266
    .line 686
    move-object/from16 v0, p0

    #@268
    iget-object v0, v0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@26a
    move-object/from16 v23, v0

    #@26c
    return-object v23
.end method

.method public debugDump(I)Ljava/lang/String;
    .locals 2
    .param p1, "indent"    # I

    #@0
    .prologue
    .line 693
    iput p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    #@2
    .line 694
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 695
    .local v0, "retval":Ljava/lang/String;
    const/4 v1, 0x0

    #@7
    iput v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    #@9
    .line 696
    return-object v0
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 710
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 410
    if-nez p1, :cond_0

    #@2
    const/4 v14, 0x0

    #@3
    return v14

    #@4
    .line 411
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/core/GenericObject;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v14

    #@8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v15

    #@c
    invoke-virtual {v14, v15}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v14

    #@10
    if-nez v14, :cond_1

    #@12
    .line 412
    const/4 v14, 0x0

    #@13
    return v14

    #@14
    .line 413
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/core/GenericObject;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v13

    #@18
    .line 414
    .local v13, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v9

    #@1c
    .line 416
    .local v9, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@1f
    move-result-object v6

    #@20
    .line 417
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@23
    move-result-object v10

    #@24
    .line 418
    .local v10, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    #@25
    .local v11, "i":I
    :goto_1
    array-length v14, v6

    #@26
    if-ge v11, v14, :cond_f

    #@28
    .line 419
    aget-object v3, v6, v11

    #@2a
    .line 420
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v10, v11

    #@2c
    .line 422
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    #@2f
    move-result v12

    #@30
    .line 423
    .local v12, "modifier":I
    and-int/lit8 v14, v12, 0x2

    #@32
    const/4 v15, 0x2

    #@33
    if-ne v14, v15, :cond_3

    #@35
    .line 418
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@37
    goto :goto_1

    #@38
    .line 425
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@3b
    move-result-object v5

    #@3c
    .line 426
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 427
    .local v4, "fieldName":Ljava/lang/String;
    const-string/jumbo v14, "stringRepresentation"

    #@43
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@46
    move-result v14

    #@47
    if-eqz v14, :cond_2

    #@49
    .line 430
    const-string/jumbo v14, "indentation"

    #@4c
    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@4f
    move-result v14

    #@50
    if-eqz v14, :cond_2

    #@52
    .line 435
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    #@55
    move-result v14

    #@56
    if-eqz v14, :cond_a

    #@58
    .line 436
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    .line 437
    .local v7, "fname":Ljava/lang/String;
    const-string/jumbo v14, "int"

    #@5f
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@62
    move-result v14

    #@63
    if-nez v14, :cond_4

    #@65
    .line 438
    move-object/from16 v0, p0

    #@67
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@6a
    move-result v14

    #@6b
    move-object/from16 v0, p1

    #@6d
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@70
    move-result v15

    #@71
    if-eq v14, v15, :cond_2

    #@73
    .line 439
    const/4 v14, 0x0

    #@74
    return v14

    #@75
    .line 440
    :cond_4
    const-string/jumbo v14, "short"

    #@78
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@7b
    move-result v14

    #@7c
    if-nez v14, :cond_5

    #@7e
    .line 441
    move-object/from16 v0, p0

    #@80
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@83
    move-result v14

    #@84
    move-object/from16 v0, p1

    #@86
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@89
    move-result v15

    #@8a
    if-eq v14, v15, :cond_2

    #@8c
    .line 442
    const/4 v14, 0x0

    #@8d
    return v14

    #@8e
    .line 443
    :cond_5
    const-string/jumbo v14, "char"

    #@91
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@94
    move-result v14

    #@95
    if-nez v14, :cond_6

    #@97
    .line 444
    move-object/from16 v0, p0

    #@99
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@9c
    move-result v14

    #@9d
    move-object/from16 v0, p1

    #@9f
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@a2
    move-result v15

    #@a3
    if-eq v14, v15, :cond_2

    #@a5
    .line 445
    const/4 v14, 0x0

    #@a6
    return v14

    #@a7
    .line 446
    :cond_6
    const-string/jumbo v14, "long"

    #@aa
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@ad
    move-result v14

    #@ae
    if-nez v14, :cond_7

    #@b0
    .line 447
    move-object/from16 v0, p0

    #@b2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@b5
    move-result-wide v14

    #@b6
    move-object/from16 v0, p1

    #@b8
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@bb
    move-result-wide v16

    #@bc
    cmp-long v14, v14, v16

    #@be
    if-eqz v14, :cond_2

    #@c0
    .line 448
    const/4 v14, 0x0

    #@c1
    return v14

    #@c2
    .line 449
    :cond_7
    const-string/jumbo v14, "boolean"

    #@c5
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@c8
    move-result v14

    #@c9
    if-nez v14, :cond_8

    #@cb
    .line 450
    move-object/from16 v0, p0

    #@cd
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@d0
    move-result v14

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@d6
    move-result v15

    #@d7
    if-eq v14, v15, :cond_2

    #@d9
    .line 451
    const/4 v14, 0x0

    #@da
    return v14

    #@db
    .line 452
    :cond_8
    const-string/jumbo v14, "double"

    #@de
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@e1
    move-result v14

    #@e2
    if-nez v14, :cond_9

    #@e4
    .line 453
    move-object/from16 v0, p0

    #@e6
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@e9
    move-result-wide v14

    #@ea
    move-object/from16 v0, p1

    #@ec
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@ef
    move-result-wide v16

    #@f0
    cmpl-double v14, v14, v16

    #@f2
    if-eqz v14, :cond_2

    #@f4
    .line 454
    const/4 v14, 0x0

    #@f5
    return v14

    #@f6
    .line 455
    :cond_9
    const-string/jumbo v14, "float"

    #@f9
    invoke-virtual {v7, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@fc
    move-result v14

    #@fd
    if-nez v14, :cond_2

    #@ff
    .line 456
    move-object/from16 v0, p0

    #@101
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@104
    move-result v14

    #@105
    move-object/from16 v0, p1

    #@107
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@10a
    move-result v15

    #@10b
    cmpl-float v14, v14, v15

    #@10d
    if-eqz v14, :cond_2

    #@10f
    .line 457
    const/4 v14, 0x0

    #@110
    return v14

    #@111
    .line 459
    .end local v7    # "fname":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    #@113
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@116
    move-result-object v14

    #@117
    move-object/from16 v0, p0

    #@119
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11c
    move-result-object v15

    #@11d
    if-ne v14, v15, :cond_b

    #@11f
    .line 460
    const/4 v14, 0x1

    #@120
    return v14

    #@121
    .line 461
    :cond_b
    move-object/from16 v0, p0

    #@123
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@126
    move-result-object v14

    #@127
    if-nez v14, :cond_c

    #@129
    .line 462
    const/4 v14, 0x0

    #@12a
    return v14

    #@12b
    .line 463
    :cond_c
    move-object/from16 v0, p1

    #@12d
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@130
    move-result-object v14

    #@131
    if-nez v14, :cond_d

    #@133
    .line 464
    const/4 v14, 0x0

    #@134
    return v14

    #@135
    .line 465
    :cond_d
    move-object/from16 v0, p1

    #@137
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13a
    move-result-object v14

    #@13b
    if-nez v14, :cond_e

    #@13d
    move-object/from16 v0, p0

    #@13f
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@142
    move-result-object v14

    #@143
    if-eqz v14, :cond_e

    #@145
    .line 466
    const/4 v14, 0x0

    #@146
    return v14

    #@147
    .line 467
    :cond_e
    move-object/from16 v0, p0

    #@149
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14c
    move-result-object v14

    #@14d
    move-object/from16 v0, p1

    #@14f
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@152
    move-result-object v15

    #@153
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@156
    move-result v14

    #@157
    if-nez v14, :cond_2

    #@159
    .line 468
    const/4 v14, 0x0

    #@15a
    return v14

    #@15b
    .line 469
    :catch_0
    move-exception v2

    #@15c
    .line 470
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@15f
    goto/16 :goto_2

    #@161
    .line 473
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v12    # "modifier":I
    :cond_f
    const-class v14, Lgov/nist/core/GenericObject;

    #@163
    invoke-virtual {v13, v14}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@166
    move-result v14

    #@167
    if-eqz v14, :cond_10

    #@169
    .line 481
    const/4 v14, 0x1

    #@16a
    return v14

    #@16b
    .line 476
    :cond_10
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@16e
    move-result-object v13

    #@16f
    .line 477
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@172
    move-result-object v9

    #@173
    goto/16 :goto_0
.end method

.method protected getIndentation()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 298
    iget v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    #@2
    new-array v0, v1, [C

    #@4
    .line 299
    .local v0, "chars":[C
    const/16 v1, 0x20

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    #@9
    .line 300
    new-instance v1, Ljava/lang/String;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@e
    return-object v1
.end method

.method public getMatcher()Lgov/nist/core/Match;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    #@2
    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 22
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 494
    if-nez p1, :cond_0

    #@2
    .line 495
    const/16 v17, 0x1

    #@4
    return v17

    #@5
    .line 496
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgov/nist/core/GenericObject;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v17

    #@9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v18

    #@d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v17

    #@11
    if-nez v17, :cond_1

    #@13
    .line 497
    const/16 v17, 0x0

    #@15
    return v17

    #@16
    :cond_1
    move-object/from16 v16, p1

    #@18
    .line 498
    check-cast v16, Lgov/nist/core/GenericObject;

    #@1a
    .line 499
    .local v16, "that":Lgov/nist/core/GenericObject;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/core/GenericObject;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v15

    #@1e
    .line 500
    .local v15, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@21
    move-result-object v6

    #@22
    .line 501
    .local v6, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@25
    move-result-object v10

    #@26
    .line 502
    .local v10, "hisclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@29
    move-result-object v11

    #@2a
    .line 503
    .local v11, "hisfields":[Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    #@2b
    .local v12, "i":I
    :goto_0
    array-length v0, v6

    #@2c
    move/from16 v17, v0

    #@2e
    move/from16 v0, v17

    #@30
    if-ge v12, v0, :cond_11

    #@32
    .line 504
    aget-object v3, v6, v12

    #@34
    .line 505
    .local v3, "f":Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    #@36
    .line 507
    .local v8, "g":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    #@39
    move-result v13

    #@3a
    .line 508
    .local v13, "modifier":I
    and-int/lit8 v17, v13, 0x2

    #@3c
    const/16 v18, 0x2

    #@3e
    move/from16 v0, v17

    #@40
    move/from16 v1, v18

    #@42
    if-ne v0, v1, :cond_3

    #@44
    .line 503
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@46
    goto :goto_0

    #@47
    .line 510
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@4a
    move-result-object v5

    #@4b
    .line 511
    .local v5, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .line 512
    .local v4, "fieldName":Ljava/lang/String;
    const-string/jumbo v17, "stringRepresentation"

    #@52
    move-object/from16 v0, v17

    #@54
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@57
    move-result v17

    #@58
    if-eqz v17, :cond_2

    #@5a
    .line 515
    const-string/jumbo v17, "indentation"

    #@5d
    move-object/from16 v0, v17

    #@5f
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@62
    move-result v17

    #@63
    if-eqz v17, :cond_2

    #@65
    .line 520
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    #@68
    move-result v17

    #@69
    if-eqz v17, :cond_a

    #@6b
    .line 521
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    .line 522
    .local v7, "fname":Ljava/lang/String;
    const-string/jumbo v17, "int"

    #@72
    move-object/from16 v0, v17

    #@74
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@77
    move-result v17

    #@78
    if-nez v17, :cond_4

    #@7a
    .line 523
    move-object/from16 v0, p0

    #@7c
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@7f
    move-result v17

    #@80
    move-object/from16 v0, v16

    #@82
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@85
    move-result v18

    #@86
    move/from16 v0, v17

    #@88
    move/from16 v1, v18

    #@8a
    if-eq v0, v1, :cond_2

    #@8c
    .line 524
    const/16 v17, 0x0

    #@8e
    return v17

    #@8f
    .line 525
    :cond_4
    const-string/jumbo v17, "short"

    #@92
    move-object/from16 v0, v17

    #@94
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@97
    move-result v17

    #@98
    if-nez v17, :cond_5

    #@9a
    .line 526
    move-object/from16 v0, p0

    #@9c
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@9f
    move-result v17

    #@a0
    move-object/from16 v0, v16

    #@a2
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@a5
    move-result v18

    #@a6
    move/from16 v0, v17

    #@a8
    move/from16 v1, v18

    #@aa
    if-eq v0, v1, :cond_2

    #@ac
    .line 527
    const/16 v17, 0x0

    #@ae
    return v17

    #@af
    .line 528
    :cond_5
    const-string/jumbo v17, "char"

    #@b2
    move-object/from16 v0, v17

    #@b4
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b7
    move-result v17

    #@b8
    if-nez v17, :cond_6

    #@ba
    .line 529
    move-object/from16 v0, p0

    #@bc
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@bf
    move-result v17

    #@c0
    move-object/from16 v0, v16

    #@c2
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@c5
    move-result v18

    #@c6
    move/from16 v0, v17

    #@c8
    move/from16 v1, v18

    #@ca
    if-eq v0, v1, :cond_2

    #@cc
    .line 530
    const/16 v17, 0x0

    #@ce
    return v17

    #@cf
    .line 531
    :cond_6
    const-string/jumbo v17, "long"

    #@d2
    move-object/from16 v0, v17

    #@d4
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@d7
    move-result v17

    #@d8
    if-nez v17, :cond_7

    #@da
    .line 532
    move-object/from16 v0, p0

    #@dc
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@df
    move-result-wide v18

    #@e0
    move-object/from16 v0, v16

    #@e2
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@e5
    move-result-wide v20

    #@e6
    cmp-long v17, v18, v20

    #@e8
    if-eqz v17, :cond_2

    #@ea
    .line 533
    const/16 v17, 0x0

    #@ec
    return v17

    #@ed
    .line 534
    :cond_7
    const-string/jumbo v17, "boolean"

    #@f0
    move-object/from16 v0, v17

    #@f2
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f5
    move-result v17

    #@f6
    if-nez v17, :cond_8

    #@f8
    .line 535
    move-object/from16 v0, p0

    #@fa
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@fd
    move-result v17

    #@fe
    move-object/from16 v0, v16

    #@100
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@103
    move-result v18

    #@104
    move/from16 v0, v17

    #@106
    move/from16 v1, v18

    #@108
    if-eq v0, v1, :cond_2

    #@10a
    .line 536
    const/16 v17, 0x0

    #@10c
    return v17

    #@10d
    .line 537
    :cond_8
    const-string/jumbo v17, "double"

    #@110
    move-object/from16 v0, v17

    #@112
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@115
    move-result v17

    #@116
    if-nez v17, :cond_9

    #@118
    .line 538
    move-object/from16 v0, p0

    #@11a
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@11d
    move-result-wide v18

    #@11e
    move-object/from16 v0, v16

    #@120
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@123
    move-result-wide v20

    #@124
    cmpl-double v17, v18, v20

    #@126
    if-eqz v17, :cond_2

    #@128
    .line 539
    const/16 v17, 0x0

    #@12a
    return v17

    #@12b
    .line 540
    :cond_9
    const-string/jumbo v17, "float"

    #@12e
    move-object/from16 v0, v17

    #@130
    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@133
    move-result v17

    #@134
    if-nez v17, :cond_2

    #@136
    .line 541
    move-object/from16 v0, p0

    #@138
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@13b
    move-result v17

    #@13c
    move-object/from16 v0, v16

    #@13e
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@141
    move-result v18

    #@142
    cmpl-float v17, v17, v18

    #@144
    if-eqz v17, :cond_2

    #@146
    .line 542
    const/16 v17, 0x0

    #@148
    return v17

    #@149
    .line 545
    .end local v7    # "fname":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14e
    move-result-object v14

    #@14f
    .line 546
    .local v14, "myObj":Ljava/lang/Object;
    move-object/from16 v0, v16

    #@151
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@154
    move-result-object v9

    #@155
    .line 547
    .local v9, "hisObj":Ljava/lang/Object;
    if-eqz v9, :cond_b

    #@157
    if-nez v14, :cond_b

    #@159
    .line 548
    const/16 v17, 0x0

    #@15b
    return v17

    #@15c
    .line 549
    :cond_b
    if-nez v9, :cond_c

    #@15e
    if-nez v14, :cond_2

    #@160
    .line 551
    :cond_c
    if-nez v9, :cond_d

    #@162
    if-eqz v14, :cond_2

    #@164
    .line 554
    :cond_d
    instance-of v0, v9, Ljava/lang/String;

    #@166
    move/from16 v17, v0

    #@168
    if-eqz v17, :cond_e

    #@16a
    .line 555
    instance-of v0, v14, Ljava/lang/String;

    #@16c
    move/from16 v17, v0

    #@16e
    .line 553
    if-eqz v17, :cond_e

    #@170
    .line 556
    move-object v0, v9

    #@171
    check-cast v0, Ljava/lang/String;

    #@173
    move-object/from16 v17, v0

    #@175
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@178
    move-result-object v17

    #@179
    const-string/jumbo v18, ""

    #@17c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17f
    move-result v17

    #@180
    if-nez v17, :cond_2

    #@182
    .line 558
    check-cast v14, Ljava/lang/String;

    #@184
    .line 559
    .end local v14    # "myObj":Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    #@186
    .line 558
    .end local v9    # "hisObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@189
    move-result v17

    #@18a
    if-eqz v17, :cond_2

    #@18c
    .line 561
    const/16 v17, 0x0

    #@18e
    return v17

    #@18f
    .line 563
    .restart local v9    # "hisObj":Ljava/lang/Object;
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_e
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@192
    move-result-object v17

    #@193
    invoke-static/range {v17 .. v17}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@196
    move-result v17

    #@197
    if-eqz v17, :cond_f

    #@199
    .line 564
    move-object v0, v14

    #@19a
    check-cast v0, Lgov/nist/core/GenericObject;

    #@19c
    move-object/from16 v17, v0

    #@19e
    move-object/from16 v0, v17

    #@1a0
    invoke-virtual {v0, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    #@1a3
    move-result v17

    #@1a4
    if-eqz v17, :cond_10

    #@1a6
    .line 567
    :cond_f
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a9
    move-result-object v17

    #@1aa
    invoke-static/range {v17 .. v17}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    #@1ad
    move-result v17

    #@1ae
    if-eqz v17, :cond_2

    #@1b0
    .line 568
    check-cast v14, Lgov/nist/core/GenericObjectList;

    #@1b2
    .end local v14    # "myObj":Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b5
    move-result v17

    #@1b6
    if-nez v17, :cond_2

    #@1b8
    .line 569
    const/16 v17, 0x0

    #@1ba
    return v17

    #@1bb
    .line 565
    .restart local v14    # "myObj":Ljava/lang/Object;
    :cond_10
    const/16 v17, 0x0

    #@1bd
    return v17

    #@1be
    .line 572
    .end local v9    # "hisObj":Ljava/lang/Object;
    .end local v14    # "myObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@1bf
    .line 573
    .local v2, "ex1":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@1c2
    goto/16 :goto_1

    #@1c4
    .line 576
    .end local v2    # "ex1":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "g":Ljava/lang/reflect/Field;
    .end local v13    # "modifier":I
    :cond_11
    const/16 v17, 0x1

    #@1c6
    return v17
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 26
    .param p1, "mergeObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 219
    if-nez p1, :cond_0

    #@2
    .line 220
    return-void

    #@3
    .line 222
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v24

    #@7
    invoke-virtual/range {p0 .. p0}, Lgov/nist/core/GenericObject;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v25

    #@b
    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v24

    #@f
    if-nez v24, :cond_1

    #@11
    .line 223
    new-instance v24, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v25, "Bad override object"

    #@16
    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v24

    #@1a
    .line 225
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/core/GenericObject;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v21

    #@1e
    .line 227
    .local v21, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@21
    move-result-object v11

    #@22
    .line 228
    .local v11, "fields":[Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    #@23
    .local v15, "i":I
    :goto_0
    array-length v0, v11

    #@24
    move/from16 v24, v0

    #@26
    move/from16 v0, v24

    #@28
    if-ge v15, v0, :cond_e

    #@2a
    .line 229
    aget-object v9, v11, v15

    #@2c
    .line 230
    .local v9, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    #@2f
    move-result v20

    #@30
    .line 231
    .local v20, "modifier":I
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@33
    move-result v24

    #@34
    if-eqz v24, :cond_4

    #@36
    .line 228
    :cond_3
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@38
    goto :goto_0

    #@39
    .line 233
    :cond_4
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@3c
    move-result v24

    #@3d
    if-nez v24, :cond_3

    #@3f
    .line 235
    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    #@42
    move-result v24

    #@43
    if-nez v24, :cond_3

    #@45
    .line 238
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@48
    move-result-object v10

    #@49
    .line 239
    .local v10, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@4c
    move-result-object v13

    #@4d
    .line 242
    .local v13, "fname":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    #@50
    move-result v24

    #@51
    if-eqz v24, :cond_b

    #@53
    .line 243
    const-string/jumbo v24, "int"

    #@56
    move-object/from16 v0, v24

    #@58
    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@5b
    move-result v24

    #@5c
    if-nez v24, :cond_5

    #@5e
    .line 244
    move-object/from16 v0, p1

    #@60
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@63
    move-result v16

    #@64
    .line 245
    .local v16, "intfield":I
    move-object/from16 v0, p0

    #@66
    move/from16 v1, v16

    #@68
    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    goto :goto_1

    #@6c
    .line 281
    .end local v16    # "intfield":I
    :catch_0
    move-exception v8

    #@6d
    .line 282
    .local v8, "ex1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@70
    goto :goto_1

    #@71
    .line 246
    .end local v8    # "ex1":Ljava/lang/IllegalAccessException;
    :cond_5
    :try_start_1
    const-string/jumbo v24, "short"

    #@74
    move-object/from16 v0, v24

    #@76
    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@79
    move-result v24

    #@7a
    if-nez v24, :cond_6

    #@7c
    .line 247
    move-object/from16 v0, p1

    #@7e
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@81
    move-result v23

    #@82
    .line 248
    .local v23, "shortField":S
    move-object/from16 v0, p0

    #@84
    move/from16 v1, v23

    #@86
    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    #@89
    goto :goto_1

    #@8a
    .line 249
    .end local v23    # "shortField":S
    :cond_6
    const-string/jumbo v24, "char"

    #@8d
    move-object/from16 v0, v24

    #@8f
    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@92
    move-result v24

    #@93
    if-nez v24, :cond_7

    #@95
    .line 250
    move-object/from16 v0, p1

    #@97
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@9a
    move-result v5

    #@9b
    .line 251
    .local v5, "charField":C
    move-object/from16 v0, p0

    #@9d
    invoke-virtual {v9, v0, v5}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    #@a0
    goto :goto_1

    #@a1
    .line 252
    .end local v5    # "charField":C
    :cond_7
    const-string/jumbo v24, "long"

    #@a4
    move-object/from16 v0, v24

    #@a6
    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@a9
    move-result v24

    #@aa
    if-nez v24, :cond_8

    #@ac
    .line 253
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@b1
    move-result-wide v18

    #@b2
    .line 254
    .local v18, "longField":J
    move-object/from16 v0, p0

    #@b4
    move-wide/from16 v1, v18

    #@b6
    invoke-virtual {v9, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    #@b9
    goto/16 :goto_1

    #@bb
    .line 255
    .end local v18    # "longField":J
    :cond_8
    const-string/jumbo v24, "boolean"

    #@be
    move-object/from16 v0, v24

    #@c0
    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@c3
    move-result v24

    #@c4
    if-nez v24, :cond_9

    #@c6
    .line 256
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@cb
    move-result v4

    #@cc
    .line 257
    .local v4, "booleanField":Z
    move-object/from16 v0, p0

    #@ce
    invoke-virtual {v9, v0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    #@d1
    goto/16 :goto_1

    #@d3
    .line 258
    .end local v4    # "booleanField":Z
    :cond_9
    const-string/jumbo v24, "double"

    #@d6
    move-object/from16 v0, v24

    #@d8
    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@db
    move-result v24

    #@dc
    if-nez v24, :cond_a

    #@de
    .line 259
    move-object/from16 v0, p1

    #@e0
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@e3
    move-result-wide v6

    #@e4
    .line 260
    .local v6, "doubleField":D
    move-object/from16 v0, p0

    #@e6
    invoke-virtual {v9, v0, v6, v7}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    #@e9
    goto/16 :goto_1

    #@eb
    .line 261
    .end local v6    # "doubleField":D
    :cond_a
    const-string/jumbo v24, "float"

    #@ee
    move-object/from16 v0, v24

    #@f0
    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f3
    move-result v24

    #@f4
    if-nez v24, :cond_3

    #@f6
    .line 262
    move-object/from16 v0, p1

    #@f8
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@fb
    move-result v12

    #@fc
    .line 263
    .local v12, "floatField":F
    move-object/from16 v0, p0

    #@fe
    invoke-virtual {v9, v0, v12}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    #@101
    goto/16 :goto_1

    #@103
    .line 266
    .end local v12    # "floatField":F
    :cond_b
    move-object/from16 v0, p0

    #@105
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@108
    move-result-object v22

    #@109
    .line 267
    .local v22, "obj":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@10b
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10e
    move-result-object v17

    #@10f
    .line 268
    .local v17, "mobj":Ljava/lang/Object;
    if-eqz v17, :cond_3

    #@111
    .line 270
    if-nez v22, :cond_c

    #@113
    .line 271
    move-object/from16 v0, p0

    #@115
    move-object/from16 v1, v17

    #@117
    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@11a
    goto/16 :goto_1

    #@11c
    .line 274
    :cond_c
    move-object/from16 v0, v22

    #@11e
    instance-of v0, v0, Lgov/nist/core/GenericObject;

    #@120
    move/from16 v24, v0

    #@122
    if-eqz v24, :cond_d

    #@124
    .line 275
    move-object/from16 v0, v22

    #@126
    check-cast v0, Lgov/nist/core/GenericObject;

    #@128
    move-object v14, v0

    #@129
    .line 276
    .local v14, "gobj":Lgov/nist/core/GenericObject;
    move-object/from16 v0, v17

    #@12b
    invoke-virtual {v14, v0}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    #@12e
    goto/16 :goto_1

    #@130
    .line 278
    .end local v14    # "gobj":Lgov/nist/core/GenericObject;
    :cond_d
    move-object/from16 v0, p0

    #@132
    move-object/from16 v1, v17

    #@134
    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    #@137
    goto/16 :goto_1

    #@139
    .line 286
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .end local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "fname":Ljava/lang/String;
    .end local v17    # "mobj":Ljava/lang/Object;
    .end local v20    # "modifier":I
    .end local v22    # "obj":Ljava/lang/Object;
    :cond_e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@13c
    move-result-object v21

    #@13d
    .line 287
    const-class v24, Lgov/nist/core/GenericObject;

    #@13f
    move-object/from16 v0, v21

    #@141
    move-object/from16 v1, v24

    #@143
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@146
    move-result v24

    #@147
    if-eqz v24, :cond_2

    #@149
    .line 217
    return-void
.end method

.method public setMatcher(Lgov/nist/core/Match;)V
    .locals 2
    .param p1, "matchExpression"    # Lgov/nist/core/Match;

    #@0
    .prologue
    .line 113
    if-nez p1, :cond_0

    #@2
    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "null arg!"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 115
    :cond_0
    iput-object p1, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    #@d
    .line 112
    return-void
.end method

.method protected sprint(C)V
    .locals 1
    .param p1, "charField"    # C

    #@0
    .prologue
    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@7
    .line 352
    return-void
.end method

.method protected sprint(D)V
    .locals 1
    .param p1, "doubleField"    # D

    #@0
    .prologue
    .line 378
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@7
    .line 377
    return-void
.end method

.method protected sprint(F)V
    .locals 1
    .param p1, "floatField"    # F

    #@0
    .prologue
    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@7
    .line 385
    return-void
.end method

.method protected sprint(I)V
    .locals 1
    .param p1, "intField"    # I

    #@0
    .prologue
    .line 338
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@7
    .line 337
    return-void
.end method

.method protected sprint(J)V
    .locals 1
    .param p1, "longField"    # J

    #@0
    .prologue
    .line 362
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@7
    .line 361
    return-void
.end method

.method protected sprint(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@7
    .line 329
    return-void
.end method

.method protected sprint(Ljava/lang/String;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/String;

    #@0
    .prologue
    .line 308
    if-nez p1, :cond_0

    #@2
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

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
    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@1b
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

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
    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@33
    .line 311
    return-void

    #@34
    .line 313
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
    .line 314
    :cond_1
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    #@48
    add-int/lit8 v0, v0, -0x1

    #@4a
    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    #@4c
    .line 316
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

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
    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@65
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

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
    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@7a
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

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
    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    #@92
    .line 319
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
    .line 320
    :cond_3
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    #@a6
    add-int/lit8 v0, v0, 0x1

    #@a8
    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    #@aa
    .line 307
    :cond_4
    return-void
.end method

.method protected sprint(S)V
    .locals 1
    .param p1, "shortField"    # S

    #@0
    .prologue
    .line 345
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@7
    .line 344
    return-void
.end method

.method protected sprint(Z)V
    .locals 1
    .param p1, "booleanField"    # Z

    #@0
    .prologue
    .line 370
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    #@7
    .line 369
    return-void
.end method
