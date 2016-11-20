.class public final Lsun/security/ssl/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun/security/ssl/ProtocolVersion;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT:Lsun/security/ssl/ProtocolVersion;

.field static final DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

.field private static final FIPS:Z

.field static final LIMIT_MAX_VALUE:I = 0xffff

.field static final LIMIT_MIN_VALUE:I

.field static final MAX:Lsun/security/ssl/ProtocolVersion;

.field static final MIN:Lsun/security/ssl/ProtocolVersion;

.field static final NONE:Lsun/security/ssl/ProtocolVersion;

.field static final SSL20Hello:Lsun/security/ssl/ProtocolVersion;

.field static final SSL30:Lsun/security/ssl/ProtocolVersion;

.field static final TLS10:Lsun/security/ssl/ProtocolVersion;

.field static final TLS11:Lsun/security/ssl/ProtocolVersion;

.field static final TLS12:Lsun/security/ssl/ProtocolVersion;


# instance fields
.field public final major:B

.field public final minor:B

.field final name:Ljava/lang/String;

.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 57
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    #@2
    const-string/jumbo v1, "NONE"

    #@5
    const/4 v2, -0x1

    #@6
    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    #@9
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    #@b
    .line 60
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    #@d
    .line 61
    const-string/jumbo v1, "SSLv2Hello"

    #@10
    .line 60
    const/4 v2, 0x2

    #@11
    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    #@14
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@16
    .line 64
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    #@18
    const-string/jumbo v1, "SSLv3"

    #@1b
    const/16 v2, 0x300

    #@1d
    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    #@20
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@22
    .line 67
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    #@24
    const-string/jumbo v1, "TLSv1"

    #@27
    const/16 v2, 0x301

    #@29
    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    #@2c
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@2e
    .line 70
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    #@30
    const-string/jumbo v1, "TLSv1.1"

    #@33
    const/16 v2, 0x302

    #@35
    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    #@38
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@3a
    .line 73
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    #@3c
    const-string/jumbo v1, "TLSv1.2"

    #@3f
    const/16 v2, 0x303

    #@41
    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    #@44
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@46
    .line 75
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@49
    move-result v0

    #@4a
    sput-boolean v0, Lsun/security/ssl/ProtocolVersion;->FIPS:Z

    #@4c
    .line 78
    sget-boolean v0, Lsun/security/ssl/ProtocolVersion;->FIPS:Z

    #@4e
    if-eqz v0, :cond_0

    #@50
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@52
    :goto_0
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    #@54
    .line 81
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@56
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    #@58
    .line 84
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@5a
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@5c
    .line 87
    sget-boolean v0, Lsun/security/ssl/ProtocolVersion;->FIPS:Z

    #@5e
    if-eqz v0, :cond_1

    #@60
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@62
    :goto_1
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

    #@64
    .line 48
    return-void

    #@65
    .line 78
    :cond_0
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@67
    goto :goto_0

    #@68
    .line 87
    :cond_1
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@6a
    goto :goto_1
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "v"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    iput p1, p0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@5
    .line 102
    iput-object p2, p0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@7
    .line 103
    ushr-int/lit8 v0, p1, 0x8

    #@9
    int-to-byte v0, v0

    #@a
    iput-byte v0, p0, Lsun/security/ssl/ProtocolVersion;->major:B

    #@c
    .line 104
    and-int/lit16 v0, p1, 0xff

    #@e
    int-to-byte v0, v0

    #@f
    iput-byte v0, p0, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@11
    .line 100
    return-void
.end method

.method private static valueOf(I)Lsun/security/ssl/ProtocolVersion;
    .locals 5
    .param p0, "v"    # I

    #@0
    .prologue
    .line 109
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@2
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@4
    if-ne p0, v2, :cond_0

    #@6
    .line 110
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@8
    return-object v2

    #@9
    .line 111
    :cond_0
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@b
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@d
    if-ne p0, v2, :cond_1

    #@f
    .line 112
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@11
    return-object v2

    #@12
    .line 113
    :cond_1
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@14
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@16
    if-ne p0, v2, :cond_2

    #@18
    .line 114
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@1a
    return-object v2

    #@1b
    .line 115
    :cond_2
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@1d
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@1f
    if-ne p0, v2, :cond_3

    #@21
    .line 116
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@23
    return-object v2

    #@24
    .line 117
    :cond_3
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@26
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@28
    if-ne p0, v2, :cond_4

    #@2a
    .line 118
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@2c
    return-object v2

    #@2d
    .line 120
    :cond_4
    ushr-int/lit8 v2, p0, 0x8

    #@2f
    and-int/lit16 v0, v2, 0xff

    #@31
    .line 121
    .local v0, "major":I
    and-int/lit16 v1, p0, 0xff

    #@33
    .line 122
    .local v1, "minor":I
    new-instance v2, Lsun/security/ssl/ProtocolVersion;

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "Unknown-"

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    const-string/jumbo v4, "."

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-direct {v2, p0, v3}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    #@57
    return-object v2
.end method

.method public static valueOf(II)Lsun/security/ssl/ProtocolVersion;
    .locals 2
    .param p0, "major"    # I
    .param p1, "minor"    # I

    #@0
    .prologue
    .line 131
    and-int/lit16 p0, p0, 0xff

    #@2
    .line 132
    and-int/lit16 p1, p1, 0xff

    #@4
    .line 133
    shl-int/lit8 v1, p0, 0x8

    #@6
    or-int v0, v1, p1

    #@8
    .line 134
    .local v0, "v":I
    invoke-static {v0}, Lsun/security/ssl/ProtocolVersion;->valueOf(I)Lsun/security/ssl/ProtocolVersion;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method static valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    if-nez p0, :cond_0

    #@2
    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Protocol cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 148
    :cond_0
    sget-boolean v0, Lsun/security/ssl/ProtocolVersion;->FIPS:Z

    #@d
    if-eqz v0, :cond_2

    #@f
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@11
    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@1b
    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 149
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    .line 150
    const-string/jumbo v1, "Only TLS 1.0 or later allowed in FIPS mode"

    #@28
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 153
    :cond_2
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@2e
    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 154
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    #@38
    return-object v0

    #@39
    .line 155
    :cond_3
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@3b
    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@3d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_4

    #@43
    .line 156
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    #@45
    return-object v0

    #@46
    .line 157
    :cond_4
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@48
    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@4a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v0

    #@4e
    if-eqz v0, :cond_5

    #@50
    .line 158
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    #@52
    return-object v0

    #@53
    .line 159
    :cond_5
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@55
    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@57
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_6

    #@5d
    .line 160
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@5f
    return-object v0

    #@60
    .line 161
    :cond_6
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@62
    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@64
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_7

    #@6a
    .line 162
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@6c
    return-object v0

    #@6d
    .line 164
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6f
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "protocolVersion"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 175
    check-cast p1, Lsun/security/ssl/ProtocolVersion;

    #@2
    .end local p1    # "protocolVersion":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/ssl/ProtocolVersion;->compareTo(Lsun/security/ssl/ProtocolVersion;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Lsun/security/ssl/ProtocolVersion;)I
    .locals 2
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 176
    iget v0, p0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2
    iget v1, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
