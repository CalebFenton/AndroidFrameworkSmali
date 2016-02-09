.class public Lgov/nist/core/NameValue;
.super Lgov/nist/core/GenericObject;
.source "NameValue.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/core/GenericObject;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x19c7fab1bcbf73beL


# instance fields
.field protected final isFlagParameter:Z

.field protected isQuotedString:Z

.field private name:Ljava/lang/String;

.field private quotes:Ljava/lang/String;

.field private separator:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    #@3
    .line 64
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@6
    .line 65
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@b
    .line 66
    const-string/jumbo v0, "="

    #@e
    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    #@10
    .line 67
    const-string/jumbo v0, ""

    #@13
    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@15
    .line 68
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    #@18
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 96
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@4
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;
    .param p3, "isFlag"    # Z

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    #@3
    .line 82
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@5
    .line 83
    iput-object p2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@7
    .line 84
    const-string/jumbo v0, "="

    #@a
    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    #@c
    .line 85
    const-string/jumbo v0, ""

    #@f
    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@11
    .line 86
    iput-boolean p3, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    #@13
    .line 78
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 213
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/core/NameValue;

    #@6
    .line 214
    .local v0, "retval":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 215
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@c
    invoke-static {v1}, Lgov/nist/core/NameValue;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    iput-object v1, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@12
    .line 216
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 163
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 191
    :cond_0
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@e
    if-nez v2, :cond_8

    #@10
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@12
    if-eqz v2, :cond_8

    #@14
    .line 192
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_6

    #@20
    .line 193
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@22
    check-cast v0, Lgov/nist/core/GenericObject;

    #@24
    .line 194
    .local v0, "gv":Lgov/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@27
    .line 195
    return-object p1

    #@28
    .line 164
    .end local v0    # "gv":Lgov/nist/core/GenericObject;
    :cond_1
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@2a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v2}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 165
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@36
    check-cast v0, Lgov/nist/core/GenericObject;

    #@38
    .line 166
    .restart local v0    # "gv":Lgov/nist/core/GenericObject;
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@3a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    move-result-object v2

    #@3e
    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    move-result-object v2

    #@44
    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 167
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@4c
    .line 168
    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@4e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    .line 169
    return-object p1

    #@52
    .line 170
    .end local v0    # "gv":Lgov/nist/core/GenericObject;
    :cond_2
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@57
    move-result-object v2

    #@58
    invoke-static {v2}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_3

    #@5e
    .line 171
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@60
    check-cast v1, Lgov/nist/core/GenericObjectList;

    #@62
    .line 172
    .local v1, "gvlist":Lgov/nist/core/GenericObjectList;
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@64
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@67
    move-result-object v2

    #@68
    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@75
    .line 173
    return-object p1

    #@76
    .line 174
    .end local v1    # "gvlist":Lgov/nist/core/GenericObjectList;
    :cond_3
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@78
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@7f
    move-result v2

    #@80
    if-nez v2, :cond_5

    #@82
    .line 180
    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    #@84
    if-eqz v2, :cond_4

    #@86
    .line 181
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@88
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8b
    move-result-object v2

    #@8c
    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@91
    move-result-object v2

    #@92
    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@97
    move-result-object v2

    #@98
    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@9a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9d
    .line 182
    return-object p1

    #@9e
    .line 184
    :cond_4
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@a0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a3
    move-result-object v2

    #@a4
    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    #@a6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a9
    .line 185
    return-object p1

    #@aa
    .line 188
    :cond_5
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@ac
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@af
    move-result-object v2

    #@b0
    iget-object v3, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    #@b2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b5
    move-result-object v2

    #@b6
    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bb
    move-result-object v2

    #@bc
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@be
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c1
    move-result-object v3

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c5
    move-result-object v2

    #@c6
    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@c8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cb
    .line 189
    return-object p1

    #@cc
    .line 196
    :cond_6
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@ce
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d1
    move-result-object v2

    #@d2
    invoke-static {v2}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    #@d5
    move-result v2

    #@d6
    if-eqz v2, :cond_7

    #@d8
    .line 197
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@da
    check-cast v1, Lgov/nist/core/GenericObjectList;

    #@dc
    .line 198
    .restart local v1    # "gvlist":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v1}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    #@df
    move-result-object v2

    #@e0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e3
    .line 199
    return-object p1

    #@e4
    .line 201
    .end local v1    # "gvlist":Lgov/nist/core/GenericObjectList;
    :cond_7
    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@e6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e9
    move-result-object v2

    #@ea
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@ec
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f3
    move-result-object v2

    #@f4
    iget-object v3, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@f6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f9
    .line 202
    return-object p1

    #@fa
    .line 204
    :cond_8
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@fc
    if-eqz v2, :cond_a

    #@fe
    iget-object v2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@100
    if-eqz v2, :cond_9

    #@102
    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    #@104
    if-eqz v2, :cond_a

    #@106
    .line 205
    :cond_9
    iget-object v2, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@108
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10b
    .line 206
    return-object p1

    #@10c
    .line 208
    :cond_a
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 223
    if-nez p1, :cond_0

    #@4
    return v4

    #@5
    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v6

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_1

    #@13
    .line 225
    return v4

    #@14
    :cond_1
    move-object v0, p1

    #@15
    .line 226
    check-cast v0, Lgov/nist/core/NameValue;

    #@17
    .line 227
    .local v0, "that":Lgov/nist/core/NameValue;
    if-ne p0, v0, :cond_2

    #@19
    .line 228
    return v3

    #@1a
    .line 229
    :cond_2
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@1c
    if-nez v5, :cond_4

    #@1e
    iget-object v5, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@20
    if-eqz v5, :cond_4

    #@22
    .line 231
    :cond_3
    return v4

    #@23
    .line 229
    :cond_4
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@25
    if-eqz v5, :cond_5

    #@27
    .line 230
    iget-object v5, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 232
    :cond_5
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@2d
    if-eqz v5, :cond_6

    #@2f
    iget-object v5, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@31
    if-eqz v5, :cond_6

    #@33
    .line 233
    iget-object v5, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@35
    iget-object v6, v0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_6

    #@3d
    .line 234
    return v4

    #@3e
    .line 235
    :cond_6
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@40
    if-eqz v5, :cond_8

    #@42
    iget-object v5, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@44
    if-nez v5, :cond_8

    #@46
    .line 237
    :cond_7
    return v4

    #@47
    .line 235
    :cond_8
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@49
    if-nez v5, :cond_9

    #@4b
    .line 236
    iget-object v5, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@4d
    if-nez v5, :cond_7

    #@4f
    .line 238
    :cond_9
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@51
    iget-object v6, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@53
    if-ne v5, v6, :cond_a

    #@55
    .line 239
    return v3

    #@56
    .line 240
    :cond_a
    iget-object v5, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@58
    instance-of v5, v5, Ljava/lang/String;

    #@5a
    if-eqz v5, :cond_d

    #@5c
    .line 242
    iget-boolean v5, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    #@5e
    if-eqz v5, :cond_b

    #@60
    .line 243
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@62
    iget-object v4, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v3

    #@68
    return v3

    #@69
    .line 244
    :cond_b
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@6b
    check-cast v1, Ljava/lang/String;

    #@6d
    .line 245
    .local v1, "val":Ljava/lang/String;
    iget-object v2, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@6f
    check-cast v2, Ljava/lang/String;

    #@71
    .line 246
    .local v2, "val1":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@74
    move-result v5

    #@75
    if-nez v5, :cond_c

    #@77
    :goto_0
    return v3

    #@78
    :cond_c
    move v3, v4

    #@79
    goto :goto_0

    #@7a
    .line 248
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "val1":Ljava/lang/String;
    :cond_d
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@7c
    iget-object v4, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@7e
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v3

    #@82
    return v3
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 255
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getKey()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 264
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 266
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getValueAsObject()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@a
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isValueQuoted()Z
    .locals 1

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    #@2
    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    #@2
    .line 134
    return-void
.end method

.method public setQuotedValue()V
    .locals 1

    #@0
    .prologue
    .line 111
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    #@3
    .line 112
    const-string/jumbo v0, "\""

    #@6
    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    #@8
    .line 110
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sep"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    #@2
    .line 102
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 273
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 275
    :goto_0
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@7
    .line 276
    return-object v0

    #@8
    .line 274
    :cond_0
    move-object v0, p1

    #@9
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0
.end method

.method public setValueAsObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    #@2
    .line 141
    return-void
.end method
