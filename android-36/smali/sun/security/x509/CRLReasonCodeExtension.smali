.class public Lsun/security/x509/CRLReasonCodeExtension;
.super Lsun/security/x509/Extension;
.source "CRLReasonCodeExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "CRLReasonCode"

.field public static final blacklist REASON:Ljava/lang/String; = "reason"

.field private static blacklist values:[Ljava/security/cert/CRLReason;


# instance fields
.field private blacklist reasonCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    move-result-object v0

    sput-object v0, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/x509/CRLReasonCodeExtension;-><init>(ZI)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    .line 100
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->critical:Z

    .line 102
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    .line 103
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 104
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getEnumerated()I

    move-result v1

    iput v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    .line 105
    return-void
.end method

.method public constructor blacklist <init>(ZI)V
    .registers 4
    .param p1, "critical"    # Z
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    .line 84
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 85
    iput-boolean p1, p0, Lsun/security/x509/CRLReasonCodeExtension;->critical:Z

    .line 86
    iput p2, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    .line 87
    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    .line 88
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    if-nez v0, :cond_8

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    .line 59
    return-void

    .line 61
    :cond_8
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 62
    .local v0, "dos":Lsun/security/util/DerOutputStream;
    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putEnumerated(I)V

    .line 63
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    .line 145
    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    .line 146
    return-void

    .line 142
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Name not supported by CRLReasonCodeExtension"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 164
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 165
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->critical:Z

    .line 167
    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    .line 169
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 170
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 171
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 128
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 130
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Name not supported by CRLReasonCodeExtension"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lsun/security/x509/CRLReasonCodeExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 179
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 188
    const-string v0, "CRLReasonCode"

    return-object v0
.end method

.method public blacklist getReasonCode()Ljava/security/cert/CRLReason;
    .registers 3

    .line 196
    iget v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    if-lez v0, :cond_12

    iget v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    sget-object v1, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 197
    sget-object v0, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    aget-object v0, v0, v1

    return-object v0

    .line 199
    :cond_12
    sget-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_21

    .line 114
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 115
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    .line 120
    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    .line 121
    return-void

    .line 117
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Name not supported by CRLReasonCodeExtension"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type Integer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    Reason Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/x509/CRLReasonCodeExtension;->getReasonCode()Ljava/security/cert/CRLReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
