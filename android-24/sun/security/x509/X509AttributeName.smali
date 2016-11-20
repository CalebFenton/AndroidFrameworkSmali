.class public Lsun/security/x509/X509AttributeName;
.super Ljava/lang/Object;
.source "X509AttributeName.java"


# static fields
.field private static final SEPARATOR:C = '.'


# instance fields
.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 39
    iput-object v1, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    #@6
    .line 40
    iput-object v1, p0, Lsun/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    #@8
    .line 49
    const/16 v1, 0x2e

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v0

    #@e
    .line 50
    .local v0, "i":I
    const/4 v1, -0x1

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 51
    iput-object p1, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    #@13
    .line 48
    :goto_0
    return-void

    #@14
    .line 53
    :cond_0
    const/4 v1, 0x0

    #@15
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    #@1b
    .line 54
    add-int/lit8 v1, v0, 0x1

    #@1d
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lsun/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    #@23
    goto :goto_0
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lsun/security/x509/X509AttributeName;->prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lsun/security/x509/X509AttributeName;->suffix:Ljava/lang/String;

    #@2
    return-object v0
.end method
