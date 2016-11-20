.class public final Lsun/security/x509/AccessDescription;
.super Ljava/lang/Object;
.source "AccessDescription.java"


# static fields
.field public static final Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private accessLocation:Lsun/security/x509/GeneralName;

.field private accessMethod:Lsun/security/util/ObjectIdentifier;

.field private myhash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x9

    #@2
    .line 46
    new-array v0, v1, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@a
    move-result-object v0

    #@b
    .line 45
    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 49
    new-array v0, v1, [I

    #@f
    fill-array-data v0, :array_1

    #@12
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@15
    move-result-object v0

    #@16
    .line 48
    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    #@18
    .line 52
    new-array v0, v1, [I

    #@1a
    fill-array-data v0, :array_2

    #@1d
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@20
    move-result-object v0

    #@21
    .line 51
    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    #@23
    .line 55
    new-array v0, v1, [I

    #@25
    fill-array-data v0, :array_3

    #@28
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@2b
    move-result-object v0

    #@2c
    .line 54
    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    #@2e
    .line 37
    return-void

    #@2f
    .line 46
    nop

    #@30
    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
    .end array-data

    #@46
    .line 49
    :array_1
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x2
    .end array-data

    #@5c
    .line 52
    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x3
    .end array-data

    #@72
    .line 55
    :array_3
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x5
    .end array-data
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const/4 v1, -0x1

    #@4
    iput v1, p0, Lsun/security/x509/AccessDescription;->myhash:I

    #@6
    .line 63
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    #@9
    move-result-object v0

    #@a
    .line 64
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@10
    .line 65
    new-instance v1, Lsun/security/x509/GeneralName;

    #@12
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;)V

    #@19
    iput-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    #@1b
    .line 62
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/x509/GeneralName;)V
    .locals 1
    .param p1, "accessMethod"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "accessLocation"    # Lsun/security/x509/GeneralName;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    #@6
    .line 58
    iput-object p1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@8
    .line 59
    iput-object p2, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    #@a
    .line 57
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 78
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@a
    .line 79
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    #@c
    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    #@f
    .line 80
    const/16 v1, 0x30

    #@11
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@14
    .line 76
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 91
    if-eqz p1, :cond_0

    #@3
    instance-of v2, p1, Lsun/security/x509/AccessDescription;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v0, p1

    #@8
    .line 94
    check-cast v0, Lsun/security/x509/AccessDescription;

    #@a
    .line 96
    .local v0, "that":Lsun/security/x509/AccessDescription;
    if-ne p0, v0, :cond_1

    #@c
    .line 97
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 92
    .end local v0    # "that":Lsun/security/x509/AccessDescription;
    :cond_0
    return v1

    #@f
    .line 99
    .restart local v0    # "that":Lsun/security/x509/AccessDescription;
    :cond_1
    iget-object v2, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@11
    invoke-virtual {v0}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 100
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    #@1d
    invoke-virtual {v0}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Lsun/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    .line 99
    :cond_2
    return v1
.end method

.method public getAccessLocation()Lsun/security/x509/GeneralName;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    #@2
    return-object v0
.end method

.method public getAccessMethod()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 84
    iget v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 85
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@7
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    #@a
    move-result v0

    #@b
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    #@d
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->hashCode()I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    iput v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    #@14
    .line 87
    :cond_0
    iget v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    #@16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    .line 105
    .local v0, "method":Ljava/lang/String;
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@3
    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 106
    const-string/jumbo v0, "caIssuers"

    #@e
    .line 116
    .local v0, "method":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "\n   accessMethod: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 117
    const-string/jumbo v2, "\n   accessLocation: "

    #@21
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 117
    iget-object v2, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    #@27
    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 117
    const-string/jumbo v2, "\n"

    #@32
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    return-object v1

    #@3b
    .line 107
    .local v0, "method":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@3d
    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    #@3f
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_1

    #@45
    .line 108
    const-string/jumbo v0, "caRepository"

    #@48
    .local v0, "method":Ljava/lang/String;
    goto :goto_0

    #@49
    .line 109
    .local v0, "method":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@4b
    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    #@4d
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_2

    #@53
    .line 110
    const-string/jumbo v0, "timeStamping"

    #@56
    .local v0, "method":Ljava/lang/String;
    goto :goto_0

    #@57
    .line 111
    .local v0, "method":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@59
    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    #@5b
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@5e
    move-result v1

    #@5f
    if-eqz v1, :cond_3

    #@61
    .line 112
    const-string/jumbo v0, "ocsp"

    #@64
    .local v0, "method":Ljava/lang/String;
    goto :goto_0

    #@65
    .line 114
    .local v0, "method":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    #@67
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    .local v0, "method":Ljava/lang/String;
    goto :goto_0
.end method
