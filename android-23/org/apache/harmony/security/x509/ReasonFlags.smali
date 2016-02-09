.class public final Lorg/apache/harmony/security/x509/ReasonFlags;
.super Ljava/lang/Object;
.source "ReasonFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/ReasonFlags$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

.field static final REASONS:[Ljava/lang/String;


# instance fields
.field private final flags:[Z


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/ReasonFlags;)[Z
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 57
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 58
    const-string/jumbo v1, "unused"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 59
    const-string/jumbo v1, "keyCompromise"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 60
    const-string/jumbo v1, "cACompromise"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 61
    const-string/jumbo v1, "affiliationChanged"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 62
    const-string/jumbo v1, "superseded"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 63
    const-string/jumbo v1, "cessationOfOperation"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 64
    const-string/jumbo v1, "certificateHold"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 65
    const-string/jumbo v1, "privilegeWithdrawn"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 66
    const-string/jumbo v1, "aACompromise"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 57
    sput-object v0, Lorg/apache/harmony/security/x509/ReasonFlags;->REASONS:[Ljava/lang/String;

    #@3d
    .line 95
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonFlags$1;

    #@3f
    sget-object v1, Lorg/apache/harmony/security/x509/ReasonFlags;->REASONS:[Ljava/lang/String;

    #@41
    array-length v1, v1

    #@42
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonFlags$1;-><init>(I)V

    #@45
    .line 94
    sput-object v0, Lorg/apache/harmony/security/x509/ReasonFlags;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@47
    .line 52
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 0
    .param p1, "flags"    # [Z

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    #@5
    .line 75
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    .line 81
    const-string/jumbo v1, "ReasonFlags [\n"

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 82
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 83
    iget-object v1, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    #@11
    aget-boolean v1, v1, v0

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "  "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    sget-object v2, Lorg/apache/harmony/security/x509/ReasonFlags;->REASONS:[Ljava/lang/String;

    #@22
    aget-object v2, v2, v0

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const/16 v2, 0xa

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 87
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 88
    const-string/jumbo v1, "]\n"

    #@36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 79
    return-void
.end method
