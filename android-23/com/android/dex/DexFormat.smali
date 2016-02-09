.class public final Lcom/android/dex/DexFormat;
.super Ljava/lang/Object;
.source "DexFormat.java"


# static fields
.field public static final API_CURRENT:I = 0xe

.field public static final API_NO_EXTENDED_OPCODES:I = 0xd

.field public static final DEX_IN_JAR_NAME:Ljava/lang/String; = "classes.dex"

.field public static final ENDIAN_TAG:I = 0x12345678

.field public static final MAGIC_PREFIX:Ljava/lang/String; = "dex\n"

.field public static final MAGIC_SUFFIX:Ljava/lang/String; = "\u0000"

.field public static final MAX_MEMBER_IDX:I = 0xffff

.field public static final MAX_TYPE_IDX:I = 0xffff

.field public static final VERSION_CURRENT:Ljava/lang/String; = "036"

.field public static final VERSION_FOR_API_13:Ljava/lang/String; = "035"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static apiToMagic(I)Ljava/lang/String;
    .locals 3
    .param p0, "targetApiLevel"    # I

    #@0
    .prologue
    .line 103
    const/16 v1, 0xe

    #@2
    if-lt p0, v1, :cond_0

    #@4
    .line 104
    const-string/jumbo v0, "036"

    #@7
    .line 109
    .local v0, "version":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "dex\n"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "\u0000"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 106
    .end local v0    # "version":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "035"

    #@26
    .restart local v0    # "version":Ljava/lang/String;
    goto :goto_0
.end method

.method public static magicToApi([B)I
    .locals 5
    .param p0, "magic"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 77
    array-length v1, p0

    #@3
    const/16 v2, 0x8

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 78
    return v3

    #@8
    .line 81
    :cond_0
    aget-byte v1, p0, v4

    #@a
    const/16 v2, 0x64

    #@c
    if-ne v1, v2, :cond_1

    #@e
    const/4 v1, 0x1

    #@f
    aget-byte v1, p0, v1

    #@11
    const/16 v2, 0x65

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 83
    :cond_1
    return v3

    #@16
    .line 81
    :cond_2
    const/4 v1, 0x2

    #@17
    aget-byte v1, p0, v1

    #@19
    const/16 v2, 0x78

    #@1b
    if-ne v1, v2, :cond_1

    #@1d
    const/4 v1, 0x3

    #@1e
    aget-byte v1, p0, v1

    #@20
    const/16 v2, 0xa

    #@22
    if-ne v1, v2, :cond_1

    #@24
    .line 82
    const/4 v1, 0x7

    #@25
    aget-byte v1, p0, v1

    #@27
    if-nez v1, :cond_1

    #@29
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, ""

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const/4 v2, 0x4

    #@36
    aget-byte v2, p0, v2

    #@38
    int-to-char v2, v2

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const/4 v2, 0x5

    #@3e
    aget-byte v2, p0, v2

    #@40
    int-to-char v2, v2

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    const/4 v2, 0x6

    #@46
    aget-byte v2, p0, v2

    #@48
    int-to-char v2, v2

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    .line 88
    .local v0, "version":Ljava/lang/String;
    const-string/jumbo v1, "036"

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_3

    #@5a
    .line 89
    const/16 v1, 0xe

    #@5c
    return v1

    #@5d
    .line 90
    :cond_3
    const-string/jumbo v1, "035"

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_4

    #@66
    .line 91
    const/16 v1, 0xd

    #@68
    return v1

    #@69
    .line 94
    :cond_4
    return v3
.end method
