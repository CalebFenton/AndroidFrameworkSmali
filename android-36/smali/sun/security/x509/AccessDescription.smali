.class public final Lsun/security/x509/AccessDescription;
.super Ljava/lang/Object;
.source "AccessDescription.java"


# static fields
.field public static final blacklist Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private blacklist accessLocation:Lsun/security/x509/GeneralName;

.field private blacklist accessMethod:Lsun/security/util/ObjectIdentifier;

.field private blacklist myhash:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 44
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_30

    .line 45
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    .line 47
    new-array v1, v0, [I

    fill-array-data v1, :array_46

    .line 48
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    .line 50
    new-array v1, v0, [I

    fill-array-data v1, :array_5c

    .line 51
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    .line 53
    new-array v0, v0, [I

    fill-array-data v0, :array_72

    .line 54
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    .line 53
    return-void

    nop

    :array_30
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

    :array_46
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

    :array_5c
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

    :array_72
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

.method public constructor greylist <init>(Lsun/security/util/DerValue;)V
    .registers 5
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    .line 62
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 63
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    .line 64
    new-instance v1, Lsun/security/x509/GeneralName;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/x509/GeneralName;)V
    .registers 4
    .param p1, "accessMethod"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "accessLocation"    # Lsun/security/x509/GeneralName;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    .line 57
    iput-object p1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    .line 58
    iput-object p2, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 77
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 78
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    .line 79
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 80
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    instance-of v1, p1, Lsun/security/x509/AccessDescription;

    if-nez v1, :cond_8

    goto :goto_2b

    .line 93
    :cond_8
    move-object v1, p1

    check-cast v1, Lsun/security/x509/AccessDescription;

    .line 95
    .local v1, "that":Lsun/security/x509/AccessDescription;
    const/4 v2, 0x1

    if-ne p0, v1, :cond_f

    .line 96
    return v2

    .line 98
    :cond_f
    iget-object v3, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    .line 99
    invoke-virtual {v1}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    nop

    .line 98
    :goto_2a
    return v0

    .line 91
    .end local v1    # "that":Lsun/security/x509/AccessDescription;
    :cond_2b
    :goto_2b
    return v0
.end method

.method public greylist getAccessLocation()Lsun/security/x509/GeneralName;
    .registers 2

    .line 72
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    return-object v0
.end method

.method public greylist getAccessMethod()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 68
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 83
    iget v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 84
    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    .line 86
    :cond_14
    iget v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "method":Ljava/lang/String;
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 105
    const-string v0, "caIssuers"

    goto :goto_3b

    .line 106
    :cond_e
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 107
    const-string v0, "caRepository"

    goto :goto_3b

    .line 108
    :cond_1b
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 109
    const-string v0, "timeStamping"

    goto :goto_3b

    .line 110
    :cond_28
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 111
    const-string v0, "ocsp"

    goto :goto_3b

    .line 113
    :cond_35
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n   accessMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   accessLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    .line 116
    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    return-object v1
.end method
