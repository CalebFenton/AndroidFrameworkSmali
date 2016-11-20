.class public Lsun/reflect/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 3
    .param p0, "currentClass"    # Ljava/lang/Class;
    .param p1, "memberClass"    # Ljava/lang/Class;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "modifiers"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 45
    :cond_0
    new-instance v0, Ljava/lang/InternalError;

    #@6
    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    #@9
    throw v0

    #@a
    .line 48
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lsun/reflect/Reflection;->verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2

    #@10
    .line 49
    new-instance v0, Ljava/lang/IllegalAccessException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Class "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 50
    const-string/jumbo v2, " can not access a member of class "

    #@29
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 52
    const-string/jumbo v2, " with modifiers \""

    #@38
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 53
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 54
    const-string/jumbo v2, "\""

    #@47
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    #@52
    throw v0

    #@53
    .line 42
    :cond_2
    return-void
.end method

.method private static isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .param p0, "c1"    # Ljava/lang/Class;
    .param p1, "c2"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 141
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 140
    invoke-static {v0, v1, v2, v3}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method private static isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 11
    .param p0, "loader1"    # Ljava/lang/ClassLoader;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "loader2"    # Ljava/lang/ClassLoader;
    .param p3, "name2"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v10, 0x4c

    #@2
    const/16 v9, 0x2e

    #@4
    const/4 v0, -0x1

    #@5
    const/16 v3, 0x5b

    #@7
    const/4 v1, 0x0

    #@8
    .line 149
    if-eq p0, p2, :cond_0

    #@a
    .line 150
    return v1

    #@b
    .line 152
    :cond_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    #@e
    move-result v6

    #@f
    .line 153
    .local v6, "lastDot1":I
    invoke-virtual {p3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    #@12
    move-result v7

    #@13
    .line 154
    .local v7, "lastDot2":I
    if-eq v6, v0, :cond_1

    #@15
    if-ne v7, v0, :cond_3

    #@17
    .line 157
    :cond_1
    if-ne v6, v7, :cond_2

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_2
    return v1

    #@1b
    .line 159
    :cond_3
    const/4 v2, 0x0

    #@1c
    .line 160
    .local v2, "idx1":I
    const/4 v4, 0x0

    #@1d
    .line 163
    .local v4, "idx2":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v0

    #@21
    if-ne v0, v3, :cond_5

    #@23
    .line 165
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@25
    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v0

    #@29
    if-eq v0, v3, :cond_4

    #@2b
    .line 167
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v0

    #@2f
    if-eq v0, v10, :cond_5

    #@31
    .line 169
    new-instance v0, Ljava/lang/InternalError;

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "Illegal class name "

    #@3b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 172
    :cond_5
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    #@4e
    move-result v0

    #@4f
    if-ne v0, v3, :cond_7

    #@51
    .line 174
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@53
    .line 175
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v0

    #@57
    if-eq v0, v3, :cond_6

    #@59
    .line 176
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    #@5c
    move-result v0

    #@5d
    if-eq v0, v10, :cond_7

    #@5f
    .line 178
    new-instance v0, Ljava/lang/InternalError;

    #@61
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v3, "Illegal class name "

    #@69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@78
    throw v0

    #@79
    .line 183
    :cond_7
    sub-int v5, v6, v2

    #@7b
    .line 184
    .local v5, "length1":I
    sub-int v8, v7, v4

    #@7d
    .line 186
    .local v8, "length2":I
    if-eq v5, v8, :cond_8

    #@7f
    .line 187
    return v1

    #@80
    :cond_8
    move-object v0, p1

    #@81
    move-object v3, p3

    #@82
    .line 189
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@85
    move-result v0

    #@86
    return v0
.end method

.method static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "queryClass"    # Ljava/lang/Class;
    .param p1, "ofClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 197
    :goto_0
    if-eqz p0, :cond_1

    #@2
    .line 198
    if-ne p0, p1, :cond_0

    #@4
    .line 199
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 201
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@9
    move-result-object p0

    #@a
    goto :goto_0

    #@b
    .line 203
    :cond_1
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public static verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z
    .locals 7
    .param p0, "currentClass"    # Ljava/lang/Class;
    .param p1, "memberClass"    # Ljava/lang/Class;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "modifiers"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 70
    const/4 v0, 0x0

    #@3
    .line 71
    .local v0, "gotIsSameClassPackage":Z
    const/4 v1, 0x0

    #@4
    .line 73
    .local v1, "isSameClassPackage":Z
    if-ne p0, p1, :cond_0

    #@6
    .line 75
    return v6

    #@7
    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getAccessFlags()I

    #@a
    move-result v4

    #@b
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_1

    #@11
    .line 82
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@14
    move-result v1

    #@15
    .line 83
    .local v1, "isSameClassPackage":Z
    const/4 v0, 0x1

    #@16
    .line 84
    if-nez v1, :cond_1

    #@18
    .line 85
    return v5

    #@19
    .line 91
    .end local v1    # "isSameClassPackage":Z
    :cond_1
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 92
    return v6

    #@20
    .line 95
    :cond_2
    const/4 v2, 0x0

    #@21
    .line 97
    .local v2, "successSoFar":Z
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 99
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_3

    #@2d
    .line 100
    const/4 v2, 0x1

    #@2e
    .line 104
    :cond_3
    if-nez v2, :cond_4

    #@30
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_5

    #@36
    .line 116
    :cond_4
    :goto_0
    if-nez v2, :cond_7

    #@38
    .line 117
    return v5

    #@39
    .line 105
    :cond_5
    if-nez v0, :cond_6

    #@3b
    .line 106
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@3e
    move-result v1

    #@3f
    .line 108
    .restart local v1    # "isSameClassPackage":Z
    const/4 v0, 0x1

    #@40
    .line 111
    .end local v1    # "isSameClassPackage":Z
    :cond_6
    if-eqz v1, :cond_4

    #@42
    .line 112
    const/4 v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 120
    :cond_7
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_a

    #@4a
    .line 122
    if-nez p2, :cond_9

    #@4c
    move-object v3, p1

    #@4d
    .line 123
    .local v3, "targetClass":Ljava/lang/Class;
    :goto_1
    if-eq v3, p0, :cond_a

    #@4f
    .line 124
    if-nez v0, :cond_8

    #@51
    .line 125
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@54
    move-result v1

    #@55
    .line 126
    .restart local v1    # "isSameClassPackage":Z
    const/4 v0, 0x1

    #@56
    .line 128
    .end local v1    # "isSameClassPackage":Z
    :cond_8
    if-nez v1, :cond_a

    #@58
    .line 129
    invoke-static {v3, p0}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    #@5b
    move-result v4

    #@5c
    if-nez v4, :cond_a

    #@5e
    .line 130
    return v5

    #@5f
    .line 122
    .end local v3    # "targetClass":Ljava/lang/Class;
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@62
    move-result-object v3

    #@63
    goto :goto_1

    #@64
    .line 136
    :cond_a
    return v6
.end method
