.class public Lsun/security/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field private static final args:Ljava/lang/String;

.field private static final hexDigits:[C


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 246
    const-string/jumbo v0, "0123456789abcdef"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/util/Debug;->hexDigits:[C

    #@9
    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    #@5
    .line 44
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lsun/security/util/Debug;
    .locals 1
    .param p0, "option"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    invoke-static {p0, p0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;
    .locals 2
    .param p0, "option"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    invoke-static {p0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 104
    new-instance v0, Lsun/security/util/Debug;

    #@8
    invoke-direct {v0, p1}, Lsun/security/util/Debug;-><init>(Ljava/lang/String;)V

    #@b
    .line 105
    .local v0, "d":Lsun/security/util/Debug;
    return-object v0

    #@c
    .line 107
    .end local v0    # "d":Lsun/security/util/Debug;
    :cond_0
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method public static isOn(Ljava/lang/String;)Z
    .locals 5
    .param p0, "option"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, -0x1

    #@3
    .line 117
    sget-object v2, Lsun/security/util/Debug;->args:Ljava/lang/String;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 118
    return v1

    #@8
    .line 120
    :cond_0
    sget-object v2, Lsun/security/util/Debug;->args:Ljava/lang/String;

    #@a
    const-string/jumbo v3, "all"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@10
    move-result v2

    #@11
    if-eq v2, v4, :cond_1

    #@13
    .line 121
    return v0

    #@14
    .line 123
    :cond_1
    sget-object v2, Lsun/security/util/Debug;->args:Ljava/lang/String;

    #@16
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@19
    move-result v2

    #@1a
    if-eq v2, v4, :cond_2

    #@1c
    :goto_0
    return v0

    #@1d
    :cond_2
    move v0, v1

    #@1e
    goto :goto_0
.end method

.method private static marshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "args"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 187
    if-eqz p0, :cond_2

    #@3
    .line 188
    new-instance v8, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 189
    .local v8, "target":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v7, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@d
    .line 195
    .local v7, "source":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "[Pp][Ee][Rr][Mm][Ii][Ss][Ss][Ii][Oo][Nn]="

    #@10
    .line 196
    .local v0, "keyReg":Ljava/lang/String;
    const-string/jumbo v1, "permission="

    #@13
    .line 197
    .local v1, "keyStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v9

    #@1c
    .line 198
    const-string/jumbo v10, "[a-zA-Z_$][a-zA-Z0-9_$]*([.][a-zA-Z_$][a-zA-Z0-9_$]*)*"

    #@1f
    .line 197
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v9

    #@23
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    .line 199
    .local v6, "reg":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@2a
    move-result-object v5

    #@2b
    .line 200
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2e
    move-result-object v4

    #@2f
    .line 201
    .local v4, "matcher":Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuffer;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@34
    .line 202
    .local v2, "left":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@37
    move-result v9

    #@38
    if-eqz v9, :cond_0

    #@3a
    .line 203
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 204
    .local v3, "matched":Ljava/lang/String;
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@45
    .line 205
    const-string/jumbo v9, "  "

    #@48
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4b
    .line 208
    const-string/jumbo v9, ""

    #@4e
    invoke-virtual {v4, v2, v9}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@51
    goto :goto_0

    #@52
    .line 210
    .end local v3    # "matched":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@55
    .line 211
    move-object v7, v2

    #@56
    .line 220
    const-string/jumbo v0, "[Cc][Oo][Dd][Ee][Bb][Aa][Ss][Ee]="

    #@59
    .line 221
    const-string/jumbo v1, "codebase="

    #@5c
    .line 222
    new-instance v9, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    const-string/jumbo v10, "[^, ;]*"

    #@68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    .line 223
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@73
    move-result-object v5

    #@74
    .line 224
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@77
    move-result-object v4

    #@78
    .line 225
    new-instance v2, Ljava/lang/StringBuffer;

    #@7a
    .end local v2    # "left":Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@7d
    .line 226
    .restart local v2    # "left":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@80
    move-result v9

    #@81
    if-eqz v9, :cond_1

    #@83
    .line 227
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    .line 228
    .restart local v3    # "matched":Ljava/lang/String;
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8e
    .line 229
    const-string/jumbo v9, "  "

    #@91
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@94
    .line 232
    const-string/jumbo v9, ""

    #@97
    invoke-virtual {v4, v2, v9}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@9a
    goto :goto_1

    #@9b
    .line 234
    .end local v3    # "matched":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@9e
    .line 235
    move-object v7, v2

    #@9f
    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@a2
    move-result-object v9

    #@a3
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@a5
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@a8
    move-result-object v9

    #@a9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ac
    .line 240
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@af
    move-result-object v9

    #@b0
    return-object v9

    #@b1
    .line 243
    .end local v0    # "keyReg":Ljava/lang/String;
    .end local v1    # "keyStr":Ljava/lang/String;
    .end local v2    # "left":Ljava/lang/StringBuffer;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    .end local v6    # "reg":Ljava/lang/String;
    .end local v7    # "source":Ljava/lang/StringBuffer;
    .end local v8    # "target":Ljava/lang/StringBuffer;
    :cond_2
    return-object v9
.end method

.method public static toHexString(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 154
    const/16 v3, 0x10

    #@2
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 155
    .local v1, "hexValue":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@b
    move-result v3

    #@c
    mul-int/lit8 v3, v3, 0x2

    #@e
    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    #@11
    .line 157
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "-"

    #@14
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 158
    const-string/jumbo v3, "   -"

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    .line 159
    const/4 v3, 0x1

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 163
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@28
    move-result v3

    #@29
    rem-int/lit8 v3, v3, 0x2

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "0"

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 167
    :cond_0
    const/4 v2, 0x0

    #@42
    .line 168
    .local v2, "i":I
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@45
    move-result v3

    #@46
    if-ge v2, v3, :cond_4

    #@48
    .line 170
    add-int/lit8 v3, v2, 0x2

    #@4a
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    .line 171
    add-int/lit8 v2, v2, 0x2

    #@53
    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@56
    move-result v3

    #@57
    if-eq v2, v3, :cond_1

    #@59
    .line 173
    rem-int/lit8 v3, v2, 0x40

    #@5b
    if-nez v3, :cond_3

    #@5d
    .line 174
    const-string/jumbo v3, "\n    "

    #@60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@63
    goto :goto_1

    #@64
    .line 161
    .end local v2    # "i":I
    :cond_2
    const-string/jumbo v3, "    "

    #@67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6a
    goto :goto_0

    #@6b
    .line 175
    .restart local v2    # "i":I
    :cond_3
    rem-int/lit8 v3, v2, 0x8

    #@6d
    if-nez v3, :cond_1

    #@6f
    .line 176
    const-string/jumbo v3, " "

    #@72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@75
    goto :goto_1

    #@76
    .line 180
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    return-object v3
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    #@0
    .prologue
    .line 249
    if-nez p0, :cond_0

    #@2
    .line 250
    const-string/jumbo v3, "(null)"

    #@5
    return-object v3

    #@6
    .line 252
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    array-length v3, p0

    #@9
    mul-int/lit8 v3, v3, 0x3

    #@b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 253
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    #@10
    if-ge v0, v3, :cond_2

    #@12
    .line 254
    aget-byte v3, p0, v0

    #@14
    and-int/lit16 v1, v3, 0xff

    #@16
    .line 255
    .local v1, "k":I
    if-eqz v0, :cond_1

    #@18
    .line 256
    const/16 v3, 0x3a

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 258
    :cond_1
    sget-object v3, Lsun/security/util/Debug;->hexDigits:[C

    #@1f
    ushr-int/lit8 v4, v1, 0x4

    #@21
    aget-char v3, v3, v4

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    .line 259
    sget-object v3, Lsun/security/util/Debug;->hexDigits:[C

    #@28
    and-int/lit8 v4, v1, 0xf

    #@2a
    aget-char v3, v3, v4

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 253
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 261
    .end local v1    # "k":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    return-object v3
.end method


# virtual methods
.method public println()V
    .locals 3

    #@0
    .prologue
    .line 143
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v2, p0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, ":"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b
    .line 141
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v2, p0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, ": "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f
    .line 132
    return-void
.end method
