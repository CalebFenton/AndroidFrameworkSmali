.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;
.super Ljava/lang/Object;
.source "PEMUtil.java"


# instance fields
.field private final blacklist _footer:Ljava/lang/String;

.field private final blacklist _header:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->_header:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----END "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->_footer:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist isTheExpectedFooter(Ljava/lang/String;)Z
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->_footer:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isTheExpectedHeader(Ljava/lang/String;)Z
    .registers 2

    .line 30
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil$Boundaries;->_header:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
