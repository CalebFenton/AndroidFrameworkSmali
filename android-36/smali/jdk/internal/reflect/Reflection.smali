.class public Ljdk/internal/reflect/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .registers 7
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 116
    .local p0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_4a

    if-eqz p1, :cond_4a

    .line 120
    invoke-static {p0, p1, p2, p3}, Ljdk/internal/reflect/Reflection;->verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    return-void

    .line 121
    :cond_b
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not access a member of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with modifiers \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_4a
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public static blacklist getCallerClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 77
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 214
    .local p0, "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v0, v1, v2, v3}, Ljdk/internal/reflect/Reflection;->isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 16
    .param p0, "loader1"    # Ljava/lang/ClassLoader;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "loader2"    # Ljava/lang/ClassLoader;
    .param p3, "name2"    # Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    if-eq p0, p2, :cond_4

    .line 224
    return v0

    .line 226
    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 227
    .local v2, "lastDot1":I
    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 228
    .local v1, "lastDot2":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_88

    if-ne v1, v3, :cond_18

    move-object v6, p1

    move-object v9, p3

    goto/16 :goto_8a

    .line 233
    :cond_18
    const/4 v3, 0x0

    .line 234
    .local v3, "idx1":I
    const/4 v5, 0x0

    .line 237
    .local v5, "idx2":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const-string v7, "Illegal class name "

    const/16 v8, 0x4c

    const/16 v9, 0x5b

    if-ne v6, v9, :cond_4b

    .line 239
    :cond_26
    add-int/2addr v3, v4

    .line 240
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_26

    .line 241
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_34

    goto :goto_4b

    .line 243
    :cond_34
    new-instance v0, Ljava/lang/InternalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_4b
    :goto_4b
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_77

    .line 248
    :cond_51
    add-int/2addr v5, v4

    .line 249
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_51

    .line 250
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_60

    move v10, v5

    goto :goto_78

    .line 252
    :cond_60
    new-instance v0, Ljava/lang/InternalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_77
    move v10, v5

    .line 257
    .end local v5    # "idx2":I
    .local v10, "idx2":I
    :goto_78
    sub-int v11, v2, v3

    .line 258
    .local v11, "length1":I
    sub-int v4, v1, v10

    .line 260
    .local v4, "length2":I
    if-eq v11, v4, :cond_7f

    .line 261
    return v0

    .line 263
    :cond_7f
    const/4 v7, 0x0

    move-object v6, p1

    move-object v9, p3

    move v8, v3

    .end local v3    # "idx1":I
    .end local p1    # "name1":Ljava/lang/String;
    .end local p3    # "name2":Ljava/lang/String;
    .local v6, "name1":Ljava/lang/String;
    .local v8, "idx1":I
    .local v9, "name2":Ljava/lang/String;
    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    .line 228
    .end local v4    # "length2":I
    .end local v6    # "name1":Ljava/lang/String;
    .end local v8    # "idx1":I
    .end local v9    # "name2":Ljava/lang/String;
    .end local v10    # "idx2":I
    .end local v11    # "length1":I
    .restart local p1    # "name1":Ljava/lang/String;
    .restart local p3    # "name2":Ljava/lang/String;
    :cond_88
    move-object v6, p1

    move-object v9, p3

    .line 231
    .end local p1    # "name1":Ljava/lang/String;
    .end local p3    # "name2":Ljava/lang/String;
    .restart local v6    # "name1":Ljava/lang/String;
    .restart local v9    # "name2":Ljava/lang/String;
    :goto_8a
    if-ne v2, v1, :cond_8d

    move v0, v4

    :cond_8d
    return v0
.end method

.method static blacklist isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 271
    .local p0, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ofClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    :goto_1
    if-eqz p0, :cond_c

    .line 272
    if-ne p0, p1, :cond_7

    .line 273
    const/4 v0, 0x1

    return v0

    .line 275
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 277
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z
    .registers 11
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation

    .line 142
    .local p0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 143
    .local v0, "gotIsSameClassPackage":Z
    const/4 v1, 0x0

    .line 145
    .local v1, "isSameClassPackage":Z
    const/4 v2, 0x1

    if-ne p0, p1, :cond_6

    .line 147
    return v2

    .line 155
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getAccessFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 156
    invoke-static {p0, p1}, Ljdk/internal/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    .line 157
    const/4 v0, 0x1

    .line 158
    if-nez v1, :cond_19

    .line 159
    return v4

    .line 165
    :cond_19
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 166
    return v2

    .line 169
    :cond_20
    const/4 v3, 0x0

    .line 171
    .local v3, "successSoFar":Z
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 173
    invoke-static {p0, p1}, Ljdk/internal/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 174
    const/4 v3, 0x1

    .line 178
    :cond_2e
    if-nez v3, :cond_40

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-nez v5, :cond_40

    .line 179
    if-nez v0, :cond_3d

    .line 180
    invoke-static {p0, p1}, Ljdk/internal/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    .line 182
    const/4 v0, 0x1

    .line 185
    :cond_3d
    if-eqz v1, :cond_40

    .line 186
    const/4 v3, 0x1

    .line 190
    :cond_40
    if-nez v3, :cond_43

    .line 191
    return v4

    .line 194
    :cond_43
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 196
    if-nez p2, :cond_4d

    move-object v5, p1

    goto :goto_51

    :cond_4d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 197
    .local v5, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_51
    if-eq v5, p0, :cond_63

    .line 198
    if-nez v0, :cond_5a

    .line 199
    invoke-static {p0, p1}, Ljdk/internal/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    .line 200
    const/4 v0, 0x1

    .line 202
    :cond_5a
    if-nez v1, :cond_63

    .line 203
    invoke-static {v5, p0}, Ljdk/internal/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 204
    return v4

    .line 210
    .end local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_63
    return v2
.end method
