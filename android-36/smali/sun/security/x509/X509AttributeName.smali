.class public Lsun/security/x509/X509AttributeName;
.super Ljava/lang/Object;
.source "X509AttributeName.java"


# static fields
.field private static final blacklist SEPARATOR:C = '.'


# instance fields
.field private blacklist prefix:Ljava/lang/String;

.field private blacklist suffix:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lsun/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    .line 49
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 50
    .local v0, "i":I
    if-gez v0, :cond_13

    .line 51
    iput-object p1, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    goto :goto_22

    .line 53
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    .line 54
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    .line 56
    :goto_22
    return-void
.end method


# virtual methods
.method public blacklist getPrefix()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSuffix()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lsun/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    return-object v0
.end method
