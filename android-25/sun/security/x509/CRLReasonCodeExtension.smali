.class public Lsun/security/x509/CRLReasonCodeExtension;
.super Lsun/security/x509/Extension;
.source "CRLReasonCodeExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final AA_COMPROMISE:I = 0xa

.field public static final AFFLIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "CRLReasonCode"

.field public static final PRIVILEGE_WITHDRAWN:I = 0x9

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final REMOVE_FROM_CRL:I = 0x8

.field public static final SUPERSEDED:I = 0x4

.field public static final UNSPECIFIED:I

.field private static values:[Ljava/security/cert/CRLReason;


# instance fields
.field private reasonCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    #@6
    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lsun/security/x509/CRLReasonCodeExtension;-><init>(ZI)V

    #@4
    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 86
    const/4 v1, 0x0

    #@4
    iput v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@6
    .line 132
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    #@8
    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@a
    .line 133
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result v1

    #@e
    iput-boolean v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->critical:Z

    #@10
    .line 134
    check-cast p2, [B

    #@12
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    #@14
    .line 135
    new-instance v0, Lsun/security/util/DerValue;

    #@16
    iget-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    #@18
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@1b
    .line 136
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getEnumerated()I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@21
    .line 131
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "critical"    # Z
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 86
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@6
    .line 116
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    #@8
    iput-object v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@a
    .line 117
    iput-boolean p1, p0, Lsun/security/x509/CRLReasonCodeExtension;->critical:Z

    #@c
    .line 118
    iput p2, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@e
    .line 119
    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    #@11
    .line 115
    return-void
.end method

.method private encodeThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 90
    const/4 v1, 0x0

    #@5
    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    #@7
    .line 91
    return-void

    #@8
    .line 93
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@a
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@d
    .line 94
    .local v0, "dos":Lsun/security/util/DerOutputStream;
    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@f
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putEnumerated(I)V

    #@12
    .line 95
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    #@18
    .line 88
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    const-string/jumbo v0, "reason"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 172
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@c
    .line 177
    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    #@f
    .line 170
    return-void

    #@10
    .line 174
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@12
    .line 175
    const-string/jumbo v1, "Name not supported by CRLReasonCodeExtension"

    #@15
    .line 174
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 196
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 197
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 198
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->critical:Z

    #@10
    .line 199
    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    #@13
    .line 201
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 202
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 193
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    const-string/jumbo v0, "reason"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 160
    new-instance v0, Ljava/lang/Integer;

    #@b
    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@d
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@10
    return-object v0

    #@11
    .line 162
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@13
    .line 163
    const-string/jumbo v1, "Name not supported by CRLReasonCodeExtension"

    #@16
    .line 162
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 210
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 211
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "reason"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 213
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 220
    const-string/jumbo v0, "CRLReasonCode"

    #@3
    return-object v0
.end method

.method public getReasonCode()Ljava/security/cert/CRLReason;
    .locals 2

    #@0
    .prologue
    .line 228
    iget v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@2
    if-lez v0, :cond_0

    #@4
    iget v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@6
    sget-object v1, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 229
    sget-object v0, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    #@d
    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@f
    aget-object v0, v0, v1

    #@11
    return-object v0

    #@12
    .line 231
    :cond_0
    sget-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    #@14
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    instance-of v0, p2, Ljava/lang/Integer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 144
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attribute must be of type Integer."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 146
    :cond_0
    const-string/jumbo v0, "reason"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 147
    check-cast p2, Ljava/lang/Integer;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@1e
    .line 152
    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    #@21
    .line 142
    return-void

    #@22
    .line 149
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@24
    .line 150
    const-string/jumbo v1, "Name not supported by CRLReasonCodeExtension"

    #@27
    .line 149
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "    Reason Code: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    sget-object v1, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    #@16
    iget v2, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    #@18
    aget-object v1, v1, v2

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method
