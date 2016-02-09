.class public final enum Lorg/apache/harmony/security/x509/tsp/PKIStatus;
.super Ljava/lang/Enum;
.source "PKIStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/harmony/security/x509/tsp/PKIStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum GRANTED:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum GRANTED_WITH_MODS:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum REJECTION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum REVOCATION_NOTIFICATION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum REVOCATION_WARNING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum WAITING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;


# instance fields
.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 47
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@7
    const-string/jumbo v1, "GRANTED"

    #@a
    invoke-direct {v0, v1, v4, v4}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    #@d
    .line 50
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@f
    .line 51
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@11
    const-string/jumbo v1, "GRANTED_WITH_MODS"

    #@14
    invoke-direct {v0, v1, v5, v5}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    #@17
    .line 54
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED_WITH_MODS:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@19
    .line 55
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@1b
    const-string/jumbo v1, "REJECTION"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    #@21
    .line 58
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REJECTION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@23
    .line 59
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@25
    const-string/jumbo v1, "WAITING"

    #@28
    invoke-direct {v0, v1, v7, v7}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    #@2b
    .line 62
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->WAITING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@2d
    .line 63
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@2f
    const-string/jumbo v1, "REVOCATION_WARNING"

    #@32
    invoke-direct {v0, v1, v8, v8}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    #@35
    .line 66
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_WARNING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@37
    .line 67
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@39
    const-string/jumbo v1, "REVOCATION_NOTIFICATION"

    #@3c
    const/4 v2, 0x5

    #@3d
    .line 70
    const/4 v3, 0x5

    #@3e
    .line 67
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    #@41
    .line 70
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_NOTIFICATION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@43
    .line 46
    const/4 v0, 0x6

    #@44
    new-array v0, v0, [Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@46
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@48
    aput-object v1, v0, v4

    #@4a
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED_WITH_MODS:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@4c
    aput-object v1, v0, v5

    #@4e
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REJECTION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@50
    aput-object v1, v0, v6

    #@52
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->WAITING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@54
    aput-object v1, v0, v7

    #@56
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_WARNING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@58
    aput-object v1, v0, v8

    #@5a
    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_NOTIFICATION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@5c
    const/4 v2, 0x5

    #@5d
    aput-object v1, v0, v2

    #@5f
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "status"    # I

    #@0
    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 74
    iput p3, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->status:I

    #@5
    .line 73
    return-void
.end method

.method public static getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 5
    .param p0, "status"    # I

    #@0
    .prologue
    .line 85
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->values()[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

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
    .line 86
    .local v0, "curStatus":Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    iget v4, v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->status:I

    #@c
    if-ne p0, v4, :cond_0

    #@e
    .line 87
    return-object v0

    #@f
    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 90
    .end local v0    # "curStatus":Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    :cond_1
    new-instance v1, Ljava/security/InvalidParameterException;

    #@14
    const-string/jumbo v2, "Unknown PKIStatus value"

    #@17
    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    const-class v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@8
    return-object v0
.end method

.method public static values()[Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 1

    #@0
    .prologue
    .line 46
    sget-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@2
    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 81
    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->status:I

    #@2
    return v0
.end method
