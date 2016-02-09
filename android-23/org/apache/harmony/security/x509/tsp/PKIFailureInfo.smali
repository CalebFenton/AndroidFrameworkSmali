.class public final enum Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
.super Ljava/lang/Enum;
.source "PKIFailureInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum ADD_INFO_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum BAD_ALG:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum BAD_DATA_FORMAT:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum BAD_REQUEST:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum SYSTEM_FAILURE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum TIME_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum UNACCEPTED_EXTENSION:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field public static final enum UNACCEPTED_POLICY:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field private static maxValue:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x5

    #@3
    const/4 v5, 0x2

    #@4
    const/4 v4, 0x0

    #@5
    .line 54
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@7
    const-string/jumbo v1, "BAD_ALG"

    #@a
    invoke-direct {v0, v1, v4, v4}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    #@d
    .line 57
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_ALG:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@f
    .line 59
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@11
    const-string/jumbo v1, "BAD_REQUEST"

    #@14
    invoke-direct {v0, v1, v7, v5}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    #@17
    .line 62
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_REQUEST:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@19
    .line 64
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@1b
    const-string/jumbo v1, "BAD_DATA_FORMAT"

    #@1e
    invoke-direct {v0, v1, v5, v6}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    #@21
    .line 67
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_DATA_FORMAT:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@23
    .line 69
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@25
    const-string/jumbo v1, "TIME_NOT_AVAILABLE"

    #@28
    .line 72
    const/16 v2, 0xe

    #@2a
    .line 69
    invoke-direct {v0, v1, v8, v2}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    #@2d
    .line 72
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->TIME_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@2f
    .line 74
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@31
    const-string/jumbo v1, "UNACCEPTED_POLICY"

    #@34
    const/4 v2, 0x4

    #@35
    .line 77
    const/16 v3, 0xf

    #@37
    .line 74
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    #@3a
    .line 77
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->UNACCEPTED_POLICY:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@3c
    .line 79
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@3e
    const-string/jumbo v1, "UNACCEPTED_EXTENSION"

    #@41
    .line 82
    const/16 v2, 0x10

    #@43
    .line 79
    invoke-direct {v0, v1, v6, v2}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    #@46
    .line 82
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->UNACCEPTED_EXTENSION:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@48
    .line 84
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@4a
    const-string/jumbo v1, "ADD_INFO_NOT_AVAILABLE"

    #@4d
    const/4 v2, 0x6

    #@4e
    .line 87
    const/16 v3, 0x11

    #@50
    .line 84
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    #@53
    .line 87
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->ADD_INFO_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@55
    .line 89
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@57
    const-string/jumbo v1, "SYSTEM_FAILURE"

    #@5a
    const/4 v2, 0x7

    #@5b
    .line 92
    const/16 v3, 0x19

    #@5d
    .line 89
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;-><init>(Ljava/lang/String;II)V

    #@60
    .line 92
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->SYSTEM_FAILURE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@62
    .line 53
    const/16 v0, 0x8

    #@64
    new-array v0, v0, [Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@66
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_ALG:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@68
    aput-object v1, v0, v4

    #@6a
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_REQUEST:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@6c
    aput-object v1, v0, v7

    #@6e
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->BAD_DATA_FORMAT:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@70
    aput-object v1, v0, v5

    #@72
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->TIME_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@74
    aput-object v1, v0, v8

    #@76
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->UNACCEPTED_POLICY:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@78
    const/4 v2, 0x4

    #@79
    aput-object v1, v0, v2

    #@7b
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->UNACCEPTED_EXTENSION:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@7d
    aput-object v1, v0, v6

    #@7f
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->ADD_INFO_NOT_AVAILABLE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@81
    const/4 v2, 0x6

    #@82
    aput-object v1, v0, v2

    #@84
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->SYSTEM_FAILURE:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@86
    const/4 v2, 0x7

    #@87
    aput-object v1, v0, v2

    #@89
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@8b
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 100
    iput p3, p0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    #@5
    .line 99
    return-void
.end method

.method public static getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    .line 128
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->values()[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 129
    .local v0, "info":Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    iget v4, v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    #@c
    if-ne p0, v4, :cond_0

    #@e
    .line 130
    return-object v0

    #@f
    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 133
    .end local v0    # "info":Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    :cond_1
    new-instance v1, Ljava/security/InvalidParameterException;

    #@14
    const-string/jumbo v2, "Unknown PKIFailureInfo value"

    #@17
    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public static getMaxValue()I
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 114
    sget v2, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->maxValue:I

    #@3
    if-nez v2, :cond_1

    #@5
    .line 115
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->values()[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@8
    move-result-object v2

    #@9
    array-length v3, v2

    #@a
    .local v0, "cur":Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    :goto_0
    if-ge v1, v3, :cond_1

    #@c
    aget-object v0, v2, v1

    #@e
    .line 116
    iget v4, v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    #@10
    sget v5, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->maxValue:I

    #@12
    if-le v4, v5, :cond_0

    #@14
    .line 117
    iget v4, v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    #@16
    sput v4, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->maxValue:I

    #@18
    .line 115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 120
    :cond_1
    sget v1, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->maxValue:I

    #@1d
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    const-class v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@8
    return-object v0
.end method

.method public static values()[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 1

    #@0
    .prologue
    .line 53
    sget-object v0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@2
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->value:I

    #@2
    return v0
.end method
