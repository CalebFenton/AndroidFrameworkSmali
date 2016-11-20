.class final Ljavax/net/ssl/SSLSocketFactory$1;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/net/ssl/SSLSocketFactory;->getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Ljavax/net/ssl/SSLSocketFactory$1;->val$name:Ljava/lang/String;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 155
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory$1;->run()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 156
    iget-object v1, p0, Ljavax/net/ssl/SSLSocketFactory$1;->val$name:Ljava/lang/String;

    #@2
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 157
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 160
    const/4 v0, 0x0

    #@13
    .line 163
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
